Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AD41D9EE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tX1Cxxivi9kE3LUj0IvOTE2mJ21RijE3gSKxwp2mgpE=; b=IyQolVhB1MK2OAOCpTP//4WzR
	iBkB1Z+VgXlPiMOC79O2H+7zDh3bDuzKtM6fvX4oWpYrww8MLqZDr0aJAvKmOz5gdqDv6kFb0WqKa
	8hdu4dz14/VE9dHynTlZQpaB4m0PJ4OzpCQk7LvE3K3F1drZNWhBxKgJJZbrK8XrA4a1jcxgwl8rV
	s4JKvfGiVfQoyd4GA2suuYtMbVHlOGFOxacfdJT2aBHPwxzkY42laxHbNGlzG2EQV8tNgEyKse4Rx
	jVFGhg7kJcL3b0nEtMktlFsdLPMXYZR6nywWoEO3BHW+kVbxRGR/NDxUTacAChIuHIGYcY9KKlcEf
	rDdoiXOrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6h6-0007cW-7l; Tue, 19 May 2020 18:10:24 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6bC-0008Sk-3M
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:04:20 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04JHpj7k050572;
 Tue, 19 May 2020 18:04:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=M6R/9jCPPjZ0Z40jIhYBTQf+9wpABaTJMFO+RN34OXA=;
 b=x+YXCZzBmbzN9frri30aQU4Rzx1EPD/SrJ8k4Ng/E0VhVukGXQJbWVL51owiEWbNAK8a
 UCu9y9zIFOeI6pPJnSu4ynOMmG8hLX0Woq2wIxGv7eM/9pfsTFkKqOIBKI5seAueBzsF
 Etx5w+iZ5uAVz01XmqDQ8TwCk4yC6Pk7Sr1L9B1ZWPenwUPI4s8NY4lxV9jbfvwr6c1B
 Ssa6WhyTiwZxo4WDAlngj5FjD+1ADVz0hKacWl5uItoYup/FjtxEM8Xoz773XuTcqtxr
 MtyZeRWLxJeHUijeLi1oXQ/PR/J0QU7l67CJp9I0l1v1jK2LueyD24ebestsMtS8Tf6W kA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 31284kxyyp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 19 May 2020 18:04:10 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04JHr8nq110322;
 Tue, 19 May 2020 18:04:10 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 312sxt8kj9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 19 May 2020 18:04:10 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04JI483L016827;
 Tue, 19 May 2020 18:04:09 GMT
Received: from [10.74.104.239] (/10.74.104.239)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 19 May 2020 11:04:08 -0700
Subject: Re: [PATCH 1/1] soc: ti: omap-prm: use atomic iopoll instead of
 sleeping one
To: Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>
References: <20200514073718.17690-1-t-kristo@ti.com>
 <20200519174555.GX37466@atomide.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <eff0d78e-7e94-6574-6b17-f3293ef55918@oracle.com>
Date: Tue, 19 May 2020 11:04:06 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200519174555.GX37466@atomide.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9626
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 malwarescore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005190153
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9626
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0
 cotscore=-2147483648 impostorscore=0 malwarescore=0 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 spamscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005190153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_110418_251626_8EA23DA1 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: s-anna@ti.com, linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ssantosh@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/19/20 10:45 AM, Tony Lindgren wrote:
> * Tero Kristo <t-kristo@ti.com> [200514 00:38]:
>> The reset handling APIs for omap-prm can be invoked PM runtime which
>> runs in atomic context. For this to work properly, switch to atomic
>> iopoll version instead of the current which can sleep. Otherwise,
>> this throws a "BUG: scheduling while atomic" warning. Issue is seen
>> rather easily when CONFIG_PREEMPT is enabled.
>>
>> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> 
> Santosh do you want me to pick this for fixes?
> 
Sure Tony. Thanks !!

Acked-by: Santosh Shilimkar <ssantosh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
