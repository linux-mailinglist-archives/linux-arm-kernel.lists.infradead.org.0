Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F244F1697D2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 14:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JSudlet0ZftiIu97/lpBGF8WSRJ77TM1x7NssJrkng=; b=Ud+ZbeHzcz/hms
	RB9r/Cy5ccZI8MlKku71Ipyogv+mPyulWBz9ejLC9g3j9fbGjZxY/M8PuNaO3hah1CMsTuvqwgtUi
	jWJ2YYnTNxFQ4VhMJR6+1NP+Zf++XQaCroO1DKXYzo7WnkwzuJhC8KHK1MKZrv1onaeeGqgg2YSUh
	i6lE31CzBTEQaCicge4ZdnAb2El+7/fmP/vkx0xH/vkBNmhrqtctntmXbo2Rann4riqz07YWEO1E0
	nssTKGaArAeDvl1jWu6De5zOdUZQrF4vYI3AcBJi/mOobqe3BdIT+U+pztHpRYd2nXcAJiLIr1PDL
	iA2/5k58nAI8q6y8cAuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5rPA-0003Zq-CJ; Sun, 23 Feb 2020 13:34:44 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5rP2-0003ZN-4g; Sun, 23 Feb 2020 13:34:37 +0000
Received: by mail-io1-xd2c.google.com with SMTP id z16so7479165iod.11;
 Sun, 23 Feb 2020 05:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pjlxCHc9TIK73b6JYIZFY6Ze1wSFh93pwbVlW0RqGQw=;
 b=S4wXPHlYe1klCwC0XEptaw2iN6cSWpw4NT4/SAS2S/cEWnCAhupLRvzoqpScE8/iw4
 OltgGfgfsOFQY82HJ8j7ZyEqT1KOJmDcXTRjnVzhlmaXIm2DPJB/eTcaJTSQzW1sVALD
 P9qYRd9J0SVEpUnl1HUmrTnAHZL/hx0r7DYsGda6b2ZlBE0goXdH5yqCUomUx1XeRjz/
 o0xh5HSIKDg7NfiVoCuK7Fdo+l0thF3jz5Q8DHmj6c/iptKCy7Zlc+6VhrNr7xcwyW3D
 csalaThVXhZI3jGAyo9o7fwy4PkhBtkb6gg/7S+ak8m2hKpzPg3v+oGU9qjVblYBZJwP
 7Ggw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pjlxCHc9TIK73b6JYIZFY6Ze1wSFh93pwbVlW0RqGQw=;
 b=fcAJDSwPCGQSS6mRq+joCPW2s7r17NzKptKxhsx9RdOFvzA9RFwQzzvSQV4D3bAbAS
 Vf89OrHSfTguHhyI5DYQs3Ra/OeiymRaeEa+GJWFHCp501eceNR8DnIWGLVg0oEUAsJf
 GYK8NvbChsO1jL1ndA6F2lRCgdGtcPnUnW4TItoXSouSp3yAT+PjNGfrBTPBNxrfBMWC
 uQrwKURKTEsFusX4BL+Yoaf7Ta3NztKL1lyReVjDFMC5aXR4k/oKlcu6yr3Hqqgv6yt5
 4qINZZ1vhuEctwS1rq7eOr6Ax+IBEBynnOzv/CYHPK15fA/9F4PvLTcvKvzbrjKyCudW
 4Yew==
X-Gm-Message-State: APjAAAXYcV8E5Li0Fq5INTvHfuynqRWOZLWEG2vCCb35XxLGJdIKZCjo
 +rhr+gilUrlnaxj0+QImqT4HqZGU54tdWhC/k4M=
X-Google-Smtp-Source: APXvYqzuka0HKg/Fr4Uu0KPzM3CzpCIv3wTW1akb/1w5wysjVXPDkvFNj8eadeNpBXZ1kbVST/UgckRZKgAKVMPUJY8=
X-Received: by 2002:a5d:8790:: with SMTP id f16mr42917678ion.246.1582464874614; 
 Sun, 23 Feb 2020 05:34:34 -0800 (PST)
MIME-Version: 1.0
References: <20200216173446.1823-1-linux.amoon@gmail.com>
 <20200216173446.1823-4-linux.amoon@gmail.com>
 <1jmu9hzlo2.fsf@starbuckisacylon.baylibre.com>
 <CANAwSgSaQgU=H3h0S9deT11HA8z9R=Fhy5Kawii9tSBxKf2Wgw@mail.gmail.com>
 <CAFBinCCSosE1XfwbKZOR9G+DVYg8zFcKShmTNWUhh1e8W0VoAQ@mail.gmail.com>
In-Reply-To: <CAFBinCCSosE1XfwbKZOR9G+DVYg8zFcKShmTNWUhh1e8W0VoAQ@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sun, 23 Feb 2020 19:04:23 +0530
Message-ID: <CANAwSgRZy1K0GZq30cEoH2KiJfjX-5LvkMy79ZeM_aSEyrkD+g@mail.gmail.com>
Subject: Re: [PATCHv1 3/3] clk: meson: g12a: set cpu clock divider flags too
 CLK_IS_CRITICAL
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_053436_208969_08581A10 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin / Jerome / Neil,

On Fri, 21 Feb 2020 at 02:45, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Anand,
>
> On Mon, Feb 17, 2020 at 2:30 PM Anand Moon <linux.amoon@gmail.com> wrote:
> [...]
> > > > @@ -681,7 +682,7 @@ static struct clk_regmap g12b_cpub_clk = {
> > > >                       &g12a_sys_pll.hw
> > > >               },
> > > >               .num_parents = 2,
> > > > -             .flags = CLK_SET_RATE_PARENT,
> > > > +             .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
> > >
> > > Why not. Neil what do you think of this ?
> > > If nothing is claiming this clock and enabling it then I suppose it
> > > could make sense.
> > >
> > I would like core developers to handle this.
> > Sorry for the noise.
> can you please resend this patch with only the change to g12b_cpub_clk?
> I have no G12B board myself so it would be great if you could take care of this!
>
>
> Martin

