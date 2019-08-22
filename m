Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9495A98A1C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 06:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVrEC7eSp+qbM/tniikvdDGbaRpRQHkD6E8vM6ThDCw=; b=gts+lbd8PfhVQ3
	vEjsq5QFXEiTnzpDuUFtQoqMvbPLLcgmjjYJJwDeY8l8l6yaGMZZYpnUtRLEEBm+EX3IZRpm3L8Ch
	4505qndF7HwkRk4dRjKFBWRadh4L6pcpevCcjur8duw0287SqE31n9mLQbibvSryV/34/IzgvpCQT
	bbk8E4CtqDVGIff1vublz8YMJ1Rf7dIrl+tsLCMlZN9Y1iNUn2MduBfUGLhLkgvaoI9fegwRUWKfU
	j1C83D/RcXma85XnDWDseNn4U/lOoi7RQ3fLRtMLiqIw/RnixmhnzoHRDbhrjXb7gje3ovnhLlhfJ
	rhnRf76aP74O7JYtpiig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0eHj-00079y-S8; Thu, 22 Aug 2019 04:01:15 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0eHd-000763-Bz
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 04:01:10 +0000
Received: by mail-io1-xd44.google.com with SMTP id e20so9078470iob.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 21:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BybcKrDqDsV1vLqaW8rNec228gnkGTbH03h7q1YFv58=;
 b=Y7vQ3Zm+wj8+Yuzw3JUYDonuE6oRk7m8wI4gRuWHwKlAAMlW717d5+hrRvZn9ANlMc
 8mI6Mhx7E1KK8+LRauJkSBRDFUAMFm3T0YTvhsKOZS0eLrltn96jn57ZJw/sVyFIsNkj
 A7i+7VkiC1VDAve32spDxJwfpP65doQtBTAzBnaKGNmcczqaTmixrA4tLXTuOdR6mI6h
 fcCcSZ4LAZyu3erb/LqIpUpiQowiccIrAOp5Q02/uTbLqRkS9d/xiMnf25aSBrHr8N8X
 redTAM3ldbRT7bBIQLLPNBw2cg0O7HvhxawnZOekNdCDkej+HNc30U1TI4PGTz3eCol9
 TEzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BybcKrDqDsV1vLqaW8rNec228gnkGTbH03h7q1YFv58=;
 b=kj37Dpq9QBAoHR0fuNcimNyBpvfJnFvrY+z4TL5WLtiH9jNcVSqMkjo9QJ2jQiS1CH
 C4swRZFsUgJ3E4M9zzCZfA8PNjHyvMJw+GeeWZ6mbimJRg/m6B888+q+acKC/KlMw7RC
 KAmhx+N4qRmAzYj2W68uIx/Ar7KiHwwD7m+zstAA3MJZmAuEmJ59pnzaCd8p1MIwdZ1m
 hyOE2hhv4uYORtpFnzMX1X5Tsov51OeUMsCJUg3NTmaNb2F4gBpeIfeKJj8YyN1gr6Gt
 xQZ9EJ7sOY5nSR7zle92njTq+f4EEUxrUY3atIPg4P2gf144RSFhHLNj9J9Ga1S4ePBl
 FxAg==
X-Gm-Message-State: APjAAAWw2Jgd1RrE4dDDIPz+uvtQpsuU/cc77nZ2nrKmeaVkixTKEzbW
 qfHlpe+RUhcbY2BN31C6ZrWUAejvHuozeSTg7qs=
X-Google-Smtp-Source: APXvYqxTBiRXARJgZzQt0mN0CCKgd09Sfxj9MwGfaPw58BNsM2WnEWudKSMOy2KZVA6yswYrCsPxKMh7jPQrukzwxks=
X-Received: by 2002:a02:b713:: with SMTP id g19mr13929241jam.77.1566446467556; 
 Wed, 21 Aug 2019 21:01:07 -0700 (PDT)
