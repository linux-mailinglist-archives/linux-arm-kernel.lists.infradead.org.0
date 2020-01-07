Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15891320DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 09:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5Zl9p7C0hacO/B0ztb+N1hJYyHqX2CXDz/Mg8XwdY0=; b=SBO9guDrY04uvm
	KV+i1++TJNjVnpm6HbN6W7HxjpF5sBEPMjl4kzc2ukSpjITygbz5R4ONV+NpjJUwEeJ+re+QPkYwO
	aGEUq5vd23YXV5TwF5IOFmGK6t496eEHmkImqOfPu7N/7Ei3crQ2vzpJDhosLgg+kcB2T2VNV5DCH
	9UfIJnkwaF2Md3VDXhHhAC71OtkSolF2IJJKkzchMTRXHnkv3apsSQ9b7mqzxEuvBP7eWcGv5cGOh
	kMxC9z0cp9Vbj/zvDLaDvMbt32Jvb/gXrasql4rhj2zI+zi4vXgEf88nkYmEj/ZzgNIHGNwUBOvMT
	zKOJcqvLKh/TmVshdTlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iojoO-0000Ad-4t; Tue, 07 Jan 2020 08:02:00 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iojoH-0000AC-6C
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 08:01:54 +0000
Received: by mail-pf1-x441.google.com with SMTP id i23so22788166pfo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 00:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1umg53pWWYl/6QRnWmVkxLsY3gucZgYzRZz/LWAqWXY=;
 b=BlBCC1hiGJuDUOHYeGFUhTU+3bqykxr60JA6uoCkj+4HY3eTrNi4NvoLxplc/UKcqU
 ped4ttm0ekXaCxOUhJMVJvGhGpZoLmklcLuq3MK9lBeUaal74NLtlj5AIxWKbC98uUKX
 1hnFr8c8mZISKLpHrBY99PcmiscsjGLsjM2sgayj15VZdXSfqrzTvE3RTdXvurGoB7OS
 lfGcZKxmJC1dT5gWFdALnMOiqK8vNi1FNLQsc8zNqaeAzYmVmCOW1rnQ88xcK5AWJeGd
 Cglhy5Il1zp9ZQID4qS8cO7jxEN8f7BesDZn378gxeH+aD37tsUB0NEBbuu091ko3yAH
 U4hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1umg53pWWYl/6QRnWmVkxLsY3gucZgYzRZz/LWAqWXY=;
 b=WTcerooGjTO2NHHGFBcK7q9aiZ4HmYgutM/tK+cporaMDGr8FqNeZHSwVDre38G+DQ
 Ul6ofcWQzi3Ow9724QC7sOfCs+8vqYW4R5spzcQ9AvqZGTb44HozQ1aKLA7k+YFE1TFw
 wEH8fibjELhPH0z2Csoz7v7lbfsgmprKuPom7R6wQh2zIMlMVAy+lT9KLp2XYrkN8eas
 OMrCPels/meCd4CZsSRFgo76Sx67tDwU8GkjGeM0Ns43CrF3+M0TqQSOH+ddbegqyNXm
 z+Q0dUcgxC3SUvMj6czpR9GU0MjaylA8xKE5tUgZETcMPYFO3xcHRy8v0PKpMvV3EPTd
 DHfw==
X-Gm-Message-State: APjAAAUtHJHb38YbJs9Q93isFkdR/c0CBw/OtZbfy+f50PBzXVJ4BNUu
 zTCYVFmayUgkh9eJpSJopQ/N4A==
X-Google-Smtp-Source: APXvYqxVE2VEnVPb0aAGxiZJ/oIQEyVvSKjAKPvgVOOZNl4CcAjr60FWxaJEKvnLnoSswGARFg69Rg==
X-Received: by 2002:a63:5924:: with SMTP id n36mr115765526pgb.43.1578384112408; 
 Tue, 07 Jan 2020 00:01:52 -0800 (PST)
Received: from localhost ([122.172.26.121])
 by smtp.gmail.com with ESMTPSA id w11sm79495860pfn.4.2020.01.07.00.01.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 Jan 2020 00:01:51 -0800 (PST)
Date: Tue, 7 Jan 2020 13:31:45 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: qiwuchen55@gmail.com
Subject: Re: [PATCH v3] cpufreq: s3c: fix unbalances of cpufreq policy refcount
Message-ID: <20200107080145.7c4gxilnjjxjfqpc@vireshk-i7>
References: <1578383599-11207-1-git-send-email-qiwuchen55@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578383599-11207-1-git-send-email-qiwuchen55@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_000153_275766_8B43F6A2 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, krzk@kernel.org, kgene@kernel.org,
 chenqiwu <chenqiwu@xiaomi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07-01-20, 15:53, qiwuchen55@gmail.com wrote:
> From: chenqiwu <chenqiwu@xiaomi.com>
> 
> The cpufreq_reboot_notifier_evt() call cpufreq_cpu_get() to get the
> cpufreq policy of cpu0, meanwhile, it also increments the kobject
> reference count to mark it busy. However, a corresponding call of
> cpufreq_cpu_put() is ignored to decrement the kobject reference count
> back, which may lead to a potential stuck risk that the cpuhp thread
> deadly waits for dropping of kobject refcount when cpufreq policy free.
> 
> With this patch, the cpuhp thread can be easily exercised by attempting
> to force an unbind of the CPUfreq driver.
> 
> Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> ---
> changes in v3:
>  - Rewrite title and commit message.
> ---
>  drivers/cpufreq/s3c2416-cpufreq.c | 12 +++++++++++-
>  drivers/cpufreq/s5pv210-cpufreq.c | 11 ++++++++++-
>  2 files changed, 21 insertions(+), 2 deletions(-)

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
