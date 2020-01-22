Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDCF144CCB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 09:03:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tlw9AC+mQvGYjlP8FIfod1f3E4GD6VmCEYoRDCKdcds=; b=FaXM1Dwzx+2Csj
	/PgaoGvall3K2lCkwRj4UE5+DLXvsY1Ny/fwv3wtAu+oDt9uLrsXTPoW5jY/D0HhVyuQdxHruIVkA
	FJ/BoD8wTai1O2V3tTBJUj+tcZC6dhA99ScocC5Mqy0bcBg/AUKuBKMiS1JgOFFaj26whLKzxFCc1
	ksP5Ly4JTHolLRmHOmMR8Vx1UIrCBBMcj9KfE5Ue497h/LWHQgqpau4BLyX7mGj5hG4XZWHvvS60K
	5tGWUaoCzJYzuuYMBVIrrPfbHSj3/qmeUM8rjsBgwMaA43h1Y9gQ4t0fCbxL5QyaDX6xIZXdz5BOc
	ql/SGFhvIh5NdNL7f7jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuAyc-0006vj-MG; Wed, 22 Jan 2020 08:03:02 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuAxk-0006Ki-MZ
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 08:02:10 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00M8216g096402;
 Wed, 22 Jan 2020 02:02:01 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579680121;
 bh=L5WORfa0XWhVNa/Scr/I2SAMSorVTSS3dl2PznqchpI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=H8JS9PL6gMPY+fTx+VqgqFwqovJSeQX5q0Pmqy9hU7Y6bbOm5S3g8aljL9yyaLG4s
 M76aqGADTnD/DhmUIIbqWH8T+3HiuvbokXjGzkT8mCiA1vV6+u6g/UoNmi6XBGACeU
 AI9pNZRF9TGPkGS/g4U6eMb9vhStCE0mQwfFvpRE=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00M821Ro096714
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 Jan 2020 02:02:01 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Jan 2020 02:01:58 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Jan 2020 02:01:58 -0600
Received: from a0230074-OptiPlex-7010.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00M81ctp007984;
 Wed, 22 Jan 2020 02:01:54 -0600
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-can@vger.kernel.org>
Subject: [PATCH 3/3] arm64: defconfig: Add Support for Bosch M_CAN controllers
Date: Wed, 22 Jan 2020 13:33:10 +0530
Message-ID: <20200122080310.24653-4-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20200122080310.24653-1-faiz_abbas@ti.com>
References: <20200122080310.24653-1-faiz_abbas@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_000208_794391_45B0F6F6 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, nm@ti.com, catalin.marinas@arm.com,
 sriram.dash@samsung.com, faiz_abbas@ti.com, t-kristo@ti.com,
 robh+dt@kernel.org, mkl@pengutronix.de, dmurphy@ti.com, davem@davemloft.net,
 wg@grandegger.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable configs for supporting Bosch M_CAN controllers.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 458bddeba89c..9d2ea46cc4ae 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -159,6 +159,9 @@ CONFIG_QRTR=m
 CONFIG_QRTR_SMD=m
 CONFIG_QRTR_TUN=m
 CONFIG_BPF_JIT=y
+CONFIG_CAN=m
+CONFIG_CAN_M_CAN=m
+CONFIG_CAN_M_CAN_PLATFORM=m
 CONFIG_BT=m
 CONFIG_BT_HIDP=m
 # CONFIG_BT_HS is not set
-- 
2.19.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
