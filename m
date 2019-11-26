Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D84610A4B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 20:44:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hhblkkl1xI83eeadDQ8a98vaxqDWXMAvVgnjl69z51g=; b=kqMybgjbNUX69K
	S59hzcR/v+CbLtiMdclznVwjdRt5YHj/GE8t3X3nYN1CswFLIBlCY51OBce45CnuG//Qy0mogTzMh
	EwzHtLOMgYgkwjncAE2VCec3u8WkU9qwYou7a3URmSaqL47PecYgI3wEMviHtfQqICGR8nHEXwZN/
	9yj9zYlVuVLt8szUe0yL6m2HJ41BCbWiPHCen1s86NZa9xCLIXYY6wQV+/OdCQcoCVlRS2k7hez78
	ltQXsqTxMpptnCoRrdiU+q3FirDLT7+PJpSWO/7aQ1pdu/W3vwTHJQvnyR24OgdlE5BvkI6H4BcAM
	qnTRBt4nqSEpB2ZU8h1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZglG-00027J-Sc; Tue, 26 Nov 2019 19:44:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZgl7-00026x-Ry
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 19:44:27 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 679F12084D
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 19:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574797464;
 bh=um1j8Y/GaUsZ1q4T+Tiu5+4Kgs2yzoDg2ThT8cprhsY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=s2DzKRlGMlFyXboS3+ux6a+0J9Jj4ZZ2Ta/XPxcn/LL1zm9tGpoJ2knRLRxeO9UKm
 7aSAdRg7u09+FNjsPT5WPuvb++5joBKHq8TQWRJVlfwsW0unmURJhcf+tUm4vCnOhA
 45eqetRrjwiY4T6IizY/TnfK/dpZyfJ+ZiETfYLc=
Received: by mail-qk1-f174.google.com with SMTP id m16so17213802qki.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 11:44:24 -0800 (PST)
X-Gm-Message-State: APjAAAVRTdnWMpne5PE2x8etO+J8PCW3xN1cXu6bWi/nCU26xh6kWd8S
 fXB9HnYchi8ZpHp9JyxXubPLE95ren5rFLTvHQ==
X-Google-Smtp-Source: APXvYqwtMCX2ktU7XP1vLiDif7HsVDYIGE5gPdIX/yIa4O+B0IDcNylxr73NToCcb42qbcuGNjawEioJubJ0X61Ew5M=
X-Received: by 2002:a05:620a:1eb:: with SMTP id
 x11mr115675qkn.254.1574797463436; 
 Tue, 26 Nov 2019 11:44:23 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574458460.git.leonard.crestez@nxp.com>
 <CGME20191122214539epcas1p34d4ca24634642e8a79c33d7a7c9291ba@epcas1p3.samsung.com>
 <c0b332b85560e39d7dbb5e88b99bbed1d1b32373.1574458460.git.leonard.crestez@nxp.com>
 <f8838bc8-44db-551f-3199-eeea91e493f7@samsung.com>
In-Reply-To: <f8838bc8-44db-551f-3199-eeea91e493f7@samsung.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 26 Nov 2019 12:44:12 -0700
X-Gmail-Original-Message-ID: <CAL_JsqJmZUVmM9BqQuD1npJ7Nqsh07CSEA5nB9-pt0v_X6HQCA@mail.gmail.com>
Message-ID: <CAL_JsqJmZUVmM9BqQuD1npJ7Nqsh07CSEA5nB9-pt0v_X6HQCA@mail.gmail.com>
Subject: Re: [PATCH v7 4/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
To: Chanwoo Choi <cw00.choi@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_114425_954920_247E06E9 
X-CRM114-Status: GOOD (  25.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Matthias Kaehlcke <mka@chromium.org>, Abel Vesa <abel.vesa@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Dong Aisheng <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 24, 2019 at 4:53 PM Chanwoo Choi <cw00.choi@samsung.com> wrote:
>
> Hi Leonard,
>
> On 11/23/19 6:45 AM, Leonard Crestez wrote:
> > Add driver for dynamic scaling the DDR Controller on imx8m chips. Actual
> > frequency switching is implemented inside TF-A, this driver wraps the
> > SMC calls and synchronizes the clk tree.
> >
> > The DRAM clocks on imx8m have the following structure (abridged):
> >
> >  +----------+       |\            +------+
> >  | dram_pll |-------|M| dram_core |      |
> >  +----------+       |U|---------->| D    |
> >                  /--|X|           |  D   |
> >    dram_alt_root |  |/            |   R  |
> >                  |                |    C |
> >             +---------+           |      |
> >             |FIX DIV/4|           |      |
> >             +---------+           |      |
> >   composite:     |                |      |
> >  +----------+    |                |      |
> >  | dram_alt |----/                |      |
> >  +----------+                     |      |
> >  | dram_apb |-------------------->|      |
> >  +----------+                     +------+
> >
> > The dram_pll is used for higher rates and dram_alt is used for lower
> > rates. The dram_alt and dram_apb clocks are "imx composite" and their
> > parent can also be modified.
> >
> > This driver will prepare/enable the new parents ahead of switching (so
> > that the expected roots are enabled) and afterwards it will call
> > clk_set_parent to ensure the parents in clock framework are up-to-date.
> >
> > The driver relies on dram_pll dram_alt and dram_apb being marked with
> > CLK_GET_RATE_NOCACHE for rate updates.
> >
> > Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> > Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> > ---
> >  drivers/devfreq/Kconfig      |   9 +
> >  drivers/devfreq/Makefile     |   1 +
> >  drivers/devfreq/imx8m-ddrc.c | 465 +++++++++++++++++++++++++++++++++++
> >  3 files changed, 475 insertions(+)
> >  create mode 100644 drivers/devfreq/imx8m-ddrc.c
> >
> > diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
> > index 59027d7ddf2a..5eac479dd05f 100644
> > --- a/drivers/devfreq/Kconfig
> > +++ b/drivers/devfreq/Kconfig
> > @@ -89,10 +89,19 @@ config ARM_EXYNOS_BUS_DEVFREQ
> >         Each memory bus group could contain many memoby bus block. It reads
> >         PPMU counters of memory controllers by using DEVFREQ-event device
> >         and adjusts the operating frequencies and voltages with OPP support.
> >         This does not yet operate with optimal voltages.
> >
> > +config ARM_IMX8M_DDRC_DEVFREQ
> > +     tristate "i.MX8M DDRC DEVFREQ Driver"
> > +     depends on ARCH_MXC && HAVE_ARM_SMCCC
>
> I'll edit it as following and applied it.

You corrupted the URLs in the binding patch when applying the series:

Traceback (most recent call last):
 File "/usr/local/lib/python3.6/dist-packages/jsonschema/validators.py",
line 774, in resolve_from_url
 document = self.store[url]
 File "/usr/local/lib/python3.6/dist-packages/jsonschema/_utils.py",
line 22, in __getitem__
 return self.store[self.normalize(uri)]
KeyError: 'https://protect2.fireeye.com/url?k=b51ff83f-e8cff0d7-b51e7370-000babff32e3-c25c03b8af1b12ee&u=http://devicetree.org/meta-schemas/core.yaml'

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
