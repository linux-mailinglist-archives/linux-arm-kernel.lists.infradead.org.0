Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B98AD6E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 12:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2WmsdDbWqDGfhGrkC6cyAF26gseZGfvRxdOyhzikzPA=; b=tZTB/3K11UICiS
	FK5KLUhzGWuxDSIslD0daK7Qr/go3jQy3PxN9nVWEitZW+ULOjbxW2wBOPvIePk9T2/Dja7ObTt+V
	i8JVT8BomCsAuZhaSGJg4LQcTb30E8KnXNSVfAMKA4JNuMcQrVKt+erCfP6cfbef7Yj0ltdptsj8x
	0hcVR/a4NXWfLSlaJvVC5IMeg4APcz6C50iZykAVO9lUMT5Op/EFGPFVUQFPNYslkiYhOIs6C02qA
	TpsgdvCgrZGfXSN6x6LOjfMLBeBXe21x6oJ/dSHBWToTl5pbdGj5dFx4J9M8hfAvq+VxHEyeJk9mM
	Z/BYxplT35BY594UWdWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7H0J-0001aW-0F; Mon, 09 Sep 2019 10:34:39 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7H06-0001a9-M5
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 10:34:27 +0000
Received: by mail-io1-xd42.google.com with SMTP id f4so26732085ion.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 03:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O0QbGRskzrGZBzidNtq9nhCjCnWMKLOTPXNRwEbysuA=;
 b=sOPrJkINWZ9chYhieAt9vKbn3ZaV6zTIHbUkr/LiP+zolndnHYeMB3jd/1o9v0qE/U
 2IAe8eA8gChOJNlFhyCET/dmJPstOTAzXJX+kJKKEUfKz7st/Ce+JhHuzB/WOK2rEKcW
 mhbbhJTgouTkM0oxNby+Xv/6Gjvz3XZ6bYiUVWle9E6lcsMYXrnrkAu9qQQ4MHhB+rxg
 48A7WFPkXTj87gWO11iD9/DRYuEJk0IzUL6ayEjyYJXoi72GK5bNnKzspccA7ej3K2WR
 +w4Wox8+YXhXoiGB9JZ/I5iqB/dLa1pFOjaS03W3xB4aBMEvxuXkO/Bc1sRYZdIvNw3V
 wePA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O0QbGRskzrGZBzidNtq9nhCjCnWMKLOTPXNRwEbysuA=;
 b=BEC3H1K5cbB2E/OmMGMbpnbye3Rjs6BaHsqAwKOuyAtJ/Sy8J7pvqvu1Ll8qLo9F8y
 wN27/02Ud0JL+wuu0jrCbr46HqAbAyK60oLvCoqi7kG9UtJFjr9NjABhUDTVHbet6MJd
 giM42ceCUuKRfADNRSIh+FnsM5u04CsZ+L/yIhE6ZSjDFPJV6ncZ6uS1fvUDo+2yga4B
 jzal93Fxa6wc4HIHBsTJ0h0/6OQpVkERL+pxR1yuqSlV5WOtuTHnm326lJIhNf+Dw33F
 ZGvEto1wWhg2xAKMcfeMzEEAWtlifLpnN2wGBe9r9DvmCwDoypPV49YZdy2U9hiw7rbM
 hD3g==
X-Gm-Message-State: APjAAAXnN2xTRT0CmEAhiAnDo5L9ZD1hFi7GJlCilJsF1K8owZJdx4GD
 4VAoEyhwneA2tTUv+LCYpIKMD3rR4wcC1mStl+w=
X-Google-Smtp-Source: APXvYqzomjPQZpm8daOnKsSrwIo91DYZOw1RSvvtl7CX97sdCj8AUi8cS4AHx4tFCCjv+WbAY18OVtj5PmUY+Q3CPcw=
X-Received: by 2002:a02:cb9b:: with SMTP id u27mr25832579jap.26.1568025265896; 
 Mon, 09 Sep 2019 03:34:25 -0700 (PDT)
MIME-Version: 1.0
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-5-git-send-email-aisheng.dong@nxp.com>
 <20190906170713.81A1A20578@mail.kernel.org>
In-Reply-To: <20190906170713.81A1A20578@mail.kernel.org>
From: Dong Aisheng <dongas86@gmail.com>
Date: Mon, 9 Sep 2019 18:24:25 +0800
Message-ID: <CAA+hA=QAFJoLVXzY8oSkAOf65psAyiv31EDwO0G1yFUzE9t1xQ@mail.gmail.com>
Subject: Re: [PATCH V4 04/11] clk: imx: scu: bypass cpu power domains
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_033426_717807_1751E73B 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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

On Sat, Sep 7, 2019 at 5:28 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Dong Aisheng (2019-08-20 04:13:18)
> > diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
> > index 48bfb08..5f935b1 100644
> > --- a/drivers/clk/imx/clk-scu.c
> > +++ b/drivers/clk/imx/clk-scu.c
> > @@ -479,6 +479,10 @@ static int imx_clk_scu_attach_pd(struct device *dev, u32 rsrc_id)
> >                 .args[0] = rsrc_id,
> >         };
> >
> > +       if ((rsrc_id == IMX_SC_R_A35) || (rsrc_id == IMX_SC_R_A53) ||
> > +           (rsrc_id == IMX_SC_R_A72))
>
> Please drop the extra parenthesis. It makes it hard to read.
>

Will drop it, thx

Regards
Aisheng

> > +               return 0;
> > +
> >         return of_genpd_add_device(&genpdspec, dev);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
