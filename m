Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99593397DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 23:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7iVo3mxZbm/PSFREnSFtBZWYc2J8ZqYU9Q5Zhhs0Bis=; b=k9DzjntH1T/VYz7RBBOF4GPcb
	+eoGBp/k6TjLkUDJMXnOkfjqLkdpsdeAnO+opu/tYJETYawooUEBzScj0UUZyE1RWFldOwonDzPTc
	hCnniIy9UrGuStrh1hxd3MBBQ+2EzgfXrNLr/IYOL9XxTtOvJY7vhSI2shR6y5Q+kMpVcB0ltcfWl
	ZX4PYTF1RTRVou6T/xRsXRkj5ZD+gYnKA4Tu1zmiC0QO23tz9RQDhrzFG6Gb9/rdyWoFwSCcso1fc
	kVcl1IsN/pgQOjnpXzKdNQUOgC9q7hNdnz9vxA7rmj65gx8AOt551anfvdyK0KB9+SrLmtvexjYiM
	O09Z7zqZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZMWu-0000yb-04; Fri, 07 Jun 2019 21:36:08 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZMWm-0000y5-8P
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 21:36:01 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x57LYGAY170210;
 Fri, 7 Jun 2019 21:35:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=NXJGCU3/W4wLfQGXPOA3m/uLCu+EtFoy0mWC4Jm7UAs=;
 b=XsBucXSo93RbwXY84AGjQGH8v16k0Q2On6Ld0xxSfgo+N/oRrcQ3eoOjeEA7CTPrpTRs
 LvdcG+hMeZ1sU4Hn+/IYWXWgU58+vQfEEoUDGnROnv4d0VE3MMZ5CwJLa4ZrzwAhCoGo
 1irPK3VQEybxyl0ya37Ai6OjnYDVhFqvN+ZARBQCaxQ+W1b3/SwyVzZ0ajf1cTGSkU0T
 5aWwhqYufdx7HEfjevomknREyFeb0Cryjt9Q0ewADigbHAbDKpik61qoCO1hUId1yq59
 lYJfV5Tqf6p3jvfY+FClpSR6yZxqYsI9YyV80cBJU3FkF4wDdEftp1TvpRT4kMpfVknx 2Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2sugsu0mdv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Jun 2019 21:35:52 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x57LYi48049381;
 Fri, 7 Jun 2019 21:35:52 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2swnhdg3n8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Jun 2019 21:35:51 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x57LZpCl004451;
 Fri, 7 Jun 2019 21:35:51 GMT
Received: from [10.11.0.40] (/10.11.0.40)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 07 Jun 2019 14:35:51 -0700
Subject: Re: [PATCH] firmware: ti_sci: Add support for processor control
To: Suman Anna <s-anna@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Nishanth Menon <nm@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>
References: <20190605223334.30428-1-s-anna@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <4302c224-9e50-6320-2585-60bfe0aa2a32@oracle.com>
Date: Fri, 7 Jun 2019 14:35:50 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
 Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190605223334.30428-1-s-anna@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9281
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=700
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906070142
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9281
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=746 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906070143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_143600_388616_0EA79318 
X-CRM114-Status: GOOD (  18.10  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 6/5/19 3:33 PM, Suman Anna wrote:
> Texas Instrument's System Control Interface (TI-SCI) Message Protocol
> is used in Texas Instrument's System on Chip (SoC) such as those
> in K3 family AM654 SoC to communicate between various compute
> processors with a central system controller entity.
> 
> The system controller provides various services including the control
> of other compute processors within the SoC. Extend the TI-SCI protocol
> support to add various TI-SCI commands to invoke services associated
> with power and reset control, and boot vector management of the
> various compute processors from the Linux kernel.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
> Hi Santosh, Nishanth, Tero,
> 
> Appreciate it if this patch can be picked up for the 5.3 merge window.
> This is a dependency patch for my various remoteproc drivers on TI K3
> SoCs. Patch is on top of v5.2-rc1.
> 
I will pick this up for 5.3.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
