Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 816F0D14DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfZwK+si+arj7pgaG36A/7TKeV2i3cNHRN8KIVrUnmk=; b=DhGlK1MyN025gV
	HiTkgiJRLc/BqWW7GFFsA5p4UY1JLSaUCi6l2Wx+JdwmeijSrjZkWxjLsBT6soaJ4rhbnT7N0IY47
	iqXXmMngJ2QTrc4OwLcxeCqg2UUV/fsFjQBY0N8gxafZn5m3XaRnPdXrKwZpPGpOHN/Ff9F888tAh
	P0heioNEwENRX6Na7ZUPQNMR/+z5VDFDj9SS9tLK8tm3PFr26DUf/Gf1s9Li1KL99pmF3VkvYMGJ1
	Fs3+BQcGeJGY4Vu1JBA2Eyd8LOfWragyjybVQr2pmPmrRngSRttoDzQdRGEyJ3J1kqsFk0U6DoSUa
	4xomvhttz2B3JMjysmzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFPc-0002J9-4W; Wed, 09 Oct 2019 17:06:08 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFPT-0002I7-Lz; Wed, 09 Oct 2019 17:06:01 +0000
Received: by mail-oi1-x244.google.com with SMTP id 83so2412327oii.1;
 Wed, 09 Oct 2019 10:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D2mWDjNiFA8ZmwOSzNfxAaNscOF3X+a/Kjb9sBM4nYM=;
 b=SmKMpQLMdu9zF+nZETtyRyzRFHvqJQM931spdY+ZgtQexKRYWMGEJ/SEMSjPLRwgyX
 sGCfwlBzFBSSOoOzZLbNiPuenj186i0Q7O7o4hyzoB/N1b6hXnlm4oQPBxy0cSQ98bGH
 +x4VPv8LVWtflqbB9+1yalCGMt+xywez2ywORN8R2ErdI0GVP9PpkcGn8eZZ8O2JUM0a
 eD/ZrXd47/tKoNo4ITdNZBi9cgx0HQu6Az30CNCGEEg6kXWwqoRIrbg0h5iH+fCF1bLF
 M1G353WsH6zE4VwfLPFeaGBAVKlGrbU1LWazFwx1S2wB5DtSH+hZg90j0MwtKUYG5/lu
 g2Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D2mWDjNiFA8ZmwOSzNfxAaNscOF3X+a/Kjb9sBM4nYM=;
 b=lrec+RGLnX791nA8NZzcm68ux1tLkLElVfuQqjfFEFCVK/ghNubYDTdyXWtdVWgcUo
 StCnwcQOzYdBk4/gqq7UI6t1GytrAlFr2VLBWZkHL/wvOh22KuDk4+3Aov1WQBbBBPXm
 8AlaEXckCcVTmQOns5l2apn9h69naEtvr3RGWZD85homoFDKkp1AXk+hQMhmINFC2M5E
 ThQXW2d2QMCZQ/FLMIdzIzjIfnHcE9WIriE0a5eEPUcAkRThdRL+Q3eSHgnyFIv66DR2
 weRGr3gdLwsqUiHbCqtesu7rhYKqMxBSFA3RI3+kcQaizTGGf8HdMTlWnO0DYymAPnTe
 mTlg==
X-Gm-Message-State: APjAAAVZznw06Gq5MD7eV/Lt3KOEnqCp0W4HCKbpb7lMiiElB/EdFm/v
 qTdoLY64iPHxbk+kURVLs3tSbhCaiv1IpVI3Xns=
X-Google-Smtp-Source: APXvYqzRkSN7OkK/hbG3KqKLVZ1gB3egs7zTwNvk2ZAefW8rYVwzudrNvLiAtRk9tvfW75gia/FxyzlIvLMQYI7QLR0=
X-Received: by 2002:aca:d90a:: with SMTP id q10mr3536020oig.129.1570640757567; 
 Wed, 09 Oct 2019 10:05:57 -0700 (PDT)
MIME-Version: 1.0
References: <20191007131649.1768-1-linux.amoon@gmail.com>
 <20191007131649.1768-6-linux.amoon@gmail.com>
 <CAFBinCAoJLZj9Kh+SfF4Q+0OCzac2+huon_BU=Q3yE7Fu38U3w@mail.gmail.com>
 <7hsgo4cgeg.fsf@baylibre.com>
 <CANAwSgRfcFa6uBNtpqz6y=9Uwsa4gcp_4tDD+Chhg4SynJCq0Q@mail.gmail.com>
 <CAFBinCA6ZoeR4m4bhj08HF1DqxY1qB5mygpaQCGbo3d8M+Wr9Q@mail.gmail.com>
 <CANAwSgSeYTnUkLnjw-RORw76Fyj3_WT0cdM9D0vFsY8g=9L94Q@mail.gmail.com>
In-Reply-To: <CANAwSgSeYTnUkLnjw-RORw76Fyj3_WT0cdM9D0vFsY8g=9L94Q@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 9 Oct 2019 19:05:46 +0200
Message-ID: <CAFBinCCHrvjNTruVk7qr+7Y_m7mP2BJ-0HxftJpiPXpvoD=-QQ@mail.gmail.com>
Subject: Re: [RFCv1 5/5] arm64/ARM: configs: Change CONFIG_PWM_MESON from m to
 y
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_100559_728793_A1FA75A2 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, Oct 9, 2019 at 10:49 AM Anand Moon <linux.amoon@gmail.com> wrote:
[...]
> > can you please share a boot log with the command line parameter
> > "initcall_debug" [0]?
> > from Documentation/admin-guide/kernel-parameters.txt:
> >  initcall_debug [KNL] Trace initcalls as they are executed.  Useful
> >  for working out where the kernel is dying during
> >  startup.
> >
>
> Well I have tied to add this command  *initcall_debug* to kernel command prompt.
> Here is the console log,  but I did not see any init kernel timer logs
I don't remember from the top of my head if any additional Kconfig
setting is needed

> Kernel command line: console=ttyAML0,115200n8
> root=PARTUUID=45d7d61e-01 rw rootwait
> earlyprintk=serial,ttyAML0,115200 initcall_debug printk.time=y
>
> [0] https://pastebin.com/eBgJrSKe
>
> > you can also try the command line parameter "clk_ignore_unused" (it's
> > just a gut feeling: maybe a "critical" clock is being disabled because
> > it's not wired up correctly).
> >
>
> It look like some clk issue after I added the *clk_ignore_unused* to
> kernel command line
> it booted further to login prompt and cpufreq DVFS seem to be loaded.
> So I could conclude this is clk issue.below is the boot log
interesting - as Jerome suggested: the next step is to find out which
clock is causing problems
last time I checked there was no debug print in the code which
disables unused clocks so I had to add that myself

> Kernel command line: console=ttyAML0,115200n8
> root=PARTUUID=45d7d61e-01 rw rootwait
> earlyprintk=serial,ttyAML0,115200 initcall_debug printk.time=y
> clk_ignore_unused
>
> [1] https://pastebin.com/Nsk0wZQJ
>
> > back when I was working out the CPU clock tree for the 32-bit SoCs I
> > had a bad parent clock in one of the muxes which resulted in sporadic
> > lockups if CPU DVFS was enabled.
> > you can try to disable CPU DVFS by dropping the OPP table and it's
> > references from the .dtsi
> >
>
> Yep yesterday my focus was to disable PWM feature and get boot up-to
> login prompt
> But not I have to look into clk feature.
>
> *Many thanks for your valuable inputs, I learned a lot of things.*
you're welcome :-)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
