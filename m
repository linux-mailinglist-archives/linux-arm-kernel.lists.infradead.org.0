Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 914E111FD48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 04:50:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6owqEL+fX1gOGiLradEGsLurYla/tMHG3mPTNEkIho=; b=mx+naOBx5ubXjx
	QAoy0e8AadVhyFkJhZ79Et5BsltJvHfqrPBFayDY7Fn99HHm1M0cBkluAj/mARfx+IbVQBpVHTUHW
	Y3CvjSRX8frEjk8cuFKgffpJBwScY0gZRVPg8KRrNAAcnLCU7frRMOv6huit0j+HGEyPohjTkwSIY
	YqrB4OwKIP8VMrly5YfkcI8goA1DZ/1Wk9XMb84yw/xUCsoXy8rk5nV1F42TzMuDE1V4nkZ7JVBBT
	/eW+GFEG54x9M7caVIB7fWaQQPjUb2/XLTZSEvWJNt6KR/STZC1JXI2d9qlYKAim9ALFsTqQgwQ6K
	kEWGdb/enDnE4aB/RAFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ighOi-0007V1-Nq; Mon, 16 Dec 2019 03:50:16 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ighOW-0006ht-Bq
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 03:50:06 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C76EB634CA425675EF14;
 Mon, 16 Dec 2019 11:49:56 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Mon, 16 Dec 2019
 11:49:50 +0800
Subject: Re: [PATCH] ACPI/IORT: fix the iort_id_map function
To: Pankaj Bansal <pankaj.bansal@nxp.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J
 . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
References: <20191215203303.29811-1-pankaj.bansal@nxp.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <ffc5a6e9-cac3-d6c6-fe16-745b4f9e481f@huawei.com>
Date: Mon, 16 Dec 2019 11:49:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20191215203303.29811-1-pankaj.bansal@nxp.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_195004_581347_498988BA 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Jonathan Cameron <jonathan.cameron@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pankaj,

On 2019/12/15 23:12, Pankaj Bansal wrote:
> As per http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf
> in ID mappings:
> Number of IDs = The number of IDs in the range minus one.

Hmm, the spec is confusing, the spec may need to be updated, for example,
for a PCI bus, device ID + function ID will take 8 bits and will be 256
IDs for that PCI bus, not sure why we need to minus one.

> 
> Therefore, it's valid for ID mapping to contain single device mapping which
> would have Number of IDs field 0.

Why not use single mapping flag for this case?

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
