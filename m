Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6CC16A3B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 11:17:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDEtuCJiyPoJPeD66hrJ3BXhqmNHuPiQqnIASyCMIYQ=; b=MriXTk9tPqQECV
	b0NDhll1UeDdlFlfBZFxhxy1dXe5C+coLr37JPnlPS85HdTy8a7qboeFRsdph7qddx2gTq2Hytv1U
	uiK+SvkUXwxNcWlpeJY66a+0uhlw1qnJnGfwM/jNiIBLNp9Ntc7BoLLqSNDzFtXt/cZw9ah/fgs0U
	G/pwb2wLBY4CMcvfXSxjIFTb2dG/232uoelQSXODAc5m57+X5pX+HnVE3As3ZHvKmQ0vxtgH6hCHe
	8XyPzvzDRxznNd2fQuvPEtF91taJc+U0PQhmFR8OiDTODKBszbS/d2KVXGFwdjPztcLjHHbXcvBkc
	uQp9qFjEtn5c8bvhrcVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AoH-0005ou-9n; Mon, 24 Feb 2020 10:17:57 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Ao3-0005oA-Nm; Mon, 24 Feb 2020 10:17:45 +0000
Received: by mail-io1-xd41.google.com with SMTP id s24so9679438iog.5;
 Mon, 24 Feb 2020 02:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7tqgnHB78w+khquGpyEPrfbvz14CK0FBf/BfCrVKj88=;
 b=WixG3cAlWOKVA4zty0GxO81FbCDDDdvXcsrqJIiNoeOazlCyYJhLt//qepqkHWRO+i
 au8MthJG6xQCVYimonXq9J9UTkxQXTdXeNwnnCFAHRTYFa09tVbWDVrszuNNcd48xy79
 M4607MnC3gbpRzJcoaCojUBEi5DyF0la38CNAh+2NTCj+lJ+103ixbRogzGDVh1V4uM+
 9+r0ecBMS49H+uLc6Edb//J6Pj451lLdugtqNKHmng3AISj9RlOqV9UNxLAUgRxMb2bU
 xkN1jLWgnF70i9ajrtqOS07p8Qzum6J0p4vXRWAInArvAziclsYDozRZmKb9k128O5se
 MvGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7tqgnHB78w+khquGpyEPrfbvz14CK0FBf/BfCrVKj88=;
 b=iEF7Llsss8FDXbYlpNASJs3BqXK2dPOnT7+mYEzMCjlqwgwSkxLw5IqCtn3cO1mzJO
 DZJFY3GaBBzeJR/jKtKSC8NcOz1soLKSW53UTIaMBCRTqF3Rd1sZLm3X0NDzQLy+t5Tn
 q7/LRR/cpuxWMoFhXUK9Zq64jo0vaf2vTecLTwb7EQeJaLmSmznkM79iiVyPXYFjfXf6
 P525A0HLkSvW/DQ8yronbti8W02O33mnj5qeBhoY3yzHjs3wlnAwStKey2gw1zjVfizl
 QJiXfO5KJsSHt8X+zOTcMCjvZI0ZDgjIOywu/bEetAW8No9CdIH9y+SR8UHHp7u9YbyW
 IV7w==
X-Gm-Message-State: APjAAAUDYdrnnejyJx9svKoXoiWMtIJzoJPcidpITAFNULTjoi1lx6es
 zpg+ego9YRs0Dam1FrqTjxvON1I768llflxaomI=
X-Google-Smtp-Source: APXvYqwPv4BN9QmonBXFEkWlD/VhU4fuL8hHLJ8UwrlbVXmch79Uws0KccS8fO8B/i+cYv9Wj4Xn1YJ0Kro0+Mktymw=
X-Received: by 2002:a6b:b48e:: with SMTP id
 d136mr50065897iof.243.1582539460606; 
 Mon, 24 Feb 2020 02:17:40 -0800 (PST)
MIME-Version: 1.0
References: <20200216173446.1823-1-linux.amoon@gmail.com>
 <20200216173446.1823-4-linux.amoon@gmail.com>
 <1jmu9hzlo2.fsf@starbuckisacylon.baylibre.com>
 <CANAwSgSaQgU=H3h0S9deT11HA8z9R=Fhy5Kawii9tSBxKf2Wgw@mail.gmail.com>
 <CAFBinCCSosE1XfwbKZOR9G+DVYg8zFcKShmTNWUhh1e8W0VoAQ@mail.gmail.com>
 <CANAwSgRZy1K0GZq30cEoH2KiJfjX-5LvkMy79ZeM_aSEyrkD+g@mail.gmail.com>
 <1jo8togwmi.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jo8togwmi.fsf@starbuckisacylon.baylibre.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 24 Feb 2020 15:47:29 +0530
