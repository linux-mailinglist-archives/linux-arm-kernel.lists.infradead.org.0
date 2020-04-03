Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A91719D01D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 08:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvLf5rtJViVDKj7dC/u0nyUgRURQzKSA6Wj+E8z14ew=; b=Q2TgVGEr0NpiBn
	sCNLwNHFRqDyLLuMXpACQf2kwa9wPu8sgHzUAbRT29QNAFUps+4IZofMJ3NHjjQrjTvKNMiagDU/N
	mn2gub2V4VYbATtXioquEH7c/HVNmrc8yW7fK43chJBUFTlX29gRsQBMcxPvidMLym9DhhgJVmZh3
	6P/kOS1UXlV5VBnddmqlThwi84Fzrnjm0SgcWVv0fbpno79d8MrGfeZl3v5h483JnCl2fsdwfH2ZT
	TJt4PI/ptpQq/V5e6sYPpPZO7aR4BVbzzDchnW8wL0J3ejfMGNCMQW/usEQ7JM3Uk8y8DwCcACeDd
	jNEWOkvCiuyMRxK29KKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKFc1-0000cJ-Al; Fri, 03 Apr 2020 06:15:29 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKFbY-0000Ds-Kz
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 06:15:02 +0000
Received: by mail-pg1-x542.google.com with SMTP id c23so3037447pgj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 23:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V3yS2lItqVOfGsXBFcK1Q03oHDR0TygtC5pNqATurHQ=;
 b=DtAiTGcqQSpV/avwmNRjvHO1qDLd3tZsNHf3k+C+AgpkKHnLK0/VqwekGEJ4JQQ0uq
 wXTt47KxFzE5AetYqr4lZNkUqqQvCxPwyDnzOdlwb2XRAY3sI63HyI8fCcfwegKRCIJx
 Wr/jdxxl1E+403E/ErpRJFCWlSoK8AeJ20XUk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V3yS2lItqVOfGsXBFcK1Q03oHDR0TygtC5pNqATurHQ=;
 b=CWrkq45169I8OJMhpw+H+7t4P/up4G2++ZxRhbbrRXTLlzvyzTexYDeOw1ranMGxTZ
 IFERTesGQeDRy4/Kd0XyJW5LlgtEqb+ImBsjIcdFUx403NVLwGGdsW1UyWC+Gf/7t8G/
 M5/co3PTvmJ0n0yO5NT2ka7eTgsT7GtR7Psw9oj8LWIb3WfatT14TzFvf/BazucEbsMq
 yfVis4Q49/J6Szsp3Ob76jjYvl/vRW1Nq+SPkGhM/mCZHmbkNHaK6x3M2PHRCSRv/RTU
 cFS70tiRwsbskWWav+BtPNkhfxGSOVxgfcqBQY3AkKHK0a31zqyMm5Q+dCUkzw/UG6m/
 nnYQ==
X-Gm-Message-State: AGi0PuZcNyEMjqM6IzRCqAjKexiup/vXc9eAd5xdis9sL/pDjAuMIFi7
 Tr/CGHPb0w4V+h49mlASlkjw8ya/FbY=
X-Google-Smtp-Source: APiQypJh+e2gK3Xmgkjk8UsBB8s/HKznRDIEhdpmnKbdeexW+jvDyJWISiIQ+InDYsO7yqEhSneF9w==
X-Received: by 2002:a62:1513:: with SMTP id 19mr6825917pfv.85.1585894499840;
 Thu, 02 Apr 2020 23:14:59 -0700 (PDT)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com.
 [209.85.215.170])
 by smtp.gmail.com with ESMTPSA id w69sm5035428pfc.52.2020.04.02.23.14.59
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 23:14:59 -0700 (PDT)
Received: by mail-pg1-f170.google.com with SMTP id c23so3037435pgj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 23:14:59 -0700 (PDT)
X-Received: by 2002:a1f:1846:: with SMTP id 67mr5194780vky.32.1585894163062;
 Thu, 02 Apr 2020 23:09:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200403052900.258855-1-evanbenn@chromium.org>
In-Reply-To: <20200403052900.258855-1-evanbenn@chromium.org>
From: Evan Benn <evanbenn@chromium.org>
Date: Fri, 3 Apr 2020 17:08:52 +1100
X-Gmail-Original-Message-ID: <CAKz_xw1w=uKEV_p94cT8uL-4WN9mRkQE47N=4QdE+_NOFQ-2kg@mail.gmail.com>
Message-ID: <CAKz_xw1w=uKEV_p94cT8uL-4WN9mRkQE47N=4QdE+_NOFQ-2kg@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
To: LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_231500_718773_AE6F8FC7 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Rob Herring <robh@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, Julius Werner <jwerner@chromium.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Apologies I forgot to add this note to my cover letter.

Xingyu do you mind seeing if you can modify your ATF firmware to match
this driver?
We can add a compatible or make other changes to suit you.

Thanks


On Fri, Apr 3, 2020 at 4:29 PM Evan Benn <evanbenn@chromium.org> wrote:
>
> This is currently supported in firmware deployed on oak, hana and elm mt8173
> chromebook devices. The kernel driver is written to be a generic SMC
> watchdog driver.
>
> Arm Trusted Firmware upstreaming review:
>     https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/3405
>
> Patch to add oak, hana, elm device tree:
>     https://lore.kernel.org/linux-arm-kernel/20200110073730.213789-1-hsinyi@chromium.org/
> I would like to add the device tree support after the above patch is
> accepted.
>
> Changes in v3:
> - Change name back to arm
> - Add optional get_timeleft op
> - change name to arm_smc_wdt
>
> Changes in v2:
> - Change name arm > mt8173
> - use watchdog_stop_on_reboot
> - use watchdog_stop_on_unregister
> - use devm_watchdog_register_device
> - remove smcwd_shutdown, smcwd_remove
> - change error codes
>
> Evan Benn (1):
>   dt-bindings: watchdog: Add ARM smc wdt for mt8173 watchdog
>
> Julius Werner (1):
>   watchdog: Add new arm_smd_wdt watchdog driver
>
>  .../bindings/watchdog/arm-smc-wdt.yaml        |  30 +++
>  MAINTAINERS                                   |   7 +
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/watchdog/Kconfig                      |  13 ++
>  drivers/watchdog/Makefile                     |   1 +
>  drivers/watchdog/arm_smc_wdt.c                | 181 ++++++++++++++++++
>  6 files changed, 233 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml
>  create mode 100644 drivers/watchdog/arm_smc_wdt.c
>
> --
> 2.26.0.292.g33ef6b2f38-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
