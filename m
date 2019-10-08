Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A565ACFC94
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 16:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9Bx18Mz5jLf0qpsdVqAbtXwiiQhiVfBFwQY7PvhKlE=; b=ZT+uEket/BrSGC
	pI0oqGMKuIvDat824/sPCBtVz/aykJrAHCnuf+9+0X+6ssicj5M6vSmlZk4pig/VwaP4tdKIBrUF0
	eFsfNFyqdaKRL/g3qleTFAkCx8wLlVriv9jyphW7xYu8S8aRR6TnBHqEo0PdgUaKPB/yyAE/dfmBt
	SLhYnF/Nd5qGXuuQySido4uqraCJjsR1/EHc9Ex85B0S6rs6lQb3XE2BleW9DoRxpmHroMlk9/3L+
	ug9tBUIxq9RZT53JqYQ0Y/b7bbETJQ/iOEUvpH92grainvL6o3lagtmhXlGLpVVxqJ3NQyVq/8Jk/
	U6HM7O8XxxFcivOGxMMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqdr-0007M0-80; Tue, 08 Oct 2019 14:39:11 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqdi-0007LW-MW; Tue, 08 Oct 2019 14:39:04 +0000
Received: by mail-io1-xd42.google.com with SMTP id w12so36885632iol.11;
 Tue, 08 Oct 2019 07:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uiceJE125UAsY9qV5J3iJSofyaHXglRUBpS3y2nKZWo=;
 b=ftirfNjK2WvYeOLN3JGalhD5g5IP5PhtLP1nYd34nYOC4PQE14lYKtIHcMhdQfsQzd
 PUf8t+hGR91Zg5h0Uc0ZtX0imJe/ZEI75qcXfrD0/4I2LECkgNqZs7ALkw04R9E2TfJ7
 crrrbaAHFXnvZqSazXMbtCZDI9+4TTCsmG9NpJbouWfgoqnF3EZ/qpaj8jXm50P2rbab
 YKqAw3cpYyI1q9L96+6TJ4qTtzx6nlvoSssux4yiSUBHQmxJr5C3xTLd5tbeBmh3Fv+2
 3v+hXhSbAschBfZuXUu6s+nCuPuW0hppiGUVjYil3c/R0Lx6XNdcTeQR/tbHEUuUJukX
 V8vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uiceJE125UAsY9qV5J3iJSofyaHXglRUBpS3y2nKZWo=;
 b=t7oHSq+tFMzzsz0W/LBH3KhZCCwZuFusX1Bu779fGlLOndZKnjU/I3Q6kbFgPRk39N
 BOxFM+cu31w4+LC5y9NEYfIwPne4tdHnikaLDW+Eq02fORYxLy89NVsuZ4NR5ZGbrJbo
 lkV5lROJuMZeOkUMmcxEUacj3OHNFMBO2wJZHQ2CTC4zNXAP/K4nhJb8soPtpqYyJjFV
 P9/uJNpnipKUcAKx+soNWLtZNUKYpgb8mUiRR1bereP+pqXiQ0YS7ayA/7gfTETQoV/U
 xoea7+5JKWbohcXKXf7UqL97jsnv0uKAO50lOVSnjzki5J2ygxHN1CH+uOtTGRVFbOgy
 +CyQ==
X-Gm-Message-State: APjAAAUqMbcesuru2SREAXf3PFMZFwP33/qKTDjdatpTT/tUpmWFsb+b
 nZUJ5CO2CIFqylh6YSUqF6GlRnp+iJUgHBKjNII=
X-Google-Smtp-Source: APXvYqxpf6FluAbTLJWNi5zkpLIoDzexhO/UEjXqiJfh8iDu67wsDgsJ1oy3lEfx/04ZIk4fPelVZzcjWE7uZpgBnWI=
X-Received: by 2002:a05:6602:2803:: with SMTP id
 d3mr18366937ioe.75.1570545541296; 
 Tue, 08 Oct 2019 07:39:01 -0700 (PDT)
MIME-Version: 1.0
References: <20191007131649.1768-1-linux.amoon@gmail.com>
 <20191007131649.1768-6-linux.amoon@gmail.com>
 <CAFBinCAoJLZj9Kh+SfF4Q+0OCzac2+huon_BU=Q3yE7Fu38U3w@mail.gmail.com>
 <7hsgo4cgeg.fsf@baylibre.com>
In-Reply-To: <7hsgo4cgeg.fsf@baylibre.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 8 Oct 2019 20:08:49 +0530
Message-ID: <CANAwSgRfcFa6uBNtpqz6y=9Uwsa4gcp_4tDD+Chhg4SynJCq0Q@mail.gmail.com>
Subject: Re: [RFCv1 5/5] arm64/ARM: configs: Change CONFIG_PWM_MESON from m to
 y
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_073902_734335_64DE2852 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kevin / Martin,

