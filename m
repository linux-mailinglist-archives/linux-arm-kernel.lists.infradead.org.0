Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0D71E9FF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCBDaznTyP5Gk8jLMb7KtSZBb9WdGJOotpJhjjHRglM=; b=Jug0iM2AI6OY5S
	WLaR/gjx79uCsMEYoFkB99+HvFktn3njHA8MnaQn/WgkcZ1Vc9y9G/C6mofggMRvx32eCFd6kuelH
	bdAA03ViJHIpQE+VSuigtxiQu/xh7kzczH5cfaiGAIrR1ljmuvWaagAqCpg8l7yeMubVElC+t63wJ
	DHWu9Et5OO1vvwI+oIxwFz9nudshBwefW0Z70xg8A4n8MihPATTVTzDZqrQBJrva6TLQcH/mXJ973
	wr8jL5iIHsj8sqV+4Ko+CXkjj4ZFvGpeVhDTp3wK0WqzspLVVyvy9csWHP+R1/CkeYFpTknqP9GZP
	NUgKN8QcwW/9JCZQPKWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffe3-0001m2-3J; Mon, 01 Jun 2020 08:18:07 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffdX-0001Us-Vb
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 08:17:37 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s88so4176598pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 01:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kqzX8bfnhuwwbKY1yObZQk6AEOe++Br6zCRCcqTuYOo=;
 b=KF5rt1NcZPsLJLiXgSligGtQMsZjvWp/e/qzbPtQmJ5xDxXTK6vechQH3XTaZi80b/
 LbP2R92erioVOwqsdsGB73GqVeNPjMV0WcZQRl6CvonIgtMxFfg2MDTPFgl3SxxJI5Nl
 biFDNzf8cEXR5vy0kL2lBs4jcfGmLucbHDP4bDYztvHaqropD3bJdQDowXmEDj/EGawy
 WMXEXHYMSBA+OfftR2Bgol6wrh0fWJZnlOZaCqsPqxJmboh/T8QFG1N3Uilizwh1EcAn
 VDCeXLVNWr6K9WiJb7zE10WA2ctEuz3jNFsitLbRVCJluNq5xuCn8xAygKpQ7WlcqNr5
 Ttww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kqzX8bfnhuwwbKY1yObZQk6AEOe++Br6zCRCcqTuYOo=;
 b=gGcyyC2NpaMYXBbzv2ZJraGibrmsxP3X2s/xkwInyCZFc8ZWJH90+bXrtNhtt+HuU5
 OnX8MI5n04XonuCJilzx6vrFAXZ8GuolxRwIObCx65UjlUdBzUTHRK1cr2bZonh4OIx/
 0fNyCe76gn5wfIoG2vPxUIgq6iPrUDKhYnt3+Yp9wBRLIWbWKvpHspRd3hrAV734EHc3
 iWiQObvos39m4qnn3rWCF75b2fZjIY+0CKGyJ3J7760ymsByNEJSGvzWah7TVpdKvIXT
 ZE/As7DUzVwFtyoRdNAdu211KvXdvRcXKujEyaRV05PfyylJdyr/q/KCQjXZsXQp/rbY
 0HEA==
X-Gm-Message-State: AOAM533RnkMDgGxuZMqjZEvdnSiTkubj5px+PpErX0RhYM4rEHllALYr
 glK3vwaBA2EiH9oRJj7L570I1Q==
X-Google-Smtp-Source: ABdhPJx9xSU0nlxKt+3NjhYK5L8xaBuMxp8L3p9v3qIMDmSunPapVAWh8nUrzKCi0e05I3RWxfvPnA==
X-Received: by 2002:a17:90a:be09:: with SMTP id
 a9mr21409594pjs.165.1590999452727; 
 Mon, 01 Jun 2020 01:17:32 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2600:3c01::f03c:91ff:fe8a:bb03])
 by smtp.gmail.com with ESMTPSA id y6sm6596587pjw.15.2020.06.01.01.17.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 01 Jun 2020 01:17:32 -0700 (PDT)
Date: Mon, 1 Jun 2020 16:17:46 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH v8 2/3] perf auxtrace: Add four itrace options
Message-ID: <20200601081746.GB28016@leoy-ThinkPad-X240s>
References: <20200530122442.490-1-leo.yan@linaro.org>
 <20200530122442.490-3-leo.yan@linaro.org>
 <aaacf3f6-daab-098e-d1fb-1509e1cf9c84@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aaacf3f6-daab-098e-d1fb-1509e1cf9c84@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_011736_063954_53B498C8 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2600:3c01:0:0:f03c:91ff:fe8a:bb03 listed in] [zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ian Rogers <irogers@google.com>,
 Andi Kleen <ak@linux.intel.com>, Al Grant <al.grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Tan Xiaojun <tanxiaojun@huawei.com>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Jin Yao <yao.jin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 10:24:00AM +0300, Adrian Hunter wrote:
> On 30/05/20 3:24 pm, Leo Yan wrote:
> > From: Tan Xiaojun <tanxiaojun@huawei.com>
> > 
> > This patch is to add four options to synthesize events which are
> > described as below:
> > 
> >  'f': synthesize first level cache events
> >  'm': synthesize last level cache events
> >  't': synthesize TLB events
> >  'a': synthesize remote access events
> > 
> > This four options will be used by ARM SPE as their first consumer.
> > 
> > Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
> > Signed-off-by: James Clark <james.clark@arm.com>
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > Tested-by: James Clark <james.clark@arm.com>
> 
> Acked-by: Adrian Hunter <adrian.hunter@intel.com>

Thanks a lot for reviewing, Adrian.

Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
