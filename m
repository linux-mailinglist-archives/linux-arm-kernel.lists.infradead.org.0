Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 247F434227
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXKAxNhvON44iUAEhK4QD8ykpWaQquFQRGBOoASXJFg=; b=AcGdgu6e9yPIVC
	x4eLlOqwKxNY3uxSSqjMOV/7QDCGoRu+ctMvieLyyZy4Tb6S9qHY/IysJZ7dSp34HtucQedkG/CEW
	cMkYUwGkpFpuPu9OsqC7ZiptXdr26TAl1EN0+uUE45B0eV7Z4MuZC4MN15mmg13AcizN/8C5AC9DD
	XHwFrLTcUZTjqPEPbKtDPNVLkJNbGVKWTxLCKfTpYOwqkFiFnMnIxo6WSCQAnxwTJmqiLPQI0g6Yr
	EgvzwyAbuO4vg32Uj4dJUKXoeYw7nNb8CMIem01RMnsU2vzC/rUQnz/leYKZxOFLrQ/Hb2Mdkalcf
	UjHmXc2kHrq09Kks2zuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY59Q-0001lh-OD; Tue, 04 Jun 2019 08:50:36 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY59J-0001l5-Sd
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:50:31 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id A3F2418011D589A9DC9A;
 Tue,  4 Jun 2019 16:50:23 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 4 Jun 2019 16:50:18 +0800
Subject: Re: [PATCH v2 0/2] minor fixes for perf cs-etm
To: <mathieu.poirier@linaro.org>, <suzuki.poulose@arm.com>,
 <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
 <namhyung@kernel.org>, <arnaldo.melo@gmail.com>
References: <20190321023122.21332-1-yuehaibing@huawei.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <b5d842f9-3475-2560-2933-9a1984c1641a@huawei.com>
Date: Tue, 4 Jun 2019 16:50:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190321023122.21332-1-yuehaibing@huawei.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_015030_150576_0D35D7EA 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Hi,

Friendly ping:

Arnaldo, will you take this serial?

On 2019/3/21 10:31, Yue Haibing wrote:
> From: YueHaibing <yuehaibing@huawei.com>
> 
> v2:
> - patch 1 fix commilt log
> - patch 2 use correct Fixes tag
> 
> This patch series fixes two issue:
> 1. fix pass-zero-to-ERR_PTR warning
> 2. return correct errcode to upstream callers
> 
> YueHaibing (2):
>   perf cs-etm: Remove errnoeous ERR_PTR() usage in in
>     cs_etm__process_auxtrace_info
>   perf cs-etm: return errcode in cs_etm__process_auxtrace_info()
> 
>  tools/perf/util/cs-etm.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