On Tue, 8 Oct 2019 at 04:28, Kevin Hilman <khilman@baylibre.com> wrote:
>
> Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:
>
> > On Mon, Oct 7, 2019 at 3:17 PM Anand Moon <linux.amoon@gmail.com> wrote:
> > [...]
> >> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> >> index c9a867ac32d4..72f6a7dca0d6 100644
> >> --- a/arch/arm64/configs/defconfig
> >> +++ b/arch/arm64/configs/defconfig
> >> @@ -774,7 +774,7 @@ CONFIG_MPL3115=m
> >>  CONFIG_PWM=y
> >>  CONFIG_PWM_BCM2835=m
> >>  CONFIG_PWM_CROS_EC=m
> >> -CONFIG_PWM_MESON=m
> >> +CONFIG_PWM_MESON=y
> >
> > some time ago I submitted a similar patch for the 32-bit SoCs
> > it turned that that pwm-meson can be built as module because the
> > kernel will run without CPU DVFS as long as the clock and regulator
> > drivers are returning -EPROBE_DEFER (-517)
>
> On 64-bit SoCs, the kernel boots with PWM as a module also, but DVFS
> only works sometimes, and making it built-in fixes the problem.
> Actually, it doesn't fix, it just hides the problem, which is likely a
> race or timeout happening during deferred probing.
>
> > did you check whether there's some other problem like some unused
> > clock which is being disabled at that moment?
> > I've been hunting weird problems in the past where it turned out that
> > changing kernel config bits changed the boot timing - that masked the
> > original problem
>
> Right, I would definitely prefer to not make this built-in without a lot
> more information to *why* this is needed.  In figuring that out, we'll
> probably find the race/timeout that's the root cause.
>
> Kevin
>
>

Kevin,

As per my understanding from the kernelci.org logs it seen that
pwm-meson driver is requested more than once before it finally load the module.

[0] https://storage.kernelci.org/next/master/next-20191008/arm64/defconfig/gcc-8/lab-baylibre/boot-meson-g12b-odroid-n2.txt

Hi Martin,

I have tired your Martin's patch [1] and still the boot fails to move
ahead with below logs.
[1] https://lore.kernel.org/patchwork/patch/1034186/

[    1.543928] xhci-hcd xhci-hcd.0.auto: Host supports USB 3.0 SuperSpeed
[    1.550422] usb usb2: We don't know the algorithms for LPM for this
host, disabling LPM.
[    1.558702] hub 2-0:1.0: USB hub found
[    1.562131] hub 2-0:1.0: 1 port detected
[    1.566206] dwc3-meson-g12a ffe09000.usb: switching to Device Mode
[    1.573252] meson-gx-mmc ffe05000.sd: Got CD GPIO
[    1.607405] hctosys: unable to open rtc device (rtc0)

I have put some more prints in pwm-meson.c it fails to load the module
as microsSD card is not completely initialized.

Here is what I have tried to enable sd_emmc_b node, but still it fails
to initialize this driver..

-       max-frequency = <50000000>;
+       sd-uhs-sdr12;
+       sd-uhs-sdr25;
+       sd-uhs-sdr50;
+       sd-uhs-ddr50;
+       max-frequency = <100000000>;
        disable-wp;

Below are the boot logs.

[    1.729877] meson-gx-mmc ffe05000.sd: Anand mmc proble start1
[    1.734658] meson-gx-mmc ffe05000.sd: Got CD GPIO
[    1.739237] meson-gx-mmc ffe05000.sd: Anand mmc proble start2
[    1.744900] meson-gx-mmc ffe05000.sd: Anand mmc proble start3
[    1.750594] meson-gx-mmc ffe05000.sd: Anand mmc proble start4
[    1.756292] meson-gx-mmc ffe05000.sd: Anand mmc proble start5
[    1.761987] meson-gx-mmc ffe05000.sd: Anand mmc proble start6
[    1.767668] meson-gx-mmc ffe05000.sd: Anand mmc proble start7
[    1.773356] meson-gx-mmc ffe05000.sd: Anand mmc proble start8
[    1.779050] meson-gx-mmc ffe05000.sd: Anand mmc proble start9
[    1.784748] meson-gx-mmc ffe05000.sd: Anand mmc proble start10
[    1.790523] meson-gx-mmc ffe05000.sd: Anand mmc proble start11
[    1.796578] meson-gx-mmc ffe05000.sd: Anand mmc proble start12
[    1.802150] meson-gx-mmc ffe05000.sd: Anand mmc proble start13
[    1.807980] meson-gx-mmc ffe05000.sd: Anand mmc proble start14
[    1.813642] meson-gx-mmc ffe05000.sd: Anand mmc proble start15
[    1.819416] meson-gx-mmc ffe05000.sd: Anand mmc proble start17
[    1.825491] meson-gx-mmc ffe05000.sd: Anand mmc proble start18
[    1.830984] meson-gx-mmc ffe05000.sd: Anand mmc proble start19
[    1.862000] meson-gx-mmc ffe05000.sd: Anand mmc Final proble good to go
[    1.863323] pwm-regulator regulator-vddcpu-a: Anand :
dutycycle_unit 100: dutycycle_range 100:0
[    1.871617] pwm-regulator regulator-vddcpu-a: Failed to get PWM: -517
[    1.878560] pwm-regulator regulator-vddcpu-b: Anand :
dutycycle_unit 100: dutycycle_range 100:0
[    1.886613] pwm-regulator regulator-vddcpu-b: Failed to get PWM: -517
[    1.894094] pwm-regulator regulator-vddcpu-a: Anand :
dutycycle_unit 100: dutycycle_range 100:0
[    1.901771] pwm-regulator regulator-vddcpu-a: Failed to get PWM: -517
[    1.909089] pwm-regulator regulator-vddcpu-b: Anand :
dutycycle_unit 100: dutycycle_range 100:0
[    1.916658] pwm-regulator regulator-vddcpu-b: Failed to get PWM: -517
[    1.924147] hctosys: unable to open rtc device (rtc0)

sd_emmc_b probe function return success but still not able to progress further.

Best Regards

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
