Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD02E1B3499
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 03:40:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mK/2QHtUlaodAh6G0vlHbVR3IqtzvO1WhFYres8Lk+8=; b=JOgfozM+bkCjrC
	uk7XAlwF2xEb+DiVpr3OV0I9wIM8Yvm1opKm8CS87jgeoTc+BN3FhdibmEF5mmlC7B1XbeD0TtBny
	Ma687rwPJTZKbqSelMfECHau/jWMqbiyxaG+5KHyakUAtI1BVj3TL7AUD3y7EllmoE7W8e3MHnogj
	aHjXtO82XJq3Z+blHaNRjjuQp97FqriAv+IKXJ8nrWb3hLB1hakDM+BfLvfISvq3OmxA2COS4BJR1
	vbyVtU6FUWjTWiTg6mbARMTSrwauhX8PWyx2XfJAU89TbmDlPyl9dYoreR+b0sRF432nqTB2SoJgO
	W3u/bBK35SJJGFWh+6Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR4NC-0004bB-E1; Wed, 22 Apr 2020 01:40:22 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR4N6-0004Zc-Ii
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 01:40:17 +0000
Received: by mail-pl1-x644.google.com with SMTP id h11so251347plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 18:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fCEr6pXIIH8a6wvkqNzUF108BpUBYKo9yQQ8CIUa6jU=;
 b=EQfvQRYkh1XrsrAz+l9+x0k+vOSp/UM4fgbCnYQ64D1Dq8B1FWcLG+ca/ZEvrLDjeK
 Lh2aJ9ttT5kKR1+EZokWVRzp6P4jAQiExqYM9Uq7+iSd8vkAer6L1ObRJBmwUbr+Saq+
 DKZprigLH+OXKegSJ60ezTDhpCv/UN11QS9qQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fCEr6pXIIH8a6wvkqNzUF108BpUBYKo9yQQ8CIUa6jU=;
 b=gkJRHGJg7/OYVtEbFJ2YZ1g8sGlqqgfw1kqnnQ71AsQGrYp+S0G6CBEnB44iaFcbh/
 YJ7muMULgexPDcXrPkcLcbQfC7+bDb2ZBs2SCQH5ELuQ6XGB8EJLbns5MRVyTzFQAE5F
 Y4+lc5ne/VFgT18f23QzAoTZfLng+39QHqJI36vSG60IjvGPuliSw4j/FxurMA2oUlgp
 B7Eu94Pg1uSqxvgdEysgxGn5fODmx+gNGdJMbNseOP9++2Hm6v+c+n3DiJDBeuPi+tO6
 Ln0PXEDgFK2QB/HOsDlhA0h4UeakswTCujm8x2RCHqqBrZ3bYuDHVCeUwPTIUcMGzcoC
 UvBA==
X-Gm-Message-State: AGi0PuYLX6YMFtyK6mmfrVw2qOmgDhuQGqPh1SN96DHSsCn4ffRhP9Yb
 nYCuJ7Ar7E04Z47cHjyLZ9z/g7p230o=
X-Google-Smtp-Source: APiQypJ1CcXSfy4Q6BB1nmYmv1WbnefQ+cG9sX6maRb1ZEaA4gd1WcLENbEX7+mDq95BtAc6Z1s61A==
X-Received: by 2002:a17:902:b708:: with SMTP id
 d8mr4696857pls.69.1587519614723; 
 Tue, 21 Apr 2020 18:40:14 -0700 (PDT)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com.
 [209.85.214.174])
 by smtp.gmail.com with ESMTPSA id o185sm3665005pfg.197.2020.04.21.18.40.13
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 18:40:14 -0700 (PDT)
Received: by mail-pl1-f174.google.com with SMTP id v2so255519plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 18:40:13 -0700 (PDT)
X-Received: by 2002:a67:907:: with SMTP id 7mr17409548vsj.42.1587519611840;
 Tue, 21 Apr 2020 18:40:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200421110520.197930-1-evanbenn@chromium.org>
 <20200421210403.v2.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
 <CAODwPW9MtDLSL_up9W0TO1PcjyA_9cUtNo3No7XXusiwqKBLDw@mail.gmail.com>
In-Reply-To: <CAODwPW9MtDLSL_up9W0TO1PcjyA_9cUtNo3No7XXusiwqKBLDw@mail.gmail.com>
From: Evan Benn <evanbenn@chromium.org>
Date: Wed, 22 Apr 2020 11:39:44 +1000
X-Gmail-Original-Message-ID: <CAKz_xw3-tvYoCDs07xEUBBMf024aezGMoZ35LsTN+_dXT9nC2Q@mail.gmail.com>
Message-ID: <CAKz_xw3-tvYoCDs07xEUBBMf024aezGMoZ35LsTN+_dXT9nC2Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] watchdog: Add new arm_smc_wdt watchdog driver
To: Julius Werner <jwerner@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_184016_635648_6F5A40D9 
X-CRM114-Status: GOOD (  23.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Rob Herring <robh@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 6:31 AM Julius Werner <jwerner@chromium.org> wrote:
>
> > +static int smcwd_call(unsigned long smc_func_id, enum smcwd_call call,
> > +                     unsigned long arg, struct arm_smccc_res *res)
>
> I think you should just take a struct watchdog_device* here and do the
> drvdata unpacking inside the function.

That makes sense, I avoided it because smcwd_call's are made during
'probe', ~while
we are 'constructing' the wdd. But this is C, so I think I have
permission to do this!

> > +static int smcwd_probe(struct platform_device *pdev)
> > +{
> > +       struct watchdog_device *wdd;
> > +       int err;
> > +       struct arm_smccc_res res;
> > +       u32 *smc_func_id;
> > +
> > +       smc_func_id =
> > +               devm_kzalloc(&pdev->dev, sizeof(*smc_func_id), GFP_KERNEL);
> > +       if (!smc_func_id)
> > +               return -ENOMEM;
>
> nit: Could save the allocation by just casting the value itself to a
> pointer? Or is that considered too hacky?

I am not yet used to what hacks are allowed in the kernel.
Where I learned C that would not be allowed.
I assumed the kernel allocator has fast paths for tiny sizes though.

> > +static const struct of_device_id smcwd_dt_ids[] = {
> > +       { .compatible = "mediatek,mt8173-smc-wdt" },
> > +       {}
> > +};
> > +MODULE_DEVICE_TABLE(of, smcwd_dt_ids);
>
> So I'm a bit confused about this... I thought the plan was to either
> use arm,smc-id and then there'll be no reason to put platform-specific
> quirks into the driver, so we can just use a generic "arm,smc-wdt"
> compatible string on all platforms; or we put individual compatible
> strings for each platform and use them to hardcode platform-specific
> differences (like the SMC ID) in the driver. But now you're kinda
> doing both by making the driver code platform-independent but still
> using a platform-specific compatible string, that doesn't seem to fit
> together. (If the driver can be platform independent, I think it's
> nicer to have a generic compatible string so that future platforms
> which support the same interface don't have to land code changes in
> order to just use the driver.)

Yes I think you are correct. I got some reviews about the compatible name,
but I think I misinterpreted those, and arm,smc-wdt would work. I did wonder
if Xingyu from amlogic needed to modify the driver more, EG with different
SMCWD_enum values for the amlogic chip, he could then just add an
amlogic compatible
and keep our devices running with the other compatible. Although of
course it would be nicer if
the amlogic firmware could copy the values here.

Thanks

Evan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
