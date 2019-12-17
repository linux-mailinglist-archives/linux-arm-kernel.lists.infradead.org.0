Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0001B1234E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 19:32:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yuBojb87CqmKBdAgQ9hjYgLJxDUOqPMHVINhZNRYRgc=; b=hKFSKZbK0OkndopPtHByZXueY
	nMcBPLJ710G/m16bS2J//uUmhbAzcGRJ3oVOzMY0PhP39xPGs304+r7ZRTgJFa8xW1W1Wb2pdTaxk
	u43u4B4XOVvJImhMgE0LxwI9e+MKNbfPHsq1LRhpDPY6pGOFkBa1QQhSXolpCDu5AuqN9trdrYw5D
	M3XtptmlST3wZ2RTCts1zFu/CrSO5aZS3abQn1K8XTphnRD4jeNoTpvZpJr3J1qYO0I1AppSV5g+Z
	IZXl6rOeSLnlh4IEzt6p4kqlRP5gGVnizBGXdqDsjRmY3CTAWFFL2Gn3yKRbxs0ZaUqEqnzeAMsLw
	aa3m/P0kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHeB-00075v-7W; Tue, 17 Dec 2019 18:32:39 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHe1-00074u-7X
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 18:32:30 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBHIOKsX101532;
 Tue, 17 Dec 2019 18:32:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=VLXwZ5VzJPq80xqOoJ02BnfrcnEH06ja95rpjsHRG9o=;
 b=FktRscK/S0i8JKAK3RlJ0FnUPSu36bjwinHPITvDmRbICU3pb/ck31N+H0J0JiLx9KP6
 PY3WKLkgU7tzyTISWX/fBsamdb/glH3lsurxfEivGnebbrUfjevNQYSw7dICPhUBe2fP
 x46rwR3NNBFjQSSQjgbH40Px6HfBRKPBKyO+OlCCWW/cliCTbpnjt9m9YxRcCN4pG7p5
 1DP8S+SPJqj1VLg5grBe2T8B9t2tzkbsI/ugIhTIRjYYtHBrXnlb3nWPtw/Zo34pwIb1
 mjUs7lhUTbe6m54laArBlrXvHVDUrAfchsqiOu4Gs9Ahr6LWMHC5twmQtcUwMZqrkzOa zw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2wvq5ugnp1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 17 Dec 2019 18:32:18 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBHITItG081367;
 Tue, 17 Dec 2019 18:32:18 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2wxm5nng97-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 17 Dec 2019 18:32:18 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xBHIWFSH006455;
 Tue, 17 Dec 2019 18:32:17 GMT
Received: from [10.10.32.221] (/10.10.32.221)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 17 Dec 2019 10:32:15 -0800
Subject: Re: [PATCH] soc: ti: wkup_m3_ipc: Fix race condition with rproc_boot
To: Tony Lindgren <tony@atomide.com>
References: <20191212040314.14753-1-d-gerlach@ti.com>
 <20191217182534.GD35479@atomide.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <05b9f0ff-bbc2-d8a7-3261-54c03a149db8@oracle.com>
Date: Tue, 17 Dec 2019 10:32:14 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191217182534.GD35479@atomide.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9474
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=867
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912170145
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9474
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=930 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912170145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_103229_357671_058C097E 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-omap@vger.kernel.org, Dave Gerlach <d-gerlach@ti.com>,
 linux-kernel@vger.kernel.org, Santosh Shilimkar <ssantosh@kernel.org>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/17/19 10:25 AM, Tony Lindgren wrote:
> Hi,
> 
> * Dave Gerlach <d-gerlach@ti.com> [191211 20:02]:
>> Any user of wkup_m3_ipc calls wkup_m3_ipc_get to get a handle and this
>> checks the value of the static variable m3_ipc_state to see if the
>> wkup_m3 is ready. Currently this is populated during probe before
>> rproc_boot has been called, meaning there is a window of time that
>> wkup_m3_ipc_get can return a valid handle but the wkup_m3 itself is not
>> ready, leading to invalid IPC calls to the wkup_m3 and system
>> instability.
>>
>> To avoid this, move the population of the m3_ipc_state variable until
>> after rproc_boot has succeeded to guarantee a valid and usable handle
>> is always returned.
> 
> Santosh, do you want me to pick this one into my fixes branch?
> 
Sure, go ahead.

Acked-by: Santosh Shilimkar <ssantosh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
