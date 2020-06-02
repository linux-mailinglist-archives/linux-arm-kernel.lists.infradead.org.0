Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D48F31EC357
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 22:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dYQF9cDYzJ70FeWl0zA+EqHipcRd401QHNJFCFKVFb4=; b=r5RkJrlAYIGn/PEcAMJ7AobVC
	Z5tH84ZElQQmC5hv5lw4xnQOSy0xfJIsRH7OwheVhm0dch5xQn94UhEra4NH36oGSbXCZ5saCGi7z
	jLZXi1bGObB09PoO2g8qs+sh24aVbYttzQrkROYIy01WfBJCQpxfXVAIZNvm58YvdMI7pdZV0rJSI
	55ELVbPAcH+bMO2QbMBLkHqyhc+1OYu/eeaYVMHi7FNJJrn0S1unl1l+0VPXJ0UzfO7xuETYnHPeY
	WnMxFA5jY4II9xoFqo37ny12heAH8F/sR/HOFdSch1vqaBHyr5UrQd84KJWKEqZzXvCMKW5+KyjeN
	xM7keA1Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgD8o-00087b-Iu; Tue, 02 Jun 2020 20:04:06 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgD8e-00086S-Ev
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 20:03:57 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052JuRST168397;
 Tue, 2 Jun 2020 20:03:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=RbXyOEzE6zM8uxomZsRMQBNr7Puu7c5FQsKqs0NUrkg=;
 b=AHutea8/u/8YUuoXhLNd6eGd4ymUEwdDSkWmJxgBV2ShLXEKBymxveywJUuaG+UwFI4I
 ZUATkMYeARyGmDnFOWaqS41aKB5QwoMNkHlOd4ZQyEPpAvOMWLXQZuXFfuuQN3j2M6Ep
 6HNyJz63SDjn5z7j7yP/9zOBWHqlYWV1YOzRyvZbSIFl7unY3wIcCGAvdv9J2624rtIQ
 1ip4xblLkxOz9Z2zMtiPo+it3/ywjMFL1dRd9imUzB+fZssRF3ehbt4musq8Qs1D9bOX
 T5OxntrzpYCFwrhjPltNeI20pnWzq/IZUom8lJFPyOAqpirhdkIFTf5jdBFNwQPEKDVu MQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 31bfem5txn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 02 Jun 2020 20:03:50 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052Jvw5e065137;
 Tue, 2 Jun 2020 20:03:50 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 31c25pvhyx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Jun 2020 20:03:50 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 052K3moi020846;
 Tue, 2 Jun 2020 20:03:49 GMT
Received: from [10.74.110.208] (/10.74.110.208)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Jun 2020 13:03:48 -0700
Subject: Re: [GIT PULL] ARM: Keystone DTS updates for 5.7
To: Arnd Bergmann <arnd@arndb.de>
References: <1583603819-9651-1-git-send-email-santosh.shilimkar@oracle.com>
 <8750635a-37de-f4d0-08b1-16e904be2de7@oracle.com>
 <CAK8P3a1v7V=980HasrQ8t96mLG3wHWW1SXwbXDL5o=F1oFd-Fg@mail.gmail.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <0853f89a-4a47-f0c3-9a60-6e3bc2ca3323@oracle.com>
Date: Tue, 2 Jun 2020 13:03:46 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1v7V=980HasrQ8t96mLG3wHWW1SXwbXDL5o=F1oFd-Fg@mail.gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0 spamscore=0
 malwarescore=0 bulkscore=0 mlxscore=0 phishscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006020146
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1015
 impostorscore=0 adultscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006020146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_130356_584651_C1476FA3 
X-CRM114-Status: GOOD (  22.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
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
Cc: Olof Johansson <olof@lixom.net>, arm-soc <arm@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/2/20 1:00 PM, Arnd Bergmann wrote:
> On Tue, Jun 2, 2020 at 5:14 PM <santosh.shilimkar@oracle.com> wrote:
>>
>> Hi Arnd, Olof,
>>
>> On 3/7/20 9:56 AM, Santosh Shilimkar wrote:
>>> The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:
>>>
>>>     Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)
>>>
>>> are available in the git repository at:
>>>
>>>     git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git tags/keystone_dts_for_5.7
>>>
>>> for you to fetch changes up to 7856488bd83b0182548a84d05c07326321ae6138:
>>>
>>>     ARM: dts: keystone-k2g-evm: add HDMI video support (2020-03-07 09:47:24 -0800)
>>>
>>> ----------------------------------------------------------------
>>> ARM: Keystone DTS updates for 5.7
>>>
>>> Add display support for K2G EVM Board
>>>
>>> ----------------------------------------------------------------
>>> Jyri Sarha (2):
>>>         ARM: dts: keystone-k2g: Add DSS node
>>>         ARM: dts: keystone-k2g-evm: add HDMI video support
>>>
>>>    arch/arm/boot/dts/keystone-k2g-evm.dts | 101 +++++++++++++++++++++++++++++++++
>>>    arch/arm/boot/dts/keystone-k2g.dtsi    |  22 +++++++
>>>    2 files changed, 123 insertions(+)
>>>
>> Looks like this pull request wasn't picked. Can you please check
>> in case am missing something.
> 
> I pulled it now, thanks for double-checking!
> 
> The problem here was that the soc@kernel.org address was not on Cc, so
> the pull request did not end up in patchwork. I try to also look for other
> pull requests sent to the arm@kernel.org address, but it's much less reliable.
> 
Thanks Arnd. I started copying soc@kernel.org as well for pull request
after Olof's suggestion. This one was sent before that.

Regards,
Santosh



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
