Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE261166FD9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 07:50:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lgD+CcEnVxMczp0LmpOdo+8czTXQDQYnMsPiX0Mgj8M=; b=CotMYpBSPGSmoZ
	QzU3iwfxe4Lhu48w9CeUY7VRpVt8KkBmCjH01VkIGUZKP/R+x/KjsLVzPL9ravK6CNPhHfVUV9LNZ
	ajq2pwPUPmU5SQ/2J9eQnXqtbo23zQaE1VB1QsiwIJZqarxnTpMjQ++BOJozGD8o4Rv5cW0MH1tNX
	rYAMJOGlUGNFLj315OMTxbILHjYSl4Qwsxahpl/D6mb5gmJidnoJeY4fM7BVGDLlHftiBCwW7p3Pk
	gUwbhrK2TkVTF/TOqLEsFRdzf5Nf0mzEqfEBpIAnkORtkZqtf8IVNko3M8+T3EYhCBlSQ1ckLXvLe
	G5397gLXVTZHcSPbHHIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j528v-0002Fh-6w; Fri, 21 Feb 2020 06:50:33 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j528i-0001tC-1A
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 06:50:21 +0000
Received: by mail-wm1-f68.google.com with SMTP id t14so493678wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 22:50:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=q61/N6jKzSDGt/dt2Ij4V86BCpsgubUQTNr9KPnbsfA=;
 b=VzXfMrb9VSxxxrTJ5DDpS1xdw0dsZ3h+H5ZwFs9uigBL9YpFt0PFhdr3SG3lZ+hF7Q
 Gm/KInKtrOYR51jFwrjfeMxvPtSXPOVGtYZGXsxTAJoT3fhttjsQdAJNkWjBFqJuqzhk
 7odQ6VLtaVDtHK5Zqt45oi8BKD0XLZoXyON7wer0RfUMNVXnJjx/DHDGjMach0Ar6nBP
 qeapLe03hmprJaKD4rfHRQIQRlx1a1es69I4nvOSgqGGNObe6LZ83WBcbd2EA5q9j/0h
 rs/XY11RvXFxQwhdws8EjTVo0BDLdjtC8kPB3iG28X8ILnPe4HeYCf3cm+bwcJNm6IAh
 9fpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=q61/N6jKzSDGt/dt2Ij4V86BCpsgubUQTNr9KPnbsfA=;
 b=Hn7sgDaep5I2XNL3+AEZly+NZgY0aMEV3eyiXnYXHLQc5tpnB2Jlw3Jw06mn/xmTeM
 CG0KgNoOxhxOORgZSLN0O8OSB8KxxempcpNCQ88rNhZrg09DCsWeHnGKuM4AiV72Sjnq
 mXn4kexZZQsVkeiMKpo95Yo93sCKNsknx2xl5vYc27pyXLnfkPEIq5GBj5G2kZ8p0Hcy
 iTHmMJS5QS2tpSslB8ucFPe9+MpLkQY6cErbA+yw1ikYayIFwKBXLdvoaVmiSRqIEznG
 U5WUP3c4WYSQSiwOBeRry4PnQzi4MuXcix/9Sj7vfYigD3fGOQ2aL0hjH36yKMmxTeYg
 HEYA==
X-Gm-Message-State: APjAAAW9kwQ3H6rN31DK6cNdhlTcCUtEDGnhuTaHA5aUbbQoWLdPlvzM
 3+8SW2IQBmcxk3CCJa3zL5E=
X-Google-Smtp-Source: APXvYqzEZJwZsv9NAveAC2FjcWcHpl771MrGsbDrYjQQgJbqUJeWLRf2jv4lld17Hkk9bm6M9EG3Ag==
X-Received: by 2002:a7b:c152:: with SMTP id z18mr1742573wmi.70.1582267812932; 
 Thu, 20 Feb 2020 22:50:12 -0800 (PST)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id h205sm2551959wmf.25.2020.02.20.22.50.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Feb 2020 22:50:12 -0800 (PST)
Date: Thu, 20 Feb 2020 17:04:41 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: aisheng.dong@nxp.com
Subject: RFC: imx8: imx8qm with LCD Panel on lpspi
Message-ID: <20200220160441.GC31464@optiplex>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_225020_097446_57E0C9C3 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oliver.graute[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, peng.fan@nxp.com, Anson.Huang@nxp.com,
 linux-imx@nxp.com, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Aisheng,

I try to get a LCD Panel working with the imx8qm. The Panel is connected
to lpspi. But I'am not sure if I handle the imx8qm clocking the right
way. Should I use the imx7ul compatible or the imx8qxp compatible? Which
clock defines should I use for the SPI1 Clk?

Best Regards,

Oliver


	lpspi1: lpspi@5a010000 {
		compatible = "fsl,imx7ulp-spi";
		/* compatible = "fsl,imx8qxp-spi"; */
		reg = <0x0 0x5a010000 0x0 0x10000>;
		interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_HIGH>;
		interrupt-parent = <&gic>;
		clocks = <&clk IMX_ADMA_SPI1_CLK>,
		         <&clk IMX_IMG_IPG_CLK>;
		clock-names = "per", "ipg";
		assigned-clocks = <&clk IMX_ADMA_SPI1_CLK>;
		assigned-clock-rates = <20000000>;
		status = "disabled";
	};

&lpspi1 {
	#address-cells = <1>;
	#size-cells = <0>;
	fsl,spi-num-chipselects = <1>;
	pinctrl-names = "default";
	pinctrl-0 = <&pinctrl_lpspi1 &pinctrl_lpspi1_cs>;
	cs-gpios = <&lsio_gpio3 24 GPIO_ACTIVE_LOW>;
	status = "okay";

	panel@0 {
		compatible = "sitronix,st7789v";
		reg = <0>;

		/* reset-gpios = <&lsio_gpio3 11 GPIO_ACTIVE_LOW>; */

		backlight = <&lvds_backlight1>;
		spi-max-frequency = <30000000>;
		spi-cpol;
		spi-cpha;

		port {
			panel_input: endpoint {
				remote-endpoint = <&tcon0_out_panel>;
			};
		};

	};
};

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
