Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D371E22BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 15:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=91iEiIKaxALmkhsHArWfmXSUlMrPlIgSLKqXQjg09Uk=; b=cYi01yFnoV824v
	Kf6e1yMzuWquN6PLxtgevEHejhUvvd5JPI98jwgGaA3mLP+kej390hXlTnE8gkdbhn/jhAYN2RAEg
	1iKzIOUzLMTosmodDKCT5CQBEMcIO18DtGIzNaSAQ0x6mRAfh7SKVvZfO34ZLqzKRAg/FzfsG5qqS
	wvLJ2Akb/ioc5uA1xWraUitxUsQQvejYxcfVami6+zcVNb2iLq5frzkhunnPS47hP6eH9zi2RoXoB
	gcTi7+GtUaI5ydJX8Jgm8wdK39xf7wDMBt7un7bskAOxw+9ZAh86kfoDRzQT+78+OX3sBbdarHK2B
	UXFY3ntLKbUqgIROgUyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdZJV-0006ok-Jj; Tue, 26 May 2020 13:08:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdZJN-0006mU-Uz
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 13:08:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B87671FB;
 Tue, 26 May 2020 06:08:03 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 20CD43F6C4;
 Tue, 26 May 2020 06:08:02 -0700 (PDT)
Date: Tue, 26 May 2020 14:07:52 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Zenghui Yu <yuzenghui@huawei.com>, will@kernel.org
Subject: Re: [PATCH] ACPI/IORT: Remove the unused __get_pci_rid()
Message-ID: <20200526130752.GA23951@e121166-lin.cambridge.arm.com>
References: <20200509093430.1983-1-yuzenghui@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509093430.1983-1-yuzenghui@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_060806_040539_2F5051A4 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: guohanjun@huawei.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, sudeep.holla@arm.com, wanghaibin.wang@huawei.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 05:34:30PM +0800, Zenghui Yu wrote:
> Since commit bc8648d49a95 ("ACPI/IORT: Handle PCI aliases properly for
> IOMMUs"), __get_pci_rid() has become actually unused and can be removed.
> 
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>  drivers/acpi/arm64/iort.c | 9 ---------
>  1 file changed, 9 deletions(-)

Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

If we miss v5.8 (which I think it is likely, even though this patch is
just removing dead code so it is safe at this stage) I will resend it
for v5.9 - not a problem.

Lorenzo

> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index 7d04424189df..ec94dbb60c7a 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -789,15 +789,6 @@ void acpi_configure_pmsi_domain(struct device *dev)
>  		dev_set_msi_domain(dev, msi_domain);
>  }
>  
> -static int __maybe_unused __get_pci_rid(struct pci_dev *pdev, u16 alias,
> -					void *data)
> -{
> -	u32 *rid = data;
> -
> -	*rid = alias;
> -	return 0;
> -}
> -
>  #ifdef CONFIG_IOMMU_API
>  static struct acpi_iort_node *iort_get_msi_resv_iommu(struct device *dev)
>  {
> -- 
> 2.19.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
