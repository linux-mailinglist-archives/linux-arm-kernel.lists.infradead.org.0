Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6719A6116
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSKndYrZGaUf2Gxx/0dXV2MkuQV4fnAnyGdkqVq63uU=; b=jvEpWxo+EitASF
	cc+VBG6JTm9sYIB8RfcNhCrYRs4KI7d+gLokLxQU318sIFhcQJYTZo1kYwQ1AeRB2Cw0lLOUci0M8
	O2cIh05EvSdqwt4FoDqsxpe7tuIcpwXMwLLj7d3/d2t26Xlt7wkcVJXamxdK2y5Kwbd/G3ykBUfjj
	oUb2VqfBj7Djdd5FbSo4pS8Xjp5aKYLgRh795cLN+P67c5TNS8mbCsAP6rLodGgES35LshFZjHxyF
	/qhiVQa1MNPMHnPV6LF1a4RFLbdqA5Wc2fW90rkbRlWq6fUorBi+clkudze07JvQoeWRdRuGzi9T+
	AxHutWau3QB85FCrwYEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i523c-0006cV-R7; Tue, 03 Sep 2019 06:12:49 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i523J-0006bJ-Pn
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:12:31 +0000
Received: by mail-io1-xd41.google.com with SMTP id b136so9177743iof.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 23:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GZ5aGUxM1e1yAxeiEBXNgI8jjZDu1KoSilHhJTQM1zk=;
 b=Wep3juTmL73l+HU2tDif3J1tPbmROfBh6z6wBs94tp5cxNJLrGZxFgQlSGpnSSRPPH
 oTkMvyeCpeMI5ECRFaSvjc9HiQJEfMCTk/lrFOVPmYGQXwyKcc8CUmRCFzIIrhLaKNyD
 3z2XRvdXF3fItuYEDCvcBCCLPjkFafM2rG2rMtVyUOlLRyLgiYWpW4GYClUyepfweeaz
 b3+lKyAmSHAcLNppvm3AGZEOMUfXrcl2ixluW/2FhVQ07TRYZoTjzrKw5MojHYEW53lB
 3DjQQ0aVOgb8yJ7gxDI9GPt5lRBBDtqtJrH5EjLGIn+IEeWGL90mvoGz6Fa4Gxa0xoPo
 xKSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GZ5aGUxM1e1yAxeiEBXNgI8jjZDu1KoSilHhJTQM1zk=;
 b=ojvMAdhlmsJinKihpUCutObQgA80S5Z4g9WCP5RtoQGT7o8If6Mbv5Jy7Ll+HGgoZr
 T0n4IdgUKJ5H7X4ToZzHSPWFj/35iA6E5wb3IBX079tPtmuHxutvmvgDrItgPlmeT5sH
 4mtNnFMfvlnFWiihQlB0ntJdJM+5FFpq+WLs5LyOit1LyShAvRtfZXO2aPiT3cbS1wjW
 yJPR4TOXxaTaTmC/ZSYQ2SJ2NyN5HSnytOiZO8HfkPNfCvn71tbXTINX7TJD0lnQ7E1x
 Z1ryAXWmyzpONwQirlJpAS/elTFqrJpyBPAnnxJSGBmf6Gvn9G7zxz+jdDql2+my/hoi
 e9xw==
X-Gm-Message-State: APjAAAWwpi7SVYPyBSMxMgYexF+xtNKvwN7FcpO8RfTVuU2G9Ft2rzJb
 8yPgIQQ86yzqQ80A5MLEUdK1d8n73+GjpcI0Zfw=
X-Google-Smtp-Source: APXvYqx2QRjbzZ7hc5y/0wPXxc2BOsqW7rYBr5/+9NPVJBc9aypHeg6RUiCGJe8eAjajGn857PgZlmUrG9vDjyGLKMk=
X-Received: by 2002:a5d:974d:: with SMTP id c13mr11863170ioo.87.1567491145896; 
 Mon, 02 Sep 2019 23:12:25 -0700 (PDT)
MIME-Version: 1.0
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
 <1567519424-32271-2-git-send-email-Anson.Huang@nxp.com>
 <CAOMZO5CHmvrbVG_h8hOb7hMjXasV_QwtNoXpEw9kqY=4Jj5HAg@mail.gmail.com>
 <DB3PR0402MB391636D31F486639FB8B3BA6F5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB391636D31F486639FB8B3BA6F5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Mon, 2 Sep 2019 23:12:14 -0700
Message-ID: <CAKdAkRRX4Cs1m7iwTuM0dpNr+xjp3qAZ1fo1pqreE7rR8KFgQQ@mail.gmail.com>
Subject: Re: [PATCH V2 2/5] input: keyboard: imx_sc: Add i.MX system
 controller power key support
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_231229_842992_C4C6B079 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Peng Fan <peng.fan@nxp.com>, Stefan Agner <stefan@agner.ch>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 Marco Felsch <m.felsch@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Aisheng Dong <aisheng.dong@nxp.com>,
 Andy Duan <fugang.duan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Dinh Nguyen <dinguyen@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 2, 2019 at 8:11 PM Anson Huang <anson.huang@nxp.com> wrote:
>
> Hi, Fabio
>
> > On Mon, Sep 2, 2019 at 11:05 PM Anson Huang <Anson.Huang@nxp.com>
> > wrote:
> >
> > > +       ret = input_register_device(input);
> > > +       if (ret < 0) {
> > > +               dev_err(&pdev->dev, "failed to register input device\n");
> > > +               return ret;
> > > +       }
> > > +
> > > +       pdata->input = input;
> > > +       platform_set_drvdata(pdev, pdata);
> > > +
> > > +       ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE,
> > SC_IRQ_BUTTON, true);
> > > +       if (ret) {
> > > +               dev_warn(&pdev->dev, "enable scu group irq failed\n");
> > > +               return ret;
> >
> > Better do a 'goto input_unregister' here instead and call
> > input_unregister_device().
>
> Agreed, will fix in V3 later.

Not needed actually as input device is managed by devm.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
