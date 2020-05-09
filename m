Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C291CC024
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 11:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n8q3KmuQDoxcHfi9uOGVWjnPBSQAXQRCH+Kd2jReWaU=; b=SlSRK/nRO83ZrdjD2DdWzHRHi
	STYath7xstHvmUaaFsYQL3CrZ+Cd/1hjRMY1t9SDd3bzXIeAPQ/6y7FkFfNwlvQZbMAax9Oq9cVNu
	13GvE7soIeBP+i5zTIxkogZDhxbvr9R+nzvt2G2+0Cp0YWow/XJBZzcxWI848y8o6eC9VZbq8gIbh
	r32c46qA/aQHy6F5FQGoJZ1d3uaTB4tx2zFbHXN9Jh6qJ7IiFcO3Ab2G61SpZfOPg49Aocbc2O/0Q
	Vdb/aycVQB4gBf9ZuDGWlowHyz6AyRGCYJ8axc/EJ+AnZRLObJRnjdjO0n1NZ4YCJTyuVaQ83WHi1
	w+wCmAzMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXMEO-00024t-U5; Sat, 09 May 2020 09:57:16 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXMED-000243-UR
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 09:57:11 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2FC11136FA923CE6980A;
 Sat,  9 May 2020 17:56:56 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.93) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.487.0; Sat, 9 May 2020
 17:56:49 +0800
Subject: Re: [PATCH] ACPI/IORT: Remove the unused __get_pci_rid()
To: Zenghui Yu <yuzenghui@huawei.com>, <lorenzo.pieralisi@arm.com>,
 <sudeep.holla@arm.com>
References: <20200509093430.1983-1-yuzenghui@huawei.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <3a2e10af-2999-89e4-fa21-95c1c6411a22@huawei.com>
Date: Sat, 9 May 2020 17:56:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200509093430.1983-1-yuzenghui@huawei.com>
Content-Language: en-GB
X-Originating-IP: [10.166.213.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_025710_159277_10C2E40C 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.191 listed in wl.mailspike.net]
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
Cc: rjw@rjwysocki.net, linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 wanghaibin.wang@huawei.com, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/5/9 17:34, Zenghui Yu wrote:
> Since commit bc8648d49a95 ("ACPI/IORT: Handle PCI aliases properly for
> IOMMUs"), __get_pci_rid() has become actually unused and can be removed.
> 
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>

Looks good to me,

Acked-by: Hanjun Guo <guohanjun@huawei.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
