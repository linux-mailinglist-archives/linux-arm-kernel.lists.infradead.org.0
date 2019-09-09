Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 871F0AD721
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 12:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZefaMGopgmDTaUprhK0Rx88lk0/MTDNq2AjTdaPgSQA=; b=NJZrg3xwuJI6sk
	ZXvBMSYfiEHZc3YqMLNMjzEX0835ITNqWfpNDWb/N9qshTOD0JqCNST/kKvmPsdfgVjcd3Hpz54Jq
	I3+Y1wAK5aymmIDYa5CYM4QXCzQc0lpXdW132ytQspL8Hdgut5jo2yxp64y8CBMRXZUqBruAM+Ilk
	V2MjL/QZE7o2FNjjJ+hYVWYZ6b/p561Efa4Vk3SHO8cZEK/qv0CjPMswDm+dbIDWhQMVd06sKBcCR
	iaq4RlzNXKaxH+RRewq+L9M2aNokjzzW1BUPrYT/xZaEZWbuHO/9ndZgIdlbxhQ0/FK0fP5/K4pxE
	llIw+qgrmoGZJa7kuNHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7HAo-0005wi-1z; Mon, 09 Sep 2019 10:45:30 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7HAb-0005wM-9j
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 10:45:18 +0000
Received: by mail-io1-xd44.google.com with SMTP id r8so2578576iol.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 03:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w5dfQIfclsaxzYHBXRshhSGRuyP1tO5QBkMM8Tmc/wc=;
 b=sIHnj+NXsmewoJ6E9temqBg6go0OyzlInmMm+ojBsMNeMbAHovv2AUcKI9sRROhtSz
 6snHeDqjoNLHSPIs/cSa24aiRxuWbUyq2/St+L9j2DlixFP2p8eweAABDowm0VaVb6XG
 pSy5wTWwiA6NjjNxcdGp6XznrfbHrwKGuhtXmQhs6ojRo6iMZnaNnv+zE4W8P/o4cKuR
 1KD2sB8zFbswPTldfl82dN3OUK9doFOeI1pZsZA7/KPMncv7MHlyH96E0zMKFCBa4CKa
 DmfEToVzb+hhnbiwY6sfgN/VKqd0WmHAJj/h5rgA02zl7kFWqEGVcSxj593gpIBaxMqQ
 6WPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w5dfQIfclsaxzYHBXRshhSGRuyP1tO5QBkMM8Tmc/wc=;
 b=DkmrJdwDixGQFabq7UoG9fAkBJ2dwQDdl+2B+82difcIt75vGhG9IiQZbbihVx+3dB
 XB7qTcvh9ddAFQ5NV9RQqx/rxP7CWrPmg4SZBju7LIOhmPZSaRKavJN0g5UcwO+NmBTv
 xHn7UluCl93TFzF2sG9QQgePtXB7hPoYe/jHKfuwS5OE+uHmcfB80SftGQL+yRrNOx5F
 L1mLhw3hM7LMuO7o7nZDJCnMGCtj98zLTFpV0y+CbPsAH1WVDHMP+Zflfs2WHgryeMlp
 JoZvfZ1XQLvyy9+Hyt+IuO8bcR8rLadWA7QY3yT2eDpSAzPlHBw8gKlC6RYtyvTmd9/7
 X/kg==
X-Gm-Message-State: APjAAAUB9fljJCa+C+bHRiRZiOdxwyAEiiLPhoFyv5pg2vW/GDXaotwf
 pN9DqZqIV+Km3EiRt25K48s8zkgFUEB+SA6Hrq0=
X-Google-Smtp-Source: APXvYqwFJ0Nc1ve8XGIHwiINnyPrRCrW2wXL5aRsXNiJ16FFueAHgNcf7/uvqROaQkFwe+iPu+20SpGdjm44lqD3O6M=
X-Received: by 2002:a02:7f8a:: with SMTP id r132mr5492024jac.46.1568025915953; 
 Mon, 09 Sep 2019 03:45:15 -0700 (PDT)
