Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF1E1776CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 14:17:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W90b2UQ1+UjKUNDAz3QaZTNBydzAk0s4BdCJw4Mhkgk=; b=Ij5caky/ww7hN/
	b5OMGcxpMywcMwsl85+Iu0dTEOz0JAxwmov6dsvBG/iqNIDEh77B+AyqEAPPBQBEf9dc+lf1pu64T
	xA2BkwfuVAUR9xwUINhupvCUvAjVN/FiWdriHsDfD1B5/owhY4j5BQJy6PYVbiwCC3cR5ZZ4YlJA8
	+HB9YFjkf5TZ6ax8fTAnWhR+xqFqaPpAIZ+yNc2K6nW67kz9UC6UfXBUai5zF5VB2JJB2/hSk7vsY
	MkgQ7fKP/txbM6qO/udXtPy9PE29vPl/b28Xskx+63ME1gN1kA0I77tGiu6lGr+Je+L2EN+7eea44
	gTsOP+Q8VcKBmdu+9Qag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j97Qb-0004Fl-JN; Tue, 03 Mar 2020 13:17:41 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j97QU-0004F9-S9
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 13:17:36 +0000
Received: by mail-wm1-x341.google.com with SMTP id g134so1788344wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 05:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x1haolJvTMTs4qAKKQpFP8pY7Ez4bO8I0NW3W3vGhjY=;
 b=OuocMO5bejjzlYN7dgw8I+8i7eYd2hQHN4Z6zRclkIyqy204aGYP9hBgL0OfmqkUs2
 VwkGfDLA7OjW5W7CCKViNtEZZaKACTs29/be0YTbgm/2tmmJdc+zsgurpV68PSrI4n0y
 qZGu/h11pBgohxtCnuw9NS+/rL/fghbF5xQ9vGE6m3ZCWB4kYe1/SQko1ja8UCdmqBMb
 wMtj0pF8zR9m+qrZJof85tZdKOtQBz+s9o0hc2wRsHqnPExf3XHgaNSMhvoJxkLgV23j
 plKLYqojWrxfJGa8HkPldn1PPKxCakR7AHxQ8v1Qd88GfCwh9lu8b/GzjTgtAxKvVLgD
 qWIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x1haolJvTMTs4qAKKQpFP8pY7Ez4bO8I0NW3W3vGhjY=;
 b=XXbcPxr+1d2+QqE96wwGHT5sIOnEyzeyimdYMR5iNEocUyS/tfN4P2BXlKin5LRsP5
 mPx8pWd+hnOJOIymXsZJkMJH8ApB/u+ReDyvhJFggerWgU2L6Br2LSwSspfZzk747g3H
 wS5o94trbgZQm4oGm0qq4RwAKHdyZXnZ+tGCQqA5Yjrd2+Usrxl61SF59aV8XS2TTyT9
 uWdTrzZ/juwlmdOHoif379i1dt3wrl8WPmVGFqhG4FwNrBKr+Rb5DyxX5cr+Xa8QOSMm
 z7mYUfHcqBrUFaDermJBuJHYHHTvZj5u+nwh3ibhfXm/E7W0hb7hx3jVSThKOPRyep7N
 q/mg==
X-Gm-Message-State: ANhLgQ2McatdolLl0e8Y/jSHGn22GN+wbQBhY3skp7c35IVNZWwV+nBu
 yxnmiChSvTctCl+Udfe+4PEHBN+oEJtf/T1sgMuAI4kIgro=
X-Google-Smtp-Source: ADFU+vtrqxh9biAxeykoHsq+WDr8PQuEooauex3an4mdH3DhWCElhBl6tZ0babeoVFgVsf3/xOOvr2qyvHAvbWS8TDs=
X-Received: by 2002:a1c:9e51:: with SMTP id h78mr4179705wme.44.1583241453088; 
 Tue, 03 Mar 2020 05:17:33 -0800 (PST)
MIME-Version: 1.0
References: <20200302205700.29746-1-daniel.baluta@oss.nxp.com>
 <20200302205700.29746-3-daniel.baluta@oss.nxp.com>
 <CAFQqKeUSf_KJ3MBumZTEEUc+kUdLnL5y=kvQ2x75FziJUECqpA@mail.gmail.com>
