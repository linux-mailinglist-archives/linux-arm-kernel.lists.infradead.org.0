Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A46D000F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 19:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ImqxPdqOQFsJT7/8sQxoTLEfd3sgwWUCBgn2BNFchQ=; b=PISrFlKkSycbKS
	ZF8cciBkuxH/FLopCx9970VUMJOLw1ykJo5/0XzB72A363hoY2fbTICWyDIDXpAsi+Y7iqAsyVwh0
	36+Ku11dTp5LgsOYu6HmsV6EE9kRwcmZhedBM8i9LV/iWJfYQLSQpaBaftgKuhjw98hp/h5bLuHN/
	SrHj7mVI7WfAujknKg+EVNSFs1P68GgHAgtG/VglnpDjHmUESsXqrI6wMw0WyGsl9w+OCBuLgvSTG
	FyI81UKO6R314Fl74uD2CGwYGFhMBWEj1cAJa/Hh5mpFOXaHtCFCXiFg3KRzzK3rrVoxbOFBMD1u8
	vVFjgOUsgrUfPFGdN/qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtTy-0004m2-TK; Tue, 08 Oct 2019 17:41:10 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtTq-0004lG-0S; Tue, 08 Oct 2019 17:41:03 +0000
Received: by mail-ot1-x341.google.com with SMTP id 89so14714206oth.13;
 Tue, 08 Oct 2019 10:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xOC0mpKmGEmRikgCRd9gsgQ9erZ8EhH2ac4zF2SOvfc=;
 b=A48ymLIK2rb7BiQ9QuBri46T6nbKFuIQJxa7IZOrx9u7UZZjm57jzAFIIYzYvWLrix
 m+nDdkRVAO2+gOSlB5xS91WBrGwrPIYdmbS1o615tpr57WuZBLJC3B6ckf/LOptWZ1Ub
 gJYtq5XNt82fMCqHor/KL47/Zfi03r9Lcu7ah4JpxQzHWRQAXsmiufKaM507CHWwWDzX
 wuksd3+2wJ5/sXreoS2epnF9sTqEmrgFgSyR/Z9C3JNv6wJ+IrfIXn6AFIFTduTFLAjS
 itBaUhBVZ9Qzu3Pkd74h4T4/qeYmEeqsrAAtBlj6UkpmRgDydVnCnFwNreL37zzt2K7l
 PqYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xOC0mpKmGEmRikgCRd9gsgQ9erZ8EhH2ac4zF2SOvfc=;
 b=Y7zTwcRK1qqJq49JZnHXmm0vunh5RG/Mifz9pthkPBNj7LQx9NpaBxxyq3AClYzkTu
 DroJqoVs/zFJLfWHqW8jZ4axzdDPsdHWHE9yx6oot+IhMXdUxqq3hQnGjeWvMx1qfvpV
 /he7OQkXPnOuILNJQK48JhNH4BcrUodBHI+vRxiOxfEPSWfBcZLikbrND2h4JdU2/jz0
 PRStc6cmKBXuP/okZndZtsx2PN3+q/73cBGdwqZDyUw3vCUF9lX3vWjqgszSPPrhecKo
 01VSixPuzxgds/lWzCqn5R5qG1x2ERLs0Ij6hgzXtWGUfx9JGaQt7BoX6CCBqcOxNYrg
 5WJQ==
X-Gm-Message-State: APjAAAWlz0RkfsvVFJQ5xUQ9AIc4G9e+OEEU+0d0qVQJUiK58SepaAhw
 GwpK1eFAc8z6QxVBamGIhs0z1la/htRlCsp6/y8=
X-Google-Smtp-Source: APXvYqxqhXwAynybsN9Gz27KPhjj5btFKvK2S66P8tFQ842KPj4fHqw45egk61mlamGvOAvK6sbk0VhqSQzJff+YD4E=
X-Received: by 2002:a05:6830:150d:: with SMTP id
 k13mr25847326otp.98.1570556460961; 
 Tue, 08 Oct 2019 10:41:00 -0700 (PDT)
MIME-Version: 1.0
References: <20191007131649.1768-1-linux.amoon@gmail.com>
 <20191007131649.1768-6-linux.amoon@gmail.com>
 <CAFBinCAoJLZj9Kh+SfF4Q+0OCzac2+huon_BU=Q3yE7Fu38U3w@mail.gmail.com>
 <7hsgo4cgeg.fsf@baylibre.com>
 <CANAwSgRfcFa6uBNtpqz6y=9Uwsa4gcp_4tDD+Chhg4SynJCq0Q@mail.gmail.com>
