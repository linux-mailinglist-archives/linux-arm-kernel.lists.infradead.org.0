Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458448343B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 16:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0JpSYLpRRY7qDuVF5S2ldAVcvWq1xDRwaghBpsD7T8=; b=bp5QusjADeQJ3v
	COav7GBu1e2u8iwOInCy1ERDWokknN5NdJEeMgG9hrvsSMjo+/98kupcB9Tn0zAmo67fjxRY2qyjk
	kU9TCuEB6YTnRNhBVfJaHK6c+/Tr84Sx2mbg2yMrPCHXASyoLZcNaFtmcSZr0ke5ml5hxGTAxUFaR
	Hd+dHm6TVpzrprvjXbIsndj1XlgFu8R+tiKH7ZT1Wcjv3bvrdcTgQr7lB/i6ESVMQjb9KJKwyEBHj
	PN3ZWYBG7UuhayciXsD0Pq/sDahiIDuq1M7Tu8O2yGbovMMK27eJjARuGgDVY3ZJWzc1YM+1wOxm5
	Kwrg2rPt7OAb1WQaiwOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0iu-0003GG-Fb; Tue, 06 Aug 2019 14:46:00 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0ii-0003FW-ED
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:45:53 +0000
Received: by mail-ot1-x343.google.com with SMTP id b7so42910026otl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 07:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qL4EweusQTAqTm2UQZo+p4qHxQ6KG4jJOgUjb864PtA=;
 b=AJJO+SZOcluCzJ++H0F6cxV0C3t38yiTL5LJXtThBb6AHtt3ej9TF69gDO5ziMnE1t
 UzY8Xl7VCOjYfniFT2sc+WlhFwBIirJdEg7dLJOsxjDlUn4nH0SqsxCKHGb/c+3R+GxN
 4e3wplNPjnhPo9HyDMBrQNv29X7/QALse27xRh1SEMBGXVEaf8VJVr6AcBFtWCvKT6Vd
 EXQj6FyI6ky864kSfbXeRKQfoIDcvSVYk7Pg/u0yS9SN7MOHI0pgn+M05/Kb8E87XaQf
 jfKvDEOXsDhHdN60Z+m0RDNDLfd4BpJkTbh9s+foFUzvs2jAJqjQtkuh+HRi1MmPu8c6
 KZXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qL4EweusQTAqTm2UQZo+p4qHxQ6KG4jJOgUjb864PtA=;
 b=bH9QH3bHiD7cEJPDpb675qcR5DIyGZNCx6R+HAnT4jkz9wj0vdjoNSuze7u5GFipeC
 FVtUkZk18z/U/GjCeN9hqq+hnGvUgayDuJJs/231TU/2e3wffq4ORVCFsOc3YMponvAR
 sIa7ovHv9r4h/P9177WHDkaWVZDsvEv5YxkSr6CjdnhrXlouT7xoqa7W2YbwokUV17wT
 LzMZxLIwPB6AOSXCdeGSZnDkXIRn6GJEs9Kr1fRv5melwuZwK6rQiZC5yXm6TSxA7yGT
 D+FqhR7gyM1Am2EhFp3Z3Lk2XZEnJYyxA+irB96nGLrdyR3vF7Hyyn9RkO/QFXZiV3eE
 se6Q==
X-Gm-Message-State: APjAAAXYSrn55tDtgFzl6zOxK/UZqh42UpbMWfg3Go+dv2AI5J6lZV6O
 RTCi0nBDgWgr9sTCnjloi5kwAKlukutoXnmcJ0s=
X-Google-Smtp-Source: APXvYqwMIYf07XU1jxsnWiRsAuw11fY53EZZQc7W+MQEqp+6toYEgO/spXRTX0QFwqikATQYh04gOn6lWtKsGD/LTXg=
X-Received: by 2002:a9d:5a15:: with SMTP id v21mr3169183oth.263.1565102747413; 
 Tue, 06 Aug 2019 07:45:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190806140135.4739-1-anarsoul@gmail.com>
 <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
In-Reply-To: <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Tue, 6 Aug 2019 07:45:21 -0700
Message-ID: <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_074548_506761_8379779D 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "Jared D . McNeill" <jmcneill@netbsd.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Harald Geyer <harald@ccbib.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > Looks like PMU in A64 is broken, it generates no interrupts at all and
> > as result 'perf top' shows no events.
>
> Does something like 'perf stat sleep 1' at least count cycles correctly?
> It could well just be that the interrupt numbers are wrong...

Looks like it does, at least result looks plausible:

$ perf stat sleep 1

Performance counter stats for 'sleep 1':

             4.08 msec task-clock:u              #    0.004 CPUs
utilized
                0      context-switches:u        #    0.000 K/sec
                0      cpu-migrations:u          #    0.000 K/sec
               55      page-faults:u             #    0.013 M/sec
          527,711      cycles:u                  #    0.129 GHz
          197,262      instructions:u            #    0.37  insn per
cycle
           24,242      branches:u                #    5.947 M/sec
            5,083      branch-misses:u           #   20.97% of all
branches

      1.011928625 seconds time elapsed

      0.000000000 seconds user
      0.007196000 seconds sys

> > Tested on Pine64-LTS.
> >
> > Fixes: 34a97fcc71c2 ("arm64: dts: allwinner: a64: Add PMU node")
> > Cc: Harald Geyer <harald@ccbib.org>
> > Cc: Jared D. McNeill <jmcneill@NetBSD.org>
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >   arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 ---------
> >   1 file changed, 9 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > index 9cc9bdde81ac..cd92f546c483 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > @@ -142,15 +142,6 @@
> >               clock-output-names = "ext-osc32k";
> >       };
> >
> > -     pmu {
> > -             compatible = "arm,cortex-a53-pmu";
> > -             interrupts = <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
> > -                          <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>,
> > -                          <GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>,
> > -                          <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>;
>
> Cross-referencing between some random DTs in the H6 BSP I happen to have
> to hand and the A64 User Manual, it looks a lot like someone just forgot
> to subtract 32 from these to satisfy the awkward GIC binding - that
> wants the SPI index rather than the actual interrupt source number,
> which implies these should probably be 120-123 rather than 152-155.

Tried that, didn't work. 'grep pmu /proc/interrupts' shows zeroes, and
'perf top' is completely silent.

> Robin.
>
> > -             interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
> > -     };
> > -
> >       psci {
> >               compatible = "arm,psci-0.2";
> >               method = "smc";
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
