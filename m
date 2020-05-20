Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAEC1DA704
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 03:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDQBoTNGhIh4Kaacxu+E2vZ80JAUCGlJ5tEBIZBDeyI=; b=ek71PM7ypSWDfK
	dhqU5rvWI8+iTYy3HoyHtK165SIVMHRRKEQfraime3HdwE3n+GVVI5v1G8Y0hZ/Fb0h4abjHgEfZM
	3aKQ7enoAp6kpIZZe8AZ9N/7n7r9kfcRVqQUkLx/uq1isoZRWUeh1FCxPZRZQoaYkUZ2jxGr2H6jA
	8Jn1nlg6pjOaVyul2eGJGkAHRb4aagwdWBR2shEpvKv3hXlp95IUSyyl8FqUHr2qjAVVVEd0mH5Gp
	hTv8oye3uv3d5tyGZjeE4bhUWvQHmlQxw6Sd7/njX/2ttkIyjhyqysgq+aGrg2AtJOtpmQhDCweVO
	aeG/qDs9LZnXgWPznOVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbDJS-0003Ii-Ju; Wed, 20 May 2020 01:14:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbDJJ-0003IG-31
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 01:14:18 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E07F20708;
 Wed, 20 May 2020 01:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589937256;
 bh=xu7DPZR+nitRymSy5tLjdNup86IE5xSR0RPp5wz5Axo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bTv3PNyonknRWT0jeRDQbGmzUXc/xMUn/rXUEc/qH/nbyMKQkabHT9LNsdxM9vn0R
 KHYodIRi9FyhEpzvUzZeLjazXOZKb7037/Dc+Z/LgyRAXnUu2YmY1doOo+QFTonyL3
 9KwhHIwbxwZscZSeEuXodYSOuNizuJ+TqMDUV3zY=
Date: Wed, 20 May 2020 09:14:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH] arm64: dts: freescale: sl28: enable LPUART1
Message-ID: <20200520011411.GH11739@dragon>
References: <20200505150037.32573-1-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505150037.32573-1-michael@walle.cc>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_181417_149298_9555BA20 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 05:00:37PM +0200, Michael Walle wrote:
> Now that the LPUART has support for the LS1028A SoC, also enable it on
> our board.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
> 
> Hi Shawn,
> 
> After adding/fixing the LPUART support for the LS1028A I've forgot to send
> this patch to actually enable the LPUART on our boards. It would be great
> if this could make it into the fixes queue for the -rc. If not its also ok.

We only take critical bug fixes at this point.  Applied it for -next.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
