Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 029C51EC767
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 04:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMtlwCJh6X/QT6MBlJDjRZQbJHknx6ZPd5MXvmZ2Dc0=; b=UAtFJ7zDsqMvtX
	Fb7HEu50XsFAGpPXYY40d3vw6DwBNUxaGRaWH7S8dhB44a5spWUxFbD/H+834xI8SqtIYHyrmV0rG
	0HyJLCe2YYDpgQhVv9+KEWzdOjW5XWR+nYD+PYQkd3/zLEVmJJxvImmxkj/4rAVyXPl/7kRioV6nu
	MyB3A3T+FxmVMCziEQt4hN0eRfxtjr8UUAf5cVR+78hs75ieJ4RlhWiW5trEcgqkJXi+2gtjlqRLy
	GRinpuTAVO4zF/MQUw0k0BYKxLzxstFLlKJ9iIgktoNKvkv5dCyqpLcGkFDbievzu6X4kIiMP2B8h
	uZnW9xArYc/GNkgymElQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgJE4-0003d6-Ix; Wed, 03 Jun 2020 02:33:56 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgJDx-0003cA-5I
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 02:33:50 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0532UMG6179593;
 Wed, 3 Jun 2020 02:33:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=v7slq7nogbFdY6anIseYYqTNcMjCCgPFuaiWRrPlhd4=;
 b=RmSTRVCplZZG7hH4oKzlD4CdgQl+lZtGOEJLWJHnap36bjgEKHpvZaDu4vvAIIwxQihv
 Ap3PflK9V+4GeOmmd24D82FTptVwPlFegJelVgKVR58tBAQKsab0mhdyGVw0Zvu0gTpJ
 HAsBbRmWeaq8rwD2U/jCkFSNWPjv4G6m+HqaWTOGhSNAiw+KLDqL+ThUKEXIPDr7DqZs
 Yp3lwUG0yo5Ps6M6w1+fBVH2qJ/zZ2HAaFBPx6e9q7Q40OkruVPuHY2hReIjouYSEhPg
 BGMatinBLLkYOWqDs9+5qO37OVp+Ic6ezu0GePQs5nGkHVOtR50qQ8go78Cchn2WWRNi qw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 31bewqxwcj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 03 Jun 2020 02:33:44 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0532S09m087088;
 Wed, 3 Jun 2020 02:31:43 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 31dju2f0ah-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 03 Jun 2020 02:31:43 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0532VfJe032603;
 Wed, 3 Jun 2020 02:31:42 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Jun 2020 19:31:41 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: robh@kernel.org, Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v10 00/10] exynos-ufs: Add support for UFS HCI
Date: Tue,  2 Jun 2020 22:31:32 -0400
Message-Id: <159114947915.26776.12485309894552696104.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200528011658.71590-1-alim.akhtar@samsung.com>
References: <CGME20200528013223epcas5p2be85fa8803326b49a905fb7225992cad@epcas5p2.samsung.com>
 <20200528011658.71590-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=943
 phishscore=0 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006030017
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 bulkscore=0
 phishscore=0 suspectscore=0 impostorscore=0 cotscore=-2147483648
 lowpriorityscore=0 mlxscore=0 adultscore=0 spamscore=0 mlxlogscore=984
 malwarescore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006030017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_193349_286173_2E3CA279 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 06:46:48 +0530, Alim Akhtar wrote:

> This patch-set introduces UFS (Universal Flash Storage) host
> controller support for Samsung family SoC. Mostly, it consists of
> UFS PHY and host specific driver.
> [...]

Applied [1,2,3,4,5,9] to 5.9/scsi-queue. The series won't show up in
my public tree until shortly after -rc1 is released.

Thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
