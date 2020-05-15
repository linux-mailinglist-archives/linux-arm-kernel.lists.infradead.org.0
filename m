Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BF21D42C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 03:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fy2U8Ofmx8J7ZNKHKOOlQMEDnucFf2qVpDiRis3WIDU=; b=MPfD1yMPG6cAqr
	xQErks0gbKdB4vimxWEvK6KgBn16+rG4Lr9noJitHI0Z9u/yYVlL2LIhVCGM2UmQocL04QRf2iCeM
	IW1i5mcYCTo/aJurU2RWK/35XAMjG5Qqv/x587APKhSvkBnQfoYXmOC5adrMN/ddo+SgcvJ0BbkcR
	VRtV2svh+sSexbn9LiSgJtlKBAQUKV0cTuW6YHWGCkWUibGA/H5J4bO0c520ORS61xUcqsgpwOYQq
	nefKYsYvzCVLuUJaI4Zv5PQ5DOYcSEn2Dn+t7ivAOz3v+Bt5KE9p7T5J/kIiaY5jCje+UeOVpWowK
	lOVHlmc5yAeboD3SK4eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZOsO-0005Uy-UB; Fri, 15 May 2020 01:11:00 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZOsD-0005Tp-K7; Fri, 15 May 2020 01:10:51 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04F13BTV130944;
 Fri, 15 May 2020 01:10:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=uzWUKK8WSe769UBEv6C+kY5NI1d1U8HUxPG8v/sJW80=;
 b=gU+howcSEUQ7AlT/CKnH5zts96yW/9T/6okbxANBpEgaYAy6lETJYL039gJGC+5szh6R
 1iRaFQfzYswZymyfLsB+gONFIPVEhPYCSNenayNga0lWsuOfSjx/WVMDnqQCNzWG8rym
 8ueWDwnsxoWGndqYheBAcuEQqXUQq144hw5LSXB5zNQVpyZZTTtR9bj/3rPz8VwEE0X4
 J4b69sV+R+rWji7GiPfaB5m5BEZHX+Hq8K/phzXi4+ITlA/HmbJDNy1R/BnJnresKZrp
 gkhRTgQdaVxjkvoSdsaqx37uIytL0pfFBxx8kkS7UQHpv9nEaidjhbEVrPBNk1f5JJ3F 0A== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 3100xwxp99-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 15 May 2020 01:10:35 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04F12kqR161267;
 Fri, 15 May 2020 01:10:35 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 3100yqf3x0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 15 May 2020 01:10:35 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04F1AWJC017962;
 Fri, 15 May 2020 01:10:33 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 14 May 2020 18:10:32 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: jejb@linux.ibm.com, matthias.bgg@gmail.com,
 ChenTao <chentao107@huawei.com>, stanley.chu@mediatek.com
Subject: Re: [PATCH -next] scsi: ufs-mediatek: Make ufs_mtk_fixup_dev_quirks
 static
Date: Thu, 14 May 2020 21:10:26 -0400
Message-Id: <158950485295.8169.16456174061063737853.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200514012655.127202-1-chentao107@huawei.com>
References: <20200514012655.127202-1-chentao107@huawei.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9621
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=941
 adultscore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005150007
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9621
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 cotscore=-2147483648 bulkscore=0
 phishscore=0 adultscore=0 mlxlogscore=970 lowpriorityscore=0
 impostorscore=0 spamscore=0 malwarescore=0 priorityscore=1501 mlxscore=0
 suspectscore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005150007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_181049_791740_90E004EB 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, alim.akhtar@samsung.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 09:26:55 +0800, ChenTao wrote:

> Fix the following warning:
> 
> drivers/scsi/ufs/ufs-mediatek.c:585:6: warning:
> symbol 'ufs_mtk_fixup_dev_quirks' was not declared. Should it be static?

Applied to 5.8/scsi-queue, thanks!

[1/1] scsi: ufs-mediatek: Make ufs_mtk_fixup_dev_quirks static
      https://git.kernel.org/mkp/scsi/c/21d2b76831fd

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
