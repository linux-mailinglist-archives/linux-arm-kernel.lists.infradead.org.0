Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E881F34F62
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 19:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5fXzn246elQDS/QXYLent2zu/RD+PPCuRlJj2VYMUwA=; b=ZQzIzoVbwmoz+Ldlvbv4WKjF4
	pr4Yc3Xp8nO9UEJVqt2vN6FjM4+b1d5nSJVxKwLRfh3G8HGhCnzTMRWi9G+cssxMA+Ied/MK7sRUj
	Ub2GNtKLXBf4GbGqDEe0tDi7B5EqRlPeKStFQbt/9Mb5yW3gNwaQ9MDiAqamo7R4E6FWE70lIfL8U
	tXshgFLY6dd3hQW+bbJ76qbFudrmFxbP8lEofEm5wh8AQqe5eNMIEPY8D/0ap+mafKU2t1nAtuGd8
	GZYX9AqVRtVJCM1pkWoCSYlW9i3SC2A4rKkOHQyPhgaj9uHEyJZQZv4A/G8n2gcIMzxLM8fgmeKbM
	AExfCzD4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYDew-0006Ip-Iy; Tue, 04 Jun 2019 17:55:42 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYDeo-0006HT-JI
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 17:55:35 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x54HsRK4062059;
 Tue, 4 Jun 2019 17:55:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=I2dCC54Yvnmy1Mikvg0ahxX3ZEk6+/nZ2fqx0icOOQ0=;
 b=RH7wVy0/Q8iRivqVWoWXZo44U48c3aBuTrgtDaWw35kXJAI4ahmqgNESKYru2xypWrQ0
 Fjlwj+tqc/jLZxGqV1pXYo/68jahHkofDvHF++vADB62YYOIB0cagumEhtu4apRyvhYf
 HWsw/SWNnYAdjNs4FEne/5q7D6bA3auHdjOqLw6DxIQvZcEGsqdKblnvE89+bc2ezMOS
 nIP8f+QOBhZWHftfzc1aptfa7QFPP4sMuc0thdnWczsztHYvHPEGdoZycAR9cuXcYLEf
 WY3PLqZrArs2dJMCgFSU2/ZNnVAVT8FzH2SvOX6eGss2iwW016hDr1PP5xwS1Ag7B9fX iw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2sugstekq6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 04 Jun 2019 17:55:13 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x54HsS6e056383;
 Tue, 4 Jun 2019 17:55:13 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2swnh9r200-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 04 Jun 2019 17:55:13 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x54Ht7a6018917;
 Tue, 4 Jun 2019 17:55:08 GMT
Received: from [10.11.0.40] (/10.11.0.40)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 04 Jun 2019 10:55:07 -0700
Subject: Re: [PATCHv2 0/5] clk: keystone: clock optimizations / fixes
To: Tero Kristo <t-kristo@ti.com>, linux-clk@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, ssantosh@kernel.org, nm@ti.com
References: <1559049024-30872-1-git-send-email-t-kristo@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <7d97db9a-71fd-0c44-a4ef-ef4d726cdb20@oracle.com>
Date: Tue, 4 Jun 2019 10:55:06 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
 Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1559049024-30872-1-git-send-email-t-kristo@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9278
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906040113
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9278
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906040114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_105534_726856_C0887017 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/28/19 6:10 AM, Tero Kristo wrote:
> Hi,
> 
> This is a re-base / re-spin of the Keystone clock optimization series [1].
> 
> Changes from v1:
> - rebased on top of 5.2-rc1
> - added support for clk-ids 255+
> - changed patch #3 to parse also 'assigned-clocks' in addition to 'clocks'
>    DT nodes only. This allows automatic (DT based) programming of clocks
>    that are not directly touched by any driver.
> 
> Please note that there is hard dependency between patches 4 & 5, patch #5
> must be applied after patch #4, otherwise bad things will happen (basically
> boot breaks.) The cast magic in patch #4 is done also so that this order
> of patches can be used and bisectability is retained.
> 
Acked-by: Santosh Shilimkar <ssantosh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
