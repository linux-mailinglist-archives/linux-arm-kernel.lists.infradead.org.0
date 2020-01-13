Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5C0139B6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:29:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OjCM2tH1Ih/FWTZ3wq+K/uCYBaTRG4gStPHIyWlkQ80=; b=eFEmtLz4gm9M27srCAjZffmu/
	wXTli4nhVwZ7v9z4tM3kQ1L1+uve6FB2MSjhejkj/jOel6XvWxI+xjLCnI1iMor0MCzWejLM2cvpI
	ml2EzyvFJrvgr+LJA0UEgdVTXcgabu4ndbaMPVIX4a5jca78GtGTRdmHIF2gy7PXTt1jgNLubG7tK
	BgQcTreMLu/CHNzyWSj2sPNxDrfoUY4kh94xcRaHlxjs+h1jZ4PGbCMV09V/Mka79u9uuLulkU/z2
	lHVYV2L0BOc0CK3yJ54wzCTC+HwsDXxpU+jfrxvHGiFqpB4zi2UQPRYLv688RyqLxOqlY+HvVLlDz
	lJ5R1JcHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7Gd-00021L-Ge; Mon, 13 Jan 2020 21:28:59 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7GW-00020S-5Q
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:28:53 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00DLShVu153496;
 Mon, 13 Jan 2020 21:28:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=kOS3eT26FYkCs3ZW6Ea57yVyzp/mMYsR+c//v2A9eQg=;
 b=Lcox1vkA3UX4fQQOQPCy3lyBWF3NxLYb+0J8QrBIfy+dZ0GixOYTczwifI6n+sqHhf9q
 4dVED11/MOv2fHFLLyr3htzinWFlsqkapYAWQ/1oCm5CGPgDEOsHOnCxlz2K593bXFZ3
 4eVSmHyrcK1mGRSb+otBWBuwdskwOMR7oA1+pGn82VX62YpPa4t+OVR9tCTNh6gEAGBb
 Ls3gh6pXfC7iPX1Lh/jcgH8HNV/X64Ct5jn/znTcf4jfMjAgTt8HE+Zh22JkJukMfYM7
 qCVcxPETOTEwYGvBfCutwZ9vHnuA/06Z+PHprWxx9NMVAt6EmiJIbMrp8dxgYpxwoHkB Qw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2xf74s1r2p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 Jan 2020 21:28:43 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00DLF6fc061634;
 Mon, 13 Jan 2020 21:28:42 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2xfqvtbxpe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 Jan 2020 21:28:42 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00DLSepq008043;
 Mon, 13 Jan 2020 21:28:41 GMT
Received: from [10.209.227.41] (/10.209.227.41)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 13 Jan 2020 13:28:40 -0800
Subject: Re: [PATCH v8 02/18] soc: ti: k3: add navss ringacc driver
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, vkoul@kernel.org,
 robh+dt@kernel.org, nm@ti.com, ssantosh@kernel.org
References: <20191223110458.30766-1-peter.ujfalusi@ti.com>
 <20191223110458.30766-3-peter.ujfalusi@ti.com>
 <6d70686b-a94e-18d1-7b33-ff9df7176089@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <900c2f21-22bf-47f9-5c3c-0a3d95a5d645@oracle.com>
Date: Mon, 13 Jan 2020 13:28:39 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <6d70686b-a94e-18d1-7b33-ff9df7176089@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9499
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001130173
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9499
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001130175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_132852_293885_77A8DBA8 
X-CRM114-Status: GOOD (  20.12  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, vigneshr@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/23/19 3:38 AM, Peter Ujfalusi wrote:
> Hi Santosh,
> 
> On 23/12/2019 13.04, Peter Ujfalusi wrote:
>> From: Grygorii Strashko <grygorii.strashko@ti.com>
>>
>> The Ring Accelerator (RINGACC or RA) provides hardware acceleration to
>> enable straightforward passing of work between a producer and a consumer.
>> There is one RINGACC module per NAVSS on TI AM65x SoCs.
>>
>> The RINGACC converts constant-address read and write accesses to equivalent
>> read or write accesses to a circular data structure in memory. The RINGACC
>> eliminates the need for each DMA controller which needs to access ring
>> elements from having to know the current state of the ring (base address,
>> current offset). The DMA controller performs a read or write access to a
>> specific address range (which maps to the source interface on the RINGACC)
>> and the RINGACC replaces the address for the transaction with a new address
>> which corresponds to the head or tail element of the ring (head for reads,
>> tail for writes). Since the RINGACC maintains the state, multiple DMA
>> controllers or channels are allowed to coherently share the same rings as
>> applicable. The RINGACC is able to place data which is destined towards
>> software into cached memory directly.
>>
>> Supported ring modes:
>> - Ring Mode
>> - Messaging Mode
>> - Credentials Mode
>> - Queue Manager Mode
>>
>> TI-SCI integration:
>>
>> Texas Instrument's System Control Interface (TI-SCI) Message Protocol now
>> has control over Ringacc module resources management (RM) and Rings
>> configuration.
>>
>> The corresponding support of TI-SCI Ringacc module RM protocol
>> introduced as option through DT parameters:
>> - ti,sci: phandle on TI-SCI firmware controller DT node
>> - ti,sci-dev-id: TI-SCI device identifier as per TI-SCI firmware spec
>>
>> if both parameters present - Ringacc driver will configure/free/reset Rings
>> using TI-SCI Message Ringacc RM Protocol.
>>
>> The Ringacc driver manages Rings allocation by itself now and requests
>> TI-SCI firmware to allocate and configure specific Rings only. It's done
>> this way because, Linux driver implements two stage Rings allocation and
>> configuration (allocate ring and configure ring) while TI-SCI Message
>> Protocol supports only one combined operation (allocate+configure).
>>
>> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
>> Reviewed-by: Tero Kristo <t-kristo@ti.com>
>> Tested-by: Keerthy <j-keerthy@ti.com>
> 
> Can you please giver your Acked-by for the ringacc patches if they are
> still OK from your point of view as you had offered to take them before
> I got comments from Lokesh.
> 
Sure. But you really need to split the series so that dma engine and
soc driver patches can be applied independently. Can you please do that?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
