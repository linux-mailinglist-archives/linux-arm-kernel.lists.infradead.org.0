Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003AF1C6467
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 01:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VQO+DM9yt554/m/WELmiUCxt3zOQKOAGyFrrDzbGUYo=; b=PxY4uovRzs0t+8N+98zYo+t8n
	hoxPsSwzXqNyFAE/2DUDDhr/WvsrCvlpEeU71WbrUufaTRLTG47eTCGOamOogK6hirpBZeEcFBDnL
	pPLiNS/uOB4wEP8UGpgWxxOa2rw34m+WlKsdU9gl5/XHkOZk84NYSVCK9Kk2kaUExSCubiaKKoA+t
	ArKdYk7NtujXzNZQfG3/E7X3NkscG+Clzp0wmq+WNnqomZMmmnB/z82bWQD6wsiFO3eWRmzoPJVo3
	85on91aBpYIig8bighjrsef7tEMAoA2YaySxyvvO4aeQ7Jg9/68sghFraojKxOkWegO/w03l9whQL
	DNZ+Xdk4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW6se-0005U9-Bi; Tue, 05 May 2020 23:21:40 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW6sX-0005TU-6w
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 23:21:35 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 045NHtoc137361;
 Tue, 5 May 2020 23:21:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=M9UOEBWwmZ184fEobRSilNOjw+98cXkdvmHQbspPnsY=;
 b=noLNRkIA3arLBSV/Gy+JnMlFFFlWcsuRRx/XKm3QnFvmsLdVdtUHAHjKeso6l1oMQetI
 DzL0URLbwldIJlBrg8IXt39smovo+u7nBrwT9iLMi7iIkad0QGba532SVAEX85lSUQks
 caMQq55eR6rAWKVyxa+DB/OFLfLInKdJHShNqyH66ryVMek2Q/UguRgWawg4QTVQ0wnw
 dgEZ5aBW+HY+QcW3wgRTJbsFjPgfxS6p7XWuFM/LK8gpk8XJ0nNOV9LOLYrE8uqE/b2c
 X6tR3BNhTDE5rSUWQKarsOJjBCqfQ52u1GoE6BPus2dwpwBgcACTS2s2dcPcQv/gQdbJ NA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 30s1gn7bf5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 05 May 2020 23:21:21 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 045NHiPq009559;
 Tue, 5 May 2020 23:21:20 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 30t1r67h7a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 05 May 2020 23:21:20 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 045NLJI3030865;
 Tue, 5 May 2020 23:21:19 GMT
Received: from [10.159.154.132] (/10.159.154.132)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 05 May 2020 16:21:19 -0700
Subject: Re: [PATCH v2 0/2] soc: ti: add k3 platforms chipid module driver
To: Grygorii Strashko <grygorii.strashko@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, devicetree@vger.kernel.org
References: <20200505193417.2112-1-grygorii.strashko@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <c091ac42-ac28-477c-90a9-4bbe790d42f7@oracle.com>
Date: Tue, 5 May 2020 16:21:17 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200505193417.2112-1-grygorii.strashko@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9612
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 suspectscore=0
 spamscore=0 mlxlogscore=999 malwarescore=0 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005050175
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9612
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0 mlxscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005050175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_162133_382670_C9FE7B6F 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishanth Menon <nm@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/5/20 12:34 PM, Grygorii Strashko wrote:
> Hi All,
> 
> This series introduces TI K3 Multicore SoC platforms chipid module driver
> which provides identification support of the TI K3 SoCs (family, revision)
> and register this information with the SoC bus. It is available under
> /sys/devices/soc0/ for user space, and can be checked, where needed,
> in Kernel using soc_device_match().
> It is also required for introducing support for new revisions of
> K3 AM65x/J721E SoCs.
> 
> Example J721E:
>    # cat /sys/devices/soc0/{machine,family,revision}
>    Texas Instruments K3 J721E SoC
>    J721E
>    SR1.0
> 
> Example AM65x:
>    # cat /sys/devices/soc0/{machine,family,revision}
>    Texas Instruments AM654 Base Board
>    AM65X
>    SR1.0
> 
> Changes in v2:
>   - pr_debug() replaced with pr_info() to show SoC info on init
>   - minor format change
>   - split series on driver and platform changes
>   - add Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
> 
> v1: https://lwn.net/Articles/818577/
> 
> Grygorii Strashko (2):
>    dt-bindings: soc: ti: add binding for k3 platforms chipid module
>    soc: ti: add k3 platforms chipid module driver
> 
Need ack from DT maintainers on bindings.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
