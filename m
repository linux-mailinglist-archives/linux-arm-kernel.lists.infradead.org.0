Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CBA98654
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 23:13:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwIPYmLQanEfgaJe0KxG/OirTk12v9Vjw4xMfWmY+IM=; b=PxNNXNjx2NpSM3
	VnuacD2eCOwjXY8gB+dB5DgK0mlsjkm/SOvwROSI0o5PYK0nIn7gF1rS7+tGD/HIj6f+Vl51N1+oS
	iXCLzCMP3IhFzbUJ1WDZrQ/G5/OLMi/COnTvfkQU5k+pC8/I6bfBq2/vGIF1SSOiNVRUnoDEdSR08
	Z+S3OlwZKgjQ7lymnTZiRseSjUzoIDT49khm5xEkS41CxW5duT8FTmH6nf3ictVXXFX4toVymfi1s
	PzshN/gqCMxTfPpb0nSkdoxeeSw/QkU78j9WrRdTg/Lw+5lEgH3RLyKmNahnv31RsN+NK61EU3bqQ
	Me44qI0T4ZobkZpefZZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0XvC-0006C1-T2; Wed, 21 Aug 2019 21:13:34 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Xv2-0006BU-Fb
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 21:13:26 +0000
Received: by mail-ot1-f68.google.com with SMTP id b1so3447739otp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 14:13:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DlphJMx4PV9qLWiQ86VK3TgLQxXCfQ+knFHYAIuA5Ik=;
 b=hZa9/RRfKqNkg5mndjWwMi5JPamXzcuk3tyyBKksfBNH33+8OOgqsderTfgGXPIvec
 IfGcDKFy2FbW1awDWa8YnA+T2SQ6upU0X1HWW9Y+PtjLb9GeEUUTj6B2c7LfnsI6gNB3
 EUMcYFl4i4BR9eh4P9Zk6TsIdf/30u/qDvF0OErfBBCnnx261MAR/qqQz6uKBPMIY4nm
 FdPucd0A18ZRZynrHgFEKNAYFrf1GKOkHupcAv67OyYws27v8btMYx2gvx4Ho4CIdFWJ
 BQ6bRdH+ms9Br4AC7N42o2O2dmgPLW21R3GbbBbdL8Gr+LBD3HirOaUZQTNYmXdH6Me2
 h0bA==
X-Gm-Message-State: APjAAAUMC4GPw8uiz01987VoURKpT65vuZxXtfGGqUL0I/dVqpSq3iTm
 oJs8Gii7DvtV0W7pqqHGTRA0HoM=
X-Google-Smtp-Source: APXvYqxe6j0dbYUWNdi9Juyx9Aja0v51eVfa9yGrlfykgD7zu1GxDpXPwvZ2wbOONxfzCfKKid12kA==
X-Received: by 2002:a05:6830:1018:: with SMTP id
 a24mr1654419otp.191.1566422003778; 
 Wed, 21 Aug 2019 14:13:23 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t10sm8052271otb.13.2019.08.21.14.13.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 14:13:23 -0700 (PDT)
Date: Wed, 21 Aug 2019 16:13:22 -0500
From: Rob Herring <robh@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH 04/19] dt-bindings: phy-mmp3-usb: Add bindings
Message-ID: <20190821211322.GA12457@bogus>
References: <20190809093158.7969-1-lkundrak@v3.sk>
 <20190809093158.7969-5-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809093158.7969-5-lkundrak@v3.sk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_141324_875454_0F0C09E1 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 11:31:43AM +0200, Lubomir Rintel wrote:
> This is the PHY chip for USB OTG on MMP3 platform.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---
>  .../devicetree/bindings/phy/phy-mmp3-usb.txt     | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-mmp3-usb.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-mmp3-usb.txt b/Documentation/devicetree/bindings/phy/phy-mmp3-usb.txt
> new file mode 100644
> index 0000000000000..b9623b98151bc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/phy-mmp3-usb.txt
> @@ -0,0 +1,16 @@
> +Marvell MMP3 USB PHY
> +--------------------
> +
> +Required properties:
> +- compatible: must be "marvell,mmp3-usb-phy"
> +- #phy-cells: must be 0
> +
> +Example:
> +	usb-phy: usbphy@d4207000 {

usb-phy@...

> +		compatible = "marvell,mmp3-usb-phy";
> +		reg = <0xd4207000 0x40>;
> +		#phy-cells = <0>;
> +	};
> +
> +This document explains the device tree binding. For general information
> +about PHY subsystem refer to Documentation/phy.txt

Drop this statement.


> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
