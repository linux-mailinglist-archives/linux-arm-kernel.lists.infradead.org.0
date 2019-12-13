Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B9F11E57F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 15:23:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nunLIf0CwdqikVQvYgyaBQEzanKSV7RTjta8CvmA9lo=; b=nI3chAtusGdowu
	Qut4FXIMtUrRz14Fp1tvyzyeCqmoiIGUHNHNNGN8g1GM4vtEQTht+tsMDv7UfvMac+KTvbo+hneqk
	DUrIcO2KjUSWkMP6S81ZSOalOMzuftYIPQILQwoOPTYoScdIhAZIrZcrQEmQbjfMSxwSDfnk7tky5
	lnl+ARAXEwMl6K2yIy6ccaqQuAHHgJLTx2gQyXyRvUXYo76/LPd2g4ATFaOBZEOVCkPV8pQDMQrpR
	ODIIy3Y9rnsRtUFvnViHTfNLcSg5jgvKfXXrEr4ukW51klxBFAZeUDa4XANFql+0SBbUQmj/AmBJT
	5xm0bddEJ+jrMjITocIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iflrC-00055d-4R; Fri, 13 Dec 2019 14:23:50 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iflr1-00054u-93; Fri, 13 Dec 2019 14:23:41 +0000
Received: by mail-io1-xd42.google.com with SMTP id t26so2512723ioi.13;
 Fri, 13 Dec 2019 06:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oY4foPWzvMWBhrOb3ctOq9TVV5hU0NFwbmMTS0Zd/UU=;
 b=WA/Nl5/qzxziow27rNFDBN6AR0i/0NcNiRvRVp80t0u9W0JQMaMjKJ1FXpSIJvFRsA
 9XNtyo7R3tvMIJvxC8oiNyOk4J2wtKS7B3Ts81LXhTeznVpJDzP2bBwTq3eNp8TT5jGC
 JeJnDQdKIfDwUHRy+/BauHNwzMIsrHZwY1yL13K6S1JG3p8bmPr43mrdPMlvRX974Db3
 sejJ6jhmsn/JNHCDsnNqd+DX6Vt5JKtCkrXbQGX1nBV17cl/Lwbv1gGNky1WX5xz6cB9
 qNaJLQ5sYArh6IQ72EsTE5mzorok1Y/tT0dn2XFjhtREMCr3CwECOoTe5T6M5fG+Ice6
 rw+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oY4foPWzvMWBhrOb3ctOq9TVV5hU0NFwbmMTS0Zd/UU=;
 b=pYqriNq1VAF9zPFZSUtjkBZ+kXKu7KIM1kII/QOgT78uDmi7ND5JLNCAnC6Qx4azjE
 OuLm879dsqBIJyEys4jtz703hTEKFjmUMso2jx5fi17hEu9zbavON3X3/azaJ9BeuJST
 H4BxT/SjeqZdZnjn6O/+vXm+LFsMWangsdNgW3QjogMLIcIZhGfqyF8mryVW+fHCtidG
 EsrQibc9KEF7cBThOhdocBItK4aoSrHCTZ+9VOX8sayZzapjcQM5q8Khn6C70pO1XLi2
 HH+fnMOw8uDXresgw3ElULTTTE7H6P5pg/qfTj/xXZlczf2OZIh7TAqrqdt9BTAkH33e
 DhHA==
X-Gm-Message-State: APjAAAV+0kAgogyKfJj0sKEhpcy3WgqbLpgNe1yIO4heO/yhoJdEPLRO
 ypGBTmEe+XMrEAfolEXte8YXm/TE5U7F6vYC+a4=
X-Google-Smtp-Source: APXvYqw9fo8CyH8rZgTkDXi/QpomXN7jj5DggXjh44v4tlkbINHuyaaFmy+kLmhjIEG8wBfM6tVMJ2kyLjCLt4kAyek=
X-Received: by 2002:a02:844e:: with SMTP id l14mr2634809jah.30.1576247017731; 
 Fri, 13 Dec 2019 06:23:37 -0800 (PST)