In-Reply-To: <CANAwSgRfcFa6uBNtpqz6y=9Uwsa4gcp_4tDD+Chhg4SynJCq0Q@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 8 Oct 2019 19:40:50 +0200
Message-ID: <CAFBinCA6ZoeR4m4bhj08HF1DqxY1qB5mygpaQCGbo3d8M+Wr9Q@mail.gmail.com>
Subject: Re: [RFCv1 5/5] arm64/ARM: configs: Change CONFIG_PWM_MESON from m to
 y
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_104102_054050_7F5D3778 
X-CRM114-Status: GOOD (  27.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-amlogic@lists.infradead.org,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anand,

On Tue, Oct 8, 2019 at 4:39 PM Anand Moon <linux.amoon@gmail.com> wrote:
>
> Hi Kevin / Martin,
>
> On Tue, 8 Oct 2019 at 04:28, Kevin Hilman <khilman@baylibre.com> wrote:
> >
> > Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:
> >
> > > On Mon, Oct 7, 2019 at 3:17 PM Anand Moon <linux.amoon@gmail.com> wrote:
> > > [...]
> > >> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > >> index c9a867ac32d4..72f6a7dca0d6 100644
> > >> --- a/arch/arm64/configs/defconfig
> > >> +++ b/arch/arm64/configs/defconfig
> > >> @@ -774,7 +774,7 @@ CONFIG_MPL3115=m
> > >>  CONFIG_PWM=y
> > >>  CONFIG_PWM_BCM2835=m
> > >>  CONFIG_PWM_CROS_EC=m
> > >> -CONFIG_PWM_MESON=m
> > >> +CONFIG_PWM_MESON=y
> > >
> > > some time ago I submitted a similar patch for the 32-bit SoCs
> > > it turned that that pwm-meson can be built as module because the
> > > kernel will run without CPU DVFS as long as the clock and regulator
> > > drivers are returning -EPROBE_DEFER (-517)
> >
> > On 64-bit SoCs, the kernel boots with PWM as a module also, but DVFS
> > only works sometimes, and making it built-in fixes the problem.
> > Actually, it doesn't fix, it just hides the problem, which is likely a
> > race or timeout happening during deferred probing.
> >
> > > did you check whether there's some other problem like some unused
> > > clock which is being disabled at that moment?
> > > I've been hunting weird problems in the past where it turned out that
> > > changing kernel config bits changed the boot timing - that masked the
> > > original problem
> >
> > Right, I would definitely prefer to not make this built-in without a lot
> > more information to *why* this is needed.  In figuring that out, we'll
> > probably find the race/timeout that's the root cause.
> >
> > Kevin
> >
> >
>
> Kevin,
>
> As per my understanding from the kernelci.org logs it seen that
> pwm-meson driver is requested more than once before it finally load the module.
>
> [0] https://storage.kernelci.org/next/master/next-20191008/arm64/defconfig/gcc-8/lab-baylibre/boot-meson-g12b-odroid-n2.txt
my understanding is that:
- the PWM regulator driver is built in (=y)
- the Meson PWM controller driver is built as module (=m)
- during boot the PWM regulator node is found and it has a matching
driver (built-in)
- the PWM regulator driver tries to find the PWM controller but cannot
find it yet (and reports "Failed to get PWM: -517")
- (this repeats a few times)
- then the filesystem / initramfs is loaded where the modules are located
- now the Meson PWM controller driver is loaded
- the PWM regulator driver tries to find the PWM controller -> now it found it

> Hi Martin,
>
> I have tired your Martin's patch [1] and still the boot fails to move
> ahead with below logs.
> [1] https://lore.kernel.org/patchwork/patch/1034186/
this patch only silences the "Failed to get PWM: -517" message
Mark didn't apply it back then because without that message it would
be harder to debug these issues

> [    1.543928] xhci-hcd xhci-hcd.0.auto: Host supports USB 3.0 SuperSpeed
> [    1.550422] usb usb2: We don't know the algorithms for LPM for this
> host, disabling LPM.
> [    1.558702] hub 2-0:1.0: USB hub found
> [    1.562131] hub 2-0:1.0: 1 port detected
> [    1.566206] dwc3-meson-g12a ffe09000.usb: switching to Device Mode
> [    1.573252] meson-gx-mmc ffe05000.sd: Got CD GPIO
> [    1.607405] hctosys: unable to open rtc device (rtc0)
>
> I have put some more prints in pwm-meson.c it fails to load the module
> as microsSD card is not completely initialized.
what makes you think that there's a problem with pwm-meson?

can you please share a boot log with the command line parameter
"initcall_debug" [0]?
from Documentation/admin-guide/kernel-parameters.txt:
 initcall_debug [KNL] Trace initcalls as they are executed.  Useful
 for working out where the kernel is dying during
 startup.

you can also try the command line parameter "clk_ignore_unused" (it's
just a gut feeling: maybe a "critical" clock is being disabled because
it's not wired up correctly).

back when I was working out the CPU clock tree for the 32-bit SoCs I
had a bad parent clock in one of the muxes which resulted in sporadic
lockups if CPU DVFS was enabled.
you can try to disable CPU DVFS by dropping the OPP table and it's
references from the .dtsi


Martin


[0] https://elinux.org/Initcall_Debug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
