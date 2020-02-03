Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FE61502AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 09:34:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7lQst+HBh+S/TN1Vg/rRHCxd+MAvtFHFBIMTPmfTGY=; b=n81PZ5r3WDW++c
	Lc+/I0rDGHoaritbsT2yXXsgZJ0mWEMPR4MdYb9HNhbCDZA6bshgEZlnLFbzqqjO/0p39XYCJA69s
	rRr49lAGSl7DUdWYkfDlaekmtKMfobqQbO1F6wA+OggM4BHkTouQW+AbG6aqx1fMnEK/HB9iF4DHc
	Qu4BXxGqhCReaUlhAOBTf3G7Lm6WBPUtvJVomJuMv6BHdYPxMWrXESu6SlMLoee5ZD0Bj/WzbzsTt
	F0agP+9G+5Zw1dhtwNIcSQnF/x4GxqKZNNX4pbuOk33CD4m+IQf3nT98a+Dgr3OMv2eoozKEUuTLa
	6INMkY5UJYdmJeh6MJhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyXBP-00013J-UU; Mon, 03 Feb 2020 08:34:15 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyXBG-00012k-Ky; Mon, 03 Feb 2020 08:34:08 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id E370B5E0C;
 Mon,  3 Feb 2020 03:34:05 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 03 Feb 2020 03:34:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=nLBFK/U/9FVj2QhUZ4f3HwAHrai
 1iMWaFonW+4I4K0c=; b=OG9KdFGAiPq0zqE/PDLHzu1MLCGdRi5KiJW1u+ArHue
 X8Cs0pIji51zAxpjmMPvWvOlDd28+5Bo7tdaZeGe4U5rdFxXc5HuKqUL6p749jEl
 JQZ0XCuUw7Qf/EB28byQEkOSBc0NrJaLdLouUPJjMCWC7jQQsKrB/RnPvHtiRJhN
 Pe+4PGzpsoKA2yopk8rauKZzAmRb5R5fTL6MxtsJk2pMtNUEhGGMw5Tmh1JCAVIS
 3yGzEEPTmNp/4lWMuoZZEksiXJKj//ITOJ7Vw6kcl8eEpSYNcHHA2BNz1xOmd+xq
 0xQc/yX4vTUitoQRR8+1NQeC31Ifkm6jIe+bPMkKtXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=nLBFK/
 U/9FVj2QhUZ4f3HwAHrai1iMWaFonW+4I4K0c=; b=KhGuh51D/CSZ65vh1myQT8
 n4080jUEBAfLd6IDKptRu95IDkPM5XEfSD8lPiB7ZAzD6Dy2leIjyjsR0jz6fuUp
 h2ct+PLKYSsSPvDe+XoH0/DBuMqMNq1fgm/z+TBJ/kzbk05jTtRTkSe2riHhoGhb
 pFzp2SbYzeinjEG2BoWe5cphHewZMzKPngWenRByJbA6EDJK1aB/ix8GP621p9Mo
 JwYm3N3dzmNWSLrMCASiMRM2NghrKnI4Bd0IrmRPp72pPAUu0VkgwfAQn5ApInio
 ga/7VwIW93BfrelbNqsXcbYdwxjjcBbSAPhK+MjRgYFP3ktQe2sdUP9NkD8+Mzsw
 ==
X-ME-Sender: <xms:_No3XvOvOla3tF1qtF3HMGkOBEqVEfLW2waWH19XXLvY6i-BtBNZ9g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeeigdduudelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:_No3XmQpwCAipjGOIXx6hkjModXzQzO7vyowyRZLL9dbwyUyKBnfzA>
 <xmx:_No3XhCBMIa7P20bA78hxrNE-hxojAIWbTuGyKYQ0qS4rweRgpS1gw>
 <xmx:_No3Xljz7mk0H9yOHbdQx_AwufJ75RTzT2FDMov30urE1_EqS_cZUQ>
 <xmx:_do3XokOnmeCMkCr77nfM_bhUWmqivs3Zjnyk0eczQy-rDl7et9_ug>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 98B763060187;
 Mon,  3 Feb 2020 03:34:04 -0500 (EST)
Date: Mon, 3 Feb 2020 09:34:03 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 11/12] dt-bindings: arm: Document Broadcom SoCs
 'secondary-boot-reg'
Message-ID: <20200203083403.6wmuduxqsv7quujp@gilmour.lan>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
 <20200202211827.27682-12-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200202211827.27682-12-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_003406_828956_D01C961F 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Scott Branden <sbranden@broadcom.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Sugaya Taichi <sugaya.taichi@socionext.com>,
 Ray Jui <rjui@broadcom.com>, open list <linux-kernel@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@vger.kernel.org,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 02, 2020 at 01:18:26PM -0800, Florian Fainelli wrote:
> diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
> index c23c24ff7575..6f56a623c1cd 100644
> --- a/Documentation/devicetree/bindings/arm/cpus.yaml
> +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
> @@ -272,6 +272,22 @@ properties:
>        While optional, it is the preferred way to get access to
>        the cpu-core power-domains.
>
> +  secondary-boot-reg:
> +    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    description: |
> +      Required for systems that have an "enable-method" property value of
> +      "brcm,bcm11351-cpu-method", "brcm,bcm23550" or "brcm,bcm-nsp-smp".
> +
> +      This includes the following SoCs: |
> +      BCM11130, BCM11140, BCM11351, BCM28145, BCM28155, BCM21664, BCM23550
> +      BCM58522, BCM58525, BCM58535, BCM58622, BCM58623, BCM58625, BCM88312
> +
> +      The secondary-boot-reg property is a u32 value that specifies the
> +      physical address of the register used to request the ROM holding pen
> +      code release a secondary CPU. The value written to the register is
> +      formed by encoding the target CPU id into the low bits of the
> +      physical start address it should jump to.
> +

You can make the requirement explicit (and enforced by the schemas) using:

if:
  properties:
    enable-method:
      contains:
        enum:
	  - brcm,bcm11351-cpu-method
	  - brcm,bcm23550
	  - brcm,bcm-nsp-smp

then:
  required:
    - secondary-boot-reg

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
