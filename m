Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F373CE8F15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 19:14:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1bDPcAzVCZXoGiJrURa35MNcUopxB2onLSS5HwojkXY=; b=W2+
	gX0aWbcJG9XB/FCaurrdrGZ0X6P+p4nZ7N5hXR4RKVevgn1znFwCgUyAf9KT8HRmFv6T1untLryPq
	sF2LuE6j1+5fYmcsOjgSs8bpxfrtrB/9uldh+TFae39ErCJc/DyO6x6zLHedYX4y89XCxiMU1LAJm
	mC25jBSX3IbrX9np08B24MLjg15zRuKXVR51orj1tUSOkjb8BDg/vAgfmQgFSx5yd0PrH7UFhnHpw
	RKx/DFE8I0ZgoQ/LePYXzhJwsApvitWnChwPfpGrPokrn0T2207XHzwfA6T810RQ1qxq+N+bBxqj6
	ShF+agXQuSFir6t14sBAAAYS8NeU3hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPW0w-0001Yt-9t; Tue, 29 Oct 2019 18:14:42 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPW0h-0001Y2-5w
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 18:14:28 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9TI5Edg175947;
 Tue, 29 Oct 2019 18:14:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id; s=corp-2019-08-05;
 bh=WkZ9zbwFeDXQfqWTR1gASliBtGitlEcG01F4/M1sPtI=;
 b=Z8vduQv06HXTJGt+06q4bnJkBE2cRhWRisjZxjdSYIeERv/78O+GdM9jwxF+35dV2ypt
 3WVsAN2kgaaSHAnNQHWQ2jyxzzVnBF5jVXeCcsHaXfs67dPLHVyOiWSzPEmuV5gw6gmR
 wBFlhtgyY+GcbgKpxNfE1dvyyxpye+YhQgBoIakyMkNsPQJSXmn+nADRs68JalP6lyzR
 Nd/kFl7sKdMyqq56WN+q5jqVoKVNsze04zNMoql2NtIqZmtGtjgUXcGjZtjljDEkOeNB
 1PQ1+WEu+3n9fV6J6zCshuvRgC/1Bpr7MOliem9mpsvkREdNRrTIZXHFdtf6VYIRtsUI Sw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2vvdjub7v8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Oct 2019 18:14:23 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9TI8lO6040494;
 Tue, 29 Oct 2019 18:14:22 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2vxpgfdmvv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Oct 2019 18:14:22 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9TIELHG005793;
 Tue, 29 Oct 2019 18:14:21 GMT
Received: from localhost.localdomain (/10.159.132.196)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 29 Oct 2019 11:14:21 -0700
From: Santosh Shilimkar <santosh.shilimkar@oracle.com>
To: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [RESEND][GIT PULL 1/2] soc: TI soc updates for v5.5
Date: Tue, 29 Oct 2019 11:14:15 -0700
Message-Id: <1572372856-20598-1-git-send-email-santosh.shilimkar@oracle.com>
X-Mailer: git-send-email 1.9.1
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=4 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910290160
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=4
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910290160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_111427_308316_7CEAA386 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
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
Cc: olof@lixom.net, santosh.shilimkar@oracle.com, linux-kernel@vger.kernel.org,
 arnd@arndb.de, khilman@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git for_5.5/driver-soc

for you to fetch changes up to faee19ece8263738c147cb0140e0fbc7b5397ca8:

  memory: emif: remove set but not used variables 'cs1_used' and 'custom_configs' (2019-10-29 09:57:57 -0700)

----------------------------------------------------------------
Tero Kristo (9):
      dt-bindings: omap: add new binding for PRM instances
      soc: ti: add initial PRM driver with reset control support
      soc: ti: omap-prm: poll for reset complete during de-assert
      soc: ti: omap-prm: add support for denying idle for reset clockdomain
      soc: ti: omap-prm: add omap4 PRM data
      soc: ti: omap-prm: add data for am33xx
      soc: ti: omap-prm: add dra7 PRM data
      soc: ti: omap-prm: add am4 PRM data
      soc: ti: omap-prm: add omap5 PRM data

Wei Yongjun (1):
      soc: ti: omap-prm: fix return value check in omap_prm_probe()

YueHaibing (1):
      memory: emif: remove set but not used variables 'cs1_used' and 'custom_configs'

 .../devicetree/bindings/arm/omap/prm-inst.txt      |  29 ++
 arch/arm/mach-omap2/Kconfig                        |   1 +
 drivers/memory/emif.c                              |   5 +-
 drivers/soc/ti/Makefile                            |   1 +
 drivers/soc/ti/omap_prm.c                          | 391 +++++++++++++++++++++
 include/linux/platform_data/ti-prm.h               |  21 ++
 6 files changed, 444 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/omap/prm-inst.txt
 create mode 100644 drivers/soc/ti/omap_prm.c
 create mode 100644 include/linux/platform_data/ti-prm.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
