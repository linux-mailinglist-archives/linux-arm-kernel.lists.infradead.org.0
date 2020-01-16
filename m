Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BEC13FA2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 21:08:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=b1JLokCcBx77/tnPA0+pRJ7zlQhBDOuN3oiUqBoKPI4=; b=Nr7
	keG+k6+q6zB0QoS8sdt5pAf43Ujw7QMQVdHtPKXms1O5Z2E6TClJ/ZW8oS4NXzUzviRXkQ4tMz9aO
	1IvYz9T74Pdj85rzKRvLTLZSzBsmxnRFkM+xX9agPhV71AE8T3TWh+zWXLKeK4dQOMKYw6H+iDaSV
	km2cI4r+2pMQ9oYMeLcxB+A8J+sK6dtqxrj5alcGCw1n6/Ar9uV+Rd8lujWBa4q1yDZNQVkT85w5z
	bP8tlCAphhD9CPJBkL2AlaNsFxuQUgbuNRooNYmU/9pc963aLeNPvd8paP/tGIXVVw5TnR2fb473q
	7yJSLXz6IYv8qLKMSvUept6rkHsiVrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isBRS-0001SI-8G; Thu, 16 Jan 2020 20:08:34 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isBRG-0001PR-Hu
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 20:08:27 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00GK368V132707;
 Thu, 16 Jan 2020 20:07:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id; s=corp-2019-08-05;
 bh=VXKP063RLeaEtvwZyxBIApAY7BlmugdZZoADPBt2YAg=;
 b=Q7wnOTFYlvOxiPoKMEqnlqRwvviOsCfv6eCIMDbOBNmD3T5Hyi6Z8ku4oy52bDgGr/Ls
 3euJmiXxZCmpVtlHKqb/TH4X19wd33S7+N9MN3T81wsn/xfL0ANlnJtUKJz0c/hMCtjh
 oCwuXlcYqrKqsrl/Mume1bsu8hKFpqOwfm22a6MD3T42DrxkHscIVxNGa54hrz3Gvu0E
 /ijxtHZeK011ndqjila2pTiVp8x8n502gLOQgLLfwhiVRgXmGMNiUxFn7WW23BQfTGbY
 b9VOJoX/f9548CXyKyZOiNelfyAum0DBOVDurNpd4P8YwIsQEsRu38iG6a/bkIgfAQ/I EA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2xf73yvu5p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Jan 2020 20:07:56 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00GK3mcQ042328;
 Thu, 16 Jan 2020 20:07:56 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2xj1ptpydj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Jan 2020 20:07:55 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00GK7q6v014129;
 Thu, 16 Jan 2020 20:07:52 GMT
Received: from localhost.localdomain (/10.159.157.9)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 16 Jan 2020 12:07:52 -0800
From: Santosh Shilimkar <santosh.shilimkar@oracle.com>
To: soc@kernel.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT_PULL] SOC: TI Keystone Ring Accelerator driver for v5.6
Date: Thu, 16 Jan 2020 12:07:39 -0800
Message-Id: <1579205259-4845-1-git-send-email-santosh.shilimkar@oracle.com>
X-Mailer: git-send-email 1.9.1
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9502
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=749
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001160161
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9502
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=824 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001160161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_120822_676858_0176A1E2 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arnd@arndb.de, khilman@kernel.org, santosh.shilimkar@oracle.com,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, olof@lixom.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Its bit late for pull request, but if possible, please pull it to
soc drivers tree.

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git tags/drivers_soc_for_5.6

for you to fetch changes up to 3277e8aa2504d97e022ecb9777d784ac1a439d36:

  soc: ti: k3: add navss ringacc driver (2020-01-15 10:07:27 -0800)

----------------------------------------------------------------
SOC: TI Keystone Ring Accelerator driver

The Ring Accelerator (RINGACC or RA) provides hardware acceleration to
enable straightforward passing of work between a producer and a consumer.
There is one RINGACC module per NAVSS on TI AM65x SoCs.

----------------------------------------------------------------
Grygorii Strashko (2):
      bindings: soc: ti: add documentation for k3 ringacc
      soc: ti: k3: add navss ringacc driver

 .../devicetree/bindings/soc/ti/k3-ringacc.txt      |   59 +
 drivers/soc/ti/Kconfig                             |   11 +
 drivers/soc/ti/Makefile                            |    1 +
 drivers/soc/ti/k3-ringacc.c                        | 1157 ++++++++++++++++++++
 include/linux/soc/ti/k3-ringacc.h                  |  244 +++++
 5 files changed, 1472 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt
 create mode 100644 drivers/soc/ti/k3-ringacc.c
 create mode 100644 include/linux/soc/ti/k3-ringacc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
