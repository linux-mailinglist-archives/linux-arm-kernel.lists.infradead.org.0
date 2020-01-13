Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 113CA138DE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:34:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wQkzOerbaWjPA4dN/YwvUWlyv1MlP9jvrzKq/ylW7MM=; b=ryDIfz2fyyA5k3ndjhHoQFI/T
	BHjSgf2XUFAbyyZO/Us4+VyDzQoILb7Epo40bJLvSM8Fnb9dJnKRc/bk0idrnx22eQcCR8VBcBImb
	vgJDLF6hXXoKmTSlWLlwx37cnuXimjCQ4WtQ+l0PV/BaCt43gm2wRjdwF2RnCYij0dig78Igs6t+G
	shC0vsFOcPZe0SOR+fkef88WQegYW8OR5mbuMaMUQJd2lMnbmIFNqUgKsu4GOs1HM9XqfB+TlFqx9
	CBN5NhPLd7Xcj0ZnqJGm1YYPZeDE5jLJSXCqM+dhjvoFWyoD0YlJNzGHxo7/it1QjaybVEyDKzGx5
	KEnyTZSmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqw7V-0003u0-0p; Mon, 13 Jan 2020 09:34:49 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqw7L-0003sx-Oy
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:34:41 +0000
Received: from lhreml704-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 5D3AED9A5C5F057F3D37;
 Mon, 13 Jan 2020 09:34:31 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml704-cah.china.huawei.com (10.201.108.45) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 13 Jan 2020 09:34:30 +0000
Received: from [127.0.0.1] (10.202.226.43) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 13 Jan
 2020 09:34:30 +0000
Subject: Re: [PATCH v1] ACPI/IORT: Workaround for IORT ID count "minus one"
 issue
To: "Guohanjun (Hanjun Guo)" <guohanjun@huawei.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J.
 Wysocki" <rafael@kernel.org>, Pankaj Bansal <pankaj.bansal@nxp.com>
References: <1577708824-4873-1-git-send-email-guohanjun@huawei.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <d3af932c-106e-ee6e-56d3-5a665fd9b357@huawei.com>
Date: Mon, 13 Jan 2020 09:34:29 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <1577708824-4873-1-git-send-email-guohanjun@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.43]
X-ClientProxiedBy: lhreml729-chm.china.huawei.com (10.201.108.80) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_013439_958223_2933EBAA 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/12/2019 12:27, Guohanjun (Hanjun Guo) wrote:
> +};
> +
> +static bool apply_id_count_workaround;
> +
> +static struct iort_workaround_oem_info wa_info[] __initdata = {
> +	{
> +		.oem_id		= "HISI  ",
> +		.oem_table_id	= "HIP07   ",
> +		.oem_revision	= 0,
> +	}, {
> +		.oem_id		= "HISI  ",
> +		.oem_table_id	= "HIP08   ",
> +		.oem_revision	= 0,
> +	}
> +};

Am I right in saying that any future BIOS for these chipsets will have 
to continue to have buggy firmware? If so, it's unfortunate.

Thanks,
John

> +
> +static void __init
> +iort_check_id_count_workaround(struct acpi_table_header *tbl)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(wa_info); i++) {
> +		if (!memcmp(wa_info[i].oem_id, tbl->oem_id, ACPI_OEM_ID_SIZE) &&
> +		    !memcmp(wa_info[i].oem_table_id, tbl->oem_table_id, ACPI_OEM_TABLE_ID_SIZE) &&
> +		    wa_info[i].oem_revision == tbl->oem_revision) {
> +			apply_id_count_workaround = true;
> +			pr_warn(FW_BUG "ID count for ID mapping entry is wrong, applying workaround\n");
> +			break;
> +		}
> +	}
> +}




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
