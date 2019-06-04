Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984D133F3C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 08:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hqp7KriFZ/YKrhyAYIatCy4zi8RSKyXrQX5pX6bNfA=; b=OCrRUEcs1pMblC
	WmB4b+EpW2uItIJEq3goSfQyaNZyknA05KVRsA+kqeseVt2sH3Pisr5bPLu/9bQJHzaqvk4LxsQGr
	TlaX6xh4THvd6EAt5PYNH1Bu7J9tCSdm6fHL5q9L05GnEw5WpHe2824Wxz3WdbsaEDrzVciuTpNGc
	8LOuqbqPVYcapJpTtztAm2EGsAPB+SDdVoFCw9FwG5AjoYzu3LP5vArTsArak/xPcKs2ROzG8K5fB
	tROPilq4vv9k+st37UqALBZiy+DEPBon4/Rf7Q6aFClsSdrf5V/EH3wVUF2iuAIcCdUSpmceDwz2l
	0ShELgqpdlZfKlfKvwEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3KJ-0001Ev-GA; Tue, 04 Jun 2019 06:53:43 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3KC-0001EC-Dh
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 06:53:38 +0000
Received: by mail-ua1-x941.google.com with SMTP id s4so303235uad.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 23:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LaDWiHPR9JRMc5dM2JBiUlOrVRUD/jYSdR+XH2uU4Co=;
 b=vJV/Z6ZXeWZX0q82NAqhljJbpDA+WvULjbfDIx58hTaojW2K0l7Kk0sm9KjHyb17DT
 kuQoWD7xepb9d29mYUK6sx3XuMTFm1+GXWLg6nVQ2oWiCNk/5C3QPsfK04iXuJez/HU8
 Lg6ijXWEgAa/nOQk5u/YKkwG31S3B1VcGxD1vkh2lRVwcpjKlOUoDc/bfI4xvVQfpk88
 4Wzhi5FxG5ihgAv3geCktS3P8DUmC3G3OeXsYVY+VtRDR9zodAhlb51H8IDnvZhbbfPf
 bnroEVDnDKPMsceW+ac5lih3IBV7ksqtWW7kaDIFQurKU1ZVgIB7Hip3Rq+CaoUpErFh
 nMlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LaDWiHPR9JRMc5dM2JBiUlOrVRUD/jYSdR+XH2uU4Co=;
 b=hOTd8WE6zYVM56oH0OoAYIK31Pqi2K3SI3/+dSu4Fxrbw/JGInfYOLfWfDyc2kFv1H
 2q4zatQ+UYjjnFB0TooHt0VIVVvzhsNj7nkSCuLJTox8luWKuwxt52XfVS1ef3K4KHCJ
 bq1ct+jVFEtnNcP8taGXUO2MJLje1jrhdOJcxzWwgB5z+0uDPV9D/NE4zgwA0jzrAaeE
 g8iYwHAC8h9tquXCF6Gx6QO9DGdPtn43+R4ZKXKRpsp6Ymd+yKnS67L1B+OZcc79fV5c
 +hSl3OVJXtceldr2oNg/NMmXBxMjuEy+fTAlUMDm7UjYNAq7m82+QjSj6NAfCkLUvQM3
 B3tA==
X-Gm-Message-State: APjAAAVy20X+NAedE6ODUdOZfdnumxlyr4qDjFj84MEb7iQvsUKfbrX2
 oBR+9hDJLqK/q6GDMmIZa402wgNAZN3NgQAIZXMpzw==
X-Google-Smtp-Source: APXvYqwOrrnYuan4kp6oT+cECdrmvG/OzTSJGNeXrjAnq+W5vLQh750wxVsaDLCIudNnKnWn328F87yP/49E98Xs9EA=
X-Received: by 2002:ab0:4a97:: with SMTP id s23mr871475uae.19.1559631214438;
 Mon, 03 Jun 2019 23:53:34 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558346019.git.baolin.wang@linaro.org>
 <ee4ad0e7e131e4d639dbf6bd25ad93726648ce1c.1558346019.git.baolin.wang@linaro.org>
 <CAPDyKFrWiG3KJad+L3NOQ-dC2XnBM-8mQGVEsVB_Qg0ACTfVag@mail.gmail.com>
 <CAMz4kuK+yX=V2zp-C4Xb-6ZjgLOY+ON2iHZU=HwONeXcJCkk4w@mail.gmail.com>
In-Reply-To: <CAMz4kuK+yX=V2zp-C4Xb-6ZjgLOY+ON2iHZU=HwONeXcJCkk4w@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 4 Jun 2019 08:52:57 +0200
Message-ID: <CAPDyKFrfMWomOe1QgizbfG+4=vHOix8UH3+MbZicMKWusE8Tsw@mail.gmail.com>
Subject: Re: [PATCH 2/9] dt-bindings: mmc: sprd: Add another optional clock
 documentation
To: Baolin Wang <baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_235336_525079_3708DF80 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 arm-soc <arm@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Olof Johansson <olof@lixom.net>,
 Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019 at 04:33, Baolin Wang <baolin.wang@linaro.org> wrote:
>
> Hi Ulf,
>
> On Mon, 3 Jun 2019 at 21:34, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > On Mon, 20 May 2019 at 12:12, Baolin Wang <baolin.wang@linaro.org> wrote:
> > >
> > > For some Spreadtrum platforms like SC9860 platform, we should enable another
> > > gate clock '2x_enable' to make the SD host controller work well. Thus add
> > > documentation for this optional clock.
> > >
> > > Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
> > > ---
> > >  .../devicetree/bindings/mmc/sdhci-sprd.txt         |    1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
> > > index 45c9978..a285c77 100644
> > > --- a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
> > > +++ b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
> > > @@ -14,6 +14,7 @@ Required properties:
> > >  - clock-names: Should contain the following:
> > >         "sdio" - SDIO source clock (required)
> > >         "enable" - gate clock which used for enabling/disabling the device (required)
> > > +       "2x_enable" - gate clock controlling the device for some special platforms (optional)
> >
> > This is a bit vague, could you please elaborate (and fold in that
> > information to the doc) on what kind of clock this is?
>
> Sorry for confusing. For some Spreadtrum platfroms like SC9860
> platform, we should enable 2 gate clocks to enable SD host controller,
> that means we have 2 serialized clock gates. I know that's a little
> weird, but that's our clock's design.

Okay, just wanted to make sure this new clock isn't something that
should be modeled through the clock tree.

Thanks for explaining, then I am happy with the patch as is.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
