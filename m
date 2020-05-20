Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E971DA844
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBkhSwoYUwImlPhEL+0a27xVqEeCq0pf2ZkP2nHD2Y4=; b=Oth+h8bUzOYoSs
	mP9ud92SlXck9TzyMkmh7t8fL1zhJqh5wPxBz7TIMwFU+Vw0zqSdxwWIvna0zixisr55cwX7K81oA
	NP71lwLY5rye+IbUmn8FVbDcLy4T2DYhDx9TCF0QKqnO2gSBJeXpZDctJi3VBaHGCYooQIcV1N2PM
	nb9rgccg09GUNpcaDAG9iznLv7e9c38pBMJrEIEFWIcp5XKOBDX6Yh0oGOIh5K/Kebox5PdTJ21g/
	QW+X/g2wQyHoA7kdnpJnoJ2NBUlLq9odBymUh/yvSJfQG0AwabUmTCD1eSqzarwarcUuVuIb3elME
	7eQHp9u/DwM0MCJ6PI5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEsb-0002ZC-V1; Wed, 20 May 2020 02:54:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEsS-0002Ye-JB
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:54:41 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A40CE2070A;
 Wed, 20 May 2020 02:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589943280;
 bh=UbKsXSOCk2pZ+pEBMm8X9jtB4NakhE8HRYnbJhGud/Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P5jLggP40SKQV0/y9E16161dX3a/xjIhoJKDzMoCpKmC/FSI996OAF4nkA7ifbxK0
 ijnjVWBxS7RntuLOWi1LkFBi1stkdcMN6jKmQ5eCGgx5xndpn1lWiroLQuZ04p75gD
 L7e+0TDDTuNVL/Me9OJ4aSALMexerFpIT3GvTK0k=
Date: Wed, 20 May 2020 10:54:36 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH] arm64: dts: ls1028a: sl28: keep switch port names
 consistent
Message-ID: <20200520025435.GW11739@dragon>
References: <20200519210319.21319-1-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519210319.21319-1-michael@walle.cc>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_195440_652473_4EB9A294 
X-CRM114-Status: GOOD (  10.54  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 11:03:19PM +0200, Michael Walle wrote:
> Keep the switch port labels consistent across the different board
> variants. If the user wants to rename them, it should be done in
> user-space.
> 
> Fixes: ab43f0307449 ("arm64: dts: ls1028a: sl28: add support for variant 2")
> Signed-off-by: Michael Walle <michael@walle.cc>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
