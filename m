Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3726B1CF7CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NeARtuPNCpHLj/87KHUGH8qp/0aT2dvc9JJnqFg2Uk=; b=i6WtjLt/m6eZnS
	1/w7IyEOIZ4I4L5TprXvNssorthXv6JuSjQKDaxSVsbfVJurIfN4XHrc/QEz8FCPUpAFNWeUdYPmF
	u7P6UKiWjT5qDWkIF0IpiMNY2cNk8layKaIdk6XpMqyTzAEwMVDBQRr2j4fGyUmixBCx2G9o8zLOk
	vG5ewIhp9waXJA5jSDbre+enBJ9jUsb+KyWts3HbmljJJz/R+RPV86T6OQZbgZb3E1MFnkE0Kh1vU
	ZxZR8b7tq+44ehCMPFHMRYY2qOwN3PNRNX1M5vWdld5b7Wzw6cVN15/mMNn+GbC9c/Q+Wj+DxyCM7
	Wvbxb795Hr4iNyQAYY3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYWDW-0006IJ-CL; Tue, 12 May 2020 14:49:10 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYWD6-00068I-Pp
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:48:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 93249ACCE;
 Tue, 12 May 2020 14:48:43 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: swarren@wwwdotorg.org,
	robh+dt@kernel.org,
	robin.murphy@arm.com
Subject: [PATCH 2/4] dt-bindings: sram: add documentation for reserved-only
 flag
Date: Tue, 12 May 2020 16:48:01 +0200
Message-Id: <20200512144803.24344-2-ykaukab@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200512144803.24344-1-ykaukab@suse.de>
References: <20200512144803.24344-1-ykaukab@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_074844_985914_364C7590 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 Mian Yousaf Kaukab <ykaukab@suse.de>, linux-kernel@vger.kernel.org,
 jonathanh@nvidia.com, talho@nvidia.com, thierry.reding@gmail.com,
 linux-tegra@vger.kernel.org, afaerber@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for the new optional flag added for SRAM driver.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
 Documentation/devicetree/bindings/sram/sram.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 19d116ff9ddc..4bcc309fa841 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -55,6 +55,12 @@ properties:
       as write combining. WC is used by default.
     type: boolean
 
+  reserved-only:
+    description:
+      The flag indicating, that only SRAM reserved regions have to be remapped.
+      remapping type is selected depending upon no-memory-wc as usual.
+    type: boolean
+
 patternProperties:
   "^([a-z]*-)?sram(-section)?@[a-f0-9]+$":
     type: object
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
