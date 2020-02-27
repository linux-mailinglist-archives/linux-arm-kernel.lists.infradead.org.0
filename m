Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EC917181F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 14:00:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V9YhaXUSQbjp/AvPvTnNzNek5jr9QxpyNBxRc/9CdWs=; b=elvlMwB2664Bwh
	KbhbzLR3Z8FZn/CvpiAkryQvADHzfonpIPoyOCzHp1epP9XHrVNHt7EYy3WpHPBaFeRATJltleUmK
	84XYUXoHkvES8T6i6Smg7mTtxuul6f/t8kTvPTHN0vaq2EQzpmSlEirMJk50PSRIbcpt8C7IaMOnz
	4kyERt6r8DmLW5KwZl/XOCipLqX+POU0How7o1j5oWpUUfQPyVyNQbcCpdidkozNFNnyVXaDjIfv2
	7PP2/6hihFjVrWk5TvA7REwOtoN/fFjz0fO9i8IU5bm7zIlfdRpTsDmYbrJm96BU9HmaHHNMdTlQW
	veqAZmJ24uSNNmul/4pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Im2-0008Ak-Pz; Thu, 27 Feb 2020 13:00:18 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Ilt-0007Ul-PL
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 13:00:11 +0000
Received: by mail-wm1-x342.google.com with SMTP id c84so3305082wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 05:00:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lF1WpNMmDIC+u5WUFqN6XI3/wXMvIRCjntbaMdrFGfg=;
 b=IARaMUZPJiCDFrzzJwyWb6YRob1J06IUMUj73rqLrl3Ppn2wS5eJPgwlML7IHofhy/
 2vf5hO+Nxf4m1l3oC4JUcc7Hycie16A5bdmxyzvR8ybGG19Vv74J/0OdSSzOtXAIAtFm
 hMdlDcz5qhKEWvM924Bb6wqORS+DdqDMMh0H5v7DlndWs3/uUJKmmlF5c7Pnu8OdtuG1
 VApamd3WADlVVWGzYbr2a6BxRq5U34ILOaDQhh/SURP7x9fisOuMZn2MG+h5CFPxnUuh
 Za4SaJk52aI2JKEpRn4Fpd6QCc2qeQcY9u1+vXWi/UPTVb7jpQ1tclDVVaEd2hmdcgV6
 5/9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lF1WpNMmDIC+u5WUFqN6XI3/wXMvIRCjntbaMdrFGfg=;
 b=ME4OAy0eRm9T3RSG8YdN/lPyNCm1aKfhNI6CCqDRf/dTrf2B5Y9atLxrtyEe1/KxMD
 0RmXIHBzFgO9NQUC8+JlGYeh14sK8Gih/MvAU+kOwOKG115HW/vMXMJ5IBJMV/0cxmMm
 3UHmfcsOJvfmI3IAt4FMC9p+IeOg34p2WFwtWY/NuWnpzi5n0/Y2YgxMm8THvlQJBg+b
 SaXQI5f7rYmz6HlCuXCcmMj6EGyU/56osgjIesZOq+uUcpkCXQenyutjt+e6+wRQsPdk
 5VslBXU2ALlTqBXexlGcFbWyIT4Pn+gTVWEX4AqzPSTvOSuYyCwBaoaB74+e1xZ8VKeR
 nPUQ==
X-Gm-Message-State: APjAAAWAKlU593jncigDflMZ50vJsqE+3XTL7+fsskGopJhotQbHTu98
 q2fMcNn33Ocg5k/W3iaajpG15w==
X-Google-Smtp-Source: APXvYqyJc8z85FxR6Y8xbHanOXMr3EKjgHVQ0zhtwSRKjHALBfFlCDS/ccmFZBafwRz3YaXDguz5LA==
X-Received: by 2002:a7b:c119:: with SMTP id w25mr5324707wmi.116.1582808405179; 
 Thu, 27 Feb 2020 05:00:05 -0800 (PST)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id e18sm8033429wrw.70.2020.02.27.05.00.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 05:00:04 -0800 (PST)
Date: Thu, 27 Feb 2020 13:00:01 +0000
From: Quentin Perret <qperret@google.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH 1/2] sched/topology: Don't enable EAS on SMT systems
Message-ID: <20200227130001.GA107011@google.com>
References: <20200226164118.6405-1-valentin.schneider@arm.com>
 <20200226164118.6405-2-valentin.schneider@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226164118.6405-2-valentin.schneider@arm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_050009_852983_383CEE10 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 3.0 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: morten.rasmussen@arm.com, Mark Rutland <mark.rutland@arm.com>,
 kernel-team@android.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@kernel.org>, Will Deacon <will@kernel.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday 26 Feb 2020 at 16:41:17 (+0000), Valentin Schneider wrote:
> EAS already requires asymmetric CPU capacities to be enabled, and mixing
> this with SMT is an aberration, but better be safe than sorry.
> 
> Signed-off-by: Valentin Schneider <valentin.schneider@arm.com>

Acked-by: Quentin Perret <qperret@google.com>

Thanks,
Quentin

> ---
>  kernel/sched/topology.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/kernel/sched/topology.c b/kernel/sched/topology.c
> index 00911884b7e7..76cd0a370b9a 100644
> --- a/kernel/sched/topology.c
> +++ b/kernel/sched/topology.c
> @@ -360,6 +360,10 @@ static bool build_perf_domains(const struct cpumask *cpu_map)
>  		goto free;
>  	}
>  
> +	/* EAS definitely does *not* handle SMT */
> +	if (sched_smt_active())
> +		goto free;
> +
>  	for_each_cpu(i, cpu_map) {
>  		/* Skip already covered CPUs. */
>  		if (find_pd(pd, i))
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
