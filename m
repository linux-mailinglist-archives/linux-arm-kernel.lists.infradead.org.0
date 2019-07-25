Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC45755DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 19:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wI/NHbUuXhnGYv8M9vBNUjF/NF/uo8OrrPj9Iubm3QY=; b=qcc0CEh6SrA+q3jqh4bH2Dgd3
	ktUMvBjmS/47TEWsjIjVIKrGVQoJkOHcoLOmquu/Y1gGzrhQqq+9+HhAHx+9OW1xYUAhK/5RrcqNE
	6SOsiSYExjdcgTD1ujSmPkl9XTYR+Yjg12SqAFHdMvgp5oXq9kOxsJL2vICrjyWaeSOJJ0jWYhA1H
	nyW85EUMorHCvjVtJ7mchtZl4rQT2dopTroj9N3ydir0Ch975BvgbS0VZInDud2O63GMoF8A3LyfG
	kS+mZHs72ARYGdjmjn1WWhsDcrvZr2KaWVbPqKPOsFsLMFUY/BVCkQkq3X9whwOShX/flweKhdNU6
	uGSfcmlEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhia-0004no-Pc; Thu, 25 Jul 2019 17:39:52 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhiH-0004nD-R7
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 17:39:35 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6PGtg9G088204;
 Thu, 25 Jul 2019 17:39:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=Dx4wlx5XcwUKUwRpxJkEQH+P2ArgbGIeyktwM5rZk+4=;
 b=aJV4RqkoLTOlTi/GWEGH2CZQh1hE1yv5tWXWEK/SybBheCS0gEUYpyYPTc/auDdE9zdh
 orlDxlf7hzdWXwY4Saj/MUl2285FcRdPDg9NzGy2wmoUpBdaycNXB944O3H6fyFp+TgM
 qJZMZqKpw2vvZHQo/mOxcOuT8YxrPzixdcUD9JWx3jMA3ApEi1FlPK9wIcTjTWsQu9gN
 3y7jwNJlyfeaXbvWVkNcOXCVeHcmoaX6Z61sV4Rt/aOmUGhF4l6MJoHXvqrgI1lCKMZK
 6W0X8M01fMj6yAQpGoNCP40H/XlETWHzqwyJg0uJCkHm8GZxLbk9ypexL1rEsXD9UKnv 7g== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2tx61c5j4c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Jul 2019 17:39:26 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6PFwH15078851;
 Thu, 25 Jul 2019 17:39:26 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2tx60yf0h4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Jul 2019 17:39:25 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x6PHdOV7022696;
 Thu, 25 Jul 2019 17:39:24 GMT
Received: from [10.159.250.232] (/10.159.250.232)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 25 Jul 2019 10:39:24 -0700
Subject: Re: [PATCH v4 0/5] soc: ti: k3: Allow for exclusive and shared device
 requests
To: Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
References: <20190722050757.29893-1-lokeshvutla@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <d549d2e9-c375-2c46-e4bc-e3a572c90f11@oracle.com>
Date: Thu, 25 Jul 2019 10:39:23 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190722050757.29893-1-lokeshvutla@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9329
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1907250188
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9329
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1907250188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_103933_964188_2E16405D 
X-CRM114-Status: GOOD (  25.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 7/21/19 10:07 PM, Lokesh Vutla wrote:
> Sysfw provides an option for requesting exclusive access for a
> device using the flags MSG_FLAG_DEVICE_EXCLUSIVE. If this flag is
> not used, the device is meant to be shared across hosts. Once a device
> is requested from a host with this flag set, any request to this
> device from a different host will be nacked by sysfw.
> 
> Current tisci firmware and pm drivers always requests for device with
> exclusive permissions set. But this is not be true for certain devices
> that are expcted to be shared across different host contexts.
> So add support for getting the shared or exclusive permissions from DT
> and request firmware accordingly.
> 
> Changes since v3: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=103447
> - Rebased on top of v5.3-rc1
> - Updated power-domain cells for j721e.
> - Mark the console uart as shared in am65x-base-board
> - Added Reviewed-by from Rob
> 
> Lokesh Vutla (5):
>    firmware: ti_sci: Allow for device shared and exclusive requests
>    dt-bindings: ti_sci_pm_domains: Add support for exclusive and shared
>      access
>    soc: ti: ti_sci_pm_domains: Add support for exclusive and shared
>      access
>    arm64: dts: ti: k3-am654: Update the power domain cells
>    arm64: dts: ti: k3-j721e: Update the power domain cells
> 
>   .../bindings/soc/ti/sci-pm-domain.txt         | 11 ++++-
>   MAINTAINERS                                   |  1 +
>   arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 44 +++++++++---------
>   arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       | 10 ++---
>   arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    |  6 +--
>   arch/arm64/boot/dts/ti/k3-am65.dtsi           |  1 +
>   .../arm64/boot/dts/ti/k3-am654-base-board.dts |  1 +
>   .../dts/ti/k3-j721e-common-proc-board.dts     |  4 ++
>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 20 ++++-----
>   .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  6 +--
>   arch/arm64/boot/dts/ti/k3-j721e.dtsi          |  1 +
>   drivers/firmware/ti_sci.c                     | 45 ++++++++++++++++++-
>   drivers/soc/ti/ti_sci_pm_domains.c            | 23 +++++++++-
>   include/dt-bindings/soc/ti,sci_pm_domain.h    |  9 ++++
>   include/linux/soc/ti/ti_sci_protocol.h        |  3 ++
>   15 files changed, 136 insertions(+), 49 deletions(-)
>   create mode 100644 include/dt-bindings/soc/ti,sci_pm_domain.h
> 
Please split this patch series so that drivers and arch, dts patches
can be queued by respective trees.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
