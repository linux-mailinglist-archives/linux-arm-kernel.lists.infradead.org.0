Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF8A195775
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 13:46:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CsYPGTwuYvNl1DrawD4Nvsge4EtQR53q3qS+A301Ta4=; b=deHjpwNAqxmOxA
	3nHivHa+QZnd7dvJKQWhrxkWO/9AishMowJuEpIZNy4KztoJPWg58kcE5nZjBOIGSNZu7WPP4poyj
	KtsIBTjs9b9nR2YOF8ES1voPWiKTVWTcJhqbZJCkoIpcMJzeK4D78JBSCKScu6KwJSi9+FtAQVYpN
	4q6qojJikIntiMmKPv/pAV5QWGIEx7cvjTprn4LF59NuoFxBX2GaU1wUS1qV3jgoD8mR1xd61uY8n
	wmdZ7dg+DVa2Pov7RDXqZtpT1krmdYO6jBd5iUeUj52L6rkN9fm3FSHSJLefhXOQruZYF/RjqgZer
	P21AY9XgSWEITbkeTNKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoNM-00017y-Ua; Fri, 27 Mar 2020 12:46:17 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoNB-00015X-4O
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 12:46:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JmG3WZJDcGCwktscCEiZxzaRHTNMSk7OqWqcb9CklMU=; b=DWz54k89BzS61Gaj5ZJHumDZX
 A9o+tS6Qwk8axxNgL9dRnmwHjd28UR22jF3LCFXrrymwxj9w0XXBk68sfUJfOSWzl5iHozJ68yimP
 +GEcJv1uvGOlnsPFEPA5rs5yMwQUAwmCe9jsVuNi00LGzaAkvOxFm6dRpyjRSLvvABfXd95UQS+Tf
 6/EzYQl4S5bd37TxwTG7IauMWF3PiZdabuFbAspX3OC13squhg3b1IIi0QcDx/xLGNatWa0QSJAcU
 6tLNLOpNKEJAG54OESpBlSZK1yMLaK+OiUJXNyQSg/MNoACzdIslqnVwYxmMCKWLskf+Ra7hmEXea
 IBGnmkR3g==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:37908)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jHoMs-00016y-C2; Fri, 27 Mar 2020 12:45:46 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jHoMq-0004EP-KG; Fri, 27 Mar 2020 12:45:44 +0000
Date: Fri, 27 Mar 2020 12:45:44 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Gregory Clement <gregory.clement@bootlin.com>
Subject: Re: [PATCH] arm64: dts: update SolidRun Armada 8040 phy interface
 types
Message-ID: <20200327124544.GK25745@shell.armlinux.org.uk>
References: <E1jHoHy-0002Ep-IY@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1jHoHy-0002Ep-IY@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_054605_241664_4E1D1E99 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 "Madalin Bucur \(OSS\)" <madalin.bucur@oss.nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A note for Gregorii / bootlin people:

After this patch, these still remain:

arch/arm64/boot/dts/marvell/cn9131-db.dts:      phy-mode = "10gbase-kr";
arch/arm64/boot/dts/marvell/armada-7040-db.dts: phy-mode = "10gbase-kr";
arch/arm64/boot/dts/marvell/armada-8040-db.dts: phy-mode = "10gbase-kr";
arch/arm64/boot/dts/marvell/armada-8040-db.dts: phy-mode = "10gbase-kr";
arch/arm64/boot/dts/marvell/cn9132-db.dts:      phy-mode = "10gbase-kr";
arch/arm64/boot/dts/marvell/cn9130-db.dts:      phy-mode = "10gbase-kr";

Please can you check whether these should be updated, and if so also
update them?  10GBASE-KR is the backplane variant of 10GBASE-R which
involves some negotiation.

Thanks.

On Fri, Mar 27, 2020 at 12:40:42PM +0000, Russell King wrote:
> Update the SolidRun Armada 8040 platforms phy interface types from the
> old 10gbase-kr to the newer and more correct 10gbase-r.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts   | 2 +-
>  arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts | 4 ++--
>  arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts            | 4 ++--
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> index 1e7b47affe26..006666272489 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> @@ -401,7 +401,7 @@
>  /* SFP */
>  &cp0_eth0 {
>  	status = "okay";
> -	phy-mode = "10gbase-kr";
> +	phy-mode = "10gbase-r";
>  	managed = "in-band-status";
>  	phys = <&cp0_comphy2 0>;
>  	sfp = <&sfp_cp0_eth0>;
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts b/arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts
> index 26114d96d637..b44f4c029b78 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts
> @@ -16,14 +16,14 @@
>  
>  &cp0_eth0 {
>  	status = "okay";
> -	phy-mode = "10gbase-kr";
> +	phy-mode = "10gbase-r";
>  	managed = "in-band-status";
>  	sfp = <&sfp_eth0>;
>  };
>  
>  &cp1_eth0 {
>  	status = "okay";
> -	phy-mode = "10gbase-kr";
> +	phy-mode = "10gbase-r";
>  	managed = "in-band-status";
>  	sfp = <&sfp_eth1>;
>  };
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts
> index 087a5502631e..42741adf867b 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts
> @@ -63,14 +63,14 @@
>  	status = "okay";
>  	/* Network PHY */
>  	phy = <&phy0>;
> -	phy-mode = "10gbase-kr";
> +	phy-mode = "10gbase-r";
>  };
>  
>  &cp1_eth0 {
>  	status = "okay";
>  	/* Network PHY */
>  	phy = <&phy8>;
> -	phy-mode = "10gbase-kr";
> +	phy-mode = "10gbase-r";
>  };
>  
>  &cp1_pinctrl {
> -- 
> 2.20.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
