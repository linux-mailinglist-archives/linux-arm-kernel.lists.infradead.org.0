Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60943F7807
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 16:50:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4cd1kabP0I7iDhedd6TJcuC4uQTfTWF0b/syBB8yiy4=; b=On6Jrxg+dPUszr2KrnPqIW8nt
	ieW7d418B0m/pOhiIga75qKacBYny971KRx7I8xpv1Ijy4Ydvvr8LlTSyQ+5Y9b9H20aXiMVVb792
	uxfzc99zhEm2zwMJLyjglw3J6r+cmZSP3nmuYj4L3VMfNzmNzRUcMwWQYo3nbf5ImmT+Lk0nfsptU
	iKlVSb8JVdy6pIenUNpSNtYtl7NwLLKZ3oCemt/WH9R1UTEUfJl48mdxbRiDJfrXyKm1yk0xbJ0ba
	7BuVtzjxEbDVoLDCH9JnTTKIYVcGSIgJ6Ecrf2zf/TDIgnKXNR/H2PIBcSFCa4ohP9Aa7FFEkSjqk
	Y5bpSqNoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUBxF-0004pf-K8; Mon, 11 Nov 2019 15:50:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUBx4-0004CG-Er
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 15:50:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C61B931B;
 Mon, 11 Nov 2019 07:50:00 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 16A893F534;
 Mon, 11 Nov 2019 07:49:59 -0800 (PST)
Subject: Re: [PATCH] firmware: arm_scmi: Remove set but not used variable 'val'
To: Zheng Yongjun <zhengyongjun3@huawei.com>, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org
References: <20191110103010.117132-1-zhengyongjun3@huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <64a46661-40a6-eb7e-d225-1085b86572d0@arm.com>
Date: Mon, 11 Nov 2019 15:49:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191110103010.117132-1-zhengyongjun3@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_075002_548308_9C186A3E 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Hulk Robot <hulkci@huawei.com>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/11/2019 10:30, Zheng Yongjun wrote:
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/firmware/arm_scmi/perf.c: In function scmi_perf_fc_ring_db:
> drivers/firmware/arm_scmi/perf.c:323:7: warning: variable val set but not used [-Wunused-but-set-variable]
> 
> val is never used, so remove it.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> ---
>   drivers/firmware/arm_scmi/perf.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
> index 4a8012e3cb8c..efa98d2ee045 100644
> --- a/drivers/firmware/arm_scmi/perf.c
> +++ b/drivers/firmware/arm_scmi/perf.c
> @@ -319,10 +319,8 @@ static void scmi_perf_fc_ring_db(struct scmi_fc_db_info *db)
>   		SCMI_PERF_FC_RING_DB(64);
>   #else
>   	{
> -		u64 val = 0;
> -
>   		if (db->mask)
> -			val = ioread64_hi_lo(db->addr) & db->mask;
> +			ioread64_hi_lo(db->addr) & db->mask;
>   		iowrite64_hi_lo(db->set, db->addr);

FWIW, compared to the SCMI_PERF_FC_RING_DB() macro, this looks like the 
wrong "fix".

Robin.

>   	}
>   #endif
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
