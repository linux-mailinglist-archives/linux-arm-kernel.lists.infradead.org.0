Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2321639E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 03:13:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=okrCSyinH7t4KcRIcD3VA7Ht0VyDx4UvxtpqOoy2VOE=; b=dyIgKEuA0GBTuG
	82BG+sdKONbcrBLjbvyOv04R1FtSDGYpmNiwo1hOv70m7Z8VB7nu/vjRoQwi+6yUZxTa9tYAAfyFC
	qkfPAA9ShjOBetdifYta24uPKxn0fYUmUFLYJxUkjLoHFBWCyCxS9z+gG1f1KKcqwItgZi07nKcAU
	hmhg6DpQv8al51txsu5hTSG6Cs0sugfH54pVSeiQzmaZuOS/5GDTMa+JfxFBPFZZcas5cIPnFkoiI
	0FfW7/TIxSUHY/6OUg2lkPlDq6tPp7zajILjXVsO98Jel+s57equ6xSe7v7qM8z7Jo7onWH8Yu5QG
	uxKl+LDAqYt0r6XRK+1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Ert-0006GF-6A; Wed, 19 Feb 2020 02:13:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Erl-0006Fj-T0
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 02:13:35 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5011F2176D;
 Wed, 19 Feb 2020 02:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582078413;
 bh=K3Ru7H0q8Sc6wbkr3yPMVanZvfqlkzIjRR1+NpRGYCI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Gbk036e3RN920NrEprLdIzrEFksiqdonXA6Qb2l30VGdivSNt9u5k7DKAlesLk9Ws
 C9/i7SoMQWOqJBn1+siQnLS4I56QxSf1emldxbOx7PkG6VKPqEO2OqXUEXn4d9Vf/x
 YAdvZv+ppaHhPuMaIBwNsopEHZs/sdsE0e527OzQ=
Date: Wed, 19 Feb 2020 10:13:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8qxp-mek: Remove unexisting Ethernet PHY
Message-ID: <20200219021325.GI6075@dragon>
References: <20200217191503.31444-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217191503.31444-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_181333_956924_B7314C49 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, robh@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 04:15:03PM -0300, Fabio Estevam wrote:
> There is only on Ethernet port and one Ethernet PHY on imx8qxp-mek.
> 
> Remove the unexisting ethphy1 port.
> 
> This fixes a run-time warning:
> 
> mdio_bus 5b040000.ethernet-1: MDIO device at address 1 is missing.
> 
> Fixes: fdea904e85e1 ("arm64: dts: imx: add imx8qxp mek support")
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
