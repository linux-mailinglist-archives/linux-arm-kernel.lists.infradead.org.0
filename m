Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CBB1FA73B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 06:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vRUFZgKoiYk+qyVa0PKLuMVz2gL4pwWDesrL90t7q0=; b=E3WiaddD1am0kE
	1iR8kl8gVVT8IO8laFCXrjhWslBPebwmwB5Xea2MbbyjOs3e4570+zU+5Vll0u+avNUvfMw10pgne
	yMrmW8u2WtDD4izlIK9LXCnrXdtRszauKimW9EctoJPLaXE0FsQ5gvafJWa9QZhJakLj7fd4CiIrZ
	HfgcWjnjVHLBhfh9UhF7Nd85CQALaV5O77hRoTZ1eBz/wGcRoHzeDz1yi3KvfYEAesVFILD8oRlBK
	UgYKuCc/q1gneWPqwWQwg/I7fgmqQFOVqeo2tIqoZ4ecTsV0y5GI/1dfMtmXIUi9xQEj1n5xKNm4W
	nWk1zkApnp4MDdktXlXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl2m1-0000OV-5d; Tue, 16 Jun 2020 04:00:33 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl2li-0008Ij-3q
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 04:00:20 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05G3vNlR193977;
 Tue, 16 Jun 2020 04:00:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=9mYnWgmHaH/MeQG/NrcARCrv81ptgulbq0w8SFiNXFQ=;
 b=ahvS33MV2cLeVTuOp5if0A6Ujdk2z2OTVZSWuvtJD1hchox23qMdeucpKP93hKcFafs/
 dAVGcy842hFz7wXKnnXUCoE+fGo5jCSve846yj+IT3GIIrys8jceKflJUuNmehZ71FFX
 mvOTNHTwHBhUqBzp2b1JGyD0ffIGYep15S5Mum9L0ofIfVYzMEq5uPRpaeRpPsJHjyvI
 G+GrokJd3JB2ZwMqekfJd1tdWwW8R1f22mTM22k/L5I6Q5HQEIle7RYlA69mAKy/tS9S
 AaU+NRW4OiJDnJCND3OoYfgrmJyoF9hfuamtv5w5Z3FeXBKGer4PI2KadkV029te/0Qq 2Q== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 31p6e5vd9j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jun 2020 04:00:05 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05G3x2Bf181553;
 Tue, 16 Jun 2020 04:00:04 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 31p6dfarqe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jun 2020 04:00:04 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05G400YL022205;
 Tue, 16 Jun 2020 04:00:00 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 15 Jun 2020 21:00:00 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, robh@kernel.org
Subject: Re: [RESEND PATCH v10 00/10] exynos-ufs: Add support for UFS HCI
Date: Mon, 15 Jun 2020 23:59:51 -0400
Message-Id: <159227986421.24883.4622397536612649352.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200613024706.27975-1-alim.akhtar@samsung.com>
References: <CGME20200613030436epcas5p38137bcaddd80ec5eed746a80a1fe31f5@epcas5p3.samsung.com>
 <20200613024706.27975-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9653
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0 bulkscore=0
 phishscore=0 malwarescore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006160027
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9653
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 adultscore=0
 mlxscore=0 phishscore=0 mlxlogscore=999 lowpriorityscore=0 clxscore=1015
 suspectscore=0 spamscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006160027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_210014_270089_DEB9B580 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org,
 kishon@ti.com, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, cang@codeaurora.org,
 stanley.chu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 13 Jun 2020 08:16:56 +0530, Alim Akhtar wrote:

> This patch-set introduces UFS (Universal Flash Storage) host controller support
> for Samsung family SoC. Mostly, it consists of UFS PHY and host specific driver.
> 
> - Changes since v9
> * fixed the review comments by Rob on ufs dt bindings
> * Addeded Rob's reviwed-by tag on 08/10 patch
> 
> [...]

Applied to 5.9/scsi-queue, thanks!

[01/10] scsi: ufs: Add quirk to fix mishandling utrlclr/utmrlclr
        https://git.kernel.org/mkp/scsi/c/871838412adf
[02/10] scsi: ufs: Add quirk to disallow reset of interrupt aggregation
        https://git.kernel.org/mkp/scsi/c/b638b5eb624b
[03/10] scsi: ufs: add quirk to enable host controller without hce
        (no commit info)
[04/10] scsi: ufs: Introduce UFSHCD_QUIRK_PRDT_BYTE_GRAN quirk
        https://git.kernel.org/mkp/scsi/c/26f968d7de82
[05/10] scsi: ufs: Add quirk to fix abnormal ocs fatal error
        https://git.kernel.org/mkp/scsi/c/d779a6e90e18
[09/10] scsi: ufs: ufs-exynos: Add UFS host support for Exynos SoCs
        https://git.kernel.org/mkp/scsi/c/55f4b1f73631

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
