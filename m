Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7700B60E2C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 01:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8/700TinXBsDDy8Ia3ESUQy2bdtmxD1/DpC/RUAuhhU=; b=mY5K3X5unZ/K4Qp1gIAYiCYUb
	b3YaDgfQDMI7d5FzX+6Ewx3m6PAw3aHbZXPV+XuPwcE4kHhE/g1lkN5EOE4NIK7VF4FKhDu8Kdc1E
	BLugkAnY7uN6MRBYykYfHMYuEPMXAGbn3sPmIXy4XDPenQqV/2g15uDcBFO6x6qZc61MTxWpBpmms
	ryrJBtG3kqxpFuoG9276PoZdT7oYWTNRFOjLkCBUmxqMIqpoIIRxYYCs49irYCV6OTEhiclCcxzIO
	M5Vxfh2XnLQvaflGrJkQLXL8RrhEBe6DvAxVlLzYAGcYN/qq7dvIBUcSCsgtHGX/UjG5qZwL7Yp4i
	dGEGyemMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjXx9-0002dG-PM; Fri, 05 Jul 2019 23:49:19 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjXwx-0002cd-L7
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 23:49:09 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x65Nmq8Z024441;
 Fri, 5 Jul 2019 23:48:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=ra6Kem6NMcGrdxwE+HEeI+HohkUxPqCSf76jOp32wYQ=;
 b=rvrbG2U3eV3dzFu+UOQ+/aqMIbxSSzuaI1S2HxcZ5PeCQroTn/s1qQwVak611qZl5aso
 Skilx0Osiu24UvUkRAJdMMpo3shUoxSNcwNVOtzEY8VmZ8iTWjLLBTmKVLzdfWxyGUvI
 GDB9KtMK/M3RLRmMSgMrYjmqLtixNWgNyHDSN6BMqqphq4e98vjC3Qvr4TGUv/UakyZP
 UsCxYpxNGgPKrqulorM5EYG1eNd3Vi92cgsD5Zwv6D2e0h/qp9o64e+3CGjMO56945tL
 3EUCJk41A5j+AmpyWstdGKk5zuHgPQOR6b14vgxXqU9vm3/6qdO82gskbEbC+CIHtWQr JQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2te61emryh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 05 Jul 2019 23:48:52 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x65Nlr6D161763;
 Fri, 5 Jul 2019 23:48:51 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2thxrvncg8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 05 Jul 2019 23:48:51 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x65NmoxQ011788;
 Fri, 5 Jul 2019 23:48:50 GMT
Received: from [10.11.0.40] (/10.11.0.40)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 05 Jul 2019 16:48:50 -0700
Subject: Re: [RESEND PATCH next v2 0/6] ARM: keystone: update dt and enable
 cpts support
To: Grygorii Strashko <grygorii.strashko@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>
References: <20190705151247.30422-1-grygorii.strashko@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <2ef8b34e-7a6e-b3e4-90e0-c4e7f16c2e99@oracle.com>
Date: Fri, 5 Jul 2019 16:48:49 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
 Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190705151247.30422-1-grygorii.strashko@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9309
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907050306
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9309
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907050306
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_164907_786294_5E957EE7 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Murali Karicheri <m-karicheri2@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/5/19 8:12 AM, Grygorii Strashko wrote:
> Hi Santosh,
> 
> This series is set of platform changes required to enable NETCP CPTS reference
> clock selection and final patch to enable CPTS for Keystone 66AK2E/L/HK SoCs.
> 
> Those patches were posted already [1] together with driver's changes, so this
> is re-send of DT/platform specific changes only, as driver's changes have
> been merged already.
> 
> Patches 1-5: CPTS DT nodes update for TI Keystone 2 66AK2HK/E/L SoCs.
> Patch 6: enables CPTS for TI Keystone 2 66AK2HK/E/L SoCs.
> 
> [1] https://patchwork.kernel.org/cover/10980037/
> 
> Grygorii Strashko (6):
>    ARM: dts: keystone-clocks: add input fixed clocks
>    ARM: dts: k2e-clocks: add input ext. fixed clocks tsipclka/b
>    ARM: dts: k2e-netcp: add cpts refclk_mux node
>    ARM: dts: k2hk-netcp: add cpts refclk_mux node
>    ARM: dts: k2l-netcp: add cpts refclk_mux node
>    ARM: configs: keystone: enable cpts
> 
Will add these for 5.4 queue. Thanks !!

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
