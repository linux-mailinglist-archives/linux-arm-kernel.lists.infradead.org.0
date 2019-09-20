Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3FCB97BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 21:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NCSTqJM96vapp+8ovAve4BXvdmshy3EKSa4exfV8J0I=; b=CO8vAfqyTFt/rUMRJK/57RIu6
	h/cOkBABBeNVpveFC019cFKM/SZUXjAG5WsULLjCD/2t0OtaSwDR+mueEbY3OvN0n+3lA9no678t8
	Xd64Ecvqjymhqp+VHaGo7pAyDWYuedOx6TmTKichKWqWqx7/CXLC2rq5b49nktGgl7zJspU8zTmaW
	czoMBsAcglToDin7Rd+bjElgDdkFh8nYAd6W2mvTiNmqcI2eDzzOf2XOsym4Vtw1uaPid5RWWD92Q
	xRT/wy5Mv4dTx2eACpqo46iwRYnSnsbvkwmU0nh7iuf2MHEyLvq1cAhqbuLIBWHfejBsHK+6Yngo0
	28boxWg/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBOSD-0002QX-PP; Fri, 20 Sep 2019 19:20:29 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBOS6-0002QB-CG
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 19:20:23 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8KJEGx6115790;
 Fri, 20 Sep 2019 19:20:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=NTgWiBq1iOSn7E4DUsV0oOzifM6YvCmeXgLvP8GhXpQ=;
 b=YJKcSsRRnT6afxtXsPMppGt9Rgkn3BMTmHFs4rS80XEMtJlg07xr3xOg0BkHYrBPE0P7
 plAegF0BTsqJu3KYg89buLvo30tikcoaGPK7xcVr6YI2vauuoTBbUT6nOf9U7dlcdRad
 ksMXwxFoKnzLkVIwm1/8z4NUq81YrXd97kh5mglsvKTBdG7cLzQPpCn4LQxC0MVhvIOP
 46S2wPdldNUvautuBloWAPBCLrIvnJ4sZIpXw/RApFzhFx8Y7C0tXE3rxpMAv5RjaBz1
 Qk4KFmbHZsXoFcpggeo6XsUZ0bp4GGdmKQeQOTQFugjOmL42rH0tpChD4HavXf+SaMnj bQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2v3vb5cb1m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 20 Sep 2019 19:19:59 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8KJJWuj126991;
 Fri, 20 Sep 2019 19:19:59 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2v4vpmtufj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 20 Sep 2019 19:19:59 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8KJJvCb002952;
 Fri, 20 Sep 2019 19:19:58 GMT
Received: from [10.209.227.25] (/10.209.227.25)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 20 Sep 2019 12:19:57 -0700
Subject: Re: [PATCHv5 00/10] soc: ti: add OMAP PRM driver (for reset)
To: Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>
References: <20190912113916.20093-1-t-kristo@ti.com>
 <20190920142849.GS5610@atomide.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <13a77bd8-72bd-6a44-9141-d5492be82d82@oracle.com>
Date: Fri, 20 Sep 2019 12:19:56 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190920142849.GS5610@atomide.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9386
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909200156
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9386
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909200156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_122022_555298_40E54FBE 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org, robh+dt@kernel.org,
 p.zabel@pengutronix.de, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/20/19 7:28 AM, Tony Lindgren wrote:
> * Tero Kristo <t-kristo@ti.com> [190912 04:39]:
>> Hi,
>>
>> V5 of the series, re-sent the whole series as one patch was dropped.
>> Changes compared to v3/v4:
>>
>> - removed dependency towards clock driver (patch #5 was completely
>>    dropped compared to v3/v4)
>> - dropped clocks property from dt binding
>> - re-added the pdata patch which was accidentally dropped out (it has
>>    dependency towards this series.)
>>
>> The new implementation (without clock driver dependency) relies on the
>> bus driver to sequence events properly, otherwise some timeouts will
>> occur either at clock driver or reset driver end.
> 
> With the two updated patches seems like we're done with this
> series?
> 
> If so, I suggest either Santosh or me sets up an immutable
> branch against v5.3 or v5.4-rc1 that we all can merge in.
> I will need it for the related dts changes at least.
> 
I will pick this up Tony and apply it once v5.4-rc1 is out.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
