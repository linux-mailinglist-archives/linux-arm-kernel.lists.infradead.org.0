Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 955CB168C7E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 06:21:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FoDeqC0Ai6aw9bQ5wfZ7b0r6fe5caZRL4SMq8EsX2XU=; b=hzTNIlu/kY4FE8
	yjDEVSNsVQmDzG453kE/5Fr0GBaOHv2iK7j4eAcpKFWvvoMA+UUzJDQAHwpvMeQhyRPZWw0sCupIw
	II55sNJxVmYBywYrJy9gzXHaj4nSjXyr8lFggsnwcxrdhuo531u/PT/s+u2RwMXtqX05RbUC7Zuq4
	/B13OR6d0f0JeVDog3Xxy/+p8pE4N6axqIcRcxPIH8fHOOFO/n99SV8W51c73/srdnY93NPgP2hCo
	SYPV8gr4X3JDt5V0rlnBvuPSpTzckMfQiUx6XTCvSpN5hYkyFaPu2GWUO7hGxHZXBUrBM1qyl6KkQ
	QPpbWMWuF3J7tvG988RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5NE0-0004He-Qu; Sat, 22 Feb 2020 05:21:12 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5NDp-0004Gw-4l
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 05:21:05 +0000
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com
 [209.85.221.170]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id 01M5KaG5004260
 for <linux-arm-kernel@lists.infradead.org>; Sat, 22 Feb 2020 14:20:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 01M5KaG5004260
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582348837;
 bh=YKumM6nl7wDW7iBXi9YToiaP0C6K2ymg4jrBCpX08fE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0EoB32tRjcYyXjBskhEVHxvbQUuHzD9oUgSFQWaex7AW1gPRVL7YIs9NaI3sljXKg
 HTbmHsXsbiEgQjV9U3wxlN7Xu7EJTIIadkVRd1wyFJYvzVjnFkN8EwBRRRwef6hpPp
 lait7OkvHVGxupON+CusjwCHCKaF3A9ZIF5aKqICTafZVpI5Zm0u/fU8dorEO+R9SF
 fUPMntDoe0dCRGnn6Oz0VPvirFFrWeyd0ctnfmFAWcvWNBapCQTakHBDSM+pHn00wu
 mqTgPAEoeY72Q87eKu6J/3iWCobU+oGd4dSK9+Tlj80yYcsQdWk++/4KjmS6f04Bsz
 RkjpK0E2M2iOw==
X-Nifty-SrcIP: [209.85.221.170]
Received: by mail-vk1-f170.google.com with SMTP id i4so1193906vkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 21:20:37 -0800 (PST)
X-Gm-Message-State: APjAAAUfwAQURnFgGThQg6I7jiLsuLhGeL1Wb89DRQngeYk0Xqy/hxNo
 e8SOqtT4ngkoybSBemonfRngJfqTkwyQ4OX7oXE=
X-Google-Smtp-Source: APXvYqxjngNGYOqQSFORfjCOAcW75hxKKdFrDL8gdS/YktQZrg2mNGMXCeQL1YMeVqq9jyAzI3zQoyABnxgxvjdJyvM=
X-Received: by 2002:a1f:bfc2:: with SMTP id p185mr19206254vkf.73.1582348835888; 
 Fri, 21 Feb 2020 21:20:35 -0800 (PST)
MIME-Version: 1.0
References: <20200221021002.18795-1-yamada.masahiro@socionext.com>
 <20200221152546.GA1327@bogus>
In-Reply-To: <20200221152546.GA1327@bogus>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 22 Feb 2020 14:20:00 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQnJPOB7-e8GCjmXb4HpNdYqz0TsDvQ8_SJpcN9vsgeqA@mail.gmail.com>
Message-ID: <CAK7LNAQnJPOB7-e8GCjmXb4HpNdYqz0TsDvQ8_SJpcN9vsgeqA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: Convert UniPhier board/SoC bindings
 to json-schema
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_212101_490213_CD57A4D8 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Sat, Feb 22, 2020 at 12:25 AM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, 21 Feb 2020 11:10:00 +0900, Masahiro Yamada wrote:
> > Convert the Socionext UniPhier board/SoC binding to DT schema format.
> >
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > ---
> >
> >  .../bindings/arm/socionext/uniphier.txt       | 47 -------------
> >  .../bindings/arm/socionext/uniphier.yaml      | 70 +++++++++++++++++++
> >  MAINTAINERS                                   |  2 +-
> >  3 files changed, 71 insertions(+), 48 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/socionext/uniphier.txt
> >  create mode 100644 Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
> >
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
> Error: Documentation/devicetree/bindings/arm/socionext/uniphier.example.dts:18.9-10 syntax error
> FATAL ERROR: Unable to parse input tree
> scripts/Makefile.lib:300: recipe for target 'Documentation/devicetree/bindings/arm/socionext/uniphier.example.dt.yaml' failed
> make[1]: *** [Documentation/devicetree/bindings/arm/socionext/uniphier.example.dt.yaml] Error 1
> Makefile:1263: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
>
> See https://patchwork.ozlabs.org/patch/1241745
> Please check and re-submit.


I checked 'make dtbs_check',
but did not test 'make dt_binding_check'.

I remember that
'make dtbs_check' no longer check example.dts after
93512dad334deb444619505f1fbb761156f7471b



Anyway, the example is fold into the plugin node,
so I cannot avoid the schema error about $nodename.

/home/masahiro/workspace/linux-unph/Documentation/devicetree/bindings/arm/socionext/uniphier.example.dt.yaml:
example-0: $nodename:0: '/' was expected


I will remove this example.


--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
