Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BABBDA2F39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 07:55:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IHxK/CfoFRT3AZ7oi+O/GsPslx1guT/IPvjJ3XvOSLQ=; b=dCjIXlLvWvtXyb
	EKmpTOarrnB+pdwXZ3PcoLOL+igu+tegXYz24t5dKriVz4amsTkZG4F49FnvneC+hPk6tvjlCTH0s
	YmRoNRaTOcOi8OelX06Huu7FMs6KlCv71ehCm84RmrL+SWyZUMFnsh2oQ8xkiI4derOovcpXbp8Pl
	DdRM4+j2TQFYlUnu0e9WO3ZOf0RTQFmU2hDVCY4z2+dg4xsC87kBOuEWchfdoslXIqE3nJk0Dtqkt
	Y+SX6uhB9ZSkABwDSriJpt4KSvYI170smIy4CbUsbeY/ku8WT3dE9NFHZSiOMkNU9nuvPlFMusTQn
	JeNdhYOWTbew+Dp9lxng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Zt3-0006bn-4I; Fri, 30 Aug 2019 05:55:53 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Zsi-0006Ya-HE
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 05:55:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DA784B613;
 Fri, 30 Aug 2019 05:55:29 +0000 (UTC)
Date: Fri, 30 Aug 2019 07:55:28 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Yunsheng Lin <linyunsheng@huawei.com>
Subject: Re: [PATCH] arm64: numa: check the node id before accessing
 node_to_cpumask_map
Message-ID: <20190830055528.GO28313@dhcp22.suse.cz>
References: <1567131991-189761-1-git-send-email-linyunsheng@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567131991-189761-1-git-send-email-linyunsheng@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_225532_761576_930B1D0E 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: tglx@linutronix.de, anshuman.khandual@arm.com, robin.murphy@arm.com,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 cai@lca.pw, akpm@linux-foundation.org, will@kernel.org, adobriyan@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 30-08-19 10:26:31, Yunsheng Lin wrote:
> Some buggy bios may not set the device' numa id, and dev_to_node
> will return -1, which may cause global-out-of-bounds error
> detected by KASAN.

Why should we workaround a buggy bios like that? Is it so widespread and
no BIOS update available? Also, why is this arm64 specific?

> This patch changes cpumask_of_node to return cpu_none_mask if the
> node is not valid, and sync the cpumask_of_node between the
> cpumask_of_node function in numa.h and numa.c.

Why?

> Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
> ---
>  arch/arm64/include/asm/numa.h | 6 ++++++
>  arch/arm64/mm/numa.c          | 2 +-
>  2 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/numa.h b/arch/arm64/include/asm/numa.h
> index 626ad01..da891ed 100644
> --- a/arch/arm64/include/asm/numa.h
> +++ b/arch/arm64/include/asm/numa.h
> @@ -25,6 +25,12 @@ const struct cpumask *cpumask_of_node(int node);
>  /* Returns a pointer to the cpumask of CPUs on Node 'node'. */
>  static inline const struct cpumask *cpumask_of_node(int node)
>  {
> +	if (node >= nr_node_ids || node < 0)
> +		return cpu_none_mask;
> +
> +	if (!node_to_cpumask_map[node])
> +		return cpu_online_mask;
> +
>  	return node_to_cpumask_map[node];
>  }
>  #endif
> diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
> index 4f241cc..3846313 100644
> --- a/arch/arm64/mm/numa.c
> +++ b/arch/arm64/mm/numa.c
> @@ -46,7 +46,7 @@ EXPORT_SYMBOL(node_to_cpumask_map);
>   */
>  const struct cpumask *cpumask_of_node(int node)
>  {
> -	if (WARN_ON(node >= nr_node_ids))
> +	if (WARN_ON(node >= nr_node_ids || node < 0))
>  		return cpu_none_mask;
>  
>  	if (WARN_ON(node_to_cpumask_map[node] == NULL))
> -- 
> 2.8.1

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
