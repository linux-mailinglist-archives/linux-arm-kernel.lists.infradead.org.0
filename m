Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C9C1E18A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 02:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XHGGZsE3K2kifJOTc/5fkc8ePRO4e4mxfDYDCd1WQ2c=; b=ocE0hsp4kpnmJ+
	U1nnVYZt3E2tE1K98N9nz0+362ZXUp7Lhb7NpL+lZqxw6tZmqR5auohrWPFVRFLWAVQ6/i5ICuyqZ
	b7ZpfYOZcdqfBGHmoZZ1f+Ja07qy7OUBoAXWlMDdWscOhIHnPJ6cTcGbT8KtqTm9/sk26G8J0ieDV
	s9R496RruREUeM24FA72VJUo439QjbLNLtvCZ97viIJ60achzf4fk4nj3ljeo0rwuWfOE0BR8YtBv
	q2Ik8gO7lZoLMEHsS3ZQWB2JTqPaaSUYAc71Yd2DmWM0Ct/a0bBLvZLNbyEJycdqxL9DlFthxuoaF
	iAts1zjYnHBUXYZrTDPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdNwL-00054l-2i; Tue, 26 May 2020 00:59:33 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdNw6-00053V-BI
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 00:59:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590454757;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6eA+VGTMrxKe15l1896s+o5D8uO5uEaZ+ep2DD/zbt0=;
 b=Nefn4Mnz5GGubk+kI7m31Td9dFQhYMAMktQDIEpKGThKY6KiPEAJtFDvA2d7+YlC3r8s1T
 5Hg5fqsoqCD8YaAUD34M8KIJMPiy/mistWkfc/CE6Zd2hWkkloT61jWl3m0DvCFvKJ0csD
 j/BsZSjJKYQnuRuxvHi6GOWfJsskvPw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-231-Q7nAuGbRNy6T_74duoFG0Q-1; Mon, 25 May 2020 20:59:13 -0400
X-MC-Unique: Q7nAuGbRNy6T_74duoFG0Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B5E6107ACCA;
 Tue, 26 May 2020 00:59:11 +0000 (UTC)
Received: from localhost (ovpn-12-31.pek2.redhat.com [10.72.12.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 008D55C1BB;
 Tue, 26 May 2020 00:59:06 +0000 (UTC)
Date: Tue, 26 May 2020 08:59:04 +0800
From: Baoquan He <bhe@redhat.com>
To: Chen Zhou <chenzhou10@huawei.com>
Subject: Re: [PATCH v8 2/5] arm64: kdump: reserve crashkenel above 4G for
 crash dump kernel
Message-ID: <20200526005904.GE20045@MiWiFi-R3L-srv>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <20200521093805.64398-3-chenzhou10@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521093805.64398-3-chenzhou10@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_175918_464718_13F9E006 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: horms@verge.net.au, John.p.donnelly@oracle.com, arnd@arndb.de,
 will@kernel.org, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 linux-doc@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mingo@redhat.com,
 guohanjun@huawei.com, tglx@linutronix.de, pkushwaha@marvell.com,
 dyoung@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/21/20 at 05:38pm, Chen Zhou wrote:
> Crashkernel=X tries to reserve memory for the crash dump kernel under
> 4G. If crashkernel=X,low is specified simultaneously, reserve spcified
> size low memory for crash kdump kernel devices firstly and then reserve
> memory above 4G.

Wondering why crashkernel=,high is not introduced to arm64 to be
consistent with x86_64, to make the behaviour be the same on all
architecutres. 

> 
> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
> Tested-by: John Donnelly <John.p.donnelly@oracle.com>
> Tested-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
> ---
>  arch/arm64/kernel/setup.c |  8 +++++++-
>  arch/arm64/mm/init.c      | 31 +++++++++++++++++++++++++++++--
>  2 files changed, 36 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> index 3fd2c11c09fc..a8487e4d3e5a 100644
> --- a/arch/arm64/kernel/setup.c
> +++ b/arch/arm64/kernel/setup.c
> @@ -238,7 +238,13 @@ static void __init request_standard_resources(void)
>  		    kernel_data.end <= res->end)
>  			request_resource(res, &kernel_data);
>  #ifdef CONFIG_KEXEC_CORE
> -		/* Userspace will find "Crash kernel" region in /proc/iomem. */
> +		/*
> +		 * Userspace will find "Crash kernel" region in /proc/iomem.
> +		 * Note: the low region is renamed as Crash kernel (low).
> +		 */
> +		if (crashk_low_res.end && crashk_low_res.start >= res->start &&
> +				crashk_low_res.end <= res->end)
> +			request_resource(res, &crashk_low_res);
>  		if (crashk_res.end && crashk_res.start >= res->start &&
>  		    crashk_res.end <= res->end)
>  			request_resource(res, &crashk_res);
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index e42727e3568e..71498acf0cd8 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -81,6 +81,7 @@ static void __init reserve_crashkernel(void)
>  {
>  	unsigned long long crash_base, crash_size;
>  	int ret;
> +	phys_addr_t crash_max = arm64_dma32_phys_limit;
>  
>  	ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
>  				&crash_size, &crash_base);
> @@ -88,12 +89,38 @@ static void __init reserve_crashkernel(void)
>  	if (ret || !crash_size)
>  		return;
>  
> +	ret = reserve_crashkernel_low();
> +	if (!ret && crashk_low_res.end) {
> +		/*
> +		 * If crashkernel=X,low specified, there may be two regions,
> +		 * we need to make some changes as follows:
> +		 *
> +		 * 1. rename the low region as "Crash kernel (low)"
> +		 * In order to distinct from the high region and make no effect
> +		 * to the use of existing kexec-tools, rename the low region as
> +		 * "Crash kernel (low)".
> +		 *
> +		 * 2. change the upper bound for crash memory
> +		 * Set MEMBLOCK_ALLOC_ACCESSIBLE upper bound for crash memory.
> +		 *
> +		 * 3. mark the low region as "nomap"
> +		 * The low region is intended to be used for crash dump kernel
> +		 * devices, just mark the low region as "nomap" simply.
> +		 */
> +		const char *rename = "Crash kernel (low)";
> +
> +		crashk_low_res.name = rename;
> +		crash_max = MEMBLOCK_ALLOC_ACCESSIBLE;
> +		memblock_mark_nomap(crashk_low_res.start,
> +				    resource_size(&crashk_low_res));
> +	}
> +
>  	crash_size = PAGE_ALIGN(crash_size);
>  
>  	if (crash_base == 0) {
>  		/* Current arm64 boot protocol requires 2MB alignment */
> -		crash_base = memblock_find_in_range(0, arm64_dma32_phys_limit,
> -				crash_size, SZ_2M);
> +		crash_base = memblock_find_in_range(0, crash_max, crash_size,
> +				SZ_2M);
>  		if (crash_base == 0) {
>  			pr_warn("cannot allocate crashkernel (size:0x%llx)\n",
>  				crash_size);
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