MIME-Version: 1.0
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-8-git-send-email-aisheng.dong@nxp.com>
 <20190906170944.B861620578@mail.kernel.org>
In-Reply-To: <20190906170944.B861620578@mail.kernel.org>
From: Dong Aisheng <dongas86@gmail.com>
Date: Mon, 9 Sep 2019 18:35:15 +0800
Message-ID: <CAA+hA=Rds2Pvv0iJVhFr3nb0N8iKjTtO=uu8c_gTymiVr-dewA@mail.gmail.com>
Subject: Re: [PATCH V4 07/11] clk: imx: scu: add suspend/resume support
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_034517_369997_FFF67273 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 7, 2019 at 5:32 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Dong Aisheng (2019-08-20 04:13:21)
> > Clock state will be lost when its power domain is completely off
> > during system suspend/resume. So we save and restore the state
> > accordingly in suspend/resume callback.
>
> And this doesn't need any coordination with other clks in the clk tree
> right?

AFAIK no as SC firmware may have handled it properly.

>
> > diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
> > index edc39d7..8d9cfa2 100644
> > --- a/drivers/clk/imx/clk-scu.c
> > +++ b/drivers/clk/imx/clk-scu.c
> > @@ -46,6 +46,10 @@ struct clk_scu {
> >         struct clk_hw hw;
> >         u16 rsrc_id;
> >         u8 clk_type;
> > +
> > +       /* for state save&restore */
> > +       bool is_enabled;
> > +       u32 rate;
> >  };
> >
> >  /*
> > @@ -425,6 +429,9 @@ struct clk_hw *__imx_clk_scu(struct device *dev, const char *name,
> >                 hw = ERR_PTR(ret);
> >         }
> >
> > +       if (dev)
> > +               dev_set_drvdata(dev, clk);
> > +
> >         return hw;
> >  }
> >
> > @@ -481,10 +488,52 @@ static int imx_clk_scu_probe(struct platform_device *pdev)
> >         return 0;
> >  }
> >
> > +int __maybe_unused imx_clk_scu_suspend(struct device *dev)
>
> static?
>
> > +{
> > +       struct clk_scu *clk = dev_get_drvdata(dev);
> > +
> > +       clk->rate = clk_hw_get_rate(&clk->hw);
> > +       clk->is_enabled = clk_hw_is_enabled(&clk->hw);
> > +
> > +       if (clk->rate)
> > +               dev_dbg(dev, "save rate %d\n", clk->rate);
> > +
> > +       if (clk->is_enabled)
> > +               dev_dbg(dev, "save enabled state\n");
> > +
> > +       return 0;
> > +}
> > +
> > +int __maybe_unused imx_clk_scu_resume(struct device *dev)
>
> static?
>
> > +{
> > +       struct clk_scu *clk = dev_get_drvdata(dev);
> > +       int ret = 0;
> > +
> > +       if (clk->rate) {
> > +               ret = clk_scu_set_rate(&clk->hw, clk->rate, 0);
> > +               dev_dbg(dev, "restore rate %d %s\n", clk->rate,
> > +                       !ret ? "success" : "failed");
> > +       }
> > +
> > +       if (clk->is_enabled) {
> > +               ret = clk_scu_prepare(&clk->hw);
> > +               dev_dbg(dev, "restore enabled state %s\n",
> > +                       !ret ? "success" : "failed");
> > +       }
> > +
> > +       return ret;
> > +}
> > +
> > +const struct dev_pm_ops imx_clk_scu_pm_ops = {
>
> static?
>

Sorry that i missed to update here as those function are changed to be
used within
this file now.
Will fix.

Regards
Aisheng

> > +       SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(imx_clk_scu_suspend,
> > +                                     imx_clk_scu_resume)
> > +};
> > +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
