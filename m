Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3143016A347
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:57:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ml4fMw8ECrPovDcxObEaEJX/2KWWUtXg2JzlrakU57U=; b=ChS
	aq7JfBfs1xyVtaHsj3hWdvMN29Vu2gFo212tgbLYTyv3o5D1u5lx7Qxa9lZQmFk0tiasJnlm5H0I2
	3c1ZRI0NgFlgYkpHZte+hFRNqf2NzcXR+I6KXm9PKW9nDBO43zMu4u3uTfycyF88ERbSO/ETNht39
	auRJ2dwCqE/EOgjI0f24Gknzjg5VcGudxa3zIbGaI96HBS4xkaoeENln0qR7t7uw6awTz8EhnvG/0
	tvO5uhHa9FIh8N2dF3C9CfXyJ5ld4+QhY4cTfXBSqh45wH2r2+1HTKz3Ze2aUVfyX3IijT9k9qsUt
	O5t1Ls8cAq8Eg3JbR4PGUExPz1Ti8lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AU3-000487-5w; Mon, 24 Feb 2020 09:57:03 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6AMV-00039g-AO
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 09:49:16 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 514CB20DC21;
 Mon, 24 Feb 2020 10:49:11 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8C5BE20DC1A;
 Mon, 24 Feb 2020 10:49:05 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 36FC8402B3;
 Mon, 24 Feb 2020 17:48:58 +0800 (SGT)
From: Sherry Sun <sherry.sun@nxp.com>
To: bp@alien8.de, mchehab@kernel.org, tony.luck@intel.com, james.morse@arm.com,
 rrichter@marvell.com, michal.simek@xilinx.com
Subject: [PATCH 0/3] Improve the output message for CE/UE
Date: Mon, 24 Feb 2020 17:42:34 +0800
Message-Id: <1582537357-10339-1-git-send-email-sherry.sun@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_014915_520560_31211982 
X-CRM114-Status: UNSURE (   4.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-imx@nxp.com, frank.li@nxp.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset correct and reorganize the output message which shows the CE/UE
relevant information, and add more useful output information for 64 bit systems.

Sherry Sun (3):
  EDAC: synopsys: Remove pinf->col parameter for ZynqMP and i.MX8MP
  EDAC: synopsys: Reorganizing the output message for CE/UE
  EDAC: synopsys: Add useful output information for 64 bit systems

 drivers/edac/synopsys_edac.c | 198 +++++++++++++++++++----------------
 1 file changed, 106 insertions(+), 92 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
