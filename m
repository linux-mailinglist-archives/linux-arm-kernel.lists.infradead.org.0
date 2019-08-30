Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEADA3C98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DJB79VL7Webgl0cnk+6ZyQViqM5mZlkSL+AV+MALN40=; b=MJ7S464rpqJw7fbgI4sE/eA9N
	gDiKJ1D75sBdwekQElcJhMjnzCdoTG7dVhMpynpv3E7JVh00f2ixCcLxsLByC6BlCpQLe40LraeXk
	vd9qmOXhMN1ssiyDwNCmm9iOtibxjfoRBYeLvocGoejrK53WRidRyZ5YX9VF9Y36PS4V7epfwRZhP
	UTkZxLwroQW1X4/CJrj3EhFtXtL2fFF5Yo1xL5Ijz7jzWd5fpuZnoy9oWIilBgpO7BeSr3kPkkLhW
	d8oFWlZA+JOjBBPSfBEL8hs2zd8ghQpxT5+YnyAcuTGIIjaY8v05Z2nz0mcKGbXQB7w6a2t3xsu22
	P74vKtsMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3k7F-0001hn-Dn; Fri, 30 Aug 2019 16:51:13 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3k6v-0001ZD-6P
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:50:54 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7UGnFlb018778;
 Fri, 30 Aug 2019 16:50:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=4W6MfuEHcSxRT7yJ6X9e/Gz29oowuWAtaR9pBiOjmXg=;
 b=d8hQCtSVlz9uq1VUzH2ddO4k6scROOdpIfPxB+u4ltjbyMV95KYjKXK0uncwx0S55Bjd
 0d6kfYpDLLzM+JYHfe0919XfmiKx1z6VglHwdnqc4vx7vS4vyCVeAqcpWqwh7i6OtD2q
 VFUAkQbtYr+BTypU4e5xKna3pIp8OJBvbXayCxjZSdC0BS9JM6D7hIgWfw5nRZLr1Obp
 tEOT9GSxgyI8JnGv8MhIoHUOZvlh61j3KzpfiL7CakTxIZ/QyXq1cAgB2366chsDyCtD
 qGRHlsy6Kwe5ov0F6i3Awuzb4ek/nC0It9v8MXo8NTlKM/DVG/DFK2uFMB4Rn8AKqlNP BA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2uq7ngr063-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 30 Aug 2019 16:50:46 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7UGmTPm039008;
 Fri, 30 Aug 2019 16:50:46 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2upkrgke9s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 30 Aug 2019 16:50:46 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7UGogNa022354;
 Fri, 30 Aug 2019 16:50:43 GMT
Received: from [10.209.243.89] (/10.209.243.89)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 30 Aug 2019 09:50:41 -0700
Subject: Re: [PATCHv3 00/10] soc: ti: add OMAP PRM driver (for reset)
To: Tero Kristo <t-kristo@ti.com>, ssantosh@kernel.org,
 linux-omap@vger.kernel.org, tony@atomide.com, s-anna@ti.com,
 p.zabel@pengutronix.de
References: <20190830121816.30034-1-t-kristo@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <f7d6a2fb-175c-361b-00ff-ddde67700daa@oracle.com>
Date: Fri, 30 Aug 2019 09:50:33 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190830121816.30034-1-t-kristo@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9365
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908300164
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9365
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908300164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_095053_386988_B21D6F6C 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/30/19 5:18 AM, Tero Kristo wrote:
> Hi,
> 
> V3 of the series, ended up re-sending the whole series as I squashed one
> patch from v2 and because of that the ordering has changed a bit. Changes
> in v3 contain fixes for the comments from Philipp Zabel.
> 
> - added spinlock to protect register writes
> - added own xlate function to prevent bad reset IDs to be registered
> - use mask for the valid reset detection instead of parsing reset map
> - fixed reset status bit handling
> - used iopoll macro instead of handwritten poll loop for timeouts
> - squashed patch #6 into #4 from v2 of the series
> - some other minor fixes.
> 
> This series still depends on the clk driver changes for the reset<->clk
> syncing [1].
> 
This has to wait for another merge window. It will also take care of 
dependencies landing in mainline. Will push this to linux-next as
soon as v5.4-rc1 is out. Please remind me in case you don't see it
in next after 5.4-rc1.

Regards,
Snatosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