Thanks, yes I will try again, but I have a question.

On eMMC module  *cpub_clk* is not getting enabled, see below is
clk_summay of eMMC.
[...]
          fclk_div2_div               1        1        0   999999985
        0     0  50000
             fclk_div2                2        2        0   999999985
        0     0  50000
                ff3f0000.ethernet#m250_sel       1        1        0
999999985          0     0  50000
                   ff3f0000.ethernet#m250_div       1        1
0   249999997          0     0  50000
                      ff3f0000.ethernet#fixed_div2       1        1
    0   124999998          0     0  50000
                         ff3f0000.ethernet#rgmii_tx_en       1
1        0   124999998          0     0  50000
                ffe07000.mmc#mux       1        1        0   999999985
         0     0  50000
                   ffe07000.mmc#div       1        1        0
199999997          0     0  50000
                cpub_clk_dyn1_sel       0        0        0
999999985          0     0  50000
                   cpub_clk_dyn1       0        0        0   999999985
         0     0  50000
                      cpub_clk_dyn       0        0        0
999999985          0     0  50000
                         cpub_clk       0        0        0
999999985          0     0  50000
                            cpub_clk_div8       0        0        0
124999998          0     0  50000
                            cpub_clk_div7       0        0        0
142857140          0     0  50000
                            cpub_clk_div6       0        0        0
166666664          0     0  50000
                               cpub_clk_trace_sel       0        0
   0   166666664          0     0  50000
                                  cpub_clk_trace       0        0
  0   166666664          0     0  50000
                            cpub_clk_div5       0        0        0
199999997          0     0  50000
                               cpub_clk_apb_sel       0        0
 0   199999997          0     0  50000
                                  cpub_clk_apb       0        0
0   199999997          0     0  50000
                            cpub_clk_div4       0        0        0
249999996          0     0  50000
                            cpub_clk_div3       0        0        0
333333328          0     0  50000
                               cpub_clk_atb_sel       0        0
 0   333333328          0     0  50000
                                  cpub_clk_atb       0        0
0   333333328          0     0  50000
                            cpub_clk_div2       0        0        0
499999992          0     0  50000
                               cpub_clk_axi_sel       0        0
 0   499999992          0     0  50000
                                  cpub_clk_axi       0        0
0   499999992          0     0  50000
                            cpub_clk_div16_en       0        0
0   999999985          0     0  50000
                               cpub_clk_div16       0        0
0    62499999          0     0  50000

After enable *cpub_clk* flags with
.flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
this clk is enabled on microSD card see clk_summary below.
[...]
         fclk_div2_div               1        1        0   999999985
       0     0  50000
             fclk_div2                3        3        0   999999985
        0     0  50000
                ff3f0000.ethernet#m250_sel       1        1        0
999999985          0     0  50000
                   ff3f0000.ethernet#m250_div       1        1
0   249999997          0     0  50000
                      ff3f0000.ethernet#fixed_div2       1        1
    0   124999998          0     0  50000
                         ff3f0000.ethernet#rgmii_tx_en       1
1        0   124999998          0     0  50000
                ffe05000.sd#mux       1        1        0   999999985
        0     0  50000
                   ffe05000.sd#div       1        1        0
50000000          0     0  50000
                cpub_clk_dyn1_sel       1        1        0
999999985          0     0  50000
                   cpub_clk_dyn1       1        1        0   999999985
         0     0  50000
                      cpub_clk_dyn       1        1        0
999999985          0     0  50000
                         cpub_clk       1        1        0
999999985          0     0  50000
                            cpub_clk_div8       0        0        0
124999998          0     0  50000
                            cpub_clk_div7       0        0        0
142857140          0     0  50000
                            cpub_clk_div6       0        0        0
166666664          0     0  50000
                               cpub_clk_trace_sel       0        0
   0   166666664          0     0  50000
                                  cpub_clk_trace       0        0
  0   166666664          0     0  50000
                            cpub_clk_div5       0        0        0
199999997          0     0  50000
                               cpub_clk_apb_sel       0        0
 0   199999997          0     0  50000
                                  cpub_clk_apb       0        0
0   199999997          0     0  50000
                            cpub_clk_div4       0        0        0
249999996          0     0  50000
                            cpub_clk_div3       0        0        0
333333328          0     0  50000
                               cpub_clk_atb_sel       0        0
 0   333333328          0     0  50000
                                  cpub_clk_atb       0        0
0   333333328          0     0  50000
                            cpub_clk_div2       0        0        0
499999992          0     0  50000
                               cpub_clk_axi_sel       0        0
 0   499999992          0     0  50000
                                  cpub_clk_axi       0        0
0   499999992          0     0  50000
                            cpub_clk_div16_en       0        0
0   999999985          0     0  50000
                               cpub_clk_div16       0        0
0    62499999          0     0  50000
                   cpub_clk_dyn1_div       0        0        0
999999985          0     0  50000

Is this correct approach to set the flags to enable *cpub_clk*.
.flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,

What I meant is their *Dyn_enable[26]* field for enable/disable for
HHI_SYS_CPU_CLK_CNTL0 and HHI_SYS_CPUB_CLK_CNTL clk controller.
in the S922X datasheets which could help resolve this issue.
Any thought on this.

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
