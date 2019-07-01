Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654525C211
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 19:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+5DUE2CkIvoNAl5AVJLRBuFS5fu3VKSwFQSBRhaLDHA=; b=OvJRBiM1fU8uIOjiC0AE2VVCb
	wMw9txNvAJtMdb1WHey9zdIWnPsTwwRQw9lNwgADKyWpGzbgps4iHaUFVDbFGWwI8nwMOAmQrGyck
	pTbyPAg0NlYThmGt5N5aodUI1aDaej+t3CPP4W/efcLEiJ+ykeCP2vcYHA9S+KFQi74RfhL7lQtwV
	aKFbwY4oNj1xS/d0nyWZBElMZdKonNESMIAiDAg65fObu9/oZgxpuS8rjWLeKtfdKqcPHozY37phT
	6w3UoXm6r17g5xLONOW/84aQ0tlYGNf8wGLahDFWIprE6YxRVWAFLSD8wkkduWRNW7z49A71My7MR
	29h3g7TYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi0Ed-0000Ff-MK; Mon, 01 Jul 2019 17:36:59 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi0EX-0000FA-1p
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 17:36:54 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x61HYLaG025278;
 Mon, 1 Jul 2019 17:36:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=E5p4klyouXJMnCEoFf9ReMs3WMufrbsMVLNSYgho534=;
 b=Ri3WBhI56N9U6Zk0mVeiPpP9TWTK+h9+/JiVOreIgmAr0tJ2LtK4mlNy6piune6DfOJW
 jHdy4z7WknciOrgQbAUUTqVemF0zEu5NDHloQbMUKkI/JeRWhuWne5SmrEXZKbuwXdXE
 u4IALDH8CztPgYVZP2yFllgIDKOFOYkh4DcI8wDf0ZFdSi7pi6+6vDlaBdv9fs4xdpkI
 bip/d9v86za4iOg2sDDsISjbcjNkjDRm5tu1ojgkwaFebUZp7P3mgosgN30GO4wHehwp
 ooOSjgj9aBtk4/jplDSOtfe+TFcuwh7lamgpm4abJyvVows1jbCIt/qF0qngjqUVYbss zg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2te61dy0w9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Jul 2019 17:36:33 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x61HXFQ6130155;
 Mon, 1 Jul 2019 17:36:32 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2tebbjabtm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Jul 2019 17:36:32 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x61HaS8e029744;
 Mon, 1 Jul 2019 17:36:28 GMT
Received: from [10.11.38.58] (/10.11.38.58)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 01 Jul 2019 10:36:28 -0700
Subject: Re: [PATCH] soc: ti: fix irq-ti-sci link error
To: Arnd Bergmann <arnd@arndb.de>, Santosh Shilimkar <ssantosh@kernel.org>
References: <20190617130149.1782930-1-arnd@arndb.de>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <7a96a4d2-25e7-f9cf-1109-23c5495325a8@oracle.com>
Date: Mon, 1 Jul 2019 10:36:27 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
 Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190617130149.1782930-1-arnd@arndb.de>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9305
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907010207
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9305
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907010207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_103653_228727_3D121E4E 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-kernel@vger.kernel.org, Marc Zyngier <marc.zyngier@arm.com>,
 Tony Lindgren <tony@atomide.com>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/17/19 6:01 AM, Arnd Bergmann wrote:
> The irqchip driver depends on the SoC specific driver, but we want
> to be able to compile-test it elsewhere:
> 
> WARNING: unmet direct dependencies detected for TI_SCI_INTA_MSI_DOMAIN
>    Depends on [n]: SOC_TI [=n]
>    Selected by [y]:
>    - TI_SCI_INTA_IRQCHIP [=y] && TI_SCI_PROTOCOL [=y]
> 
> drivers/irqchip/irq-ti-sci-inta.o: In function `ti_sci_inta_irq_domain_probe':
> irq-ti-sci-inta.c:(.text+0x204): undefined reference to `ti_sci_inta_msi_create_irq_domain'
> 
> Rearrange the Kconfig and Makefile so we build the soc driver whenever
> its users are there, regardless of the SOC_TI option.
> 
> Fixes: 49b323157bf1 ("soc: ti: Add MSI domain bus support for Interrupt Aggregator")
> Fixes: f011df6179bd ("irqchip/ti-sci-inta: Add msi domain support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
Thanks Arnd. Will you be able to add it to your fixes queue.

FWIW, Acked-by: Santosh Shilimkar <ssantosh@kernle.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
