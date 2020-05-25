Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F19331E05BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 06:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f1gP0Wb2L1q2GZNHesk2VLiKCtBAEdOrZDRBps6tXL8=; b=MZrd8lOK0bLxh4/mGA/fxRTAI
	5bagP5l3w2egZoZfw2ivyaXNnm2Hykr3OVRx6tGofuHxJplnDNGBiayfRF/+6tYEcCdzf/Q3RxAq5
	KZbIRZLf34TyFDTTuOyaW9z6vFPxF7Yzbk7f9TyO6Fx8cXKuSa/Lq819wsDJ7vynzMd2XtXjSvg5N
	aE1qIIO6mlzM+g853+3GWphLjMpZgeVPL01wJ8rFHdlh3MvcI65JwMDomx/o7gSC67yheph0p5Ev0
	CT3lfmvpTUGkcGyYIbs95+uAF6rW093pfMy8Ju6yZA1K85389PrxKYOD54cR5J439qFYYXuWFO2Rx
	DYdK1DU1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd4Iw-0001hk-9P; Mon, 25 May 2020 04:01:34 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd4In-0001ga-IH
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 04:01:27 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7A2F656DD459D6BF4860;
 Mon, 25 May 2020 12:01:11 +0800 (CST)
Received: from [10.173.222.27] (10.173.222.27) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Mon, 25 May 2020 12:01:01 +0800
Subject: Re: [PATCH] ACPI/IORT: Remove the unused __get_pci_rid()
To: Hanjun Guo <guohanjun@huawei.com>, <lorenzo.pieralisi@arm.com>,
 <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>
References: <20200509093430.1983-1-yuzenghui@huawei.com>
 <3a2e10af-2999-89e4-fa21-95c1c6411a22@huawei.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <8752dba8-68bf-254c-bb46-dd80d4cd3361@huawei.com>
Date: Mon, 25 May 2020 12:00:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <3a2e10af-2999-89e4-fa21-95c1c6411a22@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_210125_767285_453D896E 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 2020/5/9 17:56, Hanjun Guo wrote:
> On 2020/5/9 17:34, Zenghui Yu wrote:
>> Since commit bc8648d49a95 ("ACPI/IORT: Handle PCI aliases properly for
>> IOMMUs"), __get_pci_rid() has become actually unused and can be removed.
>>
>> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> 
> Looks good to me,
> 
> Acked-by: Hanjun Guo <guohanjun@huawei.com>

Hi Will,

Could you please take this patch [*] into v5.8 (if it's not too late)?
I've tried and it can be applied to for-next/acpi cleanly.

[*] 
https://lore.kernel.org/linux-acpi/20200509093430.1983-1-yuzenghui@huawei.com/


Thanks,
Zenghui

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
