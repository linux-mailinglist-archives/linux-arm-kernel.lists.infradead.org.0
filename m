Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC379834C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VAc6V9bxd2WluB4ZCTdw3TTvZJCV69djL7L1dJgW178=; b=DFxyNlWcXXMhwbbApMuvR6wlD
	nMsUqRqjR18jVKEmIWSII57hoHED+gO5yijuYY7oUVAI4ESwUnvFfB1A6NRxzAQhLS1gM/sKx4Xez
	5adFifKBDb63xAImdBCJV2gEtoe+xlHsewgD9ysdEpLtgcoAkB+SvalqZugUiCqmyjSXGfMx8zNK6
	B8npbuQv3qOWVui4Vz0RYwW3qCKRe2LxkFhb25aDgZamIlqLkVKJum1nrhZ6MEVc0t6bx6BIEbaE9
	bXuryeJxi8wbuRAgYe+IE0kpDQzDpoTPB71jy/Uax/Du1dQW8KU8xphqbO9bT5o/V+1sKrGh5EnTN
	sqARTR7hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VaV-0006FC-Sk; Wed, 21 Aug 2019 18:44:03 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VaK-0006E6-7a
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:43:53 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5CF5123C61D29CF5A623;
 Thu, 22 Aug 2019 02:43:47 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Thu, 22 Aug 2019
 02:43:40 +0800
Subject: Re: [PATCH v2 05/12] irqchip/gic: Prepare for more than 16 PPIs
To: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 "Jason Cooper" <jason@lakedaemon.net>, Julien Thierry
 <julien.thierry.kdev@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20190806100121.240767-1-maz@kernel.org>
 <20190806100121.240767-6-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <c1033d74-2f92-49c4-02df-54121f904384@huawei.com>
Date: Thu, 22 Aug 2019 02:40:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <20190806100121.240767-6-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_114352_450343_71EE6600 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/8/6 18:01, Marc Zyngier wrote:
> GICv3.1 allows up to 80 PPIs (16 legaci PPIs and 64 Extended PPIs),
                                   ^^^^^^
legacy?


Zenghui

> meaning we can't just leave the old 16 hardcoded everywhere.
> 
> We also need to add the infrastructure to discover the number of PPIs
> on a per redistributor basis, although we still pretend there is only
> 16 of them for now.
> 
> No functional change.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
