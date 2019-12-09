Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66822116958
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:31:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYq3puhtP5ykbHIcRB6iP8suyrchw0NMeMHubLMa7Qw=; b=S7RL9ijKp4XFOL
	OQuywWCpp7bXvfGg4i9tRYqDAJH7qt32N4HI9oNo1WGmvu/2lvufJuMEE9vSO5iIEcUEKobyRXFzS
	37iObixlebZlE0dnxeIx8tH2ctAfDXMtFWogOV2Ey6pXjTjUFDcYwSXjT+GOZ7bIo5PrKFlggH/mN
	k16shmbILneIRDIjZPR0v/SgyFeu/jz4emrf1oeIFZxhr/2Y3My50RegBXDSpndwqw2F+giKslZB2
	nog9Q4H+15+daQ7cMM1EbhbBwpDTepK5YnZRVP7ZRAmM1CYNSFeBuKqlGYFcfqytzj4IjoWYPdKMm
	7mBErzO21EFGHJZRT7rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFOJ-0006hd-J0; Mon, 09 Dec 2019 09:31:43 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFOB-0006gt-2d; Mon, 09 Dec 2019 09:31:36 +0000
Received: by mail-pl1-x641.google.com with SMTP id w7so5546335plz.12;
 Mon, 09 Dec 2019 01:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=BCh9dC7fcIHS//YV1KqLxuTq8XJDijjaKH2onWE4r9s=;
 b=rVHqMyJfU3FTJsAi+6+5E8fP5U0tplHEFmyTPdJc7o8hf6cvk2OsnESbc31CldCmgK
 bwcUibhQrTonMdl2ChcA6iOm041tSqXf7zov7z96t6tTKbFDSGyjr7N23vnR9qezvybF
 UrExOmQJRQYfG/ShZjOhsx2Xn3Dl2LaMSz2mAtd+2Gb7KJAFnsDEjurO9leT3mJ/a2Bz
 eJKqXCAfMwfLdAfSmCUHQhc4pbQ/Q2BlgrOHUv8Y9XZFqn6iz6c+zxnAn8WKIJgt7/Pw
 IHKu8h8a+xHrJydx+CNU6YHSXmKpcuI9xcsQ3zecdglf3yW7AL7nAEsIscuAIANA2yKc
 k37w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=BCh9dC7fcIHS//YV1KqLxuTq8XJDijjaKH2onWE4r9s=;
 b=sXoKhEGup9goamhFLLryYdMWqlEfeSNXKpEFp3Mm/pNjNeh1jTsbAaXh3qCsq0oJib
 vUNXP7iqi7uERyQ2a604NSbOTeze814iECd3jr4VQnmKeF2wrIBpqs7C0SVUIJ8S3tP0
 wdGSP3ukfzo3IABWLFaPZ2fYIGPg37oR0aQTBtmvLncYoETyiDxtYqrkZppW2VKzg7Qb
 132zqyNxqbH16pQ5cIwQQA90xqP0GqAEaRVtiq3zWDAQtljGYKRmhHzCn6e0bTDJClL/
 Hail7O7s/yNNI3pNFyiDDiWwyYrsNSouIa7ZEVEKauwcV88qc9iJilQ2MbIcPVNccxT8
 /muw==
X-Gm-Message-State: APjAAAWKYBrDM6mTAnNTKvUK4E5OdouCtyK+Ldce1MiSInQIdE1PJOt+
 b8WiLO6aCt7p79vLHD/oBz4=
X-Google-Smtp-Source: APXvYqznGDbrflqkItQETgIXhHrqVQiDQdjRYPK9RJNnGO3v0S8LQvD3Qrsa6m3IZG8T8GEP5rUNag==
X-Received: by 2002:a17:902:b403:: with SMTP id
 x3mr28816141plr.109.1575883893623; 
 Mon, 09 Dec 2019 01:31:33 -0800 (PST)
Received: from udknight.localhost ([183.250.89.86])
 by smtp.gmail.com with ESMTPSA id z19sm24980429pfn.49.2019.12.09.01.31.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Dec 2019 01:31:32 -0800 (PST)
Received: from udknight.localhost (localhost [127.0.0.1])
 by udknight.localhost (8.14.9/8.14.4) with ESMTP id xB99IlBX003828;
 Mon, 9 Dec 2019 17:18:47 +0800
