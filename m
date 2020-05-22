Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA171DDDC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 05:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsKr+sq30ok8GWwcDqB0k8Eo/IwALbdGRwq8MJiGmQg=; b=Rqz5DPyFCMOV3n
	ueDZD1ascNT5Vi5SffszZAGWtI0L1+PK6YH5ygOEZQ+fV6GRIGM9Y43njBKKdgt99HG+pOefDhn83
	DSpOqShKHnOmrHNzlRzfVwf8m+fgrKU0KY1sFiOQ32Lr9nzKNpKR5euuMMj8eNdX+cMnax4uOkBfK
	rmJN0ZRlMUZy/GdlCKGR8h4YUFGBghR0WAhv1fwifKtVcwrZ0cRA2srlj1eFgK1QXOwAzetHt8dKZ
	MQUib7HTtWo2Py7HE150dW8ldP/M4fWDjrlvD7BNbQyFWEDLRgVICGlqxgCH1p+L3SyU3HPR2bPrr
	M46qMyTvU5XJ3PUXD8lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jby4z-00014w-KP; Fri, 22 May 2020 03:10:37 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jby3d-0006n7-Bj
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 03:09:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id n11so4304585pgl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 20:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SYThr11VROFvRu+cdpBJm1IFRFr6IJOz9VjNqzlHdcM=;
 b=SXMcOFE97PdF3SHJ+msYl5rNfTNfBGbQ9gJ0PzSswAsKngYg/s9lP0Ol4g10CAyLXs
 /ZmJHQ4FOt55R8Ais99i94r4mlP8Ot3iV1cclZhmKeYIOxOVdwU+gklKqcIoPisXJK+g
 GukHcKybsW14OqI/drckMao2LQE0CJBobNUWYpwMa1tE3GuC3aW8hKFur2GrOJgrbPcN
 ftoZ1gZGbU9CbxZkQMclBMUPBHjXUs5hEW3GmDTzQMsp/fSXpmL/VUQoC9qm9Qoa4+jT
 uwzfHWvSaDcpxsVruBHcBs/1FyNMogHOI7zwbq+YZRE3MoorOJZ/PSTbEV7S2qTp1lA3
 PCSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SYThr11VROFvRu+cdpBJm1IFRFr6IJOz9VjNqzlHdcM=;
 b=RquSiLqdcV9vQya72a7VgDbFK4Jp1VxaBFdLYoS1d/0pAiSKl+fsgIukJ+1wufMGyZ
 76lx5xiiNmZaMitjItINdFZNQ8ElZQXu9j7xoqGwnOE8YbTvybjTPjTU1ZgsH1Kj1yuF
 st3Uyxy3n9V5OjRyioAcUU+0JWZz6pYb4NfD1GBJp09S1YYmMba/Gw7dDdqq/spFRdFY
 lly7dUdp0bK8SgktoqPcwXfsfJPh4e1IRn4iH1gO+p2DimCi1jEQ+pdc7mPSfTye0nmy
 AGMIPK6zdREU6aB+my3cd93zKifV6+TJlf9C1UHwQrd198OnEamdQuEo4Ou0gJYjIygW
 srdQ==
X-Gm-Message-State: AOAM531UMnu9BaOOqNKQL9pu2RgSxGoojoYScaibxv9mL27OpAOYt2rl
 rlI6KswRMNsyJ4gcZqKCzgLJww==
X-Google-Smtp-Source: ABdhPJzME1zTtjy1qck6ek0rBvyojYElvrJ400xhxV9eXHEjIVW3UJyCTtbdTxATHq3NIw4zUj2HIA==
X-Received: by 2002:a63:5fc8:: with SMTP id
 t191mr11687895pgb.185.1590116951974; 
 Thu, 21 May 2020 20:09:11 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2600:3c01::f03c:91ff:fe8a:bb03])
 by smtp.gmail.com with ESMTPSA id j26sm5448971pfr.215.2020.05.21.20.09.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 21 May 2020 20:09:11 -0700 (PDT)
Date: Fri, 22 May 2020 11:09:19 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, James Clark <james.clark@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Al Grant <al.grant@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v7 0/3] perf arm-spe: Add support for synthetic events
Message-ID: <20200522030919.GE32389@leoy-ThinkPad-X240s>
References: <20200504115625.12589-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504115625.12589-1-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_200913_532260_8CB46F63 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2600:3c01:0:0:f03c:91ff:fe8a:bb03 listed in] [zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, May 04, 2020 at 07:56:22PM +0800, Leo Yan wrote:
> This patch set is to support synthetic events with enabling Arm SPE
> decoder.  Since before Xiaojun Tan (Hisilicon) and James Clark (Arm)
> have contributed much for this task, so this patch set is based on their
> privous work and polish for the version 7.
> 
> The main work in this version is to polished the core patch "perf
> arm-spe: Support synthetic events", e.g. rewrite the code to calculate
> ip, packet generation for multiple types (L1 data cache, Last level
> cache, TLB, remote access, etc).  It also heavily refactors code for
> data structure and program flow, which removed unused fields in
> structure and polished the program flow to achieve neat code as
> possible.
> 
> This patch set has been checked with checkpatch.pl, though it leaves
> several warnings, but these warnings are delibarately kept after
> reviewing.  Some warnings ask to add maintainer (so far it's not
> necessary), and some warnings complaint for patch 02 "perf auxtrace:
> Add four itrace options" for the text format, since need to keep the
> consistency with the same code format in the source code, this is why
> this patch doesn't get rid of checkpatch warnings.

Gentle ping ...

It would be appreciate if can get some review for this patch set.

Thanks,
Leo

> Tan Xiaojun (3):
>   perf tools: Move arm-spe-pkt-decoder.h/c to the new dir
>   perf auxtrace: Add four itrace options
>   perf arm-spe: Support synthetic events
> 
>  tools/perf/Documentation/itrace.txt           |   6 +-
>  tools/perf/util/Build                         |   2 +-
>  tools/perf/util/arm-spe-decoder/Build         |   1 +
>  .../util/arm-spe-decoder/arm-spe-decoder.c    | 219 +++++
>  .../util/arm-spe-decoder/arm-spe-decoder.h    |  82 ++
>  .../arm-spe-pkt-decoder.c                     |   0
>  .../arm-spe-pkt-decoder.h                     |  16 +
>  tools/perf/util/arm-spe.c                     | 823 +++++++++++++++++-
>  tools/perf/util/auxtrace.c                    |  17 +
>  tools/perf/util/auxtrace.h                    |  15 +-
>  10 files changed, 1135 insertions(+), 46 deletions(-)
>  create mode 100644 tools/perf/util/arm-spe-decoder/Build
>  create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.c
>  create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.h
>  rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.c (100%)
>  rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.h (64%)
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
