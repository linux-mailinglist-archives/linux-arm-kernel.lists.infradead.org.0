Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3ED4E8EDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 19:00:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OfW/4pIW2Eyd/dEmx/s1cYgZ3Y/xLDbcDmPPPDtlyD8=; b=Q1OYF7r7nq6OlphJL1fXmXKYp
	BTjjqTm2m6U7LY1IrwfsE4/WZyMlzzdt6lWv1eUuvE5+0t4eg04KBKwhgWrXjD5oMuVRhns2RB7ey
	LzmmoZR+Ud82c7HftHLz4ovCipDw12t6LOargqaYY77+KgfnnZyOovt9odumaYg+5fLVQYryqUlmY
	BQvI/Q4/CarjNcQZIys77Vt/x/WMUzHSf7gmrnz2iCDfe4S16IkG7Ub5QuD8LnFWWPVkRteCf/bbz
	JVywDy1uIBUh9h6hEhRFJ4hSjDf2PUR8i/Orsfa+IjguKEltXPvRtN/TrWoaiVcpcRR2W0LSDPcC7
	jxLuEZ2Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPVmg-0003tH-9X; Tue, 29 Oct 2019 17:59:58 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPVmW-0003rt-Io
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:59:50 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9THnDC8141162;
 Tue, 29 Oct 2019 17:59:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=NibxEBGYCnjU+gMxJTzBvOQSJh74N1uoQV8IyZK77hs=;
 b=A/NChKpM7JIuo4fcwZ0W0q7pFMnedx/bPjsJ+aGobzi6iRYZ6+1qtDpoMRfkf4Oq/e+c
 ijwA8v9OANZydb8P5NdYpaNk3GGW5VIu74LqcyqwAhbrMW3cGw9O4BiRbF7QW2O2PVGI
 QG75Nng9tPzAYJQZEw1x/VMaoP3zpD3mJUu+IZfhsZVYI2g4rUdBUy3iKl6KyZUG23I1
 IFMTgHKgCVfg/Join7p9YEiw53iKBolAZDiQ5OZJZZcU34ECYwCtm/QN56f3hdwNt5Zj
 YbWv83YSBaJFWQvou2nE7PZ9kCG1FM89yiyZFahKuiM1fw/BpK3rezOJiZM/HV6uz55I 7Q== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2vve3qaxc6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Oct 2019 17:59:38 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9THn4LK120202;
 Tue, 29 Oct 2019 17:59:37 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2vxpfdff8a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Oct 2019 17:59:37 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9THxZlo028919;
 Tue, 29 Oct 2019 17:59:35 GMT
Received: from dhcp-10-159-132-196.vpn.oracle.com (/10.159.132.196)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 29 Oct 2019 10:59:35 -0700
Subject: Re: [PATCH -next] soc: ti: omap-prm: fix return value check in
 omap_prm_probe()
To: Wei Yongjun <weiyongjun1@huawei.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Tero Kristo <t-kristo@ti.com>
References: <20191011052436.76075-1-weiyongjun1@huawei.com>
From: "santosh.shilimkar@oracle.com" <santosh.shilimkar@oracle.com>
Organization: Oracle Corporation
Message-ID: <ede6eb9f-0f7c-2f26-7b3d-cd1fb158baa3@oracle.com>
Date: Tue, 29 Oct 2019 10:59:34 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191011052436.76075-1-weiyongjun1@huawei.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=945
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910290159
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=3 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910290159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_105948_715731_0FB40A94 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/10/19 10:24 PM, Wei Yongjun wrote:
> In case of error, the function devm_ioremap_resource() returns ERR_PTR()
> and never returns NULL. The NULL test in the return value check should
> be replaced with IS_ERR().
> 
> Fixes: 3e99cb214f03 ("soc: ti: add initial PRM driver with reset control support")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
Applied

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
