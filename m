Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDB06C956
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 08:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6nEKkJ2/+FBzJC5ZBSwp/W7dvyQapHJFbUsh0E56uUk=; b=jxHegYfxiuXxb5
	5TbL23GSj7xlslGUjpiAEDfQdVaMwv85E35pjyT9d2IvMk3Sqxg/PDcxObpLMgKKqcMDsoHwHK8Et
	gkajy6B9SHQg1LUUiZ9G1PreFB59AOl3cYRpUAhwqwv3IV0IfasxScddfq0AanegsEV3Sy9GzcJgb
	tH59Mo2ycfoiEL/swWkOc8HDzDzw8d2YzUUb2wA/dUBbgGdQ3q6LaZb88VkHhfM9qevrEUuui5NNq
	P3CJSwFeb0Cp1FsKGRhEFH+qKbOcC+5/fHPPWBmYkxlmkRUp4rx1+CZhwRX+Ii3MFmUEVp9rMTO/y
	hh5W397zwhdOwBQ3YLvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho041-0001Jl-Ok; Thu, 18 Jul 2019 06:38:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho03g-0001JB-Ou
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 06:38:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id z1so27279166wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 23:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L2NnsxHalTFFT0d2ugA84iA0C6unTFDCXxJpmFCZMDg=;
 b=mU2rDFdHqqyMoewMCLooVx5uKTiCYayKKBLfWUX8Dgg5gXoroHS4qdTUOUM2FLZKD4
 17yUnokEo/X/I4X+Q3NWDdqKgP5kJDkou5Sazt40bpBHtabab/e4+tQMuh+qc5F5HwR5
 M8WtZImqd4/Hr8k6rtB1WWn+TIZI7gXMMcVov9HbXodmBhxu8CmdSqhAGC6wF9lK5K5P
 WeVE/Aq4XpJqkVwRdpH4Tjsf1sGgFtb6AtIBrbNddZg1wMxTEq+XmtNJ42PuftltArzz
 5tEROO7cdZxwUn6cZpUG1u8kkVasWSz40rn8iUKe6UFIG5ZWozSHhin9eqlO2asjdCEm
 u4zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L2NnsxHalTFFT0d2ugA84iA0C6unTFDCXxJpmFCZMDg=;
 b=jF/TZUPjolbcvg1nP8iKH9ZqRUcYUiU0g7SddgVXpl4wJW+gJdI9MJb8toEDJbKIEj
 JdTGGERutJTsHjsV0M1mdXhh15VidyzXHrW4hzDq4Z1T2063KyXlF+gHgI5nVljl7PaW
 N0D3FO+VeEvWt8lpb5923Ajz9cJWfDhdmyNbm4XKEpLsDjbznIg69/ZkpSU26RA+XAVv
 n4GBhfJsCmd8EecbPqFRLDPBPzxkUxCLaMv4SSOG0mFFmF6BBdu2hMlWOtRdMpqhusQU
 8vALWLAm6jew/KE8Iz+P4adkYdDAAWLRxER44KkQjlinNB54+vK+cMMoMl7HpxGQNeiP
 z3+A==
X-Gm-Message-State: APjAAAUWrRS90d7oMaPACebFc5Mt4ne+QdKQXGPMTtaJFCz4Z6A/TS4b
 +rmXPpVVs+VKgdCOZxnmH9R4y2a2VLiYnZc66t4=
X-Google-Smtp-Source: APXvYqxUwHrtJKmu5n1SW9b0UpwbGBaVe46KpI2iRZpTMEgoEse0M/DfOakllhKIekqXAIC5t8aZJB40FbIb1aR8M1k=
X-Received: by 2002:a05:6000:14b:: with SMTP id
 r11mr47876504wrx.196.1563431903288; 
 Wed, 17 Jul 2019 23:38:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190703190404.21136-1-daniel.baluta@nxp.com>
 <20190703190404.21136-3-daniel.baluta@nxp.com>
 <AM0PR04MB42114DD325C5DB2E06011A4A80C80@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB42114DD325C5DB2E06011A4A80C80@AM0PR04MB4211.eurprd04.prod.outlook.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 18 Jul 2019 09:38:11 +0300
Message-ID: <CAEnQRZDrx9tAiE5OnOkudy4eVLxjvhpHYg=ipPn6qo1hTVw5Aw@mail.gmail.com>
Subject: Re: [PATCH 2/3] firmware: imx: scu-pd: Add mu_b side PD range
To: Aisheng Dong <aisheng.dong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_233828_838489_48079778 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 6:30 AM Aisheng Dong <aisheng.dong@nxp.com> wrote:
>
> > From: Daniel Baluta <daniel.baluta@nxp.com>
> > Sent: Thursday, July 4, 2019 3:04 AM
> > Subject: [PATCH 2/3] firmware: imx: scu-pd: Add mu_b side PD range
> >
> > LSIO subsystem contains 14 MU instances.
> >
> > 5 MUs to communicate between AP <-> SCU
> >   - side-A PD range managed by AP
> >   - side-B PD range managed by SCU
> >
> > 9 MUs to communicate between AP <-> M4
>
> The left 9MUs are general and can be used by all cores,
> e.g AP/M4/DSP.
> So below description is not correct.
>
Indeed. In the particular case of the DSP it is true.

I don't know exactly who will use MUs 5..12. I only
know that MU 13 is assigned to DSP and we prefer
to power up side-b from AP because powering up
from DSP would be a pain.

This means that DSP needs a way to communicate with SCU
so basically it needs another MU for that.

> >   - side-A PD range managed by AP
> >   - side-B PD range managed by AP
> >
> > Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> > ---
> >  drivers/firmware/imx/scu-pd.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
> > index 950d30238186..30adc3104347 100644
> > --- a/drivers/firmware/imx/scu-pd.c
> > +++ b/drivers/firmware/imx/scu-pd.c
> > @@ -93,6 +93,7 @@ static const struct imx_sc_pd_range
> > imx8qxp_scu_pd_ranges[] = {
> >       { "kpp", IMX_SC_R_KPP, 1, false, 0 },
> >       { "fspi", IMX_SC_R_FSPI_0, 2, true, 0 },
> >       { "mu_a", IMX_SC_R_MU_0A, 14, true, 0 },
> > +     { "mu_b", IMX_SC_R_MU_5B, 9, true, 0 },
>
> Should start from 5?
> { "mu_b", IMX_SC_R_MU_5B, 9, true, 5 },

I guess you are right. I think start_from is used
to form the pd name, because the actual rsrc
is computed as follows:

sc_pd->rsrc = pd_ranges->rsrc + idx;

So, I think for this reason it just worked for me.

Anyhow, I'm thinking about powering up only MU13_B from AP side
and let the user of other MU sides B to decide from themselves.

So, the change will be:

> > +     { "mu_b", IMX_SC_R_MU_13B, 1, true, 13 },

Will send v2 asap.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
