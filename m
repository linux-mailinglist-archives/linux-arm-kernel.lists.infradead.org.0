Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A12FD1AB4E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 02:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D2aEzNGWxKFBrgROuptxUtvNA1khYJh4vpGMZcNuaKs=; b=btVVcg6AGMmv/i
	Z9ct442dzUiDd8uQQKINToDaSfUkxrGc4ZDBmDfFL4t24WpZ/kHl9Pqcdbj99XtNiUOat1844b6qn
	+QDVe9D6bQw5ZOhdu5uBfDP232sEse10cfZ1hxhlmmBKr219a7Mj916hWbxt9e2N2xt9tAAzcWH0X
	DsTVSumit7QXcBy/Mm2ZRvi3rGp7zOu4+wbN4VrvBNVZXuB4RqVDsUC954JEPJS3gA6dNsa+tCJmH
	QBjeFDM91gpm4WbWLiTLeLHsfdNou6RSrzbLNaMzCDIV8C/kYm+CEw8738I0BaIBugFwuydUgIqZO
	QPfaZmWPs0FG+jpmCStA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOsmv-0005oM-J0; Thu, 16 Apr 2020 00:53:53 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOsmj-0005nw-Um
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 00:53:43 +0000
Received: by mail-vs1-xe44.google.com with SMTP id z1so1314415vsn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 17:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oymDymDSGwWgVl7PdrWgMeH1mdt9MH+svEJHIh9ofYo=;
 b=a2XbOiwlAAQzxczt4QF4WPs7900EFsrLVOxWmAfWFDrYlbOxFqFleRRIhOr+uI8M5f
 M2cwVJ40d4uDtjkefb7KmLLsMXHjL/sGzNwIx0DMzOlXnR5mb/1snHQ+m68Q4OvzwI+F
 RFsl2ztnRLmbC/I9LzD4UKpcjD3O1jAdNfCXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oymDymDSGwWgVl7PdrWgMeH1mdt9MH+svEJHIh9ofYo=;
 b=bz8en3qIWZoyKoH0yogBml4t/fXgJwOyQtAJWto6CH9XuSiZLKrG6Aj91oJxKz2fPJ
 R6nxmyX4G05VfBFcsSmjU8L0G9367lAtRwI2lo3y0hVDYltiIOwivSayj3PZn6ylijMV
 jfuaHhOn/VgHKz3hzl9z3bGX99CUlX9g4Vlog1tEuSK+tAC8TDinBsUpDdXslg2NMKQX
 RG1LH4Aku7D+TkaLCpxp6UoOO1Rg8Tqt2WCYEK/O5oprx0Yi1ORLXlEc4P29CkQdsnZ2
 at8HONBhzy3A75lELM4NB4ZX1lswxt3Ji3mnSf+U3eYfHN3QlkuHSvAAgcW09SvmEtsp
 h54Q==
X-Gm-Message-State: AGi0PuYt4lNQqQaxCpQLh5Hmg4txG6AiOsD7u9QAgAj9VVjJFbWDeloM
 BHPmtvTnERNchqjT6MbcSVc7wpT9GkE=
X-Google-Smtp-Source: APiQypKGh/Tkz8sgqJ69VFxoLa52/RZy0TevhCKb75My9nikS4etgI0cjAtsqpooZm7lD36/iqHyVw==
X-Received: by 2002:a67:6a46:: with SMTP id f67mr5366197vsc.186.1586998419412; 
 Wed, 15 Apr 2020 17:53:39 -0700 (PDT)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com.
 [209.85.222.53])
 by smtp.gmail.com with ESMTPSA id s23sm4830523vsp.1.2020.04.15.17.53.39
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 17:53:39 -0700 (PDT)
Received: by mail-ua1-f53.google.com with SMTP id t8so2193609uap.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 17:53:39 -0700 (PDT)
X-Received: by 2002:ab0:592c:: with SMTP id n41mr1543975uad.73.1586998027359; 
 Wed, 15 Apr 2020 17:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200403052900.258855-1-evanbenn@chromium.org>
 <CAKz_xw0gV+w_gMkLfB4qUBdULLfFoiv1TBWp9_PHy33wP_XWyA@mail.gmail.com>
 <890948ef-7276-fdae-d270-eb30eff3eab2@amlogic.com>
 <243e107c-35c1-2d14-5285-c9e13744963c@amlogic.com>
 <CAODwPW9RSB37+4EJ2QXAwz=ShFB23L1GKC2mLYE5L5JuQR2tPw@mail.gmail.com>
 <20200415231215.GA182398@roeck-us.net>
In-Reply-To: <20200415231215.GA182398@roeck-us.net>
From: Evan Benn <evanbenn@chromium.org>
Date: Thu, 16 Apr 2020 10:46:39 +1000
X-Gmail-Original-Message-ID: <CAKz_xw0+gKBM1jp-Avnd+4j9vSxUix67RZBX-NNbStb0+ri4+Q@mail.gmail.com>
Message-ID: <CAKz_xw0+gKBM1jp-Avnd+4j9vSxUix67RZBX-NNbStb0+ri4+Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_175342_016403_DEFC92AF 
X-CRM114-Status: GOOD (  24.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Yonghui Yu <yonghui.yu@amlogic.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Rob Herring <robh@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, Julius Werner <jwerner@chromium.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks Xingyu,

Can anyone provide advice about making SMCWD_FUNC_ID a device tree
param directly, vs using the compatible to select from a table.

Please note get_timeleft erroneously returns res.a0 instead of res.a1
in this version.

Evan

On Thu, Apr 16, 2020 at 9:12 AM Guenter Roeck <linux@roeck-us.net> wrote:
>
> On Wed, Apr 15, 2020 at 03:29:29PM -0700, Julius Werner wrote:
> > > In addition, It looks more reasonable to use the "msec" as the unit of
> > > timeout parameter for the ATF fw interface with SMCWD_SET_TIMEOUT:
> > >
> > > - The fw interface will compatible with the uboot generic watchdog
> > > interface at [0], and there is no need to convert timeout from msec
> > > to sec.
> >
> > I think we're trying hard to keep this compatible to a Trusted
> > Firmware counterpart that we have already shipped, so we would prefer
> > to keep it at seconds if possible. That's what the Linux watchdog core
> > uses as well after all, so it just seems natural. I don't really see
> > how what U-Boot does would have anything to do with this.
> >
> > > - Some vendor's watchdog may be not support the "wdt_trigger_reset"
> > > reset operation, but they can use the method below to reset the system
> > > by the watchdog right now.
> > >
> > > watchdog_set_time(1);  //1ms
> > > watchdog_enable();
> >
> > They can still do that but they should do that on the Trusted Firmware
> > side. Emulating a missing reset functionality should be handled by the
> > hardware abstraction layer (in this case Trusted Firmware), not at the
> > Linux API level. So Linux would still send a PSCI_SYSTEM_RESET SMC,
> > but then Trusted Firmware can choose to implement that by setting the
> > watchdog to the smallest possible timeout (which it can because it's
> > accessing it directly, not through this SMC interface) and letting it
> > expire.
>
> I agree. Using a watchdog to implement reset functionality is always a
> means of last resort and should be avoided if possible.
>
> Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
