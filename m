Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF75B640E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 15:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fmkI/LkDZEOUtJ5VelZP/mfe67ArxXh2UE5BH9y+ijg=; b=MZLZeHi+XrRxB8
	w2ne4tsehB9mj5VvRHpoVimZP9YSnvDhGJSoBexyvoFR7UyjKjErg85NHJV6XVUxq4zpQ8bBTtAe3
	Z0DRUdGGhn0AcRhL//I3rncNOc/y/DUHkXGvHz0JLQGYwPpcac9DW8I3Jxli9l68gZanyuwPPLvYg
	KY4GBjU8lsx/bv1mTOco4BlpZpjV/mN1d930RH/y6STQ6PiL3S+hjNLQDswhD1Rc/h0UKfSIH8Zw8
	YVaSS0oNMvQ4GrR8MmH2zwqZVrUpSYSt9cEq8oEGjPZ22tgWgnSXzVJJE35tXg7aFEXW0d04dx3kl
	mZOVQFDBzD+uGb48Wtug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZh1-0000Q8-BI; Wed, 18 Sep 2019 13:08:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZge-0000PY-Qq
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 13:08:02 +0000
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
 [209.85.210.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F8D221897
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 13:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568812070;
 bh=rj5WMPvEQEEDlEkrOcuDiRS34WbhKH/4aLvT8LmbHXM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HkTpq5+CByuJLJDwSrthSKsjXN0hKpfqPBHUURdLgqFG9pQzMkystKtHtUZkcVRG9
 We5olk9m+0byrycIfNpv0/D3RpKmOUaLK/JMJQA9ww0uMy6aZi+4/Bahh9uhvPX/em
 vADBC0xYeKgnxRru0WPZgYYq+O93auE94vaHAndU=
Received: by mail-ot1-f46.google.com with SMTP id y39so6242319ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 06:07:50 -0700 (PDT)
X-Gm-Message-State: APjAAAUBIqxbsUsD5fxvbL3Mrrcd1Viar+cdtws6U0RBgaR65WVWrvTu
 CXTEF24H+U5go/vi0t3xjKVLLaNLeUUbaXhZVdw=
X-Google-Smtp-Source: APXvYqwwzw5VrS2kd6JSzP3MY3hp/cDqnCUwn6rD+GogeFn8UDSudHrPnW0AvhgZI930v5OwBzBSAmmjv49Yu3xnlIU=
X-Received: by 2002:a9d:6f08:: with SMTP id n8mr2951063otq.128.1568812069398; 
 Wed, 18 Sep 2019 06:07:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190907092007.9946-1-krzk@kernel.org>
 <20190907092007.9946-8-krzk@kernel.org>
 <20190918123654.GA318@bogus>
In-Reply-To: <20190918123654.GA318@bogus>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 18 Sep 2019 15:07:38 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfFS5bA_OK4Zw_2e3T2MEuNETdcBMLMhGRHC-_UYvsLfA@mail.gmail.com>
Message-ID: <CAJKOXPfFS5bA_OK4Zw_2e3T2MEuNETdcBMLMhGRHC-_UYvsLfA@mail.gmail.com>
Subject: Re: [PATCH v2 08/11] dt-bindings: arm: samsung: Convert Exynos System
 Registers bindings to json-schema
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_060800_912840_795010F0 
X-CRM114-Status: GOOD (  22.68  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lars-Peter Clausen <lars@metafoo.de>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-rtc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Pawe=C5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Sep 2019 at 14:36, Rob Herring <robh@kernel.org> wrote:
>
> On Sat, Sep 07, 2019 at 11:20:04AM +0200, Krzysztof Kozlowski wrote:
> > Convert Samsung Exynos System Registers (SYSREG) bindings to DT schema
> > format using json-schema.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> >
> > ---
> >
> > Example somehow fails:
> > Documentation/devicetree/bindings/arm/samsung/pmu.example.dt.yaml:
> > system-controller@10040000: compatible:0: 'samsung,exynos5250-pmu' is
> > not one of ['samsung,exynos4-sysreg', 'samsung,exynos5-sysreg']
> >
> > It seems that PMU schema is applied to sysreq nodes (and vice-versa).
> > ---
> >  .../bindings/arm/samsung/sysreg.txt           | 19 -----------
> >  .../bindings/arm/samsung/sysreg.yaml          | 33 +++++++++++++++++++
> >  2 files changed, 33 insertions(+), 19 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/samsung/sysreg.txt
> >  create mode 100644 Documentation/devicetree/bindings/arm/samsung/sysreg.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/arm/samsung/sysreg.txt b/Documentation/devicetree/bindings/arm/samsung/sysreg.txt
> > deleted file mode 100644
> > index 4fced6e9d5e4..000000000000
> > --- a/Documentation/devicetree/bindings/arm/samsung/sysreg.txt
> > +++ /dev/null
> > @@ -1,19 +0,0 @@
> > -SAMSUNG S5P/Exynos SoC series System Registers (SYSREG)
> > -
> > -Properties:
> > - - compatible : should contain two values. First value must be one from following list:
> > -             - "samsung,exynos4-sysreg" - for Exynos4 based SoCs,
> > -             - "samsung,exynos5-sysreg" - for Exynos5 based SoCs.
> > -             second value must be always "syscon".
> > - - reg : offset and length of the register set.
> > -
> > -Example:
> > -     syscon@10010000 {
> > -             compatible = "samsung,exynos4-sysreg", "syscon";
> > -             reg = <0x10010000 0x400>;
> > -     };
> > -
> > -     syscon@10050000 {
> > -             compatible = "samsung,exynos5-sysreg", "syscon";
> > -             reg = <0x10050000 0x5000>;
> > -     };
> > diff --git a/Documentation/devicetree/bindings/arm/samsung/sysreg.yaml b/Documentation/devicetree/bindings/arm/samsung/sysreg.yaml
> > new file mode 100644
> > index 000000000000..a3d44646e441
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/samsung/sysreg.yaml
> > @@ -0,0 +1,33 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/samsung/sysreg.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Samsung S5P/Exynos SoC series System Registers (SYSREG)
> > +
> > +maintainers:
> > +  - Krzysztof Kozlowski <krzk@kernel.org>
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - samsung,exynos4-sysreg
> > +          - samsung,exynos5-sysreg
> > +      - const: syscon
>
> The problem is this will by default match any node with 'syscon'. You
> have to add a custom 'select' entry. See the LVDS panel bindings for an
> example.
>
> I'd like to kill off 'syscon'...

I see that panels use empty {} match but some other examples use
custom select. The panel approach in my case does not actually check
whether last compatible is syscon. I'll go then with a separate select
approach.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
