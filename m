Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D200A5D67
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 23:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n9r87ErXAk2ef7J+ScwfUzKGNywGUBvYaj+imifMIHQ=; b=rfeotiM8EWfOGA
	UPZ13ETmCQ/P+4mnsXFlc83oKIkleZZRAbFiOdz5nJaN3xdsVmNXQo7IsucjpUDycdab5lDrteToZ
	jSdUo8CsHCq8huQdaYnUN7NDHT7Ctd9a1+fV/MwiIwcgEA9tV3tPzeGpJDzRDCoNi1sKNoFq5YOt+
	Qn49mRQt6IqHABwsLQhDE1OU9IZFcYe0yXzDlw1xde+v+/C3YglsnVOkTfIADU5V12yEgMIPatvKA
	/xsse2+6fNnC/Ds92Q0bVhkDaRpeeXhVIOKgP9lOXuI8/LyWGOLGCSdZ5KoOrjbp5u8O4ci/1XOLT
	AO1q4EjeTIYGS42gcVjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4tgl-00055v-JQ; Mon, 02 Sep 2019 21:16:39 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4tgY-00054S-Ad
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 21:16:28 +0000
Received: by mail-pf1-x441.google.com with SMTP id q5so1638109pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 14:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UzPPEolNh35wWErUe2k2fZkCpaurwJuZg/+ELGsiOFk=;
 b=Yw0hv6WPGdzg89CqQgm2pjeaLxqK1SCjR9n0FGD5Y3r2LiFeW+G9UtCLiznr5RxuhI
 7tE3P5Li0aUEBa2fZHPoHoot/SSNCoFmsbvAnqNg9aZX2mbt5QhkqpDML4MSTi/QpcpM
 lxoK1qzZaPS5EA4osYjqQ2CDcDD+DBrRlxvXe3RImogXOtyntEvvi2ecDgvwyaHy84XK
 RitqIfgPXhoh1+oroTx4tktLbK5Kqc/1Le9S3MJUcn/vj85LdAkINB8xrvuPRrvcF1wt
 XG1FcNeH0sAxpcl72s4C6ov/yEFMMPgQchAya1U+z4GvOBJqX/jHRkG2XgpuDvMlv4Jh
 ZY6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UzPPEolNh35wWErUe2k2fZkCpaurwJuZg/+ELGsiOFk=;
 b=CdKv9BEGNgBCHy6/Fz9U6TkKV320GdJIE32fCwlfN//ZppwjWa1oHQXxIm2CJEbptq
 k8Jw68MtGg8MX/zK03brdZJUjOEHfQrGQXreRQBGlokAme29EV1sxknfoPe4D8W8wbxd
 zjDHw/eSrHIpSXkQKS2/nyP0EccxBnsx9L8eBWe/lxLxC66T5Xkt3nqAPIzB+aNVJEO8
 UJNsahhGrg6M8L/onkTQ5BzsN7XVyqJjd+JySQaoLu2XLivde9CX3zHa/t4BG83nbqnF
 hmrenEgiEW6l3Oz/i7DI8uX5dmDotBcw603JP1rMKO5PRLrhZupBM+kwr2Wjp6Hu4vsy
 2zGQ==
X-Gm-Message-State: APjAAAUx8LorBOSOSR/ZJS4VgmqVsK85qrAw+A9AVZcOmUcfJy/Xyxux
 hz7mI46ou/r5ewnSEG6YVcoyoroKXmRj6VSAyzQ=
X-Google-Smtp-Source: APXvYqyg9Tkgzp+liZd++CYTKTIbIPE7/kBlL+HXD5OkDBg82HGev2/K71w5cyXBHT4FgJomex2UHjw/TsfC1ly8MEY=
X-Received: by 2002:a63:6eca:: with SMTP id j193mr26308059pgc.74.1567458984928; 
 Mon, 02 Sep 2019 14:16:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190711102601.20582-1-chuanhua.han@nxp.com>
 <CAJZ5v0hY2sL+XfN_4v07_hjvoxgCAt+Q89+wNg5Pky6XKP-mqA@mail.gmail.com>
In-Reply-To: <CAJZ5v0hY2sL+XfN_4v07_hjvoxgCAt+Q89+wNg5Pky6XKP-mqA@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 3 Sep 2019 00:16:12 +0300
Message-ID: <CAHp75VfFtMMQhetRFHrx=Ft7OWwyMqLrwP3sPjT6YVtr8xCHoQ@mail.gmail.com>
Subject: Re: [PATCH] ACPI: support for NXP i2c controller
To: "Rafael J. Wysocki" <rafael@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_141626_406806_DF0FEC2C 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
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
Cc: Wolfram Sang <wsa@the-dreams.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Udit Kumar <udit.kumar@nxp.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>,
 linux-i2c <linux-i2c@vger.kernel.org>, Chuanhua Han <chuanhua.han@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 2, 2019 at 11:58 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Thu, Jul 11, 2019 at 12:35 PM Chuanhua Han <chuanhua.han@nxp.com> wrote:
> >
> > Enable NXP i2c controller to boot with ACPI
> >
> > Signed-off-by: Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>
> > Signed-off-by: Udit Kumar <udit.kumar@nxp.com>
> > Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
>
> Wolfram, any objections to this from the i2c side?

May I propose amendment(s)?

> > @@ -44,6 +44,7 @@
> >  #include <linux/pm_runtime.h>
> >  #include <linux/sched.h>
> >  #include <linux/slab.h>

> > +#include <linux/acpi.h>

If it's kept in order, better to go with it. (Yes, it is as I have checked)
However, property.h should be included instead, see below.

> >         const struct of_device_id *of_id = of_match_device(i2c_imx_dt_ids,
> >                                                            &pdev->dev);
> > +       const struct acpi_device_id *acpi_id =
> > +                       acpi_match_device(i2c_imx_acpi_ids,
> > +                                         &pdev->dev);


> >         if (of_id)
> >                 i2c_imx->hwdata = of_id->data;
> > +       else if (acpi_id)
> > +               i2c_imx->hwdata = (struct imx_i2c_hwdata *)
> > +                               acpi_id->driver_data;


The above altogher may be replaced with

const struct imx_i2c_hwdata *match;
...
match = device_get_match_data(&pdev->dev);
if (match)
 i2c_imx->hwdata = match;
else
...

> > +               .acpi_match_table = ACPI_PTR(i2c_imx_acpi_ids),

Since there is no #ifdef guard no need to use ACPI_PTR().

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
