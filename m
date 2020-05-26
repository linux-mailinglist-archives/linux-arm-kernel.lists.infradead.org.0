Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8321E2FDE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 22:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKZo4p3XYhgtFF0CMzNz2xkXsVuEqDZal1fMKc6Qa5I=; b=H5M7IyhlVenh2B
	uLlUZIL+8XaIMahtlUj4lItXSaaN+yggc0GWhYW7mJe8BEDlrdpbwJB/3P9//lFbbhmS1uUPq6Obe
	iYjjpAtBtZFnFINI41tiHfemQ3T4PeheaiyITmA3YVZvt90KP9IHswpJUSMmBe7tbb5Y3VFfj3GUn
	ugyMPkc0Y7jg/VFELXAX/+OnCOm1c7+4uw8kJjo2RyvkMIi9dvWyscLMmMJ47j3iSaUAm2izxp82s
	8EbI2uCqcErdFlTtgpxFd4/px0RVORHwt9nyWJHfCuFtczl413RFZEViLvJ0pPgD4HB4Wtl+7GeJz
	yeZdF33MJvnkaJDHCPrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdg3C-0007aT-Ih; Tue, 26 May 2020 20:19:50 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdg31-0007Zp-9Q
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 20:19:40 +0000
Received: by mail-qt1-x841.google.com with SMTP id z1so5207550qtn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 13:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:user-agent:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc:from:message-id;
 bh=eGrZ5Z25UeU34jwZ5F+ogfpWW5+KOBdpUEpF//oRRUo=;
 b=Tsy3AxraLmkuCWRExRuWlKbMpIxdip3P/SJeZZ8Mmral4GykuahocEMfZKJ3sj9C3C
 HCkmBttZHZtlA4y1DSU2J8LtgTcbtguDrqAFOqgakTh/rnh7XO/mdPXkv6onuCj+Yooe
 7BOgGmEwm/cM/Lbt4IkeZG54NgMI7R12XsDyPzTyeSPoAODR3TtyyC1JBppXB2JYO2Vj
 MBpFTDyEefx6iC87BPF++SifQ1tajkq0B6p/+x6buRv/vUcOLxcatYZWrrKohFqY1Aa2
 AKeGo0yc53BE44MllPloHMZ5oAA1EcIkZu1q48zqFTpTCwmhfNehf6jyzexQI6cBDJIH
 bH2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:user-agent:in-reply-to:references
 :mime-version:content-transfer-encoding:subject:to:cc:from
 :message-id;
 bh=eGrZ5Z25UeU34jwZ5F+ogfpWW5+KOBdpUEpF//oRRUo=;
 b=gHE3HX8/n7CwOF8T86/STdlxC2NepJjYexXQ+stkthr9E8IBEJFixI6gl11NcRai8A
 QVpmNH5C5ItyaC+jKeVbQxeMs2OYb5w032YdCTXT5aTxQ++v4SFIud20JgAInfyKn9H+
 VH3VRXkGiWJtov7Bx4naYeLCdMB06ljY1amwFI0y+7J6UyndgcCiDG0Z3b+RT6S8Ozwg
 yiyxJn1rWA8RNjLyyxa5rzu5u5DHJx3+Pm8yjvg+y2+JqpVKdf2yK4VlsHVYgRE2ahg7
 2Lc3WyqcLH8rhcoNKmqrkR+8zVWVPMr1Ev96OtN+LlhLm36iXlZ7zkG2NNLQpFQ9vzvn
 MKqA==
X-Gm-Message-State: AOAM530kmWkWVN3d/nPm5wpwu3TumWqozGwE0Hqd0EuCmHd/BbjA7ddW
 qQyiQSzn1G+YlOjNLqhAZQo=
