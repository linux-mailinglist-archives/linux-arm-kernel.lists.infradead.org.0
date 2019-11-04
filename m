Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDE8ED75F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:58:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7IT2gj9FYfKVjJNecVGD5XRLEFZKCp11p2tQsiMBouc=; b=sTDP7jzYBY7gOv
	d7MhGUsS6yQsvVVYDuSsiCk7SpSWuROPjNJ/QRHSRkZ5ywh4iLpB/rDjP2arnySfyNHuaqkvuSpmL
	ej584NE+hOB82sCcMXk7WBUAwUOVB/ej1d3uas9Z/e2mLYSkKRQAVegWQVMRymWwvsShGGjdIeD7R
	+BolnnQBNwDGP3Z14XD0vCJ3cNFFPh1LPjpcXYb7td1iYBT1qLE3g//QXcJWxeJCceiCT/nYNDbWv
	EWRg/n7Fpb5I0QP4DZXxjZ/Nf5tjzMvbWXkCVvpjpVtMzXSykqY9aBRDeM/Oj290fIf4p2h6sQ7Fm
	VsfXoN1WNcmeu5uGi1xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRRd3-0002dm-1S; Mon, 04 Nov 2019 01:58:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRRcq-0002dN-Tg
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 01:57:50 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5FBEA217F5;
 Mon,  4 Nov 2019 01:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572832668;
 bh=mtTHSbd7Hygdqlh64EyjBn0IsDGy91z2yQc/KOzX5WU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uFGqMMQUSdY8FeF1cxANXcYO0epjGC61gmKn4S+OW0/Fx4k3PD3xtBqv9JPI9642X
 2xPvSnF+uXUEXdrhuT8Rc/n6L6aPR3hypcKwH97mHpRtARM1mtV+sByJLA/hhyV9ja
 rum3NU0wfmTs9wtJTTYMYKB9FtlsaQmB+oo7kX38=
Date: Mon, 4 Nov 2019 09:57:23 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] ARM: dts: imx7ulp-evk: Use APLL_PFD1 as usdhc's clock
 source
Message-ID: <20191104015722.GM24620@dragon>
References: <1572482622-22070-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572482622-22070-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_175749_357325_06B7F00D 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 08:43:42AM +0800, Anson Huang wrote:
> i.MX7ULP does NOT support runtime switching clock source for PCC,
> APLL_PFD1 by default is usdhc's clock source, so just use it
> in kernel to avoid below kernel dump during kernel boot up and
> make sure kernel can boot up with SD root file-system.
> 
> [    3.035892] Loading compiled-in X.509 certificates
> [    3.136301] sdhci-esdhc-imx 40370000.mmc: Got CD GPIO
> [    3.242886] mmc0: Reset 0x1 never completed.
> [    3.247190] mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> [    3.253751] mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00000002
> [    3.260218] mmc0: sdhci: Blk size:  0x00000200 | Blk cnt:  0x00000001
> [    3.266775] mmc0: sdhci: Argument:  0x00009a64 | Trn mode: 0x00000000
> [    3.273333] mmc0: sdhci: Present:   0x00088088 | Host ctl: 0x00000002
> [    3.279794] mmc0: sdhci: Power:     0x00000000 | Blk gap:  0x00000080
> [    3.286350] mmc0: sdhci: Wake-up:   0x00000008 | Clock:    0x0000007f
> [    3.292901] mmc0: sdhci: Timeout:   0x0000008c | Int stat: 0x00000000
> [    3.299364] mmc0: sdhci: Int enab:  0x007f010b | Sig enab: 0x00000000
> [    3.305918] mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00008402
> [    3.312471] mmc0: sdhci: Caps:      0x07eb0000 | Caps_1:   0x0000b400
> [    3.318934] mmc0: sdhci: Cmd:       0x0000113a | Max curr: 0x00ffffff
> [    3.325488] mmc0: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0x0039b37f
> [    3.332040] mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x00400e00
> [    3.338501] mmc0: sdhci: Host ctl2: 0x00000000
> [    3.343051] mmc0: sdhci: ============================================
> 
> Fixes: 20434dc92c05 ("ARM: dts: imx: add common imx7ulp dtsi support")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Tested-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
