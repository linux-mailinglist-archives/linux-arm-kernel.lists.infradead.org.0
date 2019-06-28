Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9825259268
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:16:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LQlGlrrZOwtQIbBRtRCPl3AGUSFWg/nTNh1773ffYck=; b=gdAnBDm4mOkIcp
	sBoXF+VEjxwYVJLxY4VV3zzMRMzKMUrzQ2W0yOWzr+yqdEa0BoMz1/elEwQCARimr4lZ8RkD1eICF
	vZmC6zpd0IQ8193Fa1SxTxETBk9U8V7K0hR/Mb31uJCnF8RSNuHYGqhLUqaoNFPDA5cEtzfSSU6qj
	74OlNqqOYLgdrCcrFw+7QF7KYYbFt/ywoiH4uRfFxElrBHajwOBwGYlToKshZ9gUULqDc6Cryqz/0
	hN/8os+owr99ruwFaKrxIHL1nanyG3d6J2J1cqXVdsmrKnAiCj2+0ZaNzknKW4rVYr4EBpm18dj/O
	wy+avugxyM/wIo8gYZXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiIx-0008Al-2A; Fri, 28 Jun 2019 04:16:07 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiI5-0007u6-B9
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:15:14 +0000
Received: by mail-io1-xd41.google.com with SMTP id w25so9640480ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 21:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wskEaZMaFBoycfWtxq3fq9AtJfP+IBGorvO/F2Y89ls=;
 b=ebi/tmZiTmZR58CGWM1DBvxgMSRk6yjKt8Dg4UdLy9wQ/qWCQv0CzwYY6orxTaLtLO
 Lt3Gy7QpQecCK4e7DR1bSwaOnGKjWfCUw+sqEWQWQwcgaixbPlOVqc4L2ITktT67J0tZ
 u5Cr3Vu0ZK3WMVVU2WcR96TkZH9aQOE8nUjO2fw26THNBzLo348oZKGBYpldECsT15Ba
 umWhUOkVv2xfFCOJjzSNsGSscFZaDu3rd4q8O3ExRDsb/tn8Rv4pjFaxlyizTwGhiBbP
 sWLOlThn478PtvZscYumkdcoRzCVVZLa4j+WNK6N0zhVmaYWDxP6zhrdMoW2r/q7ZExY
 e9xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wskEaZMaFBoycfWtxq3fq9AtJfP+IBGorvO/F2Y89ls=;
 b=c2P/es2iZzdCynDoYoK3/pF+KH9TT4dwAXIxo5M7vJR/7ojH8L60XYbfBHLSDINLFT
 KxgXqxKLZkVRXZVndcLoBtwHP7/qteVveVuHn92e9n349HvDb1VztKGQmIQut/mwOSrA
 /C1w5gHOfLMgaD1yOS8NKkpOl21LEOKJtRn9/o/U8iabnFBesV2LDAD/VGA9v8f/231d
 x9KnEsjDnQX3OUdy4FfGCBOQVMX6It9Nl1fVXC4oNywnmtGqQ/HfHVAxJRjRlpiMCfiX
 EKhqKNi1YvY2+ov6hRWhtaBU8gWoHjZSi+pGOg7JrMLWXOvURQkIbPURCztfyS/Xw4bt
 DyHQ==
X-Gm-Message-State: APjAAAVL8nyS22PTcnKQFKm/2sajV3rkyb9LQCl3djDSZDPev1mPZr0w
 Y8xbkCvyonqLdI9hcYvarRRHx7R2DB9sZbgq1NgeZQ==
X-Google-Smtp-Source: APXvYqx805jmPo8VHAsRlCrZNa/kcCKR4OCGjQGESJe53coWOq1Pl+O2jcTSmmU10SWnzcKLL42iZZHVZ6OE3UD6Fhk=
X-Received: by 2002:a02:c6a9:: with SMTP id o9mr9167467jan.90.1561695312103;
 Thu, 27 Jun 2019 21:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <1560534144-13896-1-git-send-email-gkulkarni@marvell.com>
 <1560534144-13896-2-git-send-email-gkulkarni@marvell.com>
 <20190627100118.nfveq4oktomqybtx@willie-the-truck>
 <20190627162236.y3wb5sle6yjbwtzm@willie-the-truck>