X-Google-Smtp-Source: ABdhPJzmCku52w9qpYj0l+eU4ivinCEblkCigYkaMpQxkUIQEzDHH2JDK6SFJNGu1ihmsrgw1aiPfw==
X-Received: by 2002:ac8:6f1a:: with SMTP id g26mr613532qtv.121.1590524377267; 
 Tue, 26 May 2020 13:19:37 -0700 (PDT)
Received: from [192.168.86.185] ([179.97.37.151])
 by smtp.gmail.com with ESMTPSA id m33sm630032qte.17.2020.05.26.13.19.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 26 May 2020 13:19:36 -0700 (PDT)
Date: Tue, 26 May 2020 17:18:58 -0300
User-Agent: K-9 Mail for Android
In-Reply-To: <20200526195438.GC2206@willie-the-truck>
References: <20200504115625.12589-1-leo.yan@linaro.org>
 <20200522030919.GE32389@leoy-ThinkPad-X240s>
 <20200526102602.GA27166@willie-the-truck>
 <20200526104337.GA7154@leoy-ThinkPad-X240s>
 <20200526195438.GC2206@willie-the-truck>
MIME-Version: 1.0
Subject: Re: [PATCH v7 0/3] perf arm-spe: Add support for synthetic events
To: Will Deacon <will@kernel.org>,Leo Yan <leo.yan@linaro.org>
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Message-ID: <A92F8BED-232A-4645-9786-941469BCC9F3@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_131939_329485_8D3FFEEE 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [arnaldo.melo[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On May 26, 2020 4:54:39 PM GMT-03:00, Will Deacon <will@kernel.org> wrote:
>On Tue, May 26, 2020 at 06:43:37PM +0800, Leo Yan wrote:
>> On Tue, May 26, 2020 at 11:26:03AM +0100, Will Deacon wrote:
>> > On Fri, May 22, 2020 at 11:09:19AM +0800, Leo Yan wrote:
>> > > On Mon, May 04, 2020 at 07:56:22PM +0800, Leo Yan wrote:
>> > > > This patch set is to support synthetic events with enabling Arm
>SPE
>> > > > decoder.  Since before Xiaojun Tan (Hisilicon) and James Clark
>(Arm)
>> > > > have contributed much for this task, so this patch set is based
>on their
>> > > > privous work and polish for the version 7.
>> > > > 
>> > > > The main work in this version is to polished the core patch
>"perf
>> > > > arm-spe: Support synthetic events", e.g. rewrite the code to
>calculate
>> > > > ip, packet generation for multiple types (L1 data cache, Last
>level
>> > > > cache, TLB, remote access, etc).  It also heavily refactors
>code for
>> > > > data structure and program flow, which removed unused fields in
>> > > > structure and polished the program flow to achieve neat code as
>> > > > possible.
>> > > > 
>> > > > This patch set has been checked with checkpatch.pl, though it
>leaves
>> > > > several warnings, but these warnings are delibarately kept
>after
>> > > > reviewing.  Some warnings ask to add maintainer (so far it's
>not
>> > > > necessary), and some warnings complaint for patch 02 "perf
>auxtrace:
>> > > > Add four itrace options" for the text format, since need to
>keep the
>> > > > consistency with the same code format in the source code, this
>is why
>> > > > this patch doesn't get rid of checkpatch warnings.
>> > > 
>> > > Gentle ping ...
>> > > 
>> > > It would be appreciate if can get some review for this patch set.
>> > 
>> > I was hoping that James Clark would have a look, since he was the
>last
>> > person to go near the userspace side of SPE.
>> 
>> Yes, I have offline synced with James and James has verified this
>> patch set at his side.
>> 
>> I don't want to rush to ask Arnaldo to merge patches, so just
>> want to get wider reviewing if possible; otherwise, I will rebase
>this
>> patch set and resend to ML.
>
>One thing that might be useful is if James could offer his Tested-by or
>Acked-by on the public mailing list. Neither Arnaldo nor I have details
>about your offline sync!

That always help, indeed :-)

>
>Will

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
