Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C55112A1F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:28:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHvXyWJzZBWtyki5itQYeh3G1ZiucHYJJjf87m/lAF0=; b=jZ2KEqrvx10+/Z
	yCFdTfV3GdG8U131E7unAe57PPT/7jQN615mfZug7xaowSw1Mo3qkt/BPKYqXIFMkwVHbO13jRrjc
	hh8OasCVp3En6Q00dSxElydW6p2RJTK/mIX201V6uPE7u8eFHia0GvQQU0HfBJq4rD5iqUojIK558
	OPObkttAuHG0JQ36mA/tat0a5JuhSeibBfEIyXJYDgtHaB9wW/RjRE3ccnelwlaLArfxNChbL8KLq
	GTdMUlHafR3pyd0LSVS/8Dva4jc0985P+qipZF/feLJ14elpgU3TifyMz6mmrWWUivWsFIbqvCDfM
	JrSKTAFcDshO8n1zQurw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSp7-0004iY-VY; Wed, 04 Dec 2019 11:28:01 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSoz-0004gl-OA
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 11:27:55 +0000
Received: by mail-pg1-x542.google.com with SMTP id x8so3238215pgk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 03:27:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xmL6FENNnhbTO3NJFWaBCMeUeCpAJ1jRa9dqlxupymE=;
 b=F3wvtw5GZoxf/uf0Pmwgl8Sgdb2uZeqJuALUi7H5DfUT9+ehxmg/T47TyL5+c3q1Ih
 Oximl2z0EHmem6mOsESeiCxY/P6jjXUr53EcmB1XRZlPaqWuYcX2IcD6lb/6XiS+Lhop
 GXhfgUWo+IFBaYb+uknsisZRdEoOCREeSyjf5s6u7OzI6vy6cM9mS1DbaoPdubdUGP8F
 eWcrE6S+UH7zBD6l3o3Xu2gDXc1Y1lvaRcvLUbo6KrZSEZN4oNn75/GFa/NR9s+q/ca7
 Vpkf/nYpOGDXOZcSKXs1QMq8q7dwMuVWi4xaK1D02mgAdcs78nJeCig/fd50RmX1fSRj
 6zxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xmL6FENNnhbTO3NJFWaBCMeUeCpAJ1jRa9dqlxupymE=;
 b=nhUm5ixfjc+goYLfuK4Yq495IPWiKoxQ6jV+/aVwAONAXtsEbluISxpI0gnWAXahES
 voZ2yuHWq0n9likkvCiog2WSdbAcpEyFD9uBsxGhLYkHI8BQajpvOyQY0QP4oVZ+BWUl
 m9jMiY1Tvt/SJ7mHucVvFOad6f4h5ekD+IOO/VfclGGz7L43ci+3Xc9aR7H2Y6E1VcX0
 dtjbHKSZTMbTv91YOEe3ci7KuF+5cwKuXMpFPU075su1gLVGjlc0s4bKma51azj+mF4q
 htUlRo1Q31FMuEDLvc3abLTqd4oosJnQy8+6sSSnYI2/nE2a5c9XHgQzuRVTnLpQ+Awd
 FoMQ==
X-Gm-Message-State: APjAAAXCRFKJqn3qP7/xuPLm006PZv0caDSkpbHrTe2JKwdJh87X9dUw
 Tk35tqQaxFMcyKHeW1tp3P6NOg==
X-Google-Smtp-Source: APXvYqx2l3xqPWb2zgRYIdgfveDuPG39UrTm1xwZbsR5SVMAAemiNkQQ+ORdf0MMO3IbWeN143i9rw==
X-Received: by 2002:aa7:8a8b:: with SMTP id a11mr3012908pfc.207.1575458872541; 
 Wed, 04 Dec 2019 03:27:52 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id b98sm6294031pjc.16.2019.12.04.03.27.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Dec 2019 03:27:51 -0800 (PST)
Date: Wed, 4 Dec 2019 16:57:49 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: sumitg <sumitg@nvidia.com>
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
Message-ID: <20191204112749.jkwlyteal4hfvnhb@vireshk-i7>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
 <20191204054043.o4ff7pnqec3fwdgu@vireshk-i7>
 <7347caa6-43a3-f761-de83-481b45f7b22a@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7347caa6-43a3-f761-de83-481b45f7b22a@nvidia.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_032753_994926_FD79E67F 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-12-19, 16:25, sumitg wrote:
> In T194, CCPLEX doesn't have access to set clocks and the
> 
> clk_{get|set}_rate() functions set clocks by hook to BPMP R5.
> 
> CPU freq can be directly set by CCPLEX using MSR(NVFREQ_REQ_EL1).
> 
> As DVFS run's on BPMP, another MSR (NVFREQ_FEEDBACK_EL1) is
> 
> used to read the counters and calculate "actual" cpu freq at CCPLEX.
> 
> So, "cpuinfo_cur_freq" node gives the actual cpu frequency and not
> 
> given by node "scaling_cur_freq".

Right, but why can't this be hidden in the CPU's clk driver instead,
so cpufreq driver can just do clk_get_rate() and clk_set_rate() ?

> > 
> > - populating cpufreq table, you can probably add OPPs instead using
> >    the same mechanism
> 
> We are reading available frequencies from BPMP to populate
> 
> cpufreq table and not using static opp table.

Right and lot of other platforms read it from firmware (I believe BBMP
is a firmware here), and create OPPs at runtime. Look at this for
example:

drivers/cpufreq/qcom-cpufreq-hw.c

and search for dev_pm_opp_add().

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
