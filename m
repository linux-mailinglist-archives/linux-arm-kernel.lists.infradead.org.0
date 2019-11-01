Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7DCEBBE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 03:11:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIlxSM8+CWnqu8oEYF9BgpffNQlTp83BQPgOhNyKboA=; b=Pk3vnGTszzyU3n
	b+z65gNSPie2Jk/JRk/MV/EkEKvb8N8I7EiTNMdo9BTqi/rKBzYhG0tl6b7gU5lW2NuWQ9fyNoAo4
	O95EWgW6TPLMWhnU9wb79k6P3FcvM5B/TN2ZWJrr9s/2P9NbLjx2CHFO1xYD0qpcZhbvQkByVws4s
	QDVywX60GOJcJ2faZNOK+H2Ty3oXLBB7hZ9vBxjnBgSd8l9lPJ1QOyboqe8vijdILzqIQabcUEudb
	h4Puf3t9Ci+dx6fu1wxpuEWxyU/8YF98rgkR2YfUPQVE7RsE8D3VH14+NgG+hX236bm0RY4te6kOX
	2LoIyC/HRZvf+PQrqbpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQMPJ-0004xr-IT; Fri, 01 Nov 2019 02:11:21 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQMP1-0004x6-Pa
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 02:11:05 +0000
Received: by mail-yb1-xb42.google.com with SMTP id q18so2850364ybq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 19:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=F1IpQ5yrU/zKS5eXo+I63m9HfKa17nh+pWeMiMjnE5U=;
 b=XR0UyO54FjhAyQkQzh7uMgu6WhMIK60RDQ6oDi5wxF/Yqm3YSYq8FvrDTUcLusiRlh
 r7AV3lNFk8ppjPP6Y0js06Oyo9pBjdRtNKUYdH6ahFzQ9GofPxePI351Rs2u9zu8NeOs
 W+9Ko2Dv48OJlU2Ds5u3ZDbhm7X7jrbcd4AH7x9VXvmtfYI9A0u/gVAYcR85EuwRPIKw
 OtQvPzWYEEPxT7/YJp2F2YtX+7BkeFxufrLkwjKhC84YDNSyS+BZeeqecmCkjbNScEDx
 biqj6Qt+z6zt+9pkg4Z7AfaEJDa2DbnQEFEem+zZiOrLJ9w/CUQFBw1E62unH5XE5/6S
 8clQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=F1IpQ5yrU/zKS5eXo+I63m9HfKa17nh+pWeMiMjnE5U=;
 b=En7GL9lOH3v4Br3Xk6pcrqmuUvuU9+cCwaaq4lpDwXxHCSypYXw0aZgYxKmgaM4uG9
 JAHMP8+2ZvOFYOIQkXtrb54FK2QeNgjfx3lvBchgCA5zp6gunzvFgG4qf6XQETFTeUzP
 beYtCsOLGwwlQWLTlQLGueRD1E4Sf0bubSELYjgcWaZJ5Qeyd2o6sg+df64wf3TSSc7T
 0xUKEqUuz3dT7rWfX8KSCqXxzMQtUQdz5eWoDIFi4jp2vFJEjffRX7DVKjbnzbYoUn97
 y7AJJSKR6t+6ARRyHwRQ3ptEMPyg36Rr32GXPmadCDL4pEzXPX8o8OjmPpmfBJ/YHyWW
 WbHw==
X-Gm-Message-State: APjAAAWPFwakSiqBr4xpGVRkZYjEaVC8BvvbI40SFMuRPIYWSJCdyfLD
 XyPapVywg8EgSG8bkzQ82Fm5qi1m4PcaBg==
X-Google-Smtp-Source: APXvYqzId8ITMPZB5pucnrOhtG+7QX9MsMLQS+7xdbkIg/NP3vcVVaoArxzucVKcuMTQxcdPtg3UUA==
X-Received: by 2002:a25:7343:: with SMTP id o64mr7148385ybc.513.1572574262530; 
 Thu, 31 Oct 2019 19:11:02 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1038-30.members.linode.com.
 [45.33.96.30])
 by smtp.gmail.com with ESMTPSA id m5sm3773775ywj.27.2019.10.31.19.10.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 31 Oct 2019 19:11:01 -0700 (PDT)
Date: Fri, 1 Nov 2019 10:10:55 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v1 0/4] perf cs-etm: Fix synthesizing instruction samples
Message-ID: <20191101021055.GA26019@leoy-ThinkPad-X240s>
References: <20191024151325.28623-1-leo.yan@linaro.org>
 <CANLsYkzaB2kU20ibuDJVokYeEEuR8wd7MoHzX9+UKnM0jNV1Jg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkzaB2kU20ibuDJVokYeEEuR8wd7MoHzX9+UKnM0jNV1Jg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_191103_836721_D4C0024D 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
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

On Thu, Oct 31, 2019 at 11:14:15AM -0600, Mathieu Poirier wrote:
> On Thu, 24 Oct 2019 at 09:15, Leo Yan <leo.yan@linaro.org> wrote:
> >
> > This patch series is to address the issue for synthesizing instruction
> > samples, especially when the instruction sample period is small enough,
> > the current logic cannot synthesize multiple instruction samples within
> > one instruction range packet.
> >
> > To fix this issue, patch 0001 avoids to reset the last branches for
> > every instruction sample; if reset the last branches when every time
> > generate instruction sample, then the later samples in the same range
> > packet cannot use the last branches anymore.
> >
> > Patch 0002 is the main patch to fix the logic for synthesizing
> > instruction samples; it allows to handle different instruction periods.
> >
> > Patch 0003 is an optimization for copying last branches; it only copies
> > last branches once if the instruction samples share the same last
> > branches.
> >
> > Patch 0004 is a minor fix for unsigned variable comparison to zero.
> >
> > To verify my changing for synthesizing instruction samples, I added
> > some logs in the code, and reviewed the output log manually for
> > instuctions samples.  The below commands are tested on DB410c board:
> >
> >   # perf script --itrace=i2
> >   # perf script --itrace=i2li16
> >   # perf inject --itrace=i2il16 -i perf.data -o perf.data.new
> >   # perf inject --itrace=i100il16 -i perf.data -o perf.data.new
> >
> >
> > Leo Yan (4):
> >   perf cs-etm: Continuously record last branches
> >   perf cs-etm: Correct synthesizing instruction samples
> >   perf cs-etm: Optimize copying last branches
> >   perf cs-etm: Fix unsigned variable comparison to zero
> 
> I have reviewed and agree with the changes in this set but won't move
> forward until Mike has looked at patch 2/4.

Thanks a lot for reviewing, Mathieu.

Sorry I forgot to loop Mike in this patch set, and respin patch for v2
and have sent to mailing list.  @Mike, please review patch set v2 as
you received, Thanks!

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
