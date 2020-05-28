Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4481E54DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 06:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=I5Q8P1k2i5fbkYwBmTe3AZV+Kbcjbphj511b0Jatz/0=; b=ZGR
	Y2OjqXwJCbSYt+lgRqSf9MI2D1svnqX0Gv4DSjLZL+SPHvThohJOMAAy/86EB3zc6UFUea0/KEWEy
	wV9STTvNWdF04VxGAslYQ0uzpxp+Fd0cGlsYAu/3w2xNbsJ1db3mKJ77yd72ErcR8k32sXxlqoOZi
	+0GG6lyaGD+x3JDrHH0+yxgP5Q/r0JB4fg4SN++6HyAw5VFdDWQr6SW16H3h5SzcYfhJQQpHKGGZ0
	WU5OMN1fUEvgD71dIZN2iPNdY0LBMTLU/JFYEqsPyrdbIpgfTlkOp2aKbxOagUP126hxpe7bKI2C5
	YgOwWPys6DagrsFlpJLkyyH45Tzxjsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je9ki-0007Ze-HA; Thu, 28 May 2020 04:02:44 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je9kH-0007PL-JW
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 04:02:19 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04S41m5Q153940;
 Thu, 28 May 2020 04:01:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id; s=corp-2020-01-29;
 bh=vn6zVVZmICnL9E0RyBPMSzspks17zsHewEDQE4IfYyU=;
 b=aCkMq37gj5cs4fSitWUW6KhQNtKljMriAL9OtQUY9J3Fx6neQYPvF3colhdoJjDBKGJF
 CxFa8GRQ1wcKBPoJeoc1qNxSSt8gAyPhNjMEPWgyoWfA5FrL6EtbMLMl9XgDg0/Q/mFW
 XiiRwikVVvbaQWtC99ayjBN5Pr8V26LrxwAp6s5H6623JlC+qAjNtFjdlj65lWDT8TUs
 zzYMaAoqTVfdo4gCEFbJkLhM2F71Xi3Aieb4M4Pc1b+4anOX4AV+C6BZLaZNLu+Jc8nx
 8kKxRqkuKEnNyxvcC9p/52jnZAKDPxlgaNgNl/QqdnYURM5WuKK/gP/rAybaiBzqcVTx 0w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 318xbk2rx8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 28 May 2020 04:01:48 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04S3veHw132695;
 Thu, 28 May 2020 04:01:43 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 317dkvpnqb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 May 2020 04:01:42 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04S41dO9008043;
 Thu, 28 May 2020 04:01:39 GMT
Received: from localhost.localdomain (/10.159.238.186)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 27 May 2020 21:01:39 -0700
From: Santosh Shilimkar <santosh.shilimkar@oracle.com>
To: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL 1/2] soc: TI drivers updates for v5.8
Date: Wed, 27 May 2020 21:01:28 -0700
Message-Id: <1590638489-12023-1-git-send-email-santosh.shilimkar@oracle.com>
X-Mailer: git-send-email 1.9.1
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9634
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0 bulkscore=0
 spamscore=0 suspectscore=0 mlxscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005280018
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9634
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 cotscore=-2147483648
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005280019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_210217_722783_26D01BE8 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git tags/drivers_soc_for_5.8

for you to fetch changes up to b8b38a8e3cae100f292d756e32c78ab288db8a7d:

  drivers: soc: ti: knav_qmss_queue: Make knav_gp_range_ops static (2020-05-27 20:39:14 -0700)

----------------------------------------------------------------
soc: ARM TI update for v5.8

 - Platform chipid driver support and associated dts doc update
 - Sparse warning fix in Navigator driver

----------------------------------------------------------------
Grygorii Strashko (2):
      dt-bindings: soc: ti: add binding for k3 platforms chipid module
      soc: ti: add k3 platforms chipid module driver

Samuel Zou (1):
      drivers: soc: ti: knav_qmss_queue: Make knav_gp_range_ops static

 .../devicetree/bindings/soc/ti/k3-socinfo.yaml     |  40 ++++++
 drivers/soc/ti/Kconfig                             |  10 ++
 drivers/soc/ti/Makefile                            |   1 +
 drivers/soc/ti/k3-socinfo.c                        | 152 +++++++++++++++++++++
 drivers/soc/ti/knav_qmss_queue.c                   |   2 +-
 5 files changed, 204 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
 create mode 100644 drivers/soc/ti/k3-socinfo.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
