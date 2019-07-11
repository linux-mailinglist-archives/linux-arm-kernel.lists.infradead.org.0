Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BE96591B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 16:33:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxBW5oIioPZn1dC1hpktEckHStPHYYUC9CtoZ3v1cWA=; b=ogzYIr/uTgY7CV
	jfrmTSDyYJxmncwx+VZnRrE5SE3BX0WBOj8nb8Ow4DFB+yr/9Wesio+MtY0U1Qb7amGMeOighyir+
	pkrk8NGIJCpIuXHrbUqeTJVsLOcYgDSEOnNZx6L31rI2T9F66WMLvP8whBiTH7zyDKrPs+so4sU1A
	BDdp4y6aBlmhfeH4tA/8BO3MG/U4LR467q+EapTmx4/juCD36jTQPbDTlGL9CnAdwjb2yeAvTyAv/
	9yPDdCFBF5EFKl6OCa5m5nPWnSW5NpDiTIwDYeui8tVjrHEGDWa3+JsjscarlcMnPLVEvkuByJpEj
	a0w53kHJ5rwxXf3jo0vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hla8c-0008P8-7y; Thu, 11 Jul 2019 14:33:34 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hla8Q-0008O5-Ax
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 14:33:23 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2283CA73C648BEC2DA7B;
 Thu, 11 Jul 2019 22:33:15 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 11 Jul 2019 22:33:10 +0800
Subject: Re: [PATCH v2 0/2] minor fixes for perf cs-etm
To: <mathieu.poirier@linaro.org>, <suzuki.poulose@arm.com>,
 <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
 <namhyung@kernel.org>, <arnaldo.melo@gmail.com>
References: <20190321023122.21332-1-yuehaibing@huawei.com>
 <b5d842f9-3475-2560-2933-9a1984c1641a@huawei.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <d178fc8c-7e6c-0272-4ead-9b4ee15d1e7d@huawei.com>
Date: Thu, 11 Jul 2019 22:33:09 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <b5d842f9-3475-2560-2933-9a1984c1641a@huawei.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_073322_657723_6527954F 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Arnaldo, can you pick this?

On 2019/6/4 16:50, Yuehaibing wrote:
> Hi,
> 
> Friendly ping:
> 
> Arnaldo, will you take this serial?
> 
> On 2019/3/21 10:31, Yue Haibing wrote:
>> From: YueHaibing <yuehaibing@huawei.com>
>>
>> v2:
>> - patch 1 fix commilt log
>> - patch 2 use correct Fixes tag
>>
>> This patch series fixes two issue:
>> 1. fix pass-zero-to-ERR_PTR warning
>> 2. return correct errcode to upstream callers
>>
>> YueHaibing (2):
>>   perf cs-etm: Remove errnoeous ERR_PTR() usage in in
>>     cs_etm__process_auxtrace_info
>>   perf cs-etm: return errcode in cs_etm__process_auxtrace_info()
>>
>>  tools/perf/util/cs-etm.c | 12 ++++++++----
>>  1 file changed, 8 insertions(+), 4 deletions(-)
>>
> 
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
