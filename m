Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB69117D999
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 08:10:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LQgLpuNM8IPO8nc3J/gBpo/tijB333aqo5V3hSeqC3E=; b=ibihFprffPcXt9
	09GHsoDqe+lT5wVfQ1R2vc7upRRrq82/3yw+aacG+atQ6oorxviMSgyCPkkkIxuHMzuMAkY0cvwMb
	Tg5c1eirczkz+fqNnPsbaAiQDZ7Wc3g1ffZjPiRwo39ipfPv+Nhd6YaA7/PW2hsHA+eniA+KCUxjw
	4IIyvoErPv7yDbMvGeeT1If+0uLVGnc6clNWuCOB7sF4ab22SM7vmikPC2hnItk6xymsUX1JIkqOA
	9HcglJ2yU9oNizzxJkW6YpHECT0v7oxOeSlsRdiuy6pSq3S9t+/mKVo+FEUiVYuTTbV4SgAKsdL1z
	LcnSyX3Cpk6aa6a7wAvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBCYK-0003B3-E3; Mon, 09 Mar 2020 07:10:16 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCYC-0002n5-P9
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 07:10:10 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0297A0fD010391;
 Mon, 9 Mar 2020 02:10:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1583737800;
 bh=uZAT8o07ZjnRf5vBt9YtdwA7qFwAH2KyAIpBPpjxOzM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=O+owxSwo5ZuYAsLRqzOQcQTztjfmer4a/5uQZyihMDROaHptvvljVCu6RvQZ0pR8t
 7k4ei8ZsVpiozO0DPJEg1TWnEy6fH/X/zB3+7rgXd1R/YUSA73TvX/HLuk/YOw4REL
 bvUOZO1w128iv46Iv7AX8Sqeu0sb13jJGYXIXRhE=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0297A0tZ077937
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 9 Mar 2020 02:10:00 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 9 Mar
 2020 02:09:59 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 9 Mar 2020 02:09:59 -0500
Received: from [10.24.69.157] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02979veZ046277;
 Mon, 9 Mar 2020 02:09:57 -0500
Subject: Re: [PATCH] arm: dts: ti: k3-am654-main: Update otap-del-sel values
To: Tero Kristo <t-kristo@ti.com>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20200109085152.10573-1-faiz_abbas@ti.com>
 <5dc0bca0-502d-01b8-554b-4c4bc06688a8@ti.com>
From: Faiz Abbas <faiz_abbas@ti.com>
Message-ID: <54c5abfd-7ac5-92ba-e89b-aeae9ee4e275@ti.com>
Date: Mon, 9 Mar 2020 12:41:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <5dc0bca0-502d-01b8-554b-4c4bc06688a8@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_001008_924329_80504F35 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, nm@ti.com, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tero,

On 17/01/20 1:38 pm, Tero Kristo wrote:
> On 09/01/2020 10:51, Faiz Abbas wrote:
>> According to the latest AM65x Data Manual[1], a different output tap
>> delay value is optimum for a given speed mode. Update these values.
>>
>> [1] http://www.ti.com/lit/gpn/am6526
>>
>> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> 
> I believe this patch is going to be updated, as the dt binding has
> received comments. As such, going to ignore this for now.
> 

Those other series are merged now so you should be able to pick this up.

Thanks,
Faiz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
