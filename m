Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE161E81CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 17:28:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrC3qqNz7vws9rrznjJL+uNxZKWDFFgKxHS0KybYlys=; b=TE7CmuDRd9IKjI
	TA/deXxuaBvIla4xeSvRtGHSBCusqUJiEWraMPcZmtLUcssukae/3QKDwl2WN5JeBGlauoJxwHkdo
	DPKqYQT8dEgFRCzzFMumsc+UmRQ1NWxjLt6vqNSZ1gVxzRz8ObvyWrTxHzg3wGYy1k6tj4uPMz/Wp
	Ba/S6mrmwOdZr/axA0Xa9IYSFj6CKNmcPHzsv5srwZyVGyK+uA+KaGlowiuCWeQjv4Ibf+su0ADjC
	O0Xz76gHv0b9vLIXzKJW4bkVSxLGywyJvBoyn9sJuPUsOmcRtFvoJueG1Gq73Tp90SSLXCs55HoJV
	7q6UEZr4rYQeDl6o8VCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegvV-0005Cz-36; Fri, 29 May 2020 15:28:05 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegvM-0005CR-Lg
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 15:27:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id n15so1524736pfd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 08:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eYqsk8EYMXFjKbFUisk5DVXR1QCtW18pOaaV45Slo/A=;
 b=KivjD9nhmWtwYawxLYk6qBdQTHYXWp3zHndRv/HiMON9bOf5CJXXiXgDFGmXb/e4vo
 n4Ooi/YIOfdpbEtsfB1rn+rqMkinBihk8+V4IPqrQGTvssJqXXSBcn882MsV6T7+jqQq
 a9VMJ/IhObktca5zB2cjCgYnKLC83hTmh5oSCUWcTD8b6lBDX8wCRz0rJ4rK2wHR5d+2
 iXnbFfCduWqECx6Lku0nuSg8et4hBdtGKO7bW7Oc/ZLwETv2pNINI9lDmcN/2JJrdxZf
 XzgnUvmrXaC2SkHJpVIHAje2u5t+NTMsYpehkPdYldxb39etlhp1+h42/P84mg7YmjDX
 j+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eYqsk8EYMXFjKbFUisk5DVXR1QCtW18pOaaV45Slo/A=;
 b=CJpv4fkJYjC8PBJkT4rtb1uim4/6TnsUIYNU1ttPhudtmWVIVEjMiUNpTBIAURxAAR
 nkztsJXJXI3puQwLBMcGdD7LjeGC4fKy7KeSK6+KH7AIoyRq7Ahc6UsZ/bzJKZ5UA1Z0
 RCX/DYpUD1ypW6pc804mKrpHJr4sek1oCYfZ39hzHyppsP7HLSuJj7O/08jd8RYvilrI
 sDvZVUbrryXdGEFlIeO4bdw1slqpjUwJdt5crXJAtUthkQa00eSG78/In5mKF2uJ077h
 X3x8ttjTGojSr5Ltco3c7D3tXnjxAjpCirLw0nhF0tZCufAK+VLOK1TvbQ+PwQ2Q14aS
 JTRg==
X-Gm-Message-State: AOAM5335G2sn9ActJ1tHxA7GVTLUWPyjpsElwxq1rqXjfONt2i7U0vpC
 giUykfqxZ3WkWslkuw20aN/IZQ==
X-Google-Smtp-Source: ABdhPJyy9xeZPRtpmoSn/oYS8ASvUkT0b87mayN7sK/FJBgTr8JXwM96p5G0EjaDIdup+fk2q1acCA==
X-Received: by 2002:a62:1c42:: with SMTP id c63mr8015263pfc.293.1590766074079; 
 Fri, 29 May 2020 08:27:54 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2600:3c01::f03c:91ff:fe8a:bb03])
 by smtp.gmail.com with ESMTPSA id b4sm229186pfg.75.2020.05.29.08.27.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 29 May 2020 08:27:53 -0700 (PDT)
Date: Fri, 29 May 2020 23:28:01 +0800
From: Leo Yan <leo.yan@linaro.org>
To: James Clark <james.clark@arm.com>
Subject: Re: [PATCH v7 0/3] perf arm-spe: Add support for synthetic events
Message-ID: <20200529152800.GB21552@leoy-ThinkPad-X240s>
References: <20200504115625.12589-1-leo.yan@linaro.org>
 <20200522030919.GE32389@leoy-ThinkPad-X240s>
 <20200526102602.GA27166@willie-the-truck>
 <20200526104337.GA7154@leoy-ThinkPad-X240s>
 <20200526195438.GC2206@willie-the-truck>
 <3a80a66f-b991-ec55-77a5-a8fc4fa69e5e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a80a66f-b991-ec55-77a5-a8fc4fa69e5e@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_082756_743699_7D399500 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2600:3c01:0:0:f03c:91ff:fe8a:bb03 listed in] [zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On Fri, May 29, 2020 at 03:58:23PM +0100, James Clark wrote:
> Hi Will and Leo,
> 
> I've tested this on an Arm N1 machine and it looks good to me.

This is great!  Will respin the new patch set with adding your test tag
and send to ML.  Thanks a lot for the effort.

Hi Will, Arnaldo, sorry for late replying you due to other works and
thanks for suggestions in other emails.

Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
