Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B5210C5B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 10:12:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+FEIbW4vanfNQcZWhL1vQaU/B/GFDMFaMehQlFbXZM=; b=k1mAANJGrdAmcK
	FVEHD1rbRuCrqZnZjI0QWmBvIErfZpSPI8rR4h8sjzazR4piETfHFjfnbI2ExVh8DaEd6JQYh1NAK
	zE3RTbn/qkvvMmg+dE5qAQwYP815hNaYfOQR8mLVyg4gdEo3KWQIZbNveSzpTxG5gFC+qnh7bX0hR
	M/79m+/i3jL/AViDmrv9iUvNmMNa9nyPnrcAjYcfa2OUUy3tp5iYajN0rDYZoNfP+cyiYjlhbz7pX
	hZDXaMSVcisK1LM6Qm558bPXBhMqeiGFaQtSWCseWQIkjCC9AuWKFm56qXtOXS61GexpQGRMeUszI
	P23bEDyLDIyB4q0v9cCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaFqI-0004Bh-FC; Thu, 28 Nov 2019 09:12:06 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaFq8-0004Aj-Ro
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 09:11:58 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 136C42056B;
 Thu, 28 Nov 2019 10:11:52 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id E3DF120234;
 Thu, 28 Nov 2019 10:11:51 +0100 (CET)
Subject: Re: [PATCH] arm64: defconfig: Change CONFIG_AT803X_PHY from m to y
To: Oliver Graute <oliver.graute@gmail.com>
References: <20191127124638.GC5108@optiplex>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <1ed54a69-c29f-6008-02ae-11d16f68b265@free.fr>
Date: Thu, 28 Nov 2019 10:11:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191127124638.GC5108@optiplex>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Nov 28 10:11:52 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_011157_048439_68B2A15B 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
 =?UTF-8?Q?Andr=c3=a9_Draszik?= <git@andred.net>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 dl-linux-imx <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/11/2019 13:46, Oliver Graute wrote:

> On 27/11/19, Marc Gonzalez wrote:
>
>> On 26/11/2019 15:54, Oliver Graute wrote:
>>
>>> this patch broke my imx8qm nfs setup. With the generic phy driver my
>>> board is booting fine. But with the AT803X_PHY=y enabled  I'm running
>>> into the following phy issue. So on my side it looks inverse as on
>>> yours. What is the best proposal to fix this?
>>>
>>> [    5.550442] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
>>> [    5.573206] Sending DHCP requests ...... timed out!
>>> [   95.339702] IP-Config: Retrying forever (NFS root)...
>>> [   95.348873] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
>>> [   99.438443] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
>>> [   99.461206] Sending DHCP requests ...... timed out!
>>
>> Which DTS are you using?
> 
> I'am using this DTS which I'am currently working on:
> 
> https://lists.infradead.org/pipermail/linux-arm-kernel/2019-October/689501.html
>>
>> I bet one dollar that 6d4cd041f0af triggered a latent bug in the DTS.
> 
> So what should I fix in my device tree?

In the board DTS I used to work on, I had this:

&eth0 {
	phy-connection-type = "rgmii-id";
	phy-handle = <&eth0_phy>;
	#address-cells = <1>;
	#size-cells = <0>;

	/* Atheros AR8035 */
	eth0_phy: ethernet-phy@4 {
		compatible = "ethernet-phy-id004d.d072",
			     "ethernet-phy-ieee802.3-c22";
		interrupts = <37 IRQ_TYPE_EDGE_RISING>;
		reg = <4>;
	};
};

In your DTS, you #include "imx8qm.dtsi"
I found no such file:
$ git ls-files | grep imx8qm
drivers/pinctrl/freescale/pinctrl-imx8qm.c
include/dt-bindings/pinctrl/pads-imx8qm.h

In your patch:
https://patchwork.kernel.org/patch/11211567/

+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-txid";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	fsl,rgmii_rxc_dly;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <4>;
+			at803x,eee-disabled;
+			at803x,vddio-1p8v;
+		};
+	};
+};

Try all possible 'phy-mode' (rgmii, rgmii-id, rgmii-rxid, rgmii-txid)
Investigate 'fsl,rgmii_rxc_dly' (it's not a standard Linux DT prop)
Documentation/devicetree/bindings/net/ethernet-controller.yaml

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
