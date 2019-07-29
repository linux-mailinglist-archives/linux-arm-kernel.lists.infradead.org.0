Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4AA78638
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 09:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJKDk+TBzvgfBuMshG60pw2h22IftcLMlZzkMMTlBpM=; b=VXwh6YIIAUSSKL
	60xsZwAQhNlQSgJTQBqNw+Kpsnqfdfr7YjMs5MbSfBnRmDtXy5q87RYCvcwIeYFXBLmQpcK4UnsQh
	JEWaNk4/KV8NmEYDexqg8RCGeGahx1RywV8HtS0Lb/viaPdhSpLFH4A91/HhhZ6ox5iVgDhMN2yd/
	Un/4GvU/b0YSW4phI8OTM/E2DL5aO4XdE5Et0ZLkBluqJob07ZzdC9i0ZY5GN/Xn4LfIPE4fLIOZm
	T5SqP+id87J76omJBaCBK1DUHCmBzbmBSlb5NYcly1lWkR7LBmX8cTGgVduGE4sedMfNH4c3hIiRq
	C7PtmV0k0yrHQud3riaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrzyt-0007gf-2j; Mon, 29 Jul 2019 07:22:03 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrzyJ-0007g3-6n
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 07:21:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id f9so60546109wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 00:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OmnUcMUVxe9qZyEWWIormUbuzEUv2UONqbilRZIkZOs=;
 b=htmsTnU+J/YrxKgm+PeiOkBSwhHVH0uNZw4qIM5tuLC2SgaswPgPC403mB3mi2Xqod
 udHQeT5HB82KFIhumYOKzZP9C2wPBtZVv5u3HOqw7nhWTdPGRqY7ltAPm1+nbfkN5xDK
 HR1U6eQS+xM9rGcYLiqr1WFVA0Z9tvL27eCFchA2Jga+SMAreGWa0QfVuynJZpmrP5Vu
 UXLJ771gOeXtycPTC+Hkqo/7R9LL7DP8F/CDb4q3UeBwD7hcsklj7h2UBq5/1hy/vovw
 osI5lUQRIE0EnyuJyhoVAR0oQKuyX1wOYGBxaMlHk4Q3jROXLOEMeD0WABOFf39T5fz+
 ZBdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OmnUcMUVxe9qZyEWWIormUbuzEUv2UONqbilRZIkZOs=;
 b=Ed5ID/EgMbfdVCjQHt9APu7zuO3nfa9rh6GB219cMPpKLll9GpzchTTha/Q+YHVAzk
 S3drQyXfbIHXCQUAI/vjqDgKtm4wmjjKRX/oeI1yd4G0wFeLujgCwBR7mvt1gaqM3coq
 instVmVfGXIKgotugng/whqGaHDAjxRBPxTcYGO0aeUvqiohWQEkQMKx2g1lprg9en3O
 WoR8P9zvLz/PWoJH/1eWEbGMhBMiejhXLCHgzYHCxQGo8Q5AHIIxBaAbh6EfGveKYoaV
 /MaYJAFDAm0quASsUQyoc57mvCB8DbBi9y2eQUVvRQDhIWEnZpQIIkdAJUCb6Z6+42fR
 kZtQ==
X-Gm-Message-State: APjAAAWDu9YQ56sBqf5+wznQz0ronzwWm8p44F/BbxcFj6yACBkB07vK
 u4wK0toeyZtS04P648js8eOTzoBxTulahhu0xlA=
X-Google-Smtp-Source: APXvYqzk7QV8VpWwnSuPJlBSETXIe8AltBmDlBWTRlXUH1BvMfbt/6T3Ue9gxeDQPFxzotZ4OMTNG2gxxNFTin/+OMM=
X-Received: by 2002:a05:6000:14b:: with SMTP id
 r11mr44520639wrx.196.1564384885995; 
 Mon, 29 Jul 2019 00:21:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-5-Anson.Huang@nxp.com>
 <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
 <DB3PR0402MB3916233A56CF5DF778115716F5C30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZCrZybzcy__u4p_Eq4zSVc2ESyfKLk5sPf1JYba1JSOiA@mail.gmail.com>
 <20190727161736.4dkfqgwftre67v56@fsr-ub1664-175>
 <DB3PR0402MB391600891BA75DFFA9674058F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZB6tmYFA8wwh0Fm49LTTDuCLq-SWVfrcUkRWWBo=0U13w@mail.gmail.com>
 <DB3PR0402MB391627F725AA7237BCACBE87F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZBrmikenTvnh7syhy=PDPcTL3fn2TJ+ya=ToZ+SFmH5tw@mail.gmail.com>
In-Reply-To: <CAEnQRZBrmikenTvnh7syhy=PDPcTL3fn2TJ+ya=ToZ+SFmH5tw@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 29 Jul 2019 10:21:14 +0300
Message-ID: <CAEnQRZDSjmcU8Q7+kMeFf12tx0NuMNjrcsgnXayvHpu4ChwHGA@mail.gmail.com>
Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_002127_248726_6026FA80 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Carlo Caione <ccaione@baylibre.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "edubezval@gmail.com" <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 10:20 AM Daniel Baluta <daniel.baluta@gmail.com> wrote:
>
> <snip>
> > > Your explanation makes a lot of sense. We will take care today of Abel's
> > > patch.
> > > What do you think about Fabio's patch? I also think this is a valid patch:
> > >
> <snip>
>
> >
> > Hmm, when did Fabio sent out this patch? I can NOT find it...
> > I also have a patch in this series (#4/6) doing same thing on July 5th...
> >
> > https://patchwork.kernel.org/patch/11032783/
>
> He didn't send the patch yet. It was just a request for test here:
>
> http://code.bulix.org/pd88jp-812381
>
> But, now I see is exactly like your patch here:

... pressed send to early.

https://lkml.org/lkml/2019/7/5/19

We are all set then. Thanks Anson for clarifications!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
