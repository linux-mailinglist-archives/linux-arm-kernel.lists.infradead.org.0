Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE2C69FED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 02:36:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0ETsGnSipSCjSkEvV11v+WAe4i4T7Uaa+rOwV3txzw=; b=ubBY6sAVDzStWU
	nccFhTj+iybLCNRtovU9ncJL7v65clSRX26imBAIa6RViV3sBAMk7HrFqO4qsSgdCU5G070qelqGH
	56F+TWUFkQR2lDpfF8E857siEOIh9qvpwSrYfUHo1z9PaUPrVySW/cD+gdONLLehp0RTWkKqJbZdc
	qhIdCKMnl/fRtDhSW4bWhmtca0cWyRWpkokU9iK4fSYka8TzCfjFKWPLEs3ohX66J6J+zw+yB9AZA
	cwodoKsx3ZKYquxQn1BTi0oFpReGw4rd8xDS6JrjHMVUV8AEDPEsBe4VcRpxBaLE3UyTJwLFocLv0
	h6iyIAtBcgc1LMBEG6zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnBSF-00052U-Hu; Tue, 16 Jul 2019 00:36:27 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnBS1-00050l-1C
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 00:36:14 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7747D24B2;
 Mon, 15 Jul 2019 20:36:03 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 15 Jul 2019 20:36:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=lu8e+uCpgbaeLhKrGOVG0g/dTSb7gKM
 npkRfxw4hnDQ=; b=CYq86GPnRvAbQqnT2FQI3ZjJn7JEKJ6/kCZGW6/rVpaKIx0
 6tIja+Q+ZIuxE5X44URf7fyZ3rUL4CtvEWzufsQjebuEEbtx2NrMZwh3g8HRKb6l
 l3/72gv/btltkUQw/Fp5NX2XavEPhwsP2c+imP2mEnA7elhaTvbdJaJlU/AMpwH0
 eOM66D9yG3aB1le5GlPQylnCkrq72DsGbf0VO7nTxx43ApABa3PLxLiXhmoJCJ9l
 X3Ufau7GXlGsukGNQPR3JSaLdmSemnKF22exKUAlJXlj7Q8fp1kBVMo0dGmAKVtD
 xY+ealemevz/uXhvgjF+FF8WJi7xOXNRFJDjo5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=lu8e+u
 CpgbaeLhKrGOVG0g/dTSb7gKMnpkRfxw4hnDQ=; b=kJub+36ucMMFuieARDasOv
 lsAgmPBfaMZ4Wc57Q6fKdhHHT9Wmi49Z1p5ujybwhDI6o0RK9VXtjrKyifLk4zgw
 LdQpoQtpJv/YchjSDQ6fWMzRPEWHliUhGl+Cb8+BCDk/WDL/U11qfB3KmTM+P4X1
 RF3cYrAdlVFNnvrxaqA5RWwiGkl3AvO80MmNnmVNngPCTMmquEqh6brv3VARppJv
 x8uDsF6342/PGf8w5IwTegVp68jvyWL3YXO7h4Jl4DxLTtI/JkCPxbc242oznut2
 BdActXPVesaGfTK/LX8zr5JPQ/avgZg1jeTAiU6pqeftTqLLwVWGYdRyP11AHiYA
 ==
X-ME-Sender: <xms:8RstXbjUkbDEu6j9WWlg6myxUP9fREb4cOApbg4gAALYd2Qct0eaMw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrheelgdefgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucffohhmrg
 hinhepuggvvhhitggvthhrvggvrdhorhhgnecurfgrrhgrmhepmhgrihhlfhhrohhmpegr
 nhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:8RstXZRWqojCpwkGqjHuSrQ_imrsnMcNF1PXhMvKeMU8jfiicGMSXg>
 <xmx:8RstXYIy0v0wBG8DskTXa26bDwW9UX_Cy8UvFvpICHADvmCKVKSFAw>
 <xmx:8RstXbRP3ApibNVpb_MEzmkgh8GWXVhVDZDaDFzNUT084jBMN6NBog>
 <xmx:8xstXdgtSACnczm7UywOQVm9o6iC8wpf4sNneKB1XIPEszck4oB3Sg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 8ED2AE01C8; Mon, 15 Jul 2019 20:36:01 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-731-g19d3b16-fmstable-20190627v1
Mime-Version: 1.0
Message-Id: <3fe55ea9-b949-48a0-9eab-90ad3bc1ee2a@www.fastmail.com>
In-Reply-To: <CAL_JsqLkOtsAxj9NvNB=EEkH00k-dtNedNY042uuntSmcjhDhA@mail.gmail.com>
References: <20190712033214.24713-1-andrew@aj.id.au>
 <20190712033214.24713-2-andrew@aj.id.au>
 <CAL_JsqLkOtsAxj9NvNB=EEkH00k-dtNedNY042uuntSmcjhDhA@mail.gmail.com>
Date: Tue, 16 Jul 2019 10:06:11 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Rob Herring" <robh+dt@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: Document Aspeed SD controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_173613_216948_E5A86AA4 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Ryan Chen <ryanchen.aspeed@gmail.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 16 Jul 2019, at 07:47, Rob Herring wrote:
> On Thu, Jul 11, 2019 at 9:32 PM Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the
> > SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> > data bus if only a single slot is enabled.
> >
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > ---
> > In v2:
> >
> > * Rename to aspeed,sdhci.yaml
> > * Rename sd-controller compatible
> > * Add `maxItems: 1` for reg properties
> > * Move sdhci subnode description to patternProperties
> > * Drop sdhci compatible requirement
> > * #address-cells and #size-cells are required
> > * Prevent additional properties
> > * Implement explicit ranges in example
> > * Remove slot property
> >
> >  .../devicetree/bindings/mmc/aspeed,sdhci.yaml | 90 +++++++++++++++++++
> >  1 file changed, 90 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > new file mode 100644
> > index 000000000000..67a691c3348c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > @@ -0,0 +1,90 @@
> > +# SPDX-License-Identifier: GPL-2.0-or-later
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mmc/aspeed,sdhci.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ASPEED SD/SDIO/eMMC Controller
> > +
> > +maintainers:
> > +  - Andrew Jeffery <andrew@aj.id.au>
> > +  - Ryan Chen <ryanchen.aspeed@gmail.com>
> > +
> > +description: |+
> > +  The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the SDIO
> > +  Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit data bus if
> > +  only a single slot is enabled.
> > +
> > +  The two slots are supported by a common configuration area. As the SDHCIs for
> > +  the slots are dependent on the common configuration area, they are described
> > +  as child nodes.
> > +
> > +properties:
> > +  compatible:
> > +    enum: [ aspeed,ast2400-sd-controller, aspeed,ast2500-sd-controller ]
> 
> This is actually a list of 4 strings. Please reformat to 1 per line.

On reflection that's obvious, but also a somewhat subtle interaction with the
preference for no quotes (the obvious caveat being "except where required").

Thanks for pointing it out.

I have been running `make dt_binding_check` and `make dtbs_check` over
these, looks like I need to up my game a bit though. Do you do additional things
in your workflow?

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
