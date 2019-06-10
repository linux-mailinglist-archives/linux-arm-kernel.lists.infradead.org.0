Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B273BACE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 19:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0GitWPBVZxHEgWNtirHL6KZ0ifSdWV+M10WRU/+Dp6w=; b=o2NsLdtkpV2e4bGOP5NzoOIzq
	2z2+rq2O8Ul1qyfoA88YFR+mbqg+tOfG4L3foFRhiu381UFWjWihEW+IDYkNG+2oPX8d2dP1ub59z
	wy/AC4Ux2XMh7t41xSCFB53i3flY8d2JjZf/WvOOFl8ZiVYdn08nsNrmMzvF5KpQlNIICyA2+1AX2
	9v3ook5l+73mbxTkjLpzhNplDtgC2tqr/XOocSscsCpcfgWRtt2zl0XHfiYmbPKv86aw9Cdjk2T33
	Ib5j1D0EX6qRWb9OSevaKZmfcDWqnzgVTQMvUH4MXU68Hffyh5nbjpBn7YS8VJutZNTBA0IubcE+E
	YPg+Vq20g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNuJ-0001T1-4k; Mon, 10 Jun 2019 17:16:31 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNu5-0001Sd-0e
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 17:16:18 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5AH9X9n063504;
 Mon, 10 Jun 2019 17:16:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=ArflQXTEtW7+wS+EJF7tgCpdlxkbA5ggbwnizlvqqmY=;
 b=CyBi/MGtW5w7pnIDqqQqIjJrN02f+Yng2CL6Rd3nXKoW+K0e9Q3vbsj6FfhaI8VQcM9S
 dTcYLiugHXFec3b39vRB7Ud+zDxfCYwImBQt+qEpomFVU2YFG+Zy+t4PPMLBg9JpmYb0
 wio7htbXlMwsZ2t05+Gd50Uf89J1H9rx7e3HMZOIYp2jGuV4K7mWWL/jdJq3HXB934lx
 /aXEBEhZUjaOsWV8mKtEGc253vcNfkAFMLF7sIYMvmB9/39udbSahlqApu34eFyqG3G5
 zyWHLmwZECjPKxcOpa4IlI3Ej8f3ouWoQUA4IkLDT91YD/WUQ1iwxczaklj6sw9XUrgs Zw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 2t02hegcj2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 10 Jun 2019 17:16:10 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5AHEpna070241;
 Mon, 10 Jun 2019 17:16:10 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2t04hxw2m3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 10 Jun 2019 17:16:10 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5AHG4xY003496;
 Mon, 10 Jun 2019 17:16:04 GMT
Received: from [10.209.242.19] (/10.209.242.19)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 10 Jun 2019 10:16:03 -0700
Subject: Re: [PATCH] firmware: ti_sci: Add support for processor control
To: Tero Kristo <t-kristo@ti.com>, Suman Anna <s-anna@ti.com>,
 Nishanth Menon <nm@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>
References: <20190605223334.30428-1-s-anna@ti.com>
 <4302c224-9e50-6320-2585-60bfe0aa2a32@oracle.com>
 <2174bc51-9e28-e519-b936-9e101e2a2a4e@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <ea3bf059-86b0-2d8c-c42d-44c08a6ec808@oracle.com>
Date: Mon, 10 Jun 2019 10:16:03 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
 Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <2174bc51-9e28-e519-b936-9e101e2a2a4e@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9284
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906100117
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9284
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906100117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_101617_149260_3D3D11C2 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/10/19 5:19 AM, Tero Kristo wrote:
> On 08/06/2019 00:35, santosh.shilimkar@oracle.com wrote:
>> On 6/5/19 3:33 PM, Suman Anna wrote:
>>> Texas Instrument's System Control Interface (TI-SCI) Message Protocol
>>> is used in Texas Instrument's System on Chip (SoC) such as those
>>> in K3 family AM654 SoC to communicate between various compute
>>> processors with a central system controller entity.
>>>
>>> The system controller provides various services including the control
>>> of other compute processors within the SoC. Extend the TI-SCI protocol
>>> support to add various TI-SCI commands to invoke services associated
>>> with power and reset control, and boot vector management of the
>>> various compute processors from the Linux kernel.
>>>
>>> Signed-off-by: Suman Anna <s-anna@ti.com>
>>> ---
>>> Hi Santosh, Nishanth, Tero,
>>>
>>> Appreciate it if this patch can be picked up for the 5.3 merge window.
>>> This is a dependency patch for my various remoteproc drivers on TI K3
>>> SoCs. Patch is on top of v5.2-rc1.
>>>
>> I will pick this up for 5.3.
> 
> Santosh,
> 
> There is a pile of drivers/firmware changes for ti-sci, which have cross 
> dependencies, and will cause merge conflicts also as they touch same file.
> 
> Do you mind if I setup a pull-request for these all and send it to you? 
> They are going to be on top of the keystone clock pull-request I just 
> sent today though, otherwise it won't compile (the 32bit clock support 
> has dependency towards the clock driver.)
> 
That will be great Tero.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
