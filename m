Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E82CE6D12B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 17:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FapGZdyqlCd1QmKX38/M37CVdTCdUCPMobsdwS3KOzo=; b=TCuQmw04PNEDW2
	8mEkKpP/kRCq4LuaafBjZ4jzVu7c48+x/WDKlTMQRuqdd166aj8lqB+tBGpkbXL17YEbmOvQdPu1W
	nHmjp0UV3hEEC/EBxO5IN0mWR3YjMFY3SbxG/Mm9cVQ5zPRlCoOKy507uTJdppAASq9Ly7NLK22oG
	Ax8kFGJXoW4YKCjWszui6EbjC5RsqEqdQ7WmXRUH9HPqHWQY/bn06hVmgFOl29Nm/3jLCMhyHXMhJ
	fdbyLe78svzco+yhF632C4x9d9GBVFIKP0xOtMNR+AAB+l2U9bSpsnyDn5f8al4DRfaOv85ErFfVq
	pS5OOw1ZQRdZNkpasbJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho8NS-0003Yz-Vz; Thu, 18 Jul 2019 15:31:27 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho8NF-0003YF-1x
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 15:31:14 +0000
Received: by mail-io1-xd42.google.com with SMTP id h6so52064616iom.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 08:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aKCPVJWUs1Jjo618+zN06BNfCZDhzZnUlux4ybl+pq0=;
 b=Sm2v261v5xekTmZUZ6N0X1DwSi7Qx28ytpUwnL6RR4/HA9RM1I1uHbxQ5Tr2RsDxnF
 uHfozpBvobDMz50HATWjhVmujLg+klkHLJ9pvtoaL0bSj4Xbwt0hy+2s95Bt9PrLwjHP
 9WrW9oAO56vn4LHlOWXQZlyF01y48G0k5vnVYgdbvDJLuIe7VXgftZScWAzSwPg4upTL
 MB0EMRjd0/GafWtn+YldSQCyNyizBD/TzUOX5f+PsG2DaEIfWwVFdiK2B/TZ6sY4lWjl
 Qi26tf9hfQYQ+MtdpFd3yi9DfJfOtWqxINoykwaPsPDhZbGjJpNY3h2J1aupKeY6xiGH
 YSKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aKCPVJWUs1Jjo618+zN06BNfCZDhzZnUlux4ybl+pq0=;
 b=JQ0dDcrUUk7gLjA054iSGKtBHzRjPFpYBw4qEOQ3kBh1HYEF3/SIxVrUnHjvz42blt
 NjHMAIjMvzvnV3iDk20d3Qf6vtQBanyvpmmlTyyg0GzYafmmYKnd5yoCB/Vb0isbtfE8
 jlUL6q2adqZkDjDwM7fdg0ZLVcSpQkQSbeP2ZP2ztQKGY5BcUyrQb4lrMlbG9PeRsq1q
 8oMTkzoLnSjX3lni1avmxXv9s3dHZjiJsRFD//eNTkkM5oV4Sj7BQsTWp8BAVY/ITyQx
 eb7Tg2HmxPgqMWI8SMTgiCu6ot5uKPQECYKHERwhAopN5qdc+6U9LQ5wTbdRx/7VSNy8
 VCzQ==
X-Gm-Message-State: APjAAAW8ktYEIBEPsrSuXZnnzKcZWDsr1xsBfC4Lll53PMwJkionmie0
 GxWKg6fvSGOyKH5aqSHTV7ASth+8VU70oU5HO6gtfg==
X-Google-Smtp-Source: APXvYqzG2U1bPJ/OOAVgRh5Mkg7P6+I1KqVOXN4mBoflGrY+UlQJR3tPL8mnMgJRePKuw3SKg/qvS4IJ79JZmTu478c=
X-Received: by 2002:a05:6638:517:: with SMTP id
 i23mr48290113jar.71.1563463871438; 
 Thu, 18 Jul 2019 08:31:11 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <2fa725fbc09306f1a95befc62715a708b4c0fad0.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <20190717170050.GB4271@xps15>
 <f28d9c8f-017c-c990-2f00-0ef5a62f3b40@codeaurora.org>
In-Reply-To: <f28d9c8f-017c-c990-2f00-0ef5a62f3b40@codeaurora.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 18 Jul 2019 09:31:00 -0600
Message-ID: <CANLsYkx9X36OJmczNK1255y8fKJfkyVq1zyQUDihqMewcU6Kxw@mail.gmail.com>
Subject: Re: [PATCHv8 3/5] arm64: dts: qcom: msm8996: Add Coresight support
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_083113_099410_953FEFB8 
X-CRM114-Status: GOOD (  16.82  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 17 Jul 2019 at 23:47, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Hi Mathieu,
>
> On 7/17/2019 10:30 PM, Mathieu Poirier wrote:
> > On Fri, Jul 12, 2019 at 07:46:25PM +0530, Sai Prakash Ranjan wrote:
> >> From: Vivek Gautam <vivek.gautam@codeaurora.org>
> >>
> >> Enable coresight support by adding device nodes for the
> >> available source, sinks and channel blocks on msm8996.
> >>
> >> This also adds coresight cpu debug nodes.
> >>
> >> Signed-off-by: Vivek Gautam <vivek.gautam@codeaurora.org>
> >> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> >> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> >> Acked-By: Suzuki K Poulose <suzuki.poulose@arm.com>
> >> ---
> >>   arch/arm64/boot/dts/qcom/msm8996.dtsi | 434 ++++++++++++++++++++++++++
> >>   1 file changed, 434 insertions(+)
> >>
> >
> > We've gone trhough 8 iteration of this set and I'm still finding checkpatch
> > problems, and I'm not referring to lines over 80 characters.
> >
>
> I only get below 2 checkpatch warnings:
>
> If you are talking about the below one, then it was not added manually.
> It was taken automatically when I pulled in the v7. Should I be
> resending this patch for this?

That depends if you want David and Andy to pickup your patches - I am
sure they'll point out exactly the same thing.

>
> $ ./scripts/checkpatch.pl -g 2fa725fbc09306f1a95befc62715a708b4c0fad0
> WARNING: 'Acked-by:' is the preferred signature form
> #14:
> Acked-By: Suzuki K Poulose <suzuki.poulose@arm.com>
>
> WARNING: line over 80 characters
> #154: FILE: arch/arm64/boot/dts/qcom/msm8996.dtsi:763:
> +                       compatible = "arm,coresight-dynamic-replicator",
> "arm,primecell";
>
> total: 0 errors, 2 warnings, 440 lines checked
>
>
> -Sai
>
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
