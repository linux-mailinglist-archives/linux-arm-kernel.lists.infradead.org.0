Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C9E9EF7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DnaU4eFhog2TmExDkC+wv4hvZ81rShTzreVaRNxHRIk=; b=DgB4UTGiNyICoc
	IcbKL3Jfid+EtqjLfWOkK2YksS8BwRzch4z9jM2rhN42M+DC9gnx4QUmCdsL9cW+4z5zokhDHblSD
	ru11c7zeWFXqWW15ucYHriuTMJn5PGx4UfW81MaDixSUtDT5nPR7CIPsaeQxC5t4Ajb7SyfT89mvC
	WgkE6Z2j0AaGA9fp/21kBzn0ReV/QCk/oLS929eW2k4MENADJH1onqqdm1HLPOXCblm9iq4ianZby
	owkPEKf4Fltz17YX5egKH8yrcW02ox5emfebjQMIar/Q7WDChW2aBqTshaHERAGIfnVzzY+VinIga
	1EoKNhXMoT1O9N4v/9/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dpm-0005Vi-4A; Tue, 27 Aug 2019 15:56:38 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dpc-0005VK-VS
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:56:30 +0000
Received: by mail-oi1-f195.google.com with SMTP id p127so6738623oic.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 08:56:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=496l2D/NBnu+OvAkK9jRIei3uNVRt46Ohb23zKW6VBA=;
 b=pfs9h7FJv6TfFIIlh7jstFid2VY6fq3sN/6gpDwMuhw58PxCrcq7EQiq1f8zjjgbeR
 ++bgzLE33ak6j3UzjyrRQ9nzTBX3Jp/RZ9T7DJkB7wQRIEg6gXwUE2kf6OyGw2pZ93Qt
 ZY2JZ7rbZwtwcBP3rOOpc9hANIOOZQqdHK/n1TFb0n0CVyOr1bVNtA9W5i/TamG34Jgo
 +WADQSMdmts7jTKCn7Zjb4tarv8VLl8eDgGDLIn1lFgpndD6L7s/2PBsBwlr/7/SPILm
 1LcEUOD451cVaJkOMUjX7e3Z2LOdtU3r7uMtIqmEOlXCPOEFV2a6FDs/dl94p5AH8/Tg
 2XAw==
X-Gm-Message-State: APjAAAW3w/uzl0G0QZIK94vNSqTOvpWtqvVBEZ4uJcgfMaSFhBGtcGXo
 HeJOy0ry5KYXYVSiiSfdTA==
X-Google-Smtp-Source: APXvYqw99eOThTzexUEoPloxhW15jSlo6SFvfq/fyqIVqp8VzElz20lzUAUloqaV3S+Cnxsg4g40dw==
X-Received: by 2002:aca:c6d8:: with SMTP id w207mr15904130oif.94.1566921387977; 
 Tue, 27 Aug 2019 08:56:27 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u5sm4384898oic.45.2019.08.27.08.56.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 08:56:27 -0700 (PDT)
Date: Tue, 27 Aug 2019 10:56:26 -0500
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Subject: Re: [PATCH 2/2] dt-bindings: imx6q-pcie: add
 "fsl,pcie-phy-refclk-internal" for i.MX7D
Message-ID: <20190827155626.GA29948@bogus>
References: <20190813103759.38358-1-git@andred.net>
 <20190813103759.38358-2-git@andred.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813103759.38358-2-git@andred.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_085629_016810_62C782F2 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Richard Zhu <hongxing.zhu@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 11:37:59AM +0100, Andr=E9 Draszik wrote:
> The i.MX7D variant of the IP can use either an external
> crystal oscillator input or an internal clock input as
> a reference clock input for the PCIe PHY.
> =

> Document the optional property 'fsl,pcie-phy-refclk-internal'
> =

> Signed-off-by: Andr=E9 Draszik <git@andred.net>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-pci@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> =

> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt b/D=
ocumentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt
> index a7f5f5afa0e6..985d7083df9f 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt
> @@ -56,6 +56,11 @@ Additional required properties for imx7d-pcie and imx8=
mq-pcie:
>  	       - "turnoff"
>  - fsl,imx7d-pcie-phy: A phandle to an fsl,imx7d-pcie-phy node.

Not sure how this got in, but why is the phy binding not used here?

>  =

> +Additional optional properties for imx7d-pcie:
> +- fsl,pcie-phy-refclk-internal: If present then an internal PLL input is=
 used
> +  as PCIe PHY reference clock source. By default an external ocsillator =
input
> +  is used.

Can't the clock binding and maybe 'assigned-clocks' be used here? =


Also, this is a property of the PHY, so it belongs in the PHY's node.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