MIME-Version: 1.0
References: <1563873380-2003-1-git-send-email-gkulkarni@marvell.com>
 <1563873380-2003-3-git-send-email-gkulkarni@marvell.com>
 <20190812120125.GA50712@lakrids.cambridge.arm.com>
 <CAKTKpr7juHd9Bgam28LESadihFadEAevRAhc-7w3PTMYY7HLNw@mail.gmail.com>
 <20190813110345.GD866@lakrids.cambridge.arm.com>
 <20190821165339.7gu4rxkvdjcr4mta@willie-the-truck>
In-Reply-To: <20190821165339.7gu4rxkvdjcr4mta@willie-the-truck>
From: Ganapatrao Kulkarni <gklkml16@gmail.com>
Date: Thu, 22 Aug 2019 09:30:56 +0530
Message-ID: <CAKTKpr48Cmcs8u81EZeMMndP1XwaNOMCE-r00vhE6ysK3CUsrw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_210109_437233_9B66D951 
X-CRM114-Status: GOOD (  28.23  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Ganapatrao Kulkarni <gkulkarni@marvell.com>, "corbet@lwn.net" <corbet@lwn.net>,
 Jan Glauber <jglauber@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 10:23 PM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Aug 13, 2019 at 12:03:45PM +0100, Mark Rutland wrote:
> > On Tue, Aug 13, 2019 at 04:25:15PM +0530, Ganapatrao Kulkarni wrote:
> > > On Mon, Aug 12, 2019 at 5:31 PM Mark Rutland <mark.rutland@arm.com> wrote:
> > > >
> > > > On Tue, Jul 23, 2019 at 09:16:28AM +0000, Ganapatrao Kulkarni wrote:
> > > > > CCPI2 is a low-latency high-bandwidth serial interface for connecting
> > > > > ThunderX2 processors. This patch adds support to capture CCPI2 perf events.
> > > >
> > > > It would be worth pointing out in the commit message how the CCPI2
> > > > counters differ from the others. I realise you have that in the body of
> > > > patch 1, but it's critical information when reviewing this patch...
> > >
> > > Ok, I will add in next version.
> > > >
> > > > >
> > > > > Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
> > > > > ---
> > > > >  drivers/perf/thunderx2_pmu.c | 248 ++++++++++++++++++++++++++++++-----
> > > > >  1 file changed, 214 insertions(+), 34 deletions(-)
> > > > >
> > > > > diff --git a/drivers/perf/thunderx2_pmu.c b/drivers/perf/thunderx2_pmu.c
> > > > > index 43d76c85da56..a4e1273eafa3 100644
> > > > > --- a/drivers/perf/thunderx2_pmu.c
> > > > > +++ b/drivers/perf/thunderx2_pmu.c
> > > > > @@ -17,22 +17,31 @@
> > > > >   */
> > > > >
> > > > >  #define TX2_PMU_MAX_COUNTERS         4
> > > >
> > > > Shouldn't this be 8 now?
> > >
> > > It is kept unchanged to 4(as suggested by Will), which is same for
> > > both L3 and DMC.
> > > For CCPI2 this macro is not used.
> >
> > Hmmm....
> >
> > I disagree with that suggestion given that this also affects the
> > active_counters bitmap size (and thus it is not correctly sized as of
> > this patch), and it doesn't really save us much.
> >
> > I think it would be better to bump this to 8 and always update the
> > events array, even though it will be unused for CCPI2. That's less
> > surprising, needs fewer special-cases, and we can use the hrtimer
> > function pointer alone to determine if we need to do any hrtimer work.
>
> tbf, my complaint was actually about some macros applying to the whole
> PMU whilst others refer only to DMC/L3C and this not being apparent from
> the naming:
>
> https://lkml.org/lkml/2019/6/27/250
>
> so I'm fine having TX2_PMU_DMC_L3C_MAX_COUNTERS and
> TX2_PMU_CCPI2_MAX_COUNTERS, but that sort of naming needs to be consistent
> unless the macro/definition really applies to both. That fed the suggestion
> that GET_EVENTID could be generic and switch on the event type internally
> instead of at the caller.

Thanks Will for the clarification.
I will send new version with changes as suggested.

>
> Will

Thanks,
Ganapat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
