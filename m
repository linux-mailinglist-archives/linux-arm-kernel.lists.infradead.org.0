Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE7A129442
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 11:36:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gmZHxdrexH8paeQORVMO8A+E5pObbF19fZead2FUpgk=; b=SnkJ8xyIoiYeH3eL6giy4CH0F
	GkfWgFSuth7JT+azNV9VB0qDBS0tPa8uyS2LZ0282kXnaRIj219SoQelGNtfFIOlM/XgMZpAvX7Tq
	y/WaoFJEA8Izt8UwGgbXgTuRHIpkx8czU5PRgIy7FC1wA6Kp2XSh8v71JYqKdZm+q+si7l6EBmueN
	tC8vx4PNg4zPwSN2SqpfnMc7hqbQV887hjRwKY39Dz2HUhtGPoRbPGdf/krzfi4MIi6ovoOUlSXQB
	A8L/ybSetvYSWlXPxkAP3z4rdE8ks1Z1taZjpXawYUhzST+uw6qawG2wCBV1YZ6xRHV5nAuIO5Zza
	bKUGFp71A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijL4F-0000EF-4j; Mon, 23 Dec 2019 10:36:03 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijL46-0000Cz-6S
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 10:35:55 +0000
Received: from lhreml708-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 33EC2D8FCD3267545E41;
 Mon, 23 Dec 2019 10:35:44 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml708-cah.china.huawei.com (10.201.108.49) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 23 Dec 2019 10:35:43 +0000
Received: from [127.0.0.1] (10.202.227.179) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 23 Dec
 2019 10:35:43 +0000
Subject: Re: [RFC PATCH 1/2] ACPICA/IORT: Correct the comment for id_count
To: Hanjun Guo <guohanjun@huawei.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J.
 Wysocki" <rafael@kernel.org>, Pankaj Bansal <pankaj.bansal@nxp.com>, "Erik
 Schmauss" <erik.schmauss@intel.com>
References: <1577092997-9852-1-git-send-email-guohanjun@huawei.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <efd1d3fd-0e7c-64af-f226-5f263e48d88c@huawei.com>
Date: Mon, 23 Dec 2019 10:35:43 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <1577092997-9852-1-git-send-email-guohanjun@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.202.227.179]
X-ClientProxiedBy: lhreml727-chm.china.huawei.com (10.201.108.78) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_023554_383502_3DA4A7C9 
X-CRM114-Status: GOOD (  14.94  )
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
Cc: linux-acpi@vger.kernel.org, linuxarm@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/12/2019 09:23, Hanjun Guo wrote:
> In IORT spec
> (http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf),
> id_num means Number of IDs minus one, update the comment.
> 
> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> ---
> 
> This patch just for comments, needs to be upstream in ACPICA first.
> 
>   include/acpi/actbl2.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/acpi/actbl2.h b/include/acpi/actbl2.h
> index e45ced2..382642f 100644
> --- a/include/acpi/actbl2.h
> +++ b/include/acpi/actbl2.h
> @@ -104,7 +104,7 @@ enum acpi_iort_node_type {
>   
>   struct acpi_iort_id_mapping {
>   	u32 input_base;		/* Lowest value in input range */
> -	u32 id_count;		/* Number of IDs */
> +	u32 id_count;		/* Number of IDs in the range minus one */

The IORT spec also uses the term "Length" in the examples...

>   	u32 output_base;	/* Lowest value in output range */
>   	u32 output_reference;	/* A reference to the output node */
>   	u32 flags;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
