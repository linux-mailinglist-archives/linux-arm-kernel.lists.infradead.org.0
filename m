Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3863810109D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 02:20:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QST4FmmOotDLn0h2qiocPKmXxGXc7qeumnsDh3JXI/4=; b=XXOFKHDRp/raPsYa+Pm/Kmxwe6
	idg2cyrhNDfmCK+OjnVF3xLzMq9QWqi6tA5Gvhf54DlNCm56fIQxgnKdU/z1+O2TJyafGTmg3gbbN
	ceVBH5HZeqlwU0/jrFXsdQMtbnqvrKtm9SvPzRI7R6/xgtdC2xZxIR3s9GM0iOs87MMtJVeVB0Vn3
	GOwXfxS4XPBkOt9S0FbNuSwg+vTxsEv0o0kOmBo2aMXsc5ni3wdLiclwh1zwVvCn+7x3J6iWisq4K
	XtqWF/C0rHX6ZmcRk5fJZqmvxPWO8yLHabqOe8aCuUEQY0sD7ijYxEbUnjMdAAs9Z+/rZX783VUVi
	sAIxZuyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWsBp-0003Um-Ud; Tue, 19 Nov 2019 01:20:22 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWsBc-0003Te-0Y
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 01:20:12 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id CD066DF6A20C892A6598;
 Tue, 19 Nov 2019 09:20:01 +0800 (CST)
Received: from [127.0.0.1] (10.184.213.217) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 19 Nov 2019 09:19:54 +0800
Subject: Re: [PATCH] PCI: exynos: Use PTR_ERR_OR_ZERO() to simplify code
To: Jingoo Han <jingoohan1@gmail.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>, "andrew.murray@arm.com" <andrew.murray@arm.com>, 
 "bhelgaas@google.com" <bhelgaas@google.com>, "kgene@kernel.org"
 <kgene@kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <1574076480-50196-1-git-send-email-zhengbin13@huawei.com>
 <SL2P216MB01057BE74411EC7BE168E193AA4D0@SL2P216MB0105.KORP216.PROD.OUTLOOK.COM>
From: "zhengbin (A)" <zhengbin13@huawei.com>
Message-ID: <34079004-e87c-1799-137f-5a03deedc205@huawei.com>
Date: Tue, 19 Nov 2019 09:19:53 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <SL2P216MB01057BE74411EC7BE168E193AA4D0@SL2P216MB0105.KORP216.PROD.OUTLOOK.COM>
Content-Language: en-US
X-Originating-IP: [10.184.213.217]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_172008_225047_ED84FD66 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2019/11/19 0:35, Jingoo Han wrote:
> On 11/18/19, 6:20 AM, zhengbin wrote:
>> Fixes coccicheck warning:
>>
>> drivers/pci/controller/dwc/pci-exynos.c:95:1-3: WARNING: PTR_ERR_OR_ZERO can be used
>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Signed-off-by: zhengbin <zhengbin13@huawei.com>
> Please write your full name correctly (First name + Second name). 
> If 'zhengbin' is just your first name, you have to add your second name.
> Or, if  'zhengbin' is already your full name, please separate it with capitalized characters and spaces,
> for example, 'Zheng Bin'.

thanks for your remind. In the previous patch, this is rejected, see details on

https://lkml.org/lkml/2019/5/31/535

So please ignore it

>
>> ---
>>  drivers/pci/controller/dwc/pci-exynos.c | 5 +----
>>  1 file changed, 1 insertion(+), 4 deletions(-)
>>
> [.....]
>
> .
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