Received: (from root@localhost)
 by udknight.localhost (8.14.9/8.14.9/Submit) id xB99IfJA003808;
 Mon, 9 Dec 2019 17:18:41 +0800
Date: Mon, 9 Dec 2019 17:18:41 +0800
From: Wang YanQing <udknight@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: perf record doesn't work on rtd129x SoC
Message-ID: <20191209091841.GA3703@udknight>
Mail-Followup-To: Wang YanQing <udknight@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 Mark Rutland <mark.rutland@arm.com>,
 linux-realtek-soc@lists.infradead.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-soc@vger.kernel.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20191204045559.GA10458@udknight>
 <f90748d0-8112-3aa8-0c88-e35a8d6e72d3@suse.de>
 <1b2d2bc3-afcf-02c3-ccd6-e2a227c23fd3@arm.com>
 <b9788139-d2cb-9ed4-e887-04651968e5b1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9788139-d2cb-9ed4-e887-04651968e5b1@arm.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_013135_120018_6F9EC352 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (udknight[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-realtek-soc@lists.infradead.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-soc@vger.kernel.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 02:51:24PM +0000, Robin Murphy wrote:
> On 04/12/2019 11:20 am, Robin Murphy wrote:
> > On 2019-12-04 7:28 am, Andreas F=E4rber wrote:
> >> Hi YanQing,
> >>
> >> + LAKML + Mark + Will
> >>
> >> Am 04.12.19 um 05:55 schrieb Wang YanQing:
> >>> I use "perf record" to debug performance issue on RTD1296 SOC, it =

> >>> does't work, but
> >>> the "perf stat" is ok!
> >>
> >> Thanks for the report - which board, branch and (base) tag are you
> >> testing against? And are you building perf yourself from kernel source=
s,
> >> or are you using some distro package?
> >>
> >> I only have Busybox in my initrd on DS418; I have not tested perf.
> >>
> >>> After some dig in the kernel, I find the reason is no pmu overflow =

> >>> interrupt, I think
> >>> below pmu configuration isn't right for RTD1296:
> >>> "
> >>> =A0=A0=A0=A0=A0=A0=A0=A0 arm_pmu: arm-pmu {
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 compatible =3D "arm,=
cortex-a53-pmu";
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 interrupts =3D <GIC_=
SPI 48 IRQ_TYPE_LEVEL_HIGH>;
> >>> =A0=A0=A0=A0=A0=A0=A0=A0 };
> >>> "
> >>>
> >>> We need 4 PMU SPI for RTD1296 (4 cores), and I guess the 48 isn't =

> >>> right too.
> >>
> >> Note that above rtd129x.dtsi snippet is not complete. See rtd1296.dtsi:
> >>
> >> &arm_pmu {
> >> =A0=A0=A0=A0interrupt-affinity =3D <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
> >> };
> > =

> > That doesn't help much, since 4 affinities for one SPI is rather =

> > nonsensical.
> > =

> >> 48 and high/4 match what I see in the latest BSP:
> >>
> >> https://github.com/BPI-SINOVOIP/BPI-M4-bsp/blob/master/linux-rtk/arch/=
arm64/boot/dts/realtek/rtd129x/rtd-1296.dtsi#L116 =

> >>
> >>
> >>> Any suggestion is welcome.
> >>>
> >>> Thanks!
> >>
> >> The only difference I see is "arm,cortex-a53-pmu" vs. "arm,armv8-pmuv3=
".
> >> By my reading of arch/arm64/kernel/perf_event.c the only difference
> >> between the two should be the name and an extra cache_map. You could t=
ry
> >> the other compatible string in your .dts, but I doubt it'll help.
> >>
> >> Hopefully the Realtek or Arm guys can shed some light.
> > =

> > If the SoC really has all 4 overflow interrupts combined into a single =

> > SPI line, then sampling just isn't going to be supported - it's =

> > unreasonably difficult to handle overflow when the IRQ may be taken on =

> > the wrong CPU.
> =

> On closer inspection, that BSP kernel implements a whole hrtimer-based =

> bodge in arm_pmu to apparently work around not having usable interrupts, =

> so yeah, this isn't going to be usable, sorry.
> =

> Robin.

Hi all!

Thanks for all suggestions and inspection, if we make sure it is a hardware
design blunder, then it is accpetable for me, I just need to make sure it
isn't the kernel's fault, if so that's will be our fault:)

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
