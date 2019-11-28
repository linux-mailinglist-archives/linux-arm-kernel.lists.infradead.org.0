Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB92E10CA73
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 15:36:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8gqFmpPoREfK6DyMpYuA+x5dJlZ0tCBd/R5TXpw1ZEI=; b=RoDjrHvX7LX+Fh
	hT3OdmYyjBMP+xvXjdb2oq5yoTunA0DZMnla2iGVuLFUd4+IhCGi3U5aRJTP3LBk1niuDKq/E1PUe
	dcFIReJCfRjUv8xE0UowGQXVSFIcWsNk/TcDc2LRxmqmRfVYfnoVM+xrB3InyzBjTeSG3dxBP/NG6
	QWipENIHr+29DS1p30te/Esgm2hTCK0qtxCeG3zVtrWKHNQouH0/z1XlpAgrT4EnCy0tvmn/1mkhk
	FKG9wZAEkop30LjrXVAkf3ebrDDE/4rUz6h1t6kEugYzoDwNdwnhNr0tn0tx2WBk/NliPvG8HOz+m
	l95l+Pc4iSbJQbeIlkTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaKu5-0008QL-SU; Thu, 28 Nov 2019 14:36:21 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaKtp-0008Pc-7x
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:36:07 +0000
Received: by mail-wm1-x342.google.com with SMTP id l17so11234677wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RKiEZcP/L0A2rXbC8H4X5BIo7afN1A6dEGoky6fB7+8=;
 b=RhXR0ZeX7CH630cBBVDoTbDoIg+bfQnEe2e5PKJaG+yclednb5kM9Y8Eng7aDWJBHD
 FU+5IR6gwHueelOoVC5PQ9vj7rTsr6WVwO/xezZKm9KcUrDbc3Y5NXad2IRnlpsxCcqK
 Gss6Um5uf+b8l7ectAJJFFZnmILUBtHFPQkOue+8KkSReFVzzVWOau+8x2QV2jTKpVYL
 nyzYgq5pEwhmLshnmQ3nFu6lftJ7Biw967BKpgd1OE56aukGAWt0nMdm00/+wDERZqc3
 DmGmmlALK+fd77in10AzgYAaYH6EW0ZfplukAUtqjF0UMXZX/qOaWtJlVTN1gUV6QRfJ
 6q0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RKiEZcP/L0A2rXbC8H4X5BIo7afN1A6dEGoky6fB7+8=;
 b=ZOUH4Yl8lcZLLYYcx0Xyb8Azf/FBe2rrI9Dm46CA9UhMzJN0f2irKdTHrwjg7yOzBv
 FKdoA9c9uDJnOwz9ajpxHlILTsLUDqZE+EjI9f/mlNvkOfEG0UBb39eNQRACmIKZU/Hk
 luSUi3b/9+K3u4zPWaQWEawIdVJ9C4SB46Bz6UwKpfdcbuLM/mTIWVY0GvnlM4atkiZU
 kMt9HFhfcejUTaB3daE6C2Xayqjr+bDaJg32hylwlqlaUPVGKos6bs1Vj5PdTSL3xkSQ
 FsJCttd3YzQ470J3xndSZqsmO3R8KcmKd0yWVdWHol70Mya+aOOtrZKZrsQF60EkMKuc
 Sxgw==
X-Gm-Message-State: APjAAAXgZgRUWlnyzThkv8MnuWSQwAVGHmuOS+Dml0xDvUYtZGl3Ig/i
 DFx+/KgUIwEc6caGixA3oZA=
X-Google-Smtp-Source: APXvYqz92pJeCW/D9VAvn7Uh3kFxNyM3AMWtDGRKPIpvVxERBR51hrNagMQf2h4L/AmqzwtIH2/3AA==
X-Received: by 2002:a7b:c95a:: with SMTP id i26mr10220347wml.41.1574951763538; 
 Thu, 28 Nov 2019 06:36:03 -0800 (PST)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id m15sm23751006wrj.52.2019.11.28.06.36.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 28 Nov 2019 06:36:02 -0800 (PST)
Date: Thu, 28 Nov 2019 13:16:44 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH] arm64: defconfig: Change CONFIG_AT803X_PHY from m to y
Message-ID: <20191128121644.GD2460@optiplex>
References: <20191127124638.GC5108@optiplex>
 <1ed54a69-c29f-6008-02ae-11d16f68b265@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1ed54a69-c29f-6008-02ae-11d16f68b265@free.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_063605_282524_AFA7BD7F 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [193.47.161.132 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Peng Fan <peng.fan@nxp.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Anson Huang <anson.huang@nxp.com>,
 =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 dl-linux-imx <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/11/19, Marc Gonzalez wrote:
> On 27/11/2019 13:46, Oliver Graute wrote:
> 
> > On 27/11/19, Marc Gonzalez wrote:
> >
> >> On 26/11/2019 15:54, Oliver Graute wrote:
> >>
> >>> this patch broke my imx8qm nfs setup. With the generic phy driver my
> >>> board is booting fine. But with the AT803X_PHY=y enabled  I'm running
> >>> into the following phy issue. So on my side it looks inverse as on
> >>> yours. What is the best proposal to fix this?
> >>>
> >>> [    5.550442] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
> >>> [    5.573206] Sending DHCP requests ...... timed out!
> >>> [   95.339702] IP-Config: Retrying forever (NFS root)...
> >>> [   95.348873] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
> >>> [   99.438443] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
> >>> [   99.461206] Sending DHCP requests ...... timed out!
> >>
> >> Which DTS are you using?
> > 
> > I'am using this DTS which I'am currently working on:
> > 
> > https://lists.infradead.org/pipermail/linux-arm-kernel/2019-October/689501.html
> >>
> >> I bet one dollar that 6d4cd041f0af triggered a latent bug in the DTS.
> > 
> > So what should I fix in my device tree?
> 
> In the board DTS I used to work on, I had this:
> 
> &eth0 {
> 	phy-connection-type = "rgmii-id";
> 	phy-handle = <&eth0_phy>;
> 	#address-cells = <1>;
> 	#size-cells = <0>;
> 
> 	/* Atheros AR8035 */
> 	eth0_phy: ethernet-phy@4 {
> 		compatible = "ethernet-phy-id004d.d072",
> 			     "ethernet-phy-ieee802.3-c22";
> 		interrupts = <37 IRQ_TYPE_EDGE_RISING>;
> 		reg = <4>;
> 	};
> };
> 
> In your DTS, you #include "imx8qm.dtsi"
> I found no such file:
> $ git ls-files | grep imx8qm

yes this file is not yet added to Shawn Guos next tree.
Latest patch can be found here:

 https://patchwork.kernel.org/patch/11248331/

> 
> In your patch:
> https://patchwork.kernel.org/patch/11211567/
> 
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec1>;
> +	phy-mode = "rgmii-txid";
> +	phy-handle = <&ethphy0>;
> +	fsl,magic-packet;
> +	fsl,rgmii_rxc_dly;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <4>;
> +			at803x,eee-disabled;
> +			at803x,vddio-1p8v;
> +		};
> +	};
> +};
> 
> Try all possible 'phy-mode' (rgmii, rgmii-id, rgmii-rxid, rgmii-txid)
> Investigate 'fsl,rgmii_rxc_dly' (it's not a standard Linux DT prop)
> Documentation/devicetree/bindings/net/ethernet-controller.yaml

thx for this hint.

Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
