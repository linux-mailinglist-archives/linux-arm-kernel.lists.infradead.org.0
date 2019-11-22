Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8BC107B4C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 00:27:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TEitWp7rtGjfgu6WrxlFnGe3uDJmU2sacD0XY2WHgPw=; b=a66mdG6YbXJ1gR
	neqQ1uQulP8E82IGiq8DYHh8H21m06aRaqQZ2gyFaBbpzlQEi0QRbgnOtZvSSuroyI/WovW4PkYtT
	69LmvHLBkcx+6JxkuEJw1d9H76ahNsGdLrbkAtVaoZ6plwFjIIxaVcvUOZD7Yvd4Wgehm5rwQwRQn
	98y9kGRdeytFxNdPa6aXGX3Lox5GmWJHJ1szQiK9rp5amln4UMl7YgvhhUKuANGy+tGRdDCNynxOp
	xtPGQR4ZFvrr+y0ONQi0ceYThZ81PBGYiNiYjSVYVIIT0WGikebrXNzKfvnXyJHKMSQ6f/HYa9nfP
	HG/xA6fYFbcnbLXqmORA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYIKu-0000kZ-3O; Fri, 22 Nov 2019 23:27:36 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYIKk-0000jm-6l
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 23:27:27 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iYIKe-0003lu-9S; Sat, 23 Nov 2019 07:27:20 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iYIKa-0003bP-1t; Sat, 23 Nov 2019 07:27:16 +0800
Date: Sat, 23 Nov 2019 07:27:16 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH] crypto: picoxcell: add missed tasklet_kill
Message-ID: <20191122232716.6o7pgwbsbtkvtymo@gondor.apana.org.au>
References: <20191115023116.7070-1-hslester96@gmail.com>
 <20191122085512.m75tjfa3valqfgyv@gondor.apana.org.au>
 <218e9053-42c7-098e-ecda-e0306361cc23@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <218e9053-42c7-098e-ecda-e0306361cc23@free.fr>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_152726_394118_46509B9A 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Jamie Iles <jamie@jamieiles.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 05:36:35PM +0100, Marc Gonzalez wrote:
>
> > However, the IRQ handler is registered through devm which makes it
> > hard to kill the tasklet after unregistering it.  We should probably
> > convert it to a normal request_irq so we can control how it's
> > unregistered.
> 
> Or inversely, registering the tasklet_kill() through devm, so that it
> is called *after* the ISR unregistration.

Good Point.  Chuhong, could you please try this approach to see
if it gives us better code?

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
