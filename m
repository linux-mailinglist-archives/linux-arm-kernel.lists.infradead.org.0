Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1E4DC6D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 16:04:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2EYi2tChNKIEcJZeKtdb2yUFL/HDA4Xk/Zm6yKw8dE=; b=sHQkrzt+AHcLOr
	qw23bPkFu3PtbJrUSvOhIBFPCEEU9+9hBp0X3LIbYphtq1GxbpcCUMLRrtkH0Nt6cVzRuEuMqFbA9
	2K+bD7IIYTIXmq6a4Gk4b9eTwtrX1sBnSXLpXJaXSpnyDJP9NL8rtKrzVX6RKqxsEKW5usniCZ1cW
	9ehSnn54cp8b7UH+B9xOpyhsPZUCT47w9aaYF/wEOey/y4h/LYvIjImgE9Y52HSdcFjvzhUJpwjFV
	vpk67aqhY1/kFXzJ0CRKYaEtAPvvHebg332ASehcWtYygS6hoojHdoQ78vwDSAKvhC3p5ot4HKuY7
	2VO4pI9pdRMj1FJ7nENQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLSrz-00005C-Pi; Fri, 18 Oct 2019 14:04:43 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLSrm-0008VS-FF; Fri, 18 Oct 2019 14:04:32 +0000
Received: by mail-il1-x144.google.com with SMTP id c12so5660899ilm.1;
 Fri, 18 Oct 2019 07:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hFzoYmplkki9kyOBFxHB/h7HTLnl6ZxTVUTZz24IbTM=;
 b=Mv2Cc5fhH95jd20n/Sf2opUMvxeC4GuDidaIvU95LAnx2bjFB31zzog/P6oqWNI58d
 XM4kMQNx9ix/JvgLSWiV7rzZz237lTyUC6xWCtOCj91cdMKPCsv6byLDvUndFWxaGk0L
 HaFovSd7qTmKH50MXUduQUJKddS1QIt0tOelQnPWH60Wn/uylOnx7KRn78t7S3kM9aK7
 nsz2w2pVnCnOPthzSr12A/S8UYEgfISBV/Ngbi5zNtoleFlCH6MWRuOKtu7jbM4ue7kk
 OiblLeg1doD4dboEnAuQMI+pSP1pjHIH7bya5MdqmBmJVTXcYLqH7s0TZljYFeuCIxlI
 cWgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hFzoYmplkki9kyOBFxHB/h7HTLnl6ZxTVUTZz24IbTM=;
 b=iJrez1uZwJa9sK9DK8vlhIRsY+vYULEpsOrPDS+hVzsDWof/O9PfekXo40zh4bA2FM
 3Vs6jTVySOjMwHkt0ribai3KlAPEJ5c+W9mc3ymZRAz599fGihG8OX6RSD3YsFwEhQ33
 XPQl/yDn/Ohk9QVuxm28UhaXa6aJvShkNJs1E9UskXG+tVnCQo203QTuvrfYP8KfwskX
 Gkkpk0JJ2tBUPNBvE57goDY/FzWemK2uTXDrN8FxRRjcnKkmzd1fxsYofPUCP+zGoqEf
 vebNNuM96TAit4FFspLsn2VlXFwuaC2DnCN35m1HBRNqSDNVQvENYCdW7ACO0wxGoZop
 8EwA==
X-Gm-Message-State: APjAAAXTJrnARQi/9vNJZi++ikMjyTcCeumNfXnC1WczEJHKzM0Dc1yS
 hYiQ6fVRJ/vr+Ws62/h/I7VrPLN0ltbRaBaovVI=
X-Google-Smtp-Source: APXvYqz5b2jpVcV5HjYOaFTUFnpF8IRGwxXAMSHZl48NFIAtlszEF0ulaRrEut4XiC3rkm7Hkfuu3yszlbUbKSTUifA=
X-Received: by 2002:a92:c80b:: with SMTP id v11mr10713556iln.6.1571407464959; 
 Fri, 18 Oct 2019 07:04:24 -0700 (PDT)