Message-ID: <CANAwSgSKUEJEe_H6XnKmHZNtB549jLau=TY00jzCHAC8zb_7oA@mail.gmail.com>
Subject: Re: [PATCHv1 3/3] clk: meson: g12a: set cpu clock divider flags too
 CLK_IS_CRITICAL
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_021743_804858_2744B181 
X-CRM114-Status: GOOD (  25.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi  Jerome,

On Mon, 24 Feb 2020 at 15:01, Jerome Brunet <jbrunet@baylibre.com> wrote:
>
>
> On Sun 23 Feb 2020 at 14:34, Anand Moon <linux.amoon@gmail.com> wrote:
>
> > Hi Martin / Jerome / Neil,
> >
> > On Fri, 21 Feb 2020 at 02:45, Martin Blumenstingl
> > <martin.blumenstingl@googlemail.com> wrote:
> >>
> >> Hi Anand,
> >>
> >> On Mon, Feb 17, 2020 at 2:30 PM Anand Moon <linux.amoon@gmail.com> wrote:
> >> [...]
> >> > > > @@ -681,7 +682,7 @@ static struct clk_regmap g12b_cpub_clk = {
> >> > > >                       &g12a_sys_pll.hw
> >> > > >               },
> >> > > >               .num_parents = 2,
> >> > > > -             .flags = CLK_SET_RATE_PARENT,
> >> > > > +             .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
> >> > >
> >> > > Why not. Neil what do you think of this ?
> >> > > If nothing is claiming this clock and enabling it then I suppose it
> >> > > could make sense.
> >> > >
> >> > I would like core developers to handle this.
> >> > Sorry for the noise.
> >> can you please resend this patch with only the change to g12b_cpub_clk?
> >> I have no G12B board myself so it would be great if you could take care of this!
> >>
> >>
> >> Martin
> >
> > Thanks, yes I will try again, but I have a question.
> >
> > On eMMC module  *cpub_clk* is not getting enabled, see below is
> > clk_summay of eMMC.
>
> I'm sorry but I don't understand the link between the cpu clock of the
> second cluster and MMC.
>
> > [...]
> >           fclk_div2_div               1        1        0   999999985
> >         0     0  50000
> >              fclk_div2                2        2        0   999999985
> >         0     0  50000
> >                 ff3f0000.ethernet#m250_sel       1        1        0
> > 999999985          0     0  50000
> >                    ff3f0000.ethernet#m250_div       1        1
> > 0   249999997          0     0  50000
> >                       ff3f0000.ethernet#fixed_div2       1        1
> >     0   124999998          0     0  50000
> >                          ff3f0000.ethernet#rgmii_tx_en       1
> > 1        0   124999998          0     0  50000
> >                 ffe07000.mmc#mux       1        1        0   999999985
> >          0     0  50000
> >                    ffe07000.mmc#div       1        1        0
> > 199999997          0     0  50000
> >                 cpub_clk_dyn1_sel       0        0        0
> > 999999985          0     0  50000
> >                    cpub_clk_dyn1       0        0        0   999999985
> >          0     0  50000
> >                       cpub_clk_dyn       0        0        0
> > 999999985          0     0  50000
> >                          cpub_clk       0        0        0
> > 999999985          0     0  50000
> >                             cpub_clk_div8       0        0        0
> > 124999998          0     0  50000
> >                             cpub_clk_div7       0        0        0
> > 142857140          0     0  50000
> >                             cpub_clk_div6       0        0        0
> > 166666664          0     0  50000
> >                                cpub_clk_trace_sel       0        0
> >    0   166666664          0     0  50000
> >                                   cpub_clk_trace       0        0
> >   0   166666664          0     0  50000
> >                             cpub_clk_div5       0        0        0
> > 199999997          0     0  50000
> >                                cpub_clk_apb_sel       0        0
> >  0   199999997          0     0  50000
> >                                   cpub_clk_apb       0        0
> > 0   199999997          0     0  50000
> >                             cpub_clk_div4       0        0        0
> > 249999996          0     0  50000
> >                             cpub_clk_div3       0        0        0
> > 333333328          0     0  50000
> >                                cpub_clk_atb_sel       0        0
> >  0   333333328          0     0  50000
> >                                   cpub_clk_atb       0        0
> > 0   333333328          0     0  50000
> >                             cpub_clk_div2       0        0        0
> > 499999992          0     0  50000
> >                                cpub_clk_axi_sel       0        0
> >  0   499999992          0     0  50000
> >                                   cpub_clk_axi       0        0
> > 0   499999992          0     0  50000
> >                             cpub_clk_div16_en       0        0
> > 0   999999985          0     0  50000
> >                                cpub_clk_div16       0        0
> > 0    62499999          0     0  50000
>
> I can't read that.
>
> >
> > After enable *cpub_clk* flags with
> > .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
> > this clk is enabled on microSD card see clk_summary below.
>
> Again, I don't get the relationship between cpub and sdcard (or eMMC)
>

Yes their is not relation with the cpub and sdcard and eMMC,
I understood  that cpub_clk is not getting enable which is causing
the staling at booting using sdcard.

sorry about this logs.

> > [...]
> >          fclk_div2_div               1        1        0   999999985
> >        0     0  50000
> >              fclk_div2                3        3        0   999999985
> >         0     0  50000
> >                 ff3f0000.ethernet#m250_sel       1        1        0
> > 999999985          0     0  50000
> >                    ff3f0000.ethernet#m250_div       1        1
> > 0   249999997          0     0  50000
> >                       ff3f0000.ethernet#fixed_div2       1        1
> >     0   124999998          0     0  50000
> >                          ff3f0000.ethernet#rgmii_tx_en       1
> > 1        0   124999998          0     0  50000
> >                 ffe05000.sd#mux       1        1        0   999999985
> >         0     0  50000
> >                    ffe05000.sd#div       1        1        0
> > 50000000          0     0  50000
> >                 cpub_clk_dyn1_sel       1        1        0
> > 999999985          0     0  50000
> >                    cpub_clk_dyn1       1        1        0   999999985
> >          0     0  50000
> >                       cpub_clk_dyn       1        1        0
> > 999999985          0     0  50000
> >                          cpub_clk       1        1        0
> > 999999985          0     0  50000
> >                             cpub_clk_div8       0        0        0
> > 124999998          0     0  50000
> >                             cpub_clk_div7       0        0        0
> > 142857140          0     0  50000
> >                             cpub_clk_div6       0        0        0
> > 166666664          0     0  50000
> >                                cpub_clk_trace_sel       0        0
> >    0   166666664          0     0  50000
> >                                   cpub_clk_trace       0        0
> >   0   166666664          0     0  50000
> >                             cpub_clk_div5       0        0        0
> > 199999997          0     0  50000
> >                                cpub_clk_apb_sel       0        0
> >  0   199999997          0     0  50000
> >                                   cpub_clk_apb       0        0
> > 0   199999997          0     0  50000
> >                             cpub_clk_div4       0        0        0
> > 249999996          0     0  50000
> >                             cpub_clk_div3       0        0        0
> > 333333328          0     0  50000
> >                                cpub_clk_atb_sel       0        0
> >  0   333333328          0     0  50000
> >                                   cpub_clk_atb       0        0
> > 0   333333328          0     0  50000
> >                             cpub_clk_div2       0        0        0
> > 499999992          0     0  50000
> >                                cpub_clk_axi_sel       0        0
> >  0   499999992          0     0  50000
> >                                   cpub_clk_axi       0        0
> > 0   499999992          0     0  50000
> >                             cpub_clk_div16_en       0        0
> > 0   999999985          0     0  50000
> >                                cpub_clk_div16       0        0
> > 0    62499999          0     0  50000
> >                    cpub_clk_dyn1_div       0        0        0
> > 999999985          0     0  50000
> >
> > Is this correct approach to set the flags to enable *cpub_clk*.
> > .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
> >
> > What I meant is their *Dyn_enable[26]* field for enable/disable for
> > HHI_SYS_CPU_CLK_CNTL0 and HHI_SYS_CPUB_CLK_CNTL clk controller.
> > in the S922X datasheets which could help resolve this issue.
> > Any thought on this.
>
> I sorry but I'm just lost. I don't understand anything above so I can't
> comment.

I am not able to express my self clearly,
I will try to submit the patch by enable cpub_clk with following flags.

 .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
