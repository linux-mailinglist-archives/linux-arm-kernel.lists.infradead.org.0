Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1993D1E54DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 06:02:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HzW/8OjUW3Cx/7AyzMzuo/HY332I6oUViIjO8nG0s0o=; b=ZyFoTCNIKDVfSnQ97UU2yPKEnT
	9RQMud4BwYLfd1JOykVnWCAL7cWlomb8hvJWdlt7LXPWj48pqiK9btP90tYDpBvbECl03HquvybtM
	GEWn8FQlJcq/kfJWn+IiNOBG9AgVLnGMmlGZJ1cI57szcgV2htCaBqriT+JHxZrW683pIZZwXdVFP
	PXsPZkNsuku0AAy88bruHEGWp4iY7Pw1e/hhIC4lKhnJ7Kfv2TCkpq/mfomhQp390Pk/t/SrKVw6k
	Sy33jDkCugGaH8A+4aAblWvNvKPiUGrnH5XuA+m6LjZXBhMW+3NWloOlD4/j0aszHId6Mes/IET88
	ajRXbBew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je9kS-0007Qq-MY; Thu, 28 May 2020 04:02:28 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je9kG-0007PC-Pq
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 04:02:18 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04S3wB2g044457;
 Thu, 28 May 2020 04:01:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=QFuRgECqK9CIp1PIzye9PHB0E2yg1AqzkcQBc15PRKg=;
 b=EE0zm23cAkQNJc/2Yh3/L9GMaMDJzRqKuzkTkwjK8f96zGtPYm34ZKewMJRPyn1si3Rd
 ECt3UY7itElJwUhmcK1KIQnC+sXgDgBZfzs5FnJRT2ZKLHrqd6Qpolj9tSlNUytMFYWJ
 S+YSOWzK4BnufkpSd/DR+QwMr5lGIn2PAF5FhGwK8e3G7RmoWiUSUISUdJ/2yMnedhgW
 c7ZrBXwxMoh7eSyA/knZK7fRicNaxhSijMDn62HUciIJQLmnz/Pv3Vl5ncCBqhzZ/DQl
 uwwwgZ0qJiAnz+uSD3xBNaWzAYXB177moMTQKotX0lbhz4SQfkKGfRKb3qltWhX56GmN nw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 318xe1jqxk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 28 May 2020 04:01:43 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04S3x53H103937;
 Thu, 28 May 2020 04:01:43 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 317dds07w5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 May 2020 04:01:43 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04S41eq7008045;
 Thu, 28 May 2020 04:01:40 GMT
Received: from localhost.localdomain (/10.159.238.186)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 27 May 2020 21:01:40 -0700
From: Santosh Shilimkar <santosh.shilimkar@oracle.com>
To: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL 2/2] ARM: DTS: Keystone update for v5.8
Date: Wed, 27 May 2020 21:01:29 -0700
Message-Id: <1590638489-12023-2-git-send-email-santosh.shilimkar@oracle.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1590638489-12023-1-git-send-email-santosh.shilimkar@oracle.com>
References: <1590638489-12023-1-git-send-email-santosh.shilimkar@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9634
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=804
 bulkscore=0 mlxscore=0
 phishscore=0 adultscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005280018
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9634
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=832
 adultscore=0 cotscore=-2147483648 mlxscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1011 impostorscore=0 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005280018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_210216_927172_EA7F34F9 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
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
Cc: arnd@arndb.de, khilman@kernel.org, santosh.shilimkar@oracle.com,
 linux-kernel@vger.kernel.org, soc@kernel.org, olof@lixom.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git tags/keystone_dts_for_5.8

for you to fetch changes up to 644c5a582261ecdf1df41b11d05d10a1cccc0a66:

  ARM: dts: keystone: Rename "msmram" node to "sram" (2020-05-27 20:36:32 -0700)

----------------------------------------------------------------
ARM: dts: Keystone update for v5.8

 - Rename "msmram" node to "sram"

----------------------------------------------------------------
Krzysztof Kozlowski (1):
      ARM: dts: keystone: Rename "msmram" node to "sram"

 arch/arm/boot/dts/keystone-k2e.dtsi  | 4 ++--
 arch/arm/boot/dts/keystone-k2g.dtsi  | 4 ++--
 arch/arm/boot/dts/keystone-k2hk.dtsi | 4 ++--
 arch/arm/boot/dts/keystone-k2l.dtsi  | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
