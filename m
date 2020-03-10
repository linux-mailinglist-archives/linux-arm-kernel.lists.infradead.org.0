Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2497217F6FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 13:02:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwiSpxBNr93ylX07jqFC3Den9lH58B47Zl5vh0gLwaQ=; b=vAjpTNGhe4BeGN
	QGuiFbtx3sII3VdPrbQknynxPoPuaZEsHYi/TvZVlRwmAMA7G1gU11I5FxwNtD9hoSVDX9OHaabzT
	gdAHdeCkcGN4IDvh3u1O9BKth4Wm1IcrJ4gHNzbhnEzix1h5Kj+/rY4JWR7bcVtNYcn0MNLbG7nkG
	3nHJrvdTH92NXaWVZO3I4tyRuJR+sKxM3AzQEGfwHOyw6OHzBMyNHkXr5kubqhw/nh8Xq9Cusqk5U
	HrqDvhFDGPN6SvdQYJDOd+mWWN6FZndG2H0tLsydnWbIHKTPB/xA3/jK23Fnio8+OE63UFmIDy3p/
	CY2g1ml8sanB/Deo9yEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBdam-0007nd-Oy; Tue, 10 Mar 2020 12:02:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdaX-0007mi-9n
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 12:02:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id 6so1079762wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 05:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mfThv2Ldbu4yvtonAdZ7hsdZm1jzxZzXGDjXqQ8NU0M=;
 b=ELstMXLYQgBBWfgP4eHD0p/B56BEMC7lmxoHn0vkZq0WtxMw189/cbfUhUVPNZ6k8H
 SgCq7To1Wp4k7Fex5iYAIr5RivymO5G5DMXhA5VThVX6j6HZrzfSP5QqWUddLC+iLYg+
 pX7xBogJ6dCoPJmjHYYZ3YYyJ6fg/GpveGEBTD6Mc5LXY7O+j8z/Q9aKHF2YGlu9Hwdq
 iRs+ptEBCxlLpF6E17gNS5+lbDxiMJ+TjXvhfh6VxmL8wmqmuPRmsEeSsFD1lI26blRs
 we0FugT0DVs7TTGiQS7OyVCTuKBysSTUrN0GiKB08+IaOYVENbTgVI6UicSKxocBvu90
 7kSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mfThv2Ldbu4yvtonAdZ7hsdZm1jzxZzXGDjXqQ8NU0M=;
 b=IewSIIbc43YgZKV+0b6xl87qmLGY7Qd8kgH00V/pdJV0oF9nXqmmpZuIQ0C5JOonml
 zKQNY34RuQ+NkCqjPFNoxOJ3HbGlXZauzxOE7Z5n78NqmhC5QCCxiheam7IdS7EY9npS
 cYPc8U9+12G/mpFgaCJfIqIDRPZruZUV33Zj5KZpm8uSg2ibb27/Ihyys/MtHSHXCluz
 D7xQazIPBNfpVKuywKGON4mDMgSpCfzhUg47KeaMDmIw8n12FIrkeAf8iXLRNfVCVWoW
 oKRhZQv4BR46753p31heBTlEbvt3AQwwqavsDB/wyYKW/sXuFu9aDjrrp869GmVfi+bR
 X3bA==
X-Gm-Message-State: ANhLgQ2K+1IsT8x/KGGZLygMgc6ycjaQvzMtf0YUEKcS1v/iJCMB/jWH
 hrREuuTVlzjZSQE31lRXOxfkAQ==
X-Google-Smtp-Source: ADFU+vsHcmUVwlqm4sIPILPaC+ui1eO/CnvHSQdEErD3WCvjmIq7Yi9CVOf29Ba2CBzxxYuFMoakMw==
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr1942727wmk.104.1583841739989; 
 Tue, 10 Mar 2020 05:02:19 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([92.118.13.13])
 by smtp.gmail.com with ESMTPSA id c5sm3745323wma.3.2020.03.10.05.02.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Mar 2020 05:02:17 -0700 (PDT)
Date: Tue, 10 Mar 2020 20:01:54 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Re: [PATCH v5 0/5] perf cs-etm: Fix synthesizing instruction samples
Message-ID: <20200310120154.GA11393@leoy-ThinkPad-X240s>
References: <20200219021811.20067-1-leo.yan@linaro.org>
 <20200310054305.GA21545@leoy-ThinkPad-X240s>
 <20200310114503.GA25299@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310114503.GA25299@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_050221_374308_A1621E01 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 08:45:03AM -0300, Arnaldo Carvalho de Melo wrote:

[...]

> > Could you pick up this patch set?  I confirmed this patch set can
> > cleanly apply on top of the latest mainline kernel (5.6-rc5).
> > 
> > Or if you want me to resend this patch set, please feel free let me
> > know.  Thanks!
> 
> Thanks, all build tested on x86 and arm64 (with CORESIGHT=1, etc), applied.

Thank you, Arnaldo.

Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