MIME-Version: 1.0
References: <20191007131649.1768-1-linux.amoon@gmail.com>
 <20191007131649.1768-6-linux.amoon@gmail.com>
 <CAFBinCAoJLZj9Kh+SfF4Q+0OCzac2+huon_BU=Q3yE7Fu38U3w@mail.gmail.com>
 <7hsgo4cgeg.fsf@baylibre.com>
 <CANAwSgRfcFa6uBNtpqz6y=9Uwsa4gcp_4tDD+Chhg4SynJCq0Q@mail.gmail.com>
 <CAFBinCA6ZoeR4m4bhj08HF1DqxY1qB5mygpaQCGbo3d8M+Wr9Q@mail.gmail.com>
 <CANAwSgSeYTnUkLnjw-RORw76Fyj3_WT0cdM9D0vFsY8g=9L94Q@mail.gmail.com>
 <1jwode9lba.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jwode9lba.fsf@starbuckisacylon.baylibre.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 18 Oct 2019 19:34:14 +0530
Message-ID: <CANAwSgSoK4X3_QbO3YpZRXNTpPJ+zVeid=w93f14Eyk8Dd32EQ@mail.gmail.com>
Subject: Re: [RFCv1 5/5] arm64/ARM: configs: Change CONFIG_PWM_MESON from m to
 y
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_070430_506786_76B8D15A 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome / Neil / Martin,

On Wed, 9 Oct 2019 at 17:34, Jerome Brunet <jbrunet@baylibre.com> wrote:
>
>
> On Wed 09 Oct 2019 at 10:48, Anand Moon <linux.amoon@gmail.com> wrote:
> >
> > Kernel command line: console=ttyAML0,115200n8
> > root=PARTUUID=45d7d61e-01 rw rootwait
> > earlyprintk=serial,ttyAML0,115200 initcall_debug printk.time=y
> >
> > [0] https://pastebin.com/eBgJrSKe
> >
> >> you can also try the command line parameter "clk_ignore_unused" (it's
> >> just a gut feeling: maybe a "critical" clock is being disabled because
> >> it's not wired up correctly).
> >>
> >
> > It look like some clk issue after I added the *clk_ignore_unused* to
> > kernel command line
> > it booted further to login prompt and cpufreq DVFS seem to be loaded.
> > So I could conclude this is clk issue.below is the boot log
> >
> > Kernel command line: console=ttyAML0,115200n8
> > root=PARTUUID=45d7d61e-01 rw rootwait
> > earlyprintk=serial,ttyAML0,115200 initcall_debug printk.time=y
> > clk_ignore_unused
> >
> > [1] https://pastebin.com/Nsk0wZQJ
> >
>
> Next step it to try narrow down the clock causing the issue.
> Remove clk_ignore_unused from the command line and add CLK_INGORE_UNUSED
> to the flag of some clocks your clock controller (g12a I think) until
>
> The peripheral clock gates already have this flag (something we should
> fix someday) so don't bother looking there.
>
> Most likely the source of the pwm is getting disabled between the
> late_init call and the probe of the PWM module. Since the pwm is already
> active (w/o a driver), gating the clock source shuts dowm the power to
> the cores.
>
> Looking a the possible inputs in pwm driver, I'd bet on fdiv4.
>

I had give this above steps a try but with little success.
I am still looking into this much close.

Well I am not the expert in clk or bus configuration.
but after looking into the datasheet of for clk configuration
I found some bus are not configured correctly.

As per Amlogic's kernel S922X (Hardkernel)
below link share the bus controller.

[0] https://github.com/hardkernel/linux/blob/odroidn2-4.9.y/arch/arm64/boot/dts/amlogic/mesong12b.dtsi#L295-L315

looking in to current dts changes it looks bit wrong to me.

*As per 6.1 Memory Map*
apb_efuse: bus@30000  --> apb_efuse: bus@ff630000
periphs: bus@34400    --> periphs: bus@ff634400
dmc: bus@38000        --> dmc: bus@ff638000
hiu: bus@3c000        --> hiu: bus@ff63c0000

Also the order of these is not correct.

Down the line in the datasheet some of the interrupt GIC bit are not
mapped correctly for example.

*As per 6.9.2 Interrupt Control Source*
223 SD_EMMC_C
222 SD_EMMC_B
221 SD_EMMC_A

and so on.
Please share your thought if these changes are valid.

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
