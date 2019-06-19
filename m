Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B764B0E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 06:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gosGqvPTUePFTn60nKD1l4+HNzZqm5DXiBi6pU+fSNs=; b=Dmh
	YTn1P9kRCX2UOa4abMCe11IvOfVHrYid0S9MMVLmJwfquHz2QgA16a9BHUcGSt72mcgC1tP4M0sqr
	0JJrUEF3EIS4Mph9tG8dU+jCC0h7xoyp/Sq+j3KeC2P91D1v0p9hon20GmdoMDjCnCjJ+8QLa7dFd
	lX0f46MtpQOeSbxKUp2MstUgy6AW1/QALuEniuBpVEBIh7YB/Bz43vNugw0oeL04Z4l8TNwQ6h4I1
	E3C8XVlns8gkvnHdSsiVgB3xOR4sZq0m04aJHLIVgpH9lEgpNo77NjwDY2ertr1M1ZhOKochXcinD
	ofAbRH+wEm7reEaCIegnoti0Uukqy8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdSP2-0003Jx-SX; Wed, 19 Jun 2019 04:40:56 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdSOt-0003Jc-Ka
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 04:40:48 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5J4dA2U136343;
 Wed, 19 Jun 2019 04:40:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id; s=corp-2018-07-02;
 bh=xCG15FH/MMpgMm7ED9PXskNDW9T4VwJa/+lUjFrH2e4=;
 b=n86cBl3APDwvWmt/owoAqZB95BWTcSWBukuk6/lt+jVdQAonOkGjMKs5OTUd4AgBFdZj
 Vv2dKff8UxD4n5bbdNoYJ+ieaclnYu5fcbtmIJwtqCQP+abSnw+m4EYojnUkd19igX4Y
 PTVRflzf49o8XNJ+9x/Km8prEDUGGrkwb7z8iPaFF9BJaX87rjD77BGpKu4ibp13OjfP
 w5hVHm7Paqilwgr8y2/YmH3Jcw/fX7D9fa89qB4otlBTRrHfuRviUioJIl7XtzwOhB8h
 vcUYoZzxNLAKUUcLLoUxH/r+aSxSXFFt5fTqbP+qEAxeTis6ZswII3x9u32hDDc5kcpQ hA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2t780990a1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Jun 2019 04:40:43 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5J4eW5K101604;
 Wed, 19 Jun 2019 04:40:42 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2t77ynkw0q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Jun 2019 04:40:42 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5J4eZBY010913;
 Wed, 19 Jun 2019 04:40:35 GMT
Received: from localhost.localdomain (/10.159.132.89)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 18 Jun 2019 21:40:34 -0700
From: Santosh Shilimkar <santosh.shilimkar@oracle.com>
To: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] ARM: TI SOC updates for v5.3
Date: Tue, 18 Jun 2019 21:40:18 -0700
Message-Id: <1560919218-3847-1-git-send-email-santosh.shilimkar@oracle.com>
X-Mailer: git-send-email 1.9.1
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9292
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=802
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906190037
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9292
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=852 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906190037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_214047_763057_A2FB185C 
X-CRM114-Status: GOOD (  16.48  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The following changes since commit cd6c84d8f0cdc911df435bb075ba22ce3c605b07:

  Linux 5.2-rc2 (2019-05-26 16:49:19 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git tags/drivers_soc_for_5.3

for you to fetch changes up to 4c960505df44b94001178575a505dd8315086edc:

  firmware: ti_sci: Fix gcc unused-but-set-variable warning (2019-06-18 21:32:25 -0700)

----------------------------------------------------------------
SOC: TI SCI updates for v5.3

- Couple of fixes to handle resource ranges and
  requesting response always from firmware;
- Add processor control
- Add support APIs for DMA
- Fix the SPDX license plate
- Unused varible warning fix

----------------------------------------------------------------
Andrew F. Davis (1):
      firmware: ti_sci: Always request response from firmware

Nishad Kamdar (1):
      firmware: ti_sci: Use the correct style for SPDX License Identifier

Peter Ujfalusi (2):
      firmware: ti_sci: Add resource management APIs for ringacc, psi-l and udma
      firmware: ti_sci: Parse all resource ranges even if some is not available

Suman Anna (1):
      firmware: ti_sci: Add support for processor control

YueHaibing (1):
      firmware: ti_sci: Fix gcc unused-but-set-variable warning

 drivers/firmware/ti_sci.c              | 1143 +++++++++++++++++++++++++++-----
 drivers/firmware/ti_sci.h              |  812 ++++++++++++++++++++++-
 include/linux/soc/ti/ti_sci_protocol.h |  246 +++++++
 3 files changed, 2051 insertions(+), 150 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
