Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A981EC3F3C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCRYMt5hiPLMR018D5ubUzVDCqlsTz6+QkkTsFjWMds=; b=cdnOjgFekidpVI
	gVhAmkGX3jU829kUXb9RbIAm2SQzksE23ATiw37aVc+dwk1u8bHtX3vNBbAL8K/54X2EVCSqyRSCR
	rgKa2JlLMRfY8IvvTaNuXABqUrU1YP/jCcPEq2LL0zIozJB1LHkQWhLYoa15gscivAXhA+wQjo/Uo
	9We39cHCnhT/l96IS9VKXhTsNlTfPpo1GoB/5iWwSC2bRan2WygHJHJXoCIXpvwqre2ol8/4PuI4s
	tLGilm6jUpKZMkI4wa1Y4YizbMsHvnP+v1a8x8/RgosKcQHMOC2QrMuFLmfdyFjPG2bGxh+fstgiC
	uT1x2rWg18/iGyQUogOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFMSn-0000Tf-UI; Tue, 01 Oct 2019 18:01:29 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFMSh-0000Sz-DO
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:01:24 +0000
Received: by mail-io1-xd42.google.com with SMTP id h144so50259722iof.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e3ZpzW2TyFiOL+UNzjwCdjiPvcI1e9f1za2Ko3AAr0s=;
 b=rEjkaQmYsYDQCb6ctDX5gQepVnjXhbo4zSgtC17Bwz2P4Q/3UWeESJs9t+DbKzJRkE
 h2icO+Bym55hSufk12IbuzwRuxR4xcF824kYTgNkdTUMu7rukY0cRYSmcS5ev/sjJKCu
 JI1zgWFNKorMTLZ/lV97yJnIzK6nOEUVzkF5vKeCHEsiOPbEodIM5IFTDcKIa7xYbP9Z
 L0NRlgr6Pnm/4sQrFdn0EUSZRxmN51s6WWAqmyfAdrz+pCxscd6ct7HHWopSfH+rfTz6
 Wj+yPETwqLPP9IqU2DERuq2e/QvlWjFsEOdq/lRm2uFEwZS8ryDRF2Qimn7qTQD8JFsg
 liRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e3ZpzW2TyFiOL+UNzjwCdjiPvcI1e9f1za2Ko3AAr0s=;
 b=UC/1/mxiZ5fycEK4LSsJLCznF+1kNYEUayR3kB+mHx2DsJPApnMScJ/nPMFWP5FblY
 zCT0KQ7JI0VMvnBp7Bt33Rk+/6iNIEgOds/t/PQkihgvec+E9wHWM+R9fte71T9gaAtl
 bmzXi6NaOHycQ5PpBp1viN+Fd6+Pxdt2l8g9TZGznmTDEVqi6lY70jKS6RKh11o37UYV
 A+vAw8AyIS4B9TSEvJ8iHi1hambhRTBrtq+2Suv/g+gqKbwcDnEmdqbV5jPdvLzGiBVr
 umYpqIBam5eMF1A8PXCfW3hmW3IGtus7Vlh3KB1hDOKONSURHX5vMvcM0nMGbGFEcYtP
 6Cug==
X-Gm-Message-State: APjAAAX+zx3EXnORQigFh6uSKLdMhv94A33stiQU3poTKFR6SfCmeQba
 KmxTzzDBI0gnJ0OV9MKJu16edcArklPNRESAO+s=
X-Google-Smtp-Source: APXvYqxotoq/8hGS9XgSO6JelXixa5l0w10bNwBRyvjvkP91TkYP1WblQo3zRuYvlhJRnSm4XrDvkt4p1Lkv3X5Q30g=
X-Received: by 2002:a6b:90c4:: with SMTP id s187mr6632690iod.178.1569952882448; 
 Tue, 01 Oct 2019 11:01:22 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <90114e06825e537c3aafd3de5c78743a9de6fadc.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <CAOCk7NrK+wY8jfHdS8781NOQtyLm2RRe1NW2Rm3_zeaot0Q99Q@mail.gmail.com>
 <16212a577339204e901cf4eefa5e82f1@codeaurora.org>
 <CAOCk7NohO67qeYCnrjy4P0KN9nLUiamphHRvj-bFP++K7khPOw@mail.gmail.com>
 <fa5a35f0e993f2b604b60d5cead3cf28@codeaurora.org>
In-Reply-To: <fa5a35f0e993f2b604b60d5cead3cf28@codeaurora.org>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Tue, 1 Oct 2019 12:01:11 -0600
Message-ID: <CAOCk7NodWtC__W3=AQfXcjF-W9Az_NNUN0r8w5WmqJMziCcvig@mail.gmail.com>
Subject: Re: [PATCHv9 2/3] arm64: dts: qcom: msm8998: Add Coresight support
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_110123_476978_8B907E02 
X-CRM114-Status: GOOD (  21.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rajendra Nayak <rnayak@codeaurora.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 11:52 AM Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> On 2019-10-01 10:14, Jeffrey Hugo wrote:
> > On Tue, Oct 1, 2019 at 11:04 AM Sai Prakash Ranjan
> > <saiprakash.ranjan@codeaurora.org> wrote:
> >>
> >> On 2019-10-01 09:13, Jeffrey Hugo wrote:
> >> > Sai,
> >> >
> >> > This patch breaks boot on the 835 laptops.  However, I haven't seen
> >> > the same issue on the MTP.  I wonder, is coresight expected to work
> >> > with production fused devices?  I wonder if thats the difference
> >> > between the laptop and MTP that is causing the issue.
> >> >
> >> > Let me know what I can do to help debug.
> >> >
> >>
> >> I did test on MSM8998 MTP and didn't face any issue. I am guessing
> >> this
> >> is the same issue which you reported regarding cpuidle? Coresight ETM
> >
> > Yes, its the same issue.  Right now, I need both patches reverted to
> > boot.
> >
> >> and cpuidle do not work well together since ETMs share the same power
> >> domain as CPU and they might get turned off when CPU enters idle
> >> states.
> >> Can you try with cpuidle.off=1 cmdline or just remove idle states from
> >> DT to confirm? If this is the issue, then we can try the below patch
> >> from Andrew Murray for ETM save and restore:
> >>
> >> https://patchwork.kernel.org/patch/11097893/
> >
> > Is there still value in testing this if the idle states are removed,
> > yet the coresight nodes still cause issues?
> >
> > Funny enough, I'm using the arm64 defconfig which doesn't seem to
> > select CONFIG_CORESIGHT, so I'm not even sure what would be binding to
> > the DT devices...
> >
>
> Haan then likely it's the firmware issue.
> We should probably disable coresight in soc dtsi and enable only for
> MTP. For now you can add a status=disabled for all coresight nodes in
> msm8998.dtsi and I will send the patch doing the same in a day or
> two(sorry I am travelling currently).

This sounds sane to me (and is what I did while bisecting the issue).
When you do create the patch, feel free to add the following tags as
you see fit.

Reported-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Tested-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
