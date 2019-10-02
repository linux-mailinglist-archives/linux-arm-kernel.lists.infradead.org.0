Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D626EC8C44
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 17:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+wy2CfFS6B+q/FpPqsUj0YPcio8vdCDFQ8fNJRiWNJE=; b=g31vd2NCQJSQgX
	Z1DjZpeaURQBzlcKlFsJ64pD9bPYIBy5bASO+5GlyMya38X0u20/+LNM8PZxI03Tagzvzy5fNHXq9
	rumHyCAH5/FCkhnOoMTHXcmTJajP0FHsrTGU4+YHq4tDru9CCw1fi2PRw753OGo0x4/GuM8ZlgDHT
	ENMUxe9edSLFOytNPmHq/S2KMOPCcNBysgsPC5imv9Gr+gOWFzx6vOFzrt8LCYTPa9ghQR0XFSTS1
	h08NgWN931vNf0IYyiGzdPzPFUlJ5J6WoWRQYa2r22yf3Hp6kAQJiEauD6DmMdXiQ5p8oYK+NPZLD
	gqrwoYi/Y/hc+7Wlsx3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFgAv-0000ab-Dk; Wed, 02 Oct 2019 15:04:21 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFgAn-0000Zg-KS
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 15:04:15 +0000
Received: by mail-io1-xd43.google.com with SMTP id z19so57778817ior.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 08:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wKEiSm5kf8Odz4O9V4syYYT9QXFs1CapfQip+K78N1Q=;
 b=UJCV21vcbOZDpnikF0Nwo722YgIaKo9iQ9l5Wdq2Q+hCARQ293ZG3YmIr2Dum7pslG
 YoF/4cJ+g6nR9uscySy3q/XQJgppI9+Ylh8HwkJhA7ND0phejKf4nys1J//ydAoNV/xR
 rpYfpdRISzWZRu8ikWhqck9OBuFxFR8LijNMWYuOcqkj0cTlVqcCK8q8oFtLsC64NtOi
 yLgChFxA96KayDjMnrUM+aIq8OBz272fah8XMV8IkIEFyMBUq+cK+VOylxZeoJ+Ym5Fn
 CUyCShhE6T0ksjHT/D4AsGkHiZKXpE4tA3aMcILeIqmHd4y3TNB8Q+/Z/7OFVoXKtVX4
 BmfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wKEiSm5kf8Odz4O9V4syYYT9QXFs1CapfQip+K78N1Q=;
 b=Sanje8uqwTjVO9gjHrFhKTeJFSwRrIEp2Q/vIuZwpskI1Mw/sKHqvIayREDpQH6SYU
 q2z/tcDR60U70j49k3mzE8+utLRALILaiGnY5Ec7nIiQINL0HmH278LxHb3zPr+aSt2O
 8GpXV8eI+XBW3U8x2txW6wpZ+fCFvd+fLHuIvJ4C4kCRIx2hnNR/q6PLz/PuppY6KYoe
 9Yp/YEIYP5mGcV1pF87Qg1PkKXtVyYTi5DKovI4obV1gufvY9oYnyCS1TPLQF+QaA540
 e9/F4Wxz6aokudEdDsAJHcPuhPmNgTd9dgMV7mDuhbP64NAMgY9okB1voUL3GHZUBSsl
 fXfg==
X-Gm-Message-State: APjAAAVlgyi1kLU35wnfVA3yLsvGcvSf6gNTlidZnpGLFPVzXgl0l/G0
 +sfnGdqe2aN2PNmBsNDSNmkvaGFhn9NePhKIjjfU8w==
X-Google-Smtp-Source: APXvYqz1KIa6msDQH9/EUGNRzs/VxrbR5gsZHhC/HB4q6k5M7vEahIK1t6Bzcy+BgoRBZDsMoygEHQdD7XiVP7sf82M=
X-Received: by 2002:a6b:6b06:: with SMTP id g6mr3755891ioc.72.1570028650863;
 Wed, 02 Oct 2019 08:04:10 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <90114e06825e537c3aafd3de5c78743a9de6fadc.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <CAOCk7NrK+wY8jfHdS8781NOQtyLm2RRe1NW2Rm3_zeaot0Q99Q@mail.gmail.com>
 <16212a577339204e901cf4eefa5e82f1@codeaurora.org>
 <CAOCk7NohO67qeYCnrjy4P0KN9nLUiamphHRvj-bFP++K7khPOw@mail.gmail.com>
 <fa5a35f0e993f2b604b60d5cead3cf28@codeaurora.org>
 <CAOCk7NodWtC__W3=AQfXcjF-W9Az_NNUN0r8w5WmqJMziCcvig@mail.gmail.com>
 <5b8835905a704fb813714694a792df54@codeaurora.org>
In-Reply-To: <5b8835905a704fb813714694a792df54@codeaurora.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 2 Oct 2019 09:03:59 -0600
Message-ID: <CANLsYkxPOOorqcnPrbhZLzGV9Y7EGWUUyxvi-Cm5xxnzhx=Ecg@mail.gmail.com>
Subject: Re: [PATCHv9 2/3] arm64: dts: qcom: msm8998: Add Coresight support
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_080413_683869_25AFA6A7 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-msm-owner@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 1 Oct 2019 at 12:05, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> On 2019-10-01 11:01, Jeffrey Hugo wrote:
> > On Tue, Oct 1, 2019 at 11:52 AM Sai Prakash Ranjan
> > <saiprakash.ranjan@codeaurora.org> wrote:
> >>
> >>
> >> Haan then likely it's the firmware issue.
> >> We should probably disable coresight in soc dtsi and enable only for
> >> MTP. For now you can add a status=disabled for all coresight nodes in
> >> msm8998.dtsi and I will send the patch doing the same in a day or
> >> two(sorry I am travelling currently).
> >
> > This sounds sane to me (and is what I did while bisecting the issue).
> > When you do create the patch, feel free to add the following tags as
> > you see fit.
> >
> > Reported-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> > Tested-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
>
> Thanks Jeffrey, I will add them.
> Hope Mathieu and Suzuki are OK with this.

The problem here is that a debug and production device are using the
same device tree, i.e msm8998.dtsi.  Disabling coresight devices in
the DTS file will allow the laptop to boot but completely disabled
coresight blocks on the MTP board.  Leaving things as is breaks the
laptop but allows coresight to be used on the MTP board.  One of three
things can happen:

1) Nothing gets done and production board can't boot without DTS modifications.
2) Disable tags are added to the DTS file and the debug board can't
use coresight without modifications.
2) The handling of the debug power domain is done properly on the
MSM8998 rather than relying on the bootloader to enable it.
3) The DTS file is split or reorganised to account for debug/production devices.

Which of the above ends up being the final solution is entirely up to
David and Andy.

Regards,
Mathieu

>
> Thanks,
> Sai

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