In-Reply-To: <20190627162236.y3wb5sle6yjbwtzm@willie-the-truck>
From: Ganapatrao Kulkarni <gklkml16@gmail.com>
Date: Fri, 28 Jun 2019 09:45:00 +0530
Message-ID: <CAKTKpr59+D4NV-eN61UsHGHwgaT2ikKcpVqEMt8VaFg-DSZ4kQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] Documentation: perf: Update documentation for
 ThunderX2 PMU uncore driver
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_211513_417975_C96F5133 
X-CRM114-Status: GOOD (  19.51  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, jglauber@marvell.com,
 "corbet@lwn.net" <corbet@lwn.net>, "Will.Deacon@arm.com" <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 rrichter@marvell.com, jnair@marvell.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Thu, Jun 27, 2019 at 9:52 PM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Jun 27, 2019 at 11:01:18AM +0100, Will Deacon wrote:
> > On Fri, Jun 14, 2019 at 05:42:45PM +0000, Ganapatrao Kulkarni wrote:
> > > From: Ganapatrao Kulkarni <ganapatrao.kulkarni@marvell.com>
> > >
> > > Add documentation for Cavium Coherent Processor Interconnect (CCPI2) PMU.
> > >
> > > Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
> > > ---
> > >  Documentation/perf/thunderx2-pmu.txt | 20 +++++++++++---------
> > >  1 file changed, 11 insertions(+), 9 deletions(-)
> > >
> > > diff --git a/Documentation/perf/thunderx2-pmu.txt b/Documentation/perf/thunderx2-pmu.txt
> > > index dffc57143736..62243230abc3 100644
> > > --- a/Documentation/perf/thunderx2-pmu.txt
> > > +++ b/Documentation/perf/thunderx2-pmu.txt
> > > @@ -2,24 +2,26 @@ Cavium ThunderX2 SoC Performance Monitoring Unit (PMU UNCORE)
> > >  =============================================================
> > >
> > >  The ThunderX2 SoC PMU consists of independent, system-wide, per-socket
> > > -PMUs such as the Level 3 Cache (L3C) and DDR4 Memory Controller (DMC).
> > > +PMUs such as the Level 3 Cache (L3C), DDR4 Memory Controller (DMC) and
> > > +Cavium Coherent Processor Interconnect (CCPI2).
> > >
> > >  The DMC has 8 interleaved channels and the L3C has 16 interleaved tiles.
> > >  Events are counted for the default channel (i.e. channel 0) and prorated
> > >  to the total number of channels/tiles.
> > >
> > > -The DMC and L3C support up to 4 counters. Counters are independently
> > > -programmable and can be started and stopped individually. Each counter
> > > -can be set to a different event. Counters are 32-bit and do not support
> > > -an overflow interrupt; they are read every 2 seconds.
> > > +The DMC, L3C support up to 4 counters and CCPI2 support up to 8 counters.
> >
> > The DMC and L3C support up to 4 counters, while the CCPI2 supports up to 8
> > counters.
> >
> > > +Counters are independently programmable and can be started and stopped
> > > +individually. Each counter can be set to a different event. DMC and L3C
> > > +Counters are 32-bit and do not support an overflow interrupt; they are read
> >
> > Counters -> counters
> >
> > > +every 2 seconds. CCPI2 counters are 64-bit.
> >
> > Assuming CCPI2 also doesn't support an overflow interrupt, I'd reword these
> > two sentences as:
> >
> >   None of the counters support an overflow interrupt and therefore sampling
> >   events are unsupported. The DMC and L3C counters are 32-bit and read every
> >   2 seconds. The CCPI2 counters are 64-bit and assumed not to overflow in
> >   normal operation.
>

Thanks for the comments, will update in v2.
Yes, CCPI2 is 64bit counter and there is no overflow issue.

> Mark reminded me that these are system PMUs and therefore sampling is
> unsupported irrespective of the presence of an overflow interrupt, so you
> can drop that part from the text.

sure.
>
> Sorry for the confusion,
>
> Will

Thanks,
Ganapat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
