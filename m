Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F266FB6E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 10:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j9JxOVnZqZKGnkP1IAhy/XA4wcFbbq3HU6OObNDYD48=; b=n3v
	+ObnHowwHXMQHUe1gUVNxzwnixCPy1p6uNcsMB2NdV2Kqa1eMelO+nkWS1A9Bm18/09LQAfX+WdF7
	AuW+BdDcHdi+1nAT1VV80JDN4EOz/h9PftTVowUH1kaGojUxQ1RMKaGrLRka4+s+4RKMj2wly62FI
	jJ9tG/r0I4St5cwKdygqQal7wYy5Rk4ersaDYBofeCxeLS/LknZLE/qc+qSLTlYgmBIrrFXrIW31V
	02/q4/E7u7VFlInvlY5elEXEjua34lCLq61Y+LQ5wWt4QtlNYmp5/pT0zLad8oB2Xzc42Jr19NoFX
	5F+XUIdmglWnh8otC0AKDmvfQ7C2dvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpTqJ-0006Is-Ja; Mon, 22 Jul 2019 08:38:48 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpTpL-00066l-PA
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 08:37:49 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C2EBA200255;
 Mon, 22 Jul 2019 10:37:45 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 565262002C3;
 Mon, 22 Jul 2019 10:37:42 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id AFAC4402DF;
 Mon, 22 Jul 2019 16:37:37 +0800 (SGT)
From: fugang.duan@nxp.com
To: festevam@gmail.com,
	shawnguo@kernel.org
Subject: [PATCH arm64/dts 0/2] arm64: dts: imx8qxp: add lpuart ports
Date: Mon, 22 Jul 2019 16:28:22 +0800
Message-Id: <20190722082824.15022-1-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_013748_180515_977C721D 
X-CRM114-Status: UNSURE (   4.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, daniel.baluta@gmail.com, fugang.duan@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fugang Duan <fugang.duan@nxp.com>

Add lpuart baud clock and add serial alias for imx8qxp lpuart ports,
to let lpuart work on imx8qxp platform.

V2:
- separate v1 patch to two patches, one is to add baud clock,
  the other is to add serial alias property.

Fugang Duan (2):
  arm64: dts: imx8qxp: add lpuart baud clock
  arm64: dts: imx8qxp: add serial alias

 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
