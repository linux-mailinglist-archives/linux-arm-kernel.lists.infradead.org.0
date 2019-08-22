Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D29F69926A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+gBBz/Q14NSILiSoXXBaH5z13rkPLeombQhCN75AX0=; b=KUdpuVHSb8Rnx3
	gzHuo3GF56NgPgW54DswILAIVoDMEjMw4dew0ohZxzODdzx6aEq8kHrcepbC7oMBWKrFW0MgMHHIO
	u8CY+INsSfLVOQ41oV34w7/StPcr2d3bHz/LzGaGgsxyhNgpRcrynbQwtTtzf+jfjJHyqkjwR+Rfo
	2COCAKBHT07WWGqADA4hUUFbVuM5gK8HaTw3pQE7xVSthHAvyLOWCGet8eXsvOwb4ZbdT8We+atxq
	hmVvbdJmCM7M4CV4HE45MLc7NfpTEMIHD36bo6PBpmgheaU/mDEPCXK2ZZoXIjPI2238izrZdLOaV
	pzH4CjJQrj2tIkea7Mmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lXh-0007BX-JA; Thu, 22 Aug 2019 11:46:13 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lXR-00079Z-39
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 11:45:58 +0000
Received: by mail-vs1-xe42.google.com with SMTP id j25so3595916vsq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 04:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ias0hnNTQ1W0WLMJ9Tw+pF62AvhAzndWUOgIreZptR4=;
 b=rDszp6GWldYKXV1jR5X0tVPwOQUmi6CxIEOrbjVQUz3WhkU6oYTxYzX8HxeY8leOeh
 zvTSuAERxKEcn8Yv9UsDjeKMrhx6DkoMarSTEZkDd68+2mj+BgZXGGtNWJI9+EFQuVQ+
 CyB4j3oAVf1Sm05kBVhXT8wjbkRr6SC4LyvEcPVuhYxovbmtuhHVcIXOTHLmpwk200KN
 3vWaa4ABGDhxySRoMd9bnoJjE/MwJ0QN6JNQuGkCtgyDw1T5WZeR3j0ywN5yzX6IjAZ4
 bp1uABpaYaWvwa4Z1bgZ93PENPx4XxOkKWdZY7cjBXyOAlrgPcwG5by4QPTERiNSTm/f
 90+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ias0hnNTQ1W0WLMJ9Tw+pF62AvhAzndWUOgIreZptR4=;
 b=kecdZ9yXWWr8xrbCB/0GN6mljrct9ABp8ism0fcvnQw1H0ln0eSk6N9Zj9tZpUXwtN
 x13wkYbsk64moxy6xgeVRQVT3o+FJLcQbSQL0fnU8O9Jn4MVJ/kwTh/tTVQimt64UGqo
 2rtth+Ndo6yoD3efuQQyiyc/Tw2zrXUu/wEi2DZmiGyydymglnnLDGvLfZ1KE83/bP+9
 tzqtVJ1pg3ESfKEcQB/BXGLM8p6TC5obiSTD+vGz7q89ZdxLnE61qRzySAD85myltMgh
 7oEOuQ//VqQK6/g93FjLOERQdOD+HDRSnE09BEBaMKVeWo/GzOTKjsOXTQ4zm2x9n9kD
 CRPA==
X-Gm-Message-State: APjAAAWmwAy9VTi6PmfLglf2qLluiegmhSkxzXbs5K0hR4YH3vDUAjT7
 /B13RtxuxAxD6Bm3lQCM3/3tY1Lu14S2vlarzebrXQ==
X-Google-Smtp-Source: APXvYqwpurVmREw1NCNrWD/HWUqNVjMRJbQbiiRPPhDel5CxOBrosK7SYbiXJVV66QIkSwppRQHrHqUJ1UD4Wg1NEeE=
X-Received: by 2002:a67:e287:: with SMTP id g7mr23784378vsf.200.1566474355983; 
 Thu, 22 Aug 2019 04:45:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190807003629.2974-1-andrew@aj.id.au>
 <20190807003629.2974-2-andrew@aj.id.au>
 <CACPK8Xe6Zp1uOqEffEc0b6oGa7portEAifGPRqb876HmA+oZeg@mail.gmail.com>
 <6c94aada-9c4a-4f55-9a43-349282ad12af@www.fastmail.com>
In-Reply-To: <6c94aada-9c4a-4f55-9a43-349282ad12af@www.fastmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 22 Aug 2019 13:45:19 +0200
Message-ID: <CAPDyKFrDPxFMm710Z25i-euOT2rrgCNXVa4na-fye0xamMXq_A@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mmc: Document Aspeed SD controller
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_044557_159910_6F04CDCB 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Ryan Chen <ryanchen.aspeed@gmail.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 15 Aug 2019 at 07:37, Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Thu, 15 Aug 2019, at 15:06, Joel Stanley wrote:
> > On Wed, 7 Aug 2019 at 00:38, Andrew Jeffery <andrew@aj.id.au> wrote:
> > >
> > > The ASPEED SD/SDIO/MMC controller exposes two slots implementing the
> > > SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> > > data bus if only a single slot is enabled.
> > >
> > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> >
> > Reviewed-by: Joel Stanley <joel@jms.id.au>
> >
> > Two minor comments below.
> >
> > > +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > > @@ -0,0 +1,105 @@
> > > +# SPDX-License-Identifier: GPL-2.0-or-later
> >
> > No "Copyright IBM" ?
>
> I'm going rogue.
>
> That reminds me I should chase up where we got to with the binding
> licensing.
>
> >
> > > +%YAML 1.2
> > > +---
> >
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/clock/aspeed-clock.h>
> > > +    sdc@1e740000 {
> > > +            compatible = "aspeed,ast2500-sd-controller";
> > > +            reg = <0x1e740000 0x100>;
> > > +            #address-cells = <1>;
> > > +            #size-cells = <1>;
> > > +            ranges = <0 0x1e740000 0x10000>;
> >
> > According to the datasheet this could be 0x20000. It does not matter
> > though, as there's nothing in it past 0x300.
>
> Good catch.
>

Are you planning on sending a v6 or you want me to apply this and you
can post a patch on top?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
