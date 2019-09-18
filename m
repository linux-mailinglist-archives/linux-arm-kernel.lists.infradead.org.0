Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 428BFB6329
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1B8lmek3p4iNnT9lApnXEdmN+q6FOpoRzWFxdRc/l6Q=; b=jqcu0Vz0yAXjcY
	sjtPYJZBTtd/8l2oQA6pnpNv1bqCsG9D0MXtYzDNf9pWcJcpzKytZjE6yN7MagyLMPHPNOfM0S2dv
	vBN9cJ55HB7MT6/E3/EoG977uYDG/F5DG1MDxGWYY1+iWnKNNbxMvRVgbV6/CWbDjXcWYCHnCd+GJ
	qAwyuqFse9fzLS5fAwGNVfwdqaPppb0+Nzys8bJ624I2OULq6pBadgLd+nEB5uwpPOE+GEj+WvU1e
	RHlwotkjmQneg88ylNyimbCzKXkGmOWeVwR53u020J/89XpaidQZYmad05AkcMKtS2MMqEd7nW6lh
	8xkeCWVyPDLvPGRKfPPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZ1q-0006ky-Kn; Wed, 18 Sep 2019 12:25:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZ1R-0006kQ-9c
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:25:27 +0000
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C298321907
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 12:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568809524;
 bh=SxzYIfH5rjzK9wl9N5FzlwSoGYp9dCn7lmb1V3FIxy4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HsARNV7wv+/hb1F5VTpCBxAdSCoV4G9AS4Q2I/2QSEKi6Wu0FLFfuLtIN38Z58ID8
 WnQkBYoLyZR/4XX24wB41fpa0knllyMxXiwhBnPMml89p4K1Sh6cLFGxI9YZkJNFUk
 25Ol0lYYJz4al1Jb0yNGOKMx4Rl74YHDX4CLk7vQ=
Received: by mail-ot1-f52.google.com with SMTP id z6so6144860otb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 05:25:24 -0700 (PDT)
X-Gm-Message-State: APjAAAWmJPdZqEetzFRLXvMtfBjF/N7AqwlGFsIPmY8V4ZVXjmJn3RF+
 +LIo6Hp5A7pLe3IQprQqUOLdMjmjw/JY1iIfqI0=
X-Google-Smtp-Source: APXvYqy6hHaWJFNdVYTig4iJmjwL6JG/W+OXmovvhUxmIEhESB9QpIKlBVojQmMW1PINOfm310FkqYRWtGzcN9ishjc=
X-Received: by 2002:a9d:378a:: with SMTP id x10mr2672823otb.222.1568809524165; 
 Wed, 18 Sep 2019 05:25:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190907144442.16788-1-krzk@kernel.org>
 <5d7ba95e.1c69fb81.bba41.66c2@mx.google.com>
In-Reply-To: <5d7ba95e.1c69fb81.bba41.66c2@mx.google.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 18 Sep 2019 14:25:12 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeCH-hp40gnC4W5Fn8Z0OWqF74H4r1RQOJTCnu72wmrZQ@mail.gmail.com>
Message-ID: <CAJKOXPeCH-hp40gnC4W5Fn8Z0OWqF74H4r1RQOJTCnu72wmrZQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: memory-controllers: Convert Samsung Exynos
 SROM bindings to json-schema
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_052525_369675_745A847A 
X-CRM114-Status: GOOD (  25.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Sep 2019 at 16:36, Rob Herring <robh@kernel.org> wrote:
>
> On Sat, Sep 07, 2019 at 04:44:42PM +0200, Krzysztof Kozlowski wrote:
> > Convert Samsung Exynos SROM controller bindings to DT schema format
> > using json-schema.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >  .../memory-controllers/exynos-srom.txt        |  79 ----------
> >  .../memory-controllers/exynos-srom.yaml       | 136 ++++++++++++++++++
> >  2 files changed, 136 insertions(+), 79 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/memory-controllers/exynos-srom.txt
> >  create mode 100644 Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml
>
>
> > diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml b/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml
> > new file mode 100644
> > index 000000000000..9573bcfd68bf
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml
> > @@ -0,0 +1,136 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/memory-controllers/exynos-srom.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Samsung Exynos SoC SROM Controller driver
> > +
> > +maintainers:
> > +  - Krzysztof Kozlowski <krzk@kernel.org>
> > +
> > +description: |+
> > +  The SROM controller can be used to attach external peripherals. In this case
> > +  extra properties, describing the bus behind it, should be specified.
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: samsung,exynos4210-srom
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  "#address-cells":
> > +    const: 2
> > +
> > +  "#size-cells":
> > +    const: 1
> > +
> > +  ranges:
> > +    description: |
> > +      Reflects the memory layout with four integer values per bank. Format:
> > +      <bank-number> 0 <parent address of bank> <size>
> > +
> > +patternProperties:
> > +  "^.*@[0-9]+,[0-9]+$":
>
> How many chip selects? Can be a single digit?

Currently up to four banks, so I can limit the pattern.

>
> Also, these should be hex values.

Sure.

>
> > +    type: object
> > +    description:
> > +      The actual device nodes should be added as subnodes to the SROMc node.
> > +      These subnodes, in addition to regular device specification, should
> > +      contain the following properties, describing configuration
> > +      of the relevant SROM bank.
> > +
> > +    properties:
> > +      reg:
> > +        description:
> > +          Bank number, base address (relative to start of the bank) and size
> > +          of the memory mapped for the device. Note that base address will be
> > +          typically 0 as this is the start of the bank.
> > +        maxItems: 1
> > +
> > +      reg-io-width:
> > +        allOf:
> > +          - $ref: /schemas/types.yaml#/definitions/uint32
> > +          - enum: [1, 2]
> > +        description:
> > +          Data width in bytes (1 or 2). If omitted, default of 1 is used.
> > +
> > +      samsung,srom-page-mode:
> > +        description:
> > +          If page mode is set, 4 data page mode will be configured,
> > +          else normal (1 data) page mode will be set.
> > +        type: boolean
> > +
> > +      samsung,srom-timing:
> > +        allOf:
> > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > +          - items:
> > +              minItems: 6
> > +              maxItems: 6
> > +        description: |
> > +          Array of 6 integers, specifying bank timings in the following order:
> > +          Tacp, Tcah, Tcoh, Tacc, Tcos, Tacs.
> > +          Each value is specified in cycles and has the following meaning
> > +          and valid range:
> > +          Tacp: Page mode access cycle at Page mode (0 - 15)
> > +          Tcah: Address holding time after CSn (0 - 15)
> > +          Tcoh: Chip selection hold on OEn (0 - 15)
> > +          Tacc: Access cycle (0 - 31, the actual time is N + 1)
> > +          Tcos: Chip selection set-up before OEn (0 - 15)
> > +          Tacs: Address set-up before CSn (0 - 15)
> > +
> > +    required:
> > +      - reg
> > +      - samsung,srom-timing
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +allOf:
> > +  - if:
> > +      anyOf:
> > +        - required: [ "#address-cells" ]
> > +        - required: [ ranges ]
> > +        - required: [ "#size-cells" ]
> > +    then:
> > +      required:
> > +        - "#address-cells"
> > +        - ranges
> > +        - "#size-cells"
>
> I don't think this is necessary as the core schema should take care of
> it. This can also be expressed using 'dependencies'.

I'll skip it then.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
