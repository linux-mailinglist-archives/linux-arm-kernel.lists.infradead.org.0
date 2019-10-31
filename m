Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E64EB5EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:14:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1juNLqsLfR/K/EX+v/DtLViV32/soZupwHztM9lysY=; b=K8dGhYNJWmRAEj
	PWep/qNO9ormeOlW3WxnkfNwQIT0/6DRVLV31uZt7N7yjFwPoUj+y+qXgsUZG1K7ChWaeHr7SbulI
	1F9SL1592flGE6A15yalAR4GWTCKq0sDNcxlAbbyI7QKpoiP/sAsGNG7mv6KeQX7HRPPfgE6rKHcX
	Ey0WjaMDWw3S0B6tunctewRIgwmm/tgL32Wec5BS5Aj2167LWJpPpV5LwDbsJI2rqNrFdhMRQfsH4
	zhnVYMffLzSyu8NPpjKquf3qbXaU92cPJaIAaAEEH16zbqlIma5Cr6d1vU9vw38W9MJA60Jrbtc4x
	3Nz+g6uTS3M54cc19RFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQE1w-0006dS-CJ; Thu, 31 Oct 2019 17:14:40 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQE1l-0006cZ-32
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 17:14:30 +0000
Received: by mail-il1-x143.google.com with SMTP id d83so6056977ilk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 10:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7/oQbUrLxzCFxSXaMBW51XHkJmtd4pn/y99rXYOWrkw=;
 b=MAlgB0uBqzuhtFTfYmLyMxFFpONdoI5/VWbG2WlqRhIbxtoHyINwTblMx5ZJl++Q1n
 GLyXlK0maDw4a14GrRsGiv0loH3883wNDvMgaCbHz5BOm3Az5FjdwMsL6Gj97rfpoHoK
 /Z30ThzxPpBT+nsheY4LRR0KPtJ0MYgWPUgW9uU12inuCfLdBjLYNFjeL6K6IfZB+Gcv
 G9IjBqmA0aM7pe18CuWUk6X3WihR1OxQsK3T4+LlBvSRr6YHNuYEqYANbBcW9NwQF/64
 cacbSJiLaffDMs/hRowxOuQSDaHedLDPhR4Nby7PKXqR/dOzhL6xpionBwirVT/gK3ek
 wLRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7/oQbUrLxzCFxSXaMBW51XHkJmtd4pn/y99rXYOWrkw=;
 b=d20iKwKg95H841IeyedfoB7onOfmik8ImErwOGNLdBQXja+/DSFAexsbL0cRICoJCG
 buplY9Bx+ojuPfngAIjAeYx8zrshV927YzwCQzhabEP6doHkYAaCMON3Ea5fHCXd7JPl
 3cRyK9A7n0QJnUxciirUEkoOpuKYZX+dS8tuvW4vW5nYFkcStlDYdwVs9O4pO3pLSDS+
 ghx1WZpt8oYKbb6F50TCar2mQBQHWlruMeYhTgpjGO75S6BDRTDM4JGrtWwehAdAnwao
 7O2Kwizg/cWv4k7kdQuaCUHWc9OPk/KyoCAI5GlGsjJuW0Ocxy0U5CV8PSZHHUxv+uS3
 4B+w==
X-Gm-Message-State: APjAAAUa6H4oPquUTVoFeg70lXVB52M9iTDwiQ2j9vVeFwl07kZZfEte
 96RV3mOTQuapiIlVp0E1JGrLsH8Q5Plzao5AAKGsLw==
X-Google-Smtp-Source: APXvYqze3SlsQZNFScaS5sJPjKwOg8mZYClWIkEjiqcbU0pp4edztHY6mx36sdZdgZaf7Cy9UzY//sBKr4k79oSg1xI=
X-Received: by 2002:a92:1907:: with SMTP id 7mr7540052ilz.72.1572542066045;
 Thu, 31 Oct 2019 10:14:26 -0700 (PDT)
MIME-Version: 1.0
References: <20191024151325.28623-1-leo.yan@linaro.org>
In-Reply-To: <20191024151325.28623-1-leo.yan@linaro.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 31 Oct 2019 11:14:15 -0600
Message-ID: <CANLsYkzaB2kU20ibuDJVokYeEEuR8wd7MoHzX9+UKnM0jNV1Jg@mail.gmail.com>
Subject: Re: [PATCH v1 0/4] perf cs-etm: Fix synthesizing instruction samples
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_101429_135228_259F6AEB 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 24 Oct 2019 at 09:15, Leo Yan <leo.yan@linaro.org> wrote:
>
> This patch series is to address the issue for synthesizing instruction
> samples, especially when the instruction sample period is small enough,
> the current logic cannot synthesize multiple instruction samples within
> one instruction range packet.
>
> To fix this issue, patch 0001 avoids to reset the last branches for
> every instruction sample; if reset the last branches when every time
> generate instruction sample, then the later samples in the same range
> packet cannot use the last branches anymore.
>
> Patch 0002 is the main patch to fix the logic for synthesizing
> instruction samples; it allows to handle different instruction periods.
>
> Patch 0003 is an optimization for copying last branches; it only copies
> last branches once if the instruction samples share the same last
> branches.
>
> Patch 0004 is a minor fix for unsigned variable comparison to zero.
>
> To verify my changing for synthesizing instruction samples, I added
> some logs in the code, and reviewed the output log manually for
> instuctions samples.  The below commands are tested on DB410c board:
>
>   # perf script --itrace=i2
>   # perf script --itrace=i2li16
>   # perf inject --itrace=i2il16 -i perf.data -o perf.data.new
>   # perf inject --itrace=i100il16 -i perf.data -o perf.data.new
>
>
> Leo Yan (4):
>   perf cs-etm: Continuously record last branches
>   perf cs-etm: Correct synthesizing instruction samples
>   perf cs-etm: Optimize copying last branches
>   perf cs-etm: Fix unsigned variable comparison to zero

I have reviewed and agree with the changes in this set but won't move
forward until Mike has looked at patch 2/4.

Thanks,
Mathieu

>
>  tools/perf/util/cs-etm.c | 137 ++++++++++++++++++++++++++++++++-------
>  1 file changed, 115 insertions(+), 22 deletions(-)
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
