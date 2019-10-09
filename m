Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12602D1375
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 18:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m7+BdQ41IU9CLxlJIXUGMbw0sjNHndH3PTLSu9+y7Yo=; b=kVzr0sruYpDryOsaRYYd+9vhL
	cZyA7Eq0CLsZ7KpK2s6/sdtccyJzt4wqR9OXwL0XmThizuGWzj3sijF1zNYahEgQrPebN00Q+wVV2
	BbNxvYmX3tdlijaxiZXjVS00iMw3r1J5afTVQtd41/SGlOOTj9VnZS94UFBwz4IaVbhRvWoQTn30i
	mmtcV4JE4UdnWBbbQAVlETPaltnFwReo+qFSPnYBgLsWCMX5NR4tq971892HPyUjMsQNnVvh9Y9Kk
	XD3VfGPzZ/2bwT0wwJnSCr2YDV8TMCWMl8KSP13e7fthlzrRfP/PegG9xTDzVoghkAz7NUgR9b2SI
	6uNVEyYXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIEPX-0001Tt-E6; Wed, 09 Oct 2019 16:01:59 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIEPO-0001SS-PO
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 16:01:52 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99Fj1pa166135;
 Wed, 9 Oct 2019 16:01:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=K/UuWzGfUxMEM2oiMN02pZdi5bJGDtU7WGVuefuYem4=;
 b=CjiE7xHMt8aGZBu/BzCRR83hbKS+f3GcfhOM51quBklix4eKzhrztWbC78hJsVwkwXr5
 swHQEmnKKS1oLi+zH33vvjvkA5zENxqvvfTQeL9G171JC0S9jl2DqYH4M5udlNxYjjp8
 r5A+YR04MqW7qMZay2XRj3BwHFroFWT+vSpoQdEqAhRwg2NPc7V7OizjcWPrxKJsc8md
 BxemalTKn467s7avMBvHNjeFxnmwwtSVOokBYU1vhVBW4XZiaaA2KZUqi13zw2RGYs9U
 c1Qi4wLIT3M5Vb8Z5V764bsMXH5UucWxf0HtbpKDGb2F1eHJdlTDZyMwWNR+XT2NpXyJ nQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2vektrnfb1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 16:01:46 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99Fhg44160795;
 Wed, 9 Oct 2019 16:01:45 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2vh8k11mk5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 16:01:45 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x99G1iUu027139;
 Wed, 9 Oct 2019 16:01:44 GMT
Received: from dhcp-10-159-237-174.vpn.oracle.com (/10.159.237.174)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Oct 2019 09:01:44 -0700
Subject: Re: [PATCHv8 0/9] soc: ti: add OMAP PRM driver (for reset)
To: Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>
References: <20191008125544.20679-1-t-kristo@ti.com>
 <20191008140002.GY5610@atomide.com>
From: "santosh.shilimkar@oracle.com" <santosh.shilimkar@oracle.com>
Organization: Oracle Corporation
Message-ID: <5e10f95c-7ec9-d3a7-6862-f6f07a9c1495@oracle.com>
Date: Wed, 9 Oct 2019 09:01:42 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191008140002.GY5610@atomide.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=4
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=831
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090144
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=4 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=911 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_090150_916330_A899FAC2 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 p.zabel@pengutronix.de, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/8/19 7:00 AM, Tony Lindgren wrote:
> * Tero Kristo <t-kristo@ti.com> [191008 05:56]:
>> Hi,
>>
>> Hopefully this is the final revision of the series. Just a repost of v7
>> with the single comment from Philipp fixed, and added reviewed by tags
>> from him for couple of the patches.
> 
> Santosh, when applying these, can you please provide me an immutable
> branch maybe against v5.4-rc1 that I can use as the base for the related
> dts changes?
> 
> For the whole series where not already done, please feel free to add:
> 
> Reviewed-by: Tony Lindgren <tony@atomide.com>
> 
Pushed a branch out with series and your reviewed-by tag. I have tagged
it yet in case Peter's soc patches get ready.

git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git 
for_5.5/driver-soc

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