MIME-Version: 1.0
References: <20191101143126.2549-1-linux.amoon@gmail.com>
 <7hfthtrvvv.fsf@baylibre.com>
 <c89791de-0a46-3ce2-b3e2-3640c364cd0f@baylibre.com>
 <CANAwSgQx3LjQe60TGgKyk6B5BD5y1caS2tA+O+GFES7=qCFeKg@mail.gmail.com>
 <7hfthsqcap.fsf@baylibre.com>
 <CAFBinCBfgxXhPKpBLdoq9AimrpaneYFgzgJoDyC-2xhbHmihpA@mail.gmail.com>
 <7hpngvontu.fsf@baylibre.com>
 <4e1339b4-c751-3edc-3a2e-36931ad1c503@baylibre.com>
 <CAFBinCCgKcwXSLxS_CRvz9JZvQo8PcUGm=egBbabVZSrkSc30Q@mail.gmail.com>
 <CANAwSgSFR3kftWLPqyoYfyxdQ5dcp2W7NgRCaFNkMj-xEDY1Kw@mail.gmail.com>
 <83791a71-a45c-383d-0406-b0f4e0a0c215@baylibre.com>
In-Reply-To: <83791a71-a45c-383d-0406-b0f4e0a0c215@baylibre.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 13 Dec 2019 19:53:26 +0530
Message-ID: <CANAwSgSsJ8oc--SxtOnsqAfRHQwtBi=ExWg0hqWX7QKga=OYRw@mail.gmail.com>
Subject: Re: [RFC-next 0/1] Odroid C2: Enable DVFS for cpu
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_062339_345036_0DC16271 
X-CRM114-Status: GOOD (  28.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil

On Fri, 13 Dec 2019 at 18:54, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 13/12/2019 12:28, Anand Moon wrote:
> > Hi Martin
> >
> > On Fri, 13 Dec 2019 at 01:40, Martin Blumenstingl
> > <martin.blumenstingl@googlemail.com> wrote:
> >>
> >> Hi Neil,
> >>
> >> On Wed, Dec 11, 2019 at 9:49 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >>>
> >>> On 10/12/2019 22:47, Kevin Hilman wrote:
> >>>> Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:
> >>>>
> >>>>> On Tue, Dec 10, 2019 at 7:13 PM Kevin Hilman <khilman@baylibre.com> wrote:
> >>>>>>
> >>>>>> Anand Moon <linux.amoon@gmail.com> writes:
> >>>>>>
> >>>>>>> Hi Neil / Kevin,
> >>>>>>>
> >>>>>>> On Tue, 10 Dec 2019 at 14:13, Neil Armstrong <narmstrong@baylibre.com> wrote:
> >>>>>>>>
> >>>>>>>> On 09/12/2019 23:12, Kevin Hilman wrote:
> >>>>>>>>> Anand Moon <linux.amoon@gmail.com> writes:
> >>>>>>>>>
> >>>>>>>>>> Some how this patch got lost, so resend this again.
> >>>>>>>>>>
> >>>>>>>>>> [0] https://patchwork.kernel.org/patch/11136545/
> >>>>>>>>>>
> >>>>>>>>>> This patch enable DVFS on GXBB Odroid C2.
> >>>>>>>>>>
> >>>>>>>>>> DVFS has been tested by running the arm64 cpuburn
> >>>>>>>>>> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
> >>>>>>>>>> PM-QA testing
> >>>>>>>>>> [2] https://git.linaro.org/power/pm-qa.git [cpufreq testcase]
> >>>>>>>>>>
> >>>>>>>>>> Tested on latest U-Boot 2019.07-1 (Aug 01 2019 - 23:58:01 +0000) Arch Linux ARM
> >>>>>>>>>
> >>>>>>>>> Have you tested with the Harkernel u-boot?
> >>>>>>>>>
> >>>>>>>>> Last I remember, enabling CPUfreq will cause system hangs with the
> >>>>>>>>> Hardkernel u-boot because of improperly enabled frequencies, so I'm not
> >>>>>>>>> terribly inclined to merge this patch.
> >>>>>>>
> >>>>>>> HK u-boot have many issue with loading the kernel, with load address
> >>>>>>> *it's really hard to build the kernel for HK u-boot*,
> >>>>>>> to get the configuration correctly.
> >>>>>>>
> >>>>>>> Well I have tested with mainline u-boot with latest ATF .
> >>>>>>> I would prefer mainline u-boot for all the Amlogic SBC, since
> >>>>>>> they sync with latest driver changes.
> >>>>>>
> >>>>>> Yes, we would all prefer mainline u-boot, but the mainline kernel needs
> >>>>>> to support the vendor u-boot that is shipping with the boards.  So
> >>>>>> until Hardkernel (and other vendors) switch to mainline u-boot we do not
> >>>>>> want to have upstream kernel defaults that will not boot with the vendor
> >>>>>> u-boot.
> >>>>>>
> >>>>>> We can always support these features, but they just cannot be enabled
> >>>>>> by default.
> >>>>> (I don't have an Odroid-C2 but I'm curious)
> >>>>> should Anand submit a patch to mainline u-boot instead?
> >>>>
> >>>> It would be in addition to $SUBJECT patch, not instead, I think.
> >>>>
> >>>>> the &scpi_clocks node could be enabled at runtime by mainline u-boot
> >>>>
> >>>> That would work, but I don't know about u-boot maintainers opinions on
> >>>> this kind of thing, so let's see what Neil thinks.
> >>>
> >>> U-Boot doesn't anything to do with SCPI, SCPI discusses directly with the SCP
> >>> processor, and the CPU clock is set to 1,56GHz by the BL2 boot stage before
> >>> U-boot starts.
> >>>
> >>> The only viable solution I see now is to find if we could add a DT OPP table
> >>> only for Odroid-C2 dts to bypass the SCPI OPP table.
> >> my understanding is that mainline u-boot (with whatever SCP firmware
> >> it uses) provides the *correct* OPP table
> >
> > Right now I am not sure how this OPP table is populated.
> > But I saw the same freq table used in 3.16.x kernel after enable the clk.
> >
> >> in this case it would be "safe" to have SCPI enabled with mainline u-boot
> >> @Anand: please correct me if I misunderstood you
> >>
> >
> > As per my understanding DVFS OPP frequency table for SCPI firmware set
> > for 1.536 GHz
> > somewhere in BL2 as pointed by Neil.
> >
> > Arm Trusted firmware added new secure SCPI communication with
> > Cortex-M3 co processor.
> > [0] https://github.com/ARM-software/arm-trusted-firmware/blob/master/docs/plat/meson-gxbb.rst
> > [1] https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/amlogic/common/aml_scpi.c
> >
> > ATF generated the *bl1.bin* which is replace the Amlogic's bl1.bin
> > while preparing
> > the new u-boot *u-boot.gxbb* image.
> >
> >> my idea to "enable SCPI with mainline u-boot" is to have u-boot update
> >> the "status" property of the scpi_clocks node.
> >> u-boot does something similar with the mac-address property of the
> >> Ethernet controller for example.
> >> as result of this users of mainline u-boot would have working CPU
> >> DVFS, while users of the old vendor u-boot would run at fixed 1.54GHz.
> >>
> >>
> >> Martin
> >
> > Right now as per my understanding 1.536 GHz max is bit under clocked.
> >
> > Some time ago on Odroid Forum tried to over clock the cpu to 2GHz.
>
> This is the point, the Odroid-C2 is *not* stable at 2GHz,
> a large amount of board doesn't support 2GHz, this is why Amlogic
> dropped the freq > 1.536 GHz for the GXBB family.
>
> But HardKernel still delivers the SCPI table with > 1.536 GHz which breaks
> on most of the boards, but doesn't on 3.14 since they have a hack disabling
> higher freqs with a cmdline set in boot.ini.
>
> > [3] https://forum.odroid.com/viewtopic.php?f=139&t=18738
> > So more investigation need to done in this line.
> >
> > I also tried the same with HardKernel Image, with modifying the boot.ini
> > I could increase the max DVFS cpu frequency to 1.90 GHz,
> > This is just proof of concept.
> >
> > odroid:~# cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies
> > 100000 250000 500000 1000000 1296000 1536000 1656000 1680000 1752000 1896000
> >
> > I have some minimal stress testing attached are the results for HK
> > 3.16.x kernel.
> >
> > For now we should not enable this clock.
> > Until we can possible to check for higher clock frequency to work stable
> > on all Amlogic S905X SBC.
> >
> > I like the Neil's approach to use it's own dts OPP table for SCPI protocol.
>
> The various tests gave very little perf enhancement by going > 1,536 GHz, seriously
> it's not worth the pain.
>
> Neil
>

Ok Thanks for your expert knowledge.
I agree with you completely on this to set max freq to 1,536 GHz for
all S905 SoC.

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
