Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBE5BAC20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 02:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3rL7yyfHUX5hbxshKdkhot0RV7al9f4agwqrwjMNa+s=; b=sdx3gpQvD9xsC2WxwQhlmEAGS
	fvkF+Ghbls2fI7VNBGkq5FGK0hSSXeT8IqZFFCjzU6Ly8fFnNTAALOyJahuaGwaUhnY4ngjqJPHda
	5RgHAgEweazHW4qpQ30b1Wm5dmSs0SOB9BzCvgY6GkMd5mhi5TGlkvMG1iedjp7PxJoiR3JoS7YFy
	VTXlhjq+cYs516qqQ/SMQ4Pj1chrG83zeBrC2AFLE8dnWTLUSbcS7uqhHtqYjdL4e9GsqmmeVdeqT
	nTvP4qbbkGdz+DUYPp6tqWVMx8UhLbuBXeskHrS+f6z+ODi1YgSMJ0KIi0c0ms8TKBt0lGM8ENq6r
	jUfMXSzgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCBsN-00007K-Ld; Mon, 23 Sep 2019 00:06:47 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCBsC-00006x-BU
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 00:06:37 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8N04cKD035584;
 Mon, 23 Sep 2019 00:06:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=aU7M5LCio0fxm4qTM0vCotZ+jtgfst/hqgJYmzVKKb8=;
 b=H301uengOiZWM3iD+AI26UsGbCCTaV0aJzB6XwsI6/CqI6LULs1SVgsQKMmXnuAFLXaV
 +uYD5WQsbiCutbmjDS14GdMfqOWmnQlGVJ/n9gxukAvQ4TmXXebzBp3+B0bMlm/VU6Gr
 wS0Z5uzi0Nt9+xZV49luN58UWZogRBnfeeHxmgC+GEu1sA+2TBMIy7dUvuhSBbr/ur9E
 ZS4BaUO4fm0sB26XcI6EHUQHBLxFVDasTCm0NVsAZM9PAn4wl4XrPcOXqq8061JxyKWS
 UtK5Uv/sLdj+mzd9p94zfjWE5+ycZkPAWVIeJAp9gUPp55dFhFMJvfMXnTA9Xrm4n6jX YA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2v5cgqkpax-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Sep 2019 00:06:06 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8N04HS1155112;
 Mon, 23 Sep 2019 00:06:05 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2v590ja534-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Sep 2019 00:06:05 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8N05tcG000312;
 Mon, 23 Sep 2019 00:05:56 GMT
Received: from [192.168.86.205] (/69.181.241.203)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 22 Sep 2019 17:05:54 -0700
Subject: Re: [PATCH 2/2] soc: ti: move 2 driver config options into the TI SOC
 drivers menu
To: Randy Dunlap <rdunlap@infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>
References: <ae4b494c-9723-1bc2-e471-e0e9f7df6e8f@infradead.org>
 <2f0cd6cf-83c3-f60f-3d72-fd0cec64105e@infradead.org>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <4205a7aa-1f51-23bd-b661-f71f55391c5b@oracle.com>
Date: Sun, 22 Sep 2019 17:05:52 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <2f0cd6cf-83c3-f60f-3d72-fd0cec64105e@infradead.org>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9388
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=902
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909220257
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9388
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=988 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909220257
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_170636_526676_F8E18C19 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>, Benjamin Fair <b-fair@ti.com>,
 Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Olof Johansson <olof@lixom.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/21/19 1:46 PM, Randy Dunlap wrote:
> Hi Santosh,
> 
> Would you also pick up patch 2/2, which I didn't Cc: you on?    :(
> 
> Do I need to resend it?
> 
Yes please. I don't have your 2/2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
