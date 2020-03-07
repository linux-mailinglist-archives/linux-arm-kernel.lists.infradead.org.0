Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C994817CF8B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 18:57:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dPubux9xc0tbkMQISwhVD3sW65wGIn25FukR6xkiFek=; b=C87
	0sUZclXsS4vntNFRpsA2xXEx8W1ZhJxUpRE4xKM0ZvwlfYK2Nc30o+7kWbYs++740zFyxmN3OOQvg
	D8SH0VWE7IUPXkcVHx4PzBgWhwYMH21KvLbgIvByBi1fYlfjm8mvC78AdBCQATFZFZZ+oNwiI6pv2
	7t/XfvE7vnFOwqDL0kM7cVzhop4yXLA/b8MhlS2/LvcXjau8TXoZJ9V6wNrUIrJhTTa09aYNuDyLP
	4umcXr/d5FGbAbpgVHJR3uyUS7T6/ekg9qn52hif+6m9Vyqntq9wS3V8wF5juuG+HM+nkwbhLT2Pi
	XF99CrDrNVW+NTat9p4JdA43jGNqL2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAdhr-0001F4-LH; Sat, 07 Mar 2020 17:57:47 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAdhi-0001Ed-VW
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 17:57:40 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 027HsCaQ091729;
 Sat, 7 Mar 2020 17:57:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id; s=corp-2020-01-29;
 bh=fJpsbI/bmww1tS/7F7pETLhlrcExlBsSe57jyl5U0/M=;
 b=jytLqm33KpDYcdZizIEytt4F9RIdd2ZkH6TUcQ6L36ab4vugOmyA24TxtgXltNblGHiW
 rfMk+GK1EbcfnHRT1IaVWpKxwIb6kuODA9TsZzpSCM4XKhLUyKktXK6PaPux28XIRWOj
 USUJ5rfCU7Pue+ua1IpWVqF0LenRfnf/VKRGPcGMslQqi00pigda9lhATYb0nMuBavtM
 OuLgKRtRkzAV2Vjc2kJ1JQC9fFGr5ta4I6m147z2Nemnbc6uuLs60NLdsdayUVkKs0nM
 jISylrGToiG5QLQjo/K91GB+V87W0XUuQtkqqGEwyg4LJTWuFEO4eiSlMWW+/1Fjb06C 3A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2ym31u1evh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 07 Mar 2020 17:57:24 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 027HvHXO114747;
 Sat, 7 Mar 2020 17:57:23 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2ym0qw9s2x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 07 Mar 2020 17:57:23 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 027HvCP2029314;
 Sat, 7 Mar 2020 17:57:16 GMT
Received: from localhost.localdomain (/10.159.155.75)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 07 Mar 2020 09:57:12 -0800
From: Santosh Shilimkar <santosh.shilimkar@oracle.com>
To: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] ARM: Keystone DTS updates for 5.7
Date: Sat,  7 Mar 2020 09:56:59 -0800
Message-Id: <1583603819-9651-1-git-send-email-santosh.shilimkar@oracle.com>
X-Mailer: git-send-email 1.9.1
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9553
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0
 suspectscore=0 mlxscore=0 adultscore=0 bulkscore=0 mlxlogscore=703
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003070132
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9553
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 lowpriorityscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0
 phishscore=0 mlxlogscore=765 mlxscore=0 malwarescore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003070131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_095739_059222_D035043D 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git tags/keystone_dts_for_5.7

for you to fetch changes up to 7856488bd83b0182548a84d05c07326321ae6138:

  ARM: dts: keystone-k2g-evm: add HDMI video support (2020-03-07 09:47:24 -0800)

----------------------------------------------------------------
ARM: Keystone DTS updates for 5.7

Add display support for K2G EVM Board

----------------------------------------------------------------
Jyri Sarha (2):
      ARM: dts: keystone-k2g: Add DSS node
      ARM: dts: keystone-k2g-evm: add HDMI video support

 arch/arm/boot/dts/keystone-k2g-evm.dts | 101 +++++++++++++++++++++++++++++++++
 arch/arm/boot/dts/keystone-k2g.dtsi    |  22 +++++++
 2 files changed, 123 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
