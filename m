Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22E14B0E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 06:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9pIBLDmpvwCfdK3cWfnWFaFpQMfcHBwC3J/B2U64x20=; b=uDnZAidYQmlj89P/VQ2jV07mJ
	sVFXHu0QJ9kAiashv4IshCOsfJssU/RcJaJ5DrDMkozdC30K6SzIy0w0uB/WnQLrl8vu3QR2wxHkf
	DKLedgyEGDQLjcY92y4meFQaz/ii/ZBdFgFBzTp8ahhhpnNNW79mqeRguI+iAOT1CUWUowJUYphmR
	aun9MLLz7gw61oGfXprMWAbRnmH/lFrqAltpyie8LcCofraBGIOQz3rWyhxMyfttm69Ajn/6TKPpg
	/+nUSlvAEw36cMdA15NkYNLjihm6O9N79Ke7T/QsdXA5X0N+jf9g3RlxjdnxQT/0NTqOaauPo+gVc
	XkmAov32w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdSKK-0001cW-Ak; Wed, 19 Jun 2019 04:36:04 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdSK7-0001bp-G7
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 04:35:53 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5J4Yk4f133604;
 Wed, 19 Jun 2019 04:35:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=ReOw/U0B0z5+s5ITG3P7icDegd9/5IvUV5c71EJZ4Mc=;
 b=iBBR14Jv4W/AlCRkCr6FwMS4kysM4aA0404HL+nT0hmo+4vMbM+n7yifSEV9sYvykFCz
 96SqpYS69jU1AcOV3Ts87RO11rrHBzsSPe9EtmnCoC4ZUNSs8u6BKAzLUTGkW03zzE+s
 9driZkasVO4K5uyi0fzdOd07X9Er1+fGUqd0aFwHXxfFO6TxIw1E8n2+C5INSrSIt6BK
 ek+DcCs/DkRxLTls2GK2xUwjocYkZYxTWa4q0DB0Up2e8t3LLhEqetWTWgL7ImUr1XRm
 JWRYJ2wnoC+ocUnchSSXhS4hgRwvLbBTETvpOsfbPTcIYAIm4qxeaB4TS3xJl9ab/pB+ JQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2t78098ywp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Jun 2019 04:35:45 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5J4Z7l2157071;
 Wed, 19 Jun 2019 04:35:45 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2t77ymuu7q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Jun 2019 04:35:45 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5J4Zhns014934;
 Wed, 19 Jun 2019 04:35:43 GMT
Received: from dhcp-10-159-132-89.vpn.oracle.com (/10.159.132.89)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 18 Jun 2019 21:35:43 -0700
Subject: Re: [PATCH v3 -next] firmware: ti_sci: Fix gcc
 unused-but-set-variable warning
To: Suman Anna <s-anna@ti.com>, YueHaibing <yuehaibing@huawei.com>, nm@ti.com, 
 t-kristo@ti.com, ssantosh@kernel.org
References: <20190614154421.17556-1-yuehaibing@huawei.com>
 <20190615125054.16416-1-yuehaibing@huawei.com>
 <e13fe9fa-4a79-8af5-6968-dfc9364a3c55@ti.com>
From: "santosh.shilimkar@oracle.com" <santosh.shilimkar@oracle.com>
Organization: Oracle Corporation
Message-ID: <3111974c-2052-498c-303e-f953a599be6c@oracle.com>
Date: Tue, 18 Jun 2019 21:35:42 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e13fe9fa-4a79-8af5-6968-dfc9364a3c55@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9292
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=841
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906190036
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9292
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=3 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=888 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906190036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_213552_114076_ABE71665 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/17/19 11:41 AM, Suman Anna wrote:
> On 6/15/19 7:50 AM, YueHaibing wrote:
>> Fixes gcc '-Wunused-but-set-variable' warning:
>>
>> drivers/firmware/ti_sci.c: In function ti_sci_cmd_ring_config:
>> drivers/firmware/ti_sci.c:2035:17: warning: variable dev set but not used [-Wunused-but-set-variable]
>> drivers/firmware/ti_sci.c: In function ti_sci_cmd_ring_get_config:
>> drivers/firmware/ti_sci.c:2104:17: warning: variable dev set but not used [-Wunused-but-set-variable]
>> drivers/firmware/ti_sci.c: In function ti_sci_cmd_rm_udmap_tx_ch_cfg:
>> drivers/firmware/ti_sci.c:2287:17: warning: variable dev set but not used [-Wunused-but-set-variable]
>> drivers/firmware/ti_sci.c: In function ti_sci_cmd_rm_udmap_rx_ch_cfg:
>> drivers/firmware/ti_sci.c:2357:17: warning: variable dev set but not used [-Wunused-but-set-variable]
>>
>> Use the 'dev' variable instead of info->dev to fix this.
>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> 
> Acked-by: Suman Anna <s-anna@ti.com>
> 
> Hi Santosh,
> Can you pick up this patch, goes on top of your for_5.3/driver-soc branch?
> 
Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
