Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAB4AD840
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 13:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxAT2EXyUSlcyXCYiNm+46Oln91UrMxPHmC5x3CD/9w=; b=nuPDcdjGmCLOwd
	jglK719L7TjNCHk05ZLOud1OdrZQZ7tD9siEAHERaUkazD/tJGzqDB+KqdN/YavK1PIFmbVALQvGA
	5XhrdJTftNxBdxVFdvf9Av1F/mqAghwmEADmirOvzP4pKZ451vNvIEnH4h3IT9oh+Sr1r2Ern74Ke
	ZcJFqMLZW6P4xaTMTYw6MKNTC+aoZCUSVlxdXEBLM+R8LaoQr8Y6+9jBZNjKFlSKjigsV6OjPTF+d
	VE5bAaDabf9Jh/Bf/3d484t9jWT3fW/KLD7t1JHQgrBDfWaTeqwZ0k3g88VKPHOvVQZSXwDh0Ea1l
	KH/mbHLGz+/N3OIy/qmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7IB6-0004F7-01; Mon, 09 Sep 2019 11:49:52 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7IAz-0004EE-Jv
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 11:49:46 +0000
Received: by mail-io1-xd43.google.com with SMTP id n197so27870794iod.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 04:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M21UYXJyYebbHCHFFmhcntmZuuRnDyVimorrVNeCzlo=;
 b=fFkbYU0u2ypzChewVrqRwuJpt84/NW3foUpfTgiGUS9mscuErEVh6S/LyVaKNuzWpb
 rQfRpN/WeaxkQqc+XZgqqpWPxoxi/UqYMlsuAUha5Y0/w66eYaS3xlJod8seR0RT1tz8
 mG+vLOECAbp+8QjtXAq+acAJqz1ocd5h8eBBWeLObWUnF/wquu4BWOcJfuQL1PQzkXv1
 K3lDjBomyxvJpg2oHhWN9AUm5sDC991rvS1+Sc6auZOtaYKY18xXLM1dBkVoDq9G8D2y
 GGQ2uUBqCCtw6/XGuebPsbmeo7I3FAlLYlJXEj+vRbh0e5+ztwfOs5AeiuOeuWKgQa0+
 aRFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M21UYXJyYebbHCHFFmhcntmZuuRnDyVimorrVNeCzlo=;
 b=lwSNXIwYh+StS31HtlQHUj0vGl5r2IjIGTe9i8ojCCVVDE0CLA9daOeuyL8/QYQDZn
 IwFV5lCn6TtZgZ8dj3BwwPcLvjvHrJyk+ayCo7petOISvGr9LXdMLfPDdqR+o88Scav6
 RM7HHye8w87LGII6dNU8P00vXET0+zshz7P5r1VaJ6UMBUlbHyggEWlbNL3pYQz+oLyh
 ZhEyvsYKS5ACROVwyAH2SuHQaqBpOb3bbVTnf+KR24hpOgZf4sYEaMkqfuPEDsQnAlIC
 yxxpPOLtByKlTUXbO5yKme1vg0P/NWnMDMm6KR9bXw3wZzBi9neKqEFfL+8CI8NMvcIH
 h7/w==
X-Gm-Message-State: APjAAAVw6CRT+gCPoYgz8JQEMQ8eXLidbdQ76rmpcCAD6rVrs5CUv4EA
 EhbstLGYXmkSOkMUCJyz0jN8DmJLXFix9BeoLSrpdA==
X-Google-Smtp-Source: APXvYqzjGqfWDT6ZIpciIE24q+d4sdKvSrtYbGzyXxi6pqsxLQVMj6YBwVO/W1OR5iRPtVFXjC6cuC3EvoFajlMG/gw=
X-Received: by 2002:a6b:e514:: with SMTP id y20mr18875550ioc.197.1568029784817; 
 Mon, 09 Sep 2019 04:49:44 -0700 (PDT)
MIME-Version: 1.0
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-12-git-send-email-aisheng.dong@nxp.com>
 <20190906171454.167BF20640@mail.kernel.org>
In-Reply-To: <20190906171454.167BF20640@mail.kernel.org>
From: Dong Aisheng <dongas86@gmail.com>
Date: Mon, 9 Sep 2019 19:39:43 +0800
Message-ID: <CAA+hA=TApgehM8kTdA2Py5Uuiy8=5eG7GvuyhUdPrFj_SEkR_g@mail.gmail.com>
Subject: Re: [PATCH V4 11/11] clk: imx: lpcg: add suspend/resume support
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_044945_685001_85748495 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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

On Sat, Sep 7, 2019 at 9:22 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Dong Aisheng (2019-08-20 04:13:25)
> > diff --git a/drivers/clk/imx/clk-lpcg-scu.c b/drivers/clk/imx/clk-lpcg-scu.c
> > index 3c092a0..4df0818 100644
> > --- a/drivers/clk/imx/clk-lpcg-scu.c
> > +++ b/drivers/clk/imx/clk-lpcg-scu.c
> > @@ -33,6 +33,9 @@ struct clk_lpcg_scu {
> >         void __iomem *reg;
> >         u8 bit_idx;
> >         bool hw_gate;
> > +
> > +       /* for state save&restore */
> > +       u32 state;
> >  };
> >
> >  #define to_clk_lpcg_scu(_hw) container_of(_hw, struct clk_lpcg_scu, hw)
> > @@ -112,5 +115,35 @@ struct clk_hw *__imx_clk_lpcg_scu(struct device *dev, const char *name,
> >                 hw = ERR_PTR(ret);
> >         }
> >
> > +       if (dev)
> > +               dev_set_drvdata(dev, clk);
> > +
> >         return hw;
> >  }
> > +
> > +int __maybe_unused imx_clk_lpcg_scu_suspend(struct device *dev)
>
> static?
>
> > +{
> > +       struct clk_lpcg_scu *clk = dev_get_drvdata(dev);
> > +
> > +       clk->state = readl_relaxed(clk->reg);
> > +       dev_dbg(dev, "save lpcg state 0x%x\n", clk->state);
> > +
> > +       return 0;
> > +}
> > +
> > +int __maybe_unused imx_clk_lpcg_scu_resume(struct device *dev)
>
> static?
>

Will fix.

> > +{
> > +       struct clk_lpcg_scu *clk = dev_get_drvdata(dev);
> > +
> > +       /* FIXME: double write in case a failure */
>
> What does this mean? Sometimes writes don't work unless the CPU issues
> them twice?
>

Yes, it's a hardware timing issues.

Regards
Aisheng

> > +       writel(clk->state, clk->reg);
> > +       writel(clk->state, clk->reg);
> > +       dev_dbg(dev, "restore lpcg state 0x%x\n", clk->state);
> > +
> > +       return 0;
> > +}
> > +
> > +const struct dev_pm_ops imx_clk_lpcg_scu_pm_ops = {
> > +       SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(imx_clk_lpcg_scu_suspend,
> > +                                     imx_clk_lpcg_scu_resume)
> > +};

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
