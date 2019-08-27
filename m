Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F229DBE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 05:12:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DGDxVN9vgjhl2IA8rCeE/QIMm/Sgs0O2yUpb7rw0SuY=; b=cyg
	rBKJikca1SVL5VZyk/yTQfKpDJRn1Nhht9VPtNyUWndQx3uodhfvLYuLTko7def5V8oLaqcXyrHY5
	Ad4sd7L2z8lViCKpjch/OT4ApROLHkUQk3PUJ43tH4yBdPL7zn2k6YVrMPtU+5riHFQOrBHv69oBE
	UcB8RNchM1WrHiviKPwKhSKYdNrRtkcFJBHasnvtS9dZAzh9RZ8Z2TzOToGTUdl0kNSx0gowf7F/j
	i7en5uPskMbneY30xj/gnLed4NkTeOM1woE84vK7JU25+6SSjihGYCsN/OvSLrDhvYo9a6nIZPLbr
	Sy6JVE1CeDjo6YdsMALqGvaeIflxW+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2RuW-0001q8-KU; Tue, 27 Aug 2019 03:12:44 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2RuL-0001fn-4V
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 03:12:34 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7R39dZ4064070;
 Tue, 27 Aug 2019 03:12:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id; s=corp-2019-08-05;
 bh=CJ907zIBS0LpmHhbkysVeFPKJdRDkZEt0B6aL9TfLEE=;
 b=YJQb4GF2b9ZG5Q90WwvauLpreMwZi/m/y70MYsaiGJfZb1UyY6H5yrFaFm2nAu0HLJyt
 dF/janBQrx1i5Tx/lvFrwonE/dZtr1TvvoR7onUAQweUwzf/jDxoY+M03YCq85TsGbeL
 Hkwmnr48ayyS0+tdPP2WZIwUAQZQNGabqJjHwQSzskceguf0NEsSepX+kF3m1L9E9yjt
 kDkh2QrRcyVxDQW/G1cDt5J0uIUhM8ubR9eSmPPwwWRsUaTwb8LFrNURark7hVm1WEDY
 zb70PJ5aJZ9p4TfVt0J6xRsc/ewBcy7fW8yMIl7UwTqu4V6qBwxcZ3KpgI7mJS7zxJUF Gw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2umv7j81r1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Aug 2019 03:12:22 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7R37hsx105267;
 Tue, 27 Aug 2019 03:12:22 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2umj27kf3y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Aug 2019 03:12:21 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7R3CDjE021834;
 Tue, 27 Aug 2019 03:12:13 GMT
Received: from localhost.localdomain (/10.159.230.41)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 26 Aug 2019 20:12:12 -0700
From: Santosh Shilimkar <santosh.shilimkar@oracle.com>
To: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] SOC: TI soc updates for 5.4
Date: Mon, 26 Aug 2019 20:11:47 -0700
Message-Id: <1566875507-8067-1-git-send-email-santosh.shilimkar@oracle.com>
X-Mailer: git-send-email 1.9.1
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9361
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=807
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908270033
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9361
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=878 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908270033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_201233_321407_AD924E2B 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The following changes since commit 609488bc979f99f805f34e9a32c1e3b71179d10b:

  Linux 5.3-rc2 (2019-07-28 12:47:02 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git tags/drivers_soc_for_5.4

for you to fetch changes up to 23013399a2252e9f592c2c52a62b213d3ef09217:

  soc: ti: ti_sci_pm_domains: Add support for exclusive and shared access (2019-08-26 20:00:41 -0700)

----------------------------------------------------------------
soc: TI soc updates for 5.4

 -  Update firmware to support PM domain shared and exclusive support
 -  Update driver and dt binding docs for the same.

----------------------------------------------------------------

Lokesh Vutla (3):
  firmware: ti_sci: Allow for device shared and exclusive requests
  dt-bindings: ti_sci_pm_domains: Add support for exclusive and shared
    access
  soc: ti: ti_sci_pm_domains: Add support for exclusive and shared
    access

 .../devicetree/bindings/soc/ti/sci-pm-domain.txt   | 11 +++++-
 MAINTAINERS                                        |  1 +
 drivers/firmware/ti_sci.c                          | 45 +++++++++++++++++++++-
 drivers/soc/ti/ti_sci_pm_domains.c                 | 23 ++++++++++-
 include/dt-bindings/soc/ti,sci_pm_domain.h         |  9 +++++
 include/linux/soc/ti/ti_sci_protocol.h             |  3 ++
 6 files changed, 86 insertions(+), 6 deletions(-)
 create mode 100644 include/dt-bindings/soc/ti,sci_pm_domain.h

-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
