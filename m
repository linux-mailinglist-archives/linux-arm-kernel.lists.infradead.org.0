Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7AD47C36
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 10:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FS25e7ayCxpWd4JVDOmEaje5G04wrfWNizMLeYg2js0=; b=a3jw4VIxpf7oh4hbMM+0rDbvU
	9eFvsfiIDtPzRhUCh8eQmESI6PXazc9o7CQw/Jj2C/N3IJwk6NpeN+I7n5rRC/GsGdgC5WbNDC47w
	S/7eYy4CxICcCBR0rZHECnyKTq6qIo3m8kxRm+Oam4ungQg/7IHDdaUdKfxEMwmhqWhlgoOLNOT+s
	Nktyrbujj2NjvfW5J5JDUe/Q9IUrfPa4ufS9dl84I2ovoGz2PJeA9mxBFf4TCf33naNjzaIf7rkwv
	7ZtVsPC9s8U1OeIiYsxXEkF/sRyz5v9srSF4ijBb6BttOKwW+N4ovsde/ZKALPM00owK2SnEZktfw
	JniegFiwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmxM-0006HM-R1; Mon, 17 Jun 2019 08:25:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmx5-0006GT-GS
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 08:25:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C12D628;
 Mon, 17 Jun 2019 01:25:16 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F2FB13F246;
 Mon, 17 Jun 2019 01:25:15 -0700 (PDT)
Subject: Re: [PATCH -next] coresight: replicator: Add terminate entry for
 acpi_device_id tables
To: weiyongjun1@huawei.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190615104440.94149-1-weiyongjun1@huawei.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <06c751dc-0a23-b33b-1ff1-a98d6503408c@arm.com>
Date: Mon, 17 Jun 2019 09:25:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190615104440.94149-1-weiyongjun1@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_012519_595297_D5F3BCBF 
X-CRM114-Status: GOOD (  16.62  )
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

Thanks for the fix, please find my comment below.

On 15/06/2019 11:44, Wei Yongjun wrote:
> Make sure acpi_device_id tables have terminate entry.
> 
> Fixes: 8f35caae1e1f ("coresight: acpi: Support for platform devices")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>   drivers/hwtracing/coresight/coresight-replicator.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
> index 542952759941..0c73dc1073c0 100644
> --- a/drivers/hwtracing/coresight/coresight-replicator.c
> +++ b/drivers/hwtracing/coresight/coresight-replicator.c
> @@ -300,6 +300,7 @@ static const struct of_device_id static_replicator_match[] = {
>   #ifdef CONFIG_ACPI
>   static const struct acpi_device_id static_replicator_acpi_ids[] = {
>   	{"ARMHC985", 0}, /* ARM CoreSight Static Replicator */
> +	{"", 0},

nit: I would leave it {}, instead of creating an empty string.

With that :

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
