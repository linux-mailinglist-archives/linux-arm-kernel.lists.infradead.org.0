Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD16717B97F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 10:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTYsYVBY2rh4fPjk6IhVKhB57YXgWiy6pF/vMhR3yUI=; b=soX5xGTeKoetTw
	QbACkiebrFFmVWgCSuIQ4YPbbVx1BUZO3h5k/34YeTWjYid43Acle437LADddq6MZujE4weFpNnUG
	9vtLmukWtWEgUKJFj9v/SvofLBpqvItuAl0F5m+5AOLvG/cHhc1AAG8koJvWMFs23tB3DNxYhZzLs
	Ri0lhNg4cqfipgL/yAvj1K59U1/key8jwkzWM+6CBoJBx4JbZs0rEpquAL2vrJ0nn18VDk/rn1lCr
	9946ySWUcJxUQSHEwwTwred02CFuNZHZ4pNVBWO6Hij2rCPE2rzagP6cUuIoTjdtqbtH0MEiE/zxR
	rY9PHXqauy07+Mfl4taw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9Ur-00026q-9E; Fri, 06 Mar 2020 09:42:21 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9Uj-00025v-Ja
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 09:42:14 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id CDAE13C7A857DF44D953;
 Fri,  6 Mar 2020 17:42:10 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Fri, 6 Mar 2020
 17:42:08 +0800
Subject: Re: [PATCH 09/11] ACPI/IORT: Drop ATS fwspec flag
To: Jean-Philippe Brucker <jean-philippe@linaro.org>, <bhelgaas@google.com>,
 <will@kernel.org>, <robh+dt@kernel.org>, <lorenzo.pieralisi@arm.com>,
 <joro@8bytes.org>, <baolu.lu@linux.intel.com>, <linux-doc@vger.kernel.org>,
 <linux-pci@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-acpi@vger.kernel.org>,
 <iommu@lists.linux-foundation.org>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
 <20200213165049.508908-10-jean-philippe@linaro.org>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <5c4855e4-381a-771e-d26d-0d0ad534e776@huawei.com>
Date: Fri, 6 Mar 2020 17:42:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20200213165049.508908-10-jean-philippe@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_014213_811599_622DCDB3 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, rjw@rjwysocki.net, sudeep.holla@arm.com,
 amurray@thegoodpenguin.co.uk, robin.murphy@arm.com, dwmw2@infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/2/14 0:50, Jean-Philippe Brucker wrote:
> Now that the ats_supported flag is in the host bridge structure where it
> belongs, we can remove it from the per-device fwspec structure.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/acpi/arm64/iort.c | 11 -----------
>  include/linux/iommu.h     |  4 ----
>  2 files changed, 15 deletions(-)

Acked-by: Hanjun Guo <guohanjun@huawei.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
