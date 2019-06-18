Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543D349D15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWhQD6wP6MXDSWdaRAWVTQtxFqtLPjRyOpYE/RYsmlE=; b=ic5RPEKNYjFqH8
	Z2DQHwsvwXNvgEKcGYatgD4pW+vE/JrQHam/72a03j2ypr5qtzSJt2qCz0iu0aoOvuOGHsnPMUnU4
	vJl6fqReOdgkvOcwQewXJqVILTUUe2ULuNMqHqjejdtzHr/2dGAAbrWEb0MipHiU903Qzz9FzVHJ/
	0KHvucq9DBCclP6debt+tZnXhTNVP90cCLP1j2gpI2bMW3NfMLp9XQBGdqJuESgS2sj9tgK3PBIS7
	I0oJ6ddMQeB5XgomgesUiMjvN6u5aOJAEr3wA0f7xYjg9o69t1EnYCqU0wWkCJK97ckBRm41SzXFs
	e+Fm3GO9CuUk4c6/KeKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdANc-0004xO-MB; Tue, 18 Jun 2019 09:26:16 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdANR-0004vl-PP
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:26:07 +0000
Received: by mail-pg1-x541.google.com with SMTP id f25so7344613pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 02:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ACmcdqOP2gSGSso0d/MiQ00IgAVGq25vQtNqguYCF5w=;
 b=sc0E/8iB4qaqHn9Zp1WR0OtM9S8b0KYzP6oOnRw5yROW6enOifvofAeCtv31AqOYo/
 a8y5opv8HfdW6eTBEHVj7aAJilzMPTo9rmEpF8/79ZrG7Tz2xvc18qbElUHHCqtdm++F
 cgWe47VNKw5H6+E+VSZV3v4mL57BeVLM4cSW1rbq3QY48kquBQpPf519wgWpEDuFkeI9
 5wKIrFfJbP5sEaQHHdDzIqqTxj4DFbsBHbg91ivq5Y8LquUvB4OHHLku8qEeQXj74meE
 PCPfSLjxdUCAjl0Rk7VQUyPz7sORJR8qPHvNW/rQ7KMTGcpfH5kNpXt8S7IeJz4qC5jr
 wmhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ACmcdqOP2gSGSso0d/MiQ00IgAVGq25vQtNqguYCF5w=;
 b=L3rpqKt7Pulj6WoxW4AAdE6//kyhgrvfXZLlQ2OPCzpL2HH4dXW42D+kMSI/uDKgI5
 y27MGCRl/D2VCn0Qw/J1+ut8PXzCCJtC1Lp06c7tyhMsZZqgL+q/P4ALh5d5eE0E9vRA
 JcJh74WTwYXaTg5/538UrumDaCqm80ijry2LK7jVwczQUjCyM4X9aiBWhd3xM3ef3WsS
 fkJpWHQy4xfGSeAgU7EGsNT2G9NeLZxpqip2BkHCWZe8OD+DSqKQlg6I5881D9pJtk+n
 REQeMZpZgpTr1MZJ8l8OkWU3rMKgpNPGrn/21dapd47+BLtaYKk0a2sm5LO6xOUb5bq7
 ijoQ==
X-Gm-Message-State: APjAAAWUL2dWBppmffVNo1FlPXW6YYwaBzfzWtdv2/V6wBCCa1LW6z5T
 aI1McNXEYSSSnsSqPxwNRcK1yw==
X-Google-Smtp-Source: APXvYqw7S7g+LxxyGBTPUPd97vZx4Wcl8CWA1Ovr31OCsPH4/P6Iao8SMp+SLw9BjAv0mLfR5zA/5A==
X-Received: by 2002:a63:ce08:: with SMTP id y8mr1732002pgf.38.1560849964851;
 Tue, 18 Jun 2019 02:26:04 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id ci15sm4292839pjb.12.2019.06.18.02.26.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 02:26:04 -0700 (PDT)
Date: Tue, 18 Jun 2019 14:56:01 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Vincent Guittot <vincent.guittot@linaro.org>
Subject: Re: [PATCH] sched/topology: remove unused sd param from
 arch_scale_cpu_capacity()
Message-ID: <20190618092601.2aws7kujvk2pulwt@vireshk-i7>
References: <1560783617-5827-1-git-send-email-vincent.guittot@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560783617-5827-1-git-send-email-vincent.guittot@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_022605_833387_619E2A7C 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: rafael@kernel.org, peterz@infradead.org, gregkh@linuxfoundation.org,
 linux-pm@vger.kernel.org, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 quentin.perret@arm.com, mingo@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17-06-19, 17:00, Vincent Guittot wrote:
> struct sched_domain *sd parameter is not used anymore in
> arch_scale_cpu_capacity() so we can remove it.
> 
> Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> ---
>  arch/arm/kernel/topology.c       |  2 +-
>  drivers/base/arch_topology.c     |  6 +++---
>  include/linux/arch_topology.h    |  2 +-
>  include/linux/energy_model.h     |  2 +-
>  include/linux/sched/topology.h   | 14 +++-----------
>  kernel/power/energy_model.c      |  2 +-
>  kernel/sched/cpufreq_schedutil.c |  2 +-
>  kernel/sched/deadline.c          |  2 +-
>  kernel/sched/fair.c              |  6 +++---
>  kernel/sched/pelt.c              |  2 +-
>  kernel/sched/pelt.h              |  2 +-
>  kernel/sched/sched.h             |  2 +-
>  kernel/sched/topology.c          |  8 ++++----
>  13 files changed, 22 insertions(+), 30 deletions(-)

Reviewed-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