In-Reply-To: <CAFQqKeUSf_KJ3MBumZTEEUc+kUdLnL5y=kvQ2x75FziJUECqpA@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 3 Mar 2020 15:17:21 +0200
Message-ID: <CAEnQRZBOpYASGTuBQ2Fz6Lg=L5otR2r8yr=XhsWSCHjmaB_L8w@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] ASoC: SOF: Use multi PM domains helpers
To: "Sridharan, Ranjani" <ranjani.sridharan@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_051734_941493_7B7C797D 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daniel.baluta[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Daniel Baluta <daniel.baluta@oss.nxp.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Pavel Machek <pavel@ucw.cz>, Fabio Estevam <festevam@gmail.com>,
 khilman@kernel.org, Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 dl-linux-imx <linux-imx@nxp.com>, "Brown, Len" <len.brown@intel.com>,
 linux-pm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Paul Olaru <paul.olaru@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Greg KH <gregkh@linuxfoundation.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>, rjw@rjwysocki.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 2, 2020 at 11:26 PM Sridharan, Ranjani
<ranjani.sridharan@intel.com> wrote:
>
>
>
> On Mon, Mar 2, 2020 at 1:00 PM Daniel Baluta <daniel.baluta@oss.nxp.com> wrote:
>>
>> From: Daniel Baluta <daniel.baluta@nxp.com>
>>
>> Use dev_multi_pm_attach / dev_multi_pm_detach instead of the hardcoded
>> version.
>>
>> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
>> ---
>>  sound/soc/sof/imx/imx8.c | 54 +++++-----------------------------------
>>  1 file changed, 6 insertions(+), 48 deletions(-)
>>
>> diff --git a/sound/soc/sof/imx/imx8.c b/sound/soc/sof/imx/imx8.c
>> index b692752b2178..ca740538a2d5 100644
>> --- a/sound/soc/sof/imx/imx8.c
>> +++ b/sound/soc/sof/imx/imx8.c
>> @@ -51,10 +51,7 @@ struct imx8_priv {
>>         struct imx_sc_ipc *sc_ipc;
>>
>>         /* Power domain handling */
>> -       int num_domains;
>> -       struct device **pd_dev;
>> -       struct device_link **link;
>> -
>> +       struct dev_multi_pm_domain_data *mpd;
>>  };
>>
>>  static void imx8_get_reply(struct snd_sof_dev *sdev)
>> @@ -207,7 +204,6 @@ static int imx8_probe(struct snd_sof_dev *sdev)
>>         struct resource res;
>>         u32 base, size;
>>         int ret = 0;
>> -       int i;
>>
>>         priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
>>         if (!priv)
>> @@ -218,39 +214,9 @@ static int imx8_probe(struct snd_sof_dev *sdev)
>>         priv->sdev = sdev;
>>
>>         /* power up device associated power domains */
>> -       priv->num_domains = of_count_phandle_with_args(np, "power-domains",
>> -                                                      "#power-domain-cells");
>> -       if (priv->num_domains < 0) {
>> -               dev_err(sdev->dev, "no power-domains property in %pOF\n", np);
>> -               return priv->num_domains;
>> -       }
>> -
>> -       priv->pd_dev = devm_kmalloc_array(&pdev->dev, priv->num_domains,
>> -                                         sizeof(*priv->pd_dev), GFP_KERNEL);
>> -       if (!priv->pd_dev)
>> -               return -ENOMEM;
>> -
>> -       priv->link = devm_kmalloc_array(&pdev->dev, priv->num_domains,
>> -                                       sizeof(*priv->link), GFP_KERNEL);
>> -       if (!priv->link)
>> -               return -ENOMEM;
>> -
>> -       for (i = 0; i < priv->num_domains; i++) {
>> -               priv->pd_dev[i] = dev_pm_domain_attach_by_id(&pdev->dev, i);
>> -               if (IS_ERR(priv->pd_dev[i])) {
>> -                       ret = PTR_ERR(priv->pd_dev[i]);
>> -                       goto exit_unroll_pm;
>> -               }
>> -               priv->link[i] = device_link_add(&pdev->dev, priv->pd_dev[i],
>> -                                               DL_FLAG_STATELESS |
>> -                                               DL_FLAG_PM_RUNTIME |
>> -                                               DL_FLAG_RPM_ACTIVE);
>> -               if (!priv->link[i]) {
>> -                       ret = -ENOMEM;
>> -                       dev_pm_domain_detach(priv->pd_dev[i], false);
>> -                       goto exit_unroll_pm;
>> -               }
>> -       }
>> +       priv->mpd = dev_multi_pm_attach(&pdev->dev);
>> +       if (IS_ERR(priv->mpd))
>> +               return PTR_ERR(priv->mpd);
>>
>>         ret = imx_scu_get_handle(&priv->sc_ipc);
>>         if (ret) {
>> @@ -329,25 +295,17 @@ static int imx8_probe(struct snd_sof_dev *sdev)
>>  exit_pdev_unregister:
>>         platform_device_unregister(priv->ipc_dev);
>>  exit_unroll_pm:
>
> Can we also rename the label to exit_pm_detach maybe? It is no longer an unroll anymore right?

Sure, will do in v2.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
