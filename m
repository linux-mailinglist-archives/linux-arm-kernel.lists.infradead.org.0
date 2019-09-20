Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A5CB88D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 03:15:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vuE6Kdb3BHOrsrNgYkGmIMOu6s5TP5Kpv2Cvg9y4ao4=; b=Y77ZFcdkeRYeh3gcLz+tiTwa2
	H/spo5I7Q7F6eKX046+6FCYYcYcWXQ4SwgQYUAumVexBdpQtVc2CfhpjJsR7Xygfh3GEPGKAdbQi8
	5tCaIZgkbjqru/J1+5hvuMCkCUa+mZe8RAComlwYj2SjpSE0xn9u/dbPaQjbwvY1AiMtMWayLDI7F
	IggLsnnm5n9SGAkGbUi+d4gdiyYJesVy2fpBvVDfGHgeLMxoGGs9cDKu4JjTNyX4vAzik//Rw8jJx
	2rNBZORh1Eepe7lFQSQ7oLWP4nBNtILv3rBZH6SXit9T/lHgQVNSwJ8at8vlDG5AjceJ1AASsfakG
	Rd0/NFHMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB7Vp-0006ZD-Vv; Fri, 20 Sep 2019 01:15:06 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB7Va-0006VY-4T
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 01:14:52 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8K1EREo029238;
 Fri, 20 Sep 2019 01:14:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=RzT6HGN5ilPEj3ysgPyiLqhQNYwu/YsTmBPbFV7k16U=;
 b=e2fEVBQuQqGhaxn8BGbSwPLu2nDDjWRhocRSxe79g0ssyw9O0PTIn4sWvFoLnEGOp1zF
 XJOMNrTEhC92R51QFkvO/Jbsizal5XVvxkvEUeRp01ayQGr4QExoA+BkvUINKonF5EwA
 WIXhV8tVUlYEdDjCbsK1SsUXCQy7ZEkA/4hGXcycAeeb06Q7bzJht4XxGxv7AhzhaFYR
 8SXdGTjIlfEKbhPbq/tTBfHixH+1V2HUm8ZlcVadUmMC2ti281Dc4fmtvA1k7TrT5kew
 PkMIGxAd1Kj5EqNc40zVmFjQvkHxKxmsQJKPF41V0eTQcskCq+LoZQqG7W4r5mxsH8QE pg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2v3vb57a76-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 20 Sep 2019 01:14:29 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8K1DE3g155216;
 Fri, 20 Sep 2019 01:14:28 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2v3vbh6mw9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 20 Sep 2019 01:14:28 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8K1ERIj023644;
 Fri, 20 Sep 2019 01:14:27 GMT
Received: from [192.168.86.205] (/69.181.241.203)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 19 Sep 2019 18:14:27 -0700
Subject: Re: [PATCH 1/2] soc: ti: big cleanup of Kconfig file
To: Randy Dunlap <rdunlap@infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>
References: <8437a1f9-18f2-dd03-4fea-de5ba71f25c9@infradead.org>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <97a9a11e-7784-111e-c134-ef88bd6b51ec@oracle.com>
Date: Thu, 19 Sep 2019 18:14:25 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <8437a1f9-18f2-dd03-4fea-de5ba71f25c9@infradead.org>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9385
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909200012
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9385
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909200012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_181450_259050_0C96ADE9 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dave Gerlach <d-gerlach@ti.com>, Tony Lindgren <tony@atomide.com>,
 Keerthy <j-keerthy@ti.com>, Sandeep Nair <sandeep_n@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Olof Johansson <olof@lixom.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/19/19 3:33 PM, Randy Dunlap wrote:
> From: Randy Dunlap <rdunlap@infradead.org>
> 
> Cleanup drivers/soc/ti/Kconfig:
> - delete duplicate words
> - end sentences with '.'
> - fix typos/spellos
> - Subsystem is one word
> - capitalize acronyms
> - reflow lines to be <= 80 columns
> 
> Fixes: 41f93af900a2 ("soc: ti: add Keystone Navigator QMSS driver")
> Fixes: 88139ed03058 ("soc: ti: add Keystone Navigator DMA support")
> Fixes: afe761f8d3e9 ("soc: ti: Add pm33xx driver for basic suspend support")
> Fixes: 5a99ae0092fe ("soc: ti: pm33xx: AM437X: Add rtc_only with ddr in self-refresh support")
> Fixes: a869b7b30dac ("soc: ti: Add Support for AM654 SoC config option")
> Fixes: cff377f7897a ("soc: ti: Add Support for J721E SoC config option")
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Olof Johansson <olof@lixom.net>
> Cc: Santosh Shilimkar <ssantosh@kernel.org>
> Cc: Sandeep Nair <sandeep_n@ti.com>
> Cc: Dave Gerlach <d-gerlach@ti.com>
> Cc: Keerthy <j-keerthy@ti.com>
> Cc: Tony Lindgren <tony@atomide.com>
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> @Santosh: MAINTAINERS says that you maintain drivers/soc/ti/*,
> but there is more that Keystone-related code in that subdirectory
> now... just in case you want to update that info.
>
Yes am aware there more drivers and so far I have been taking
care of everything in drivers/soc/ti/*

>   drivers/soc/ti/Kconfig |   20 ++++++++++----------
>   1 file changed, 10 insertions(+), 10 deletions(-)
> 
Patch looks fine to me. Do you want me to pick this up ?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
