Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EB04AC86
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 23:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CILg3o36Mb/swa2KE5o3YvoSkk47teoxHnDfmLxTo8=; b=osAII7R+cTIDF0
	cmkU2WDxYjyi9aeu+4etsW0Z7Jga57w8tmE7GRcUcva8XkzaKNu4TtQeeCfG8Qq/CcKosMxiKExkc
	tdlZOToRGJuJlWh39hd+FkTdqXokB0HoZsmneXclP7vxgJl1kpv+Quz/ntfefnubBJ/b0aIEy/rGf
	msLeyhMB7eO6DYuzo7KRM5n384ev0CxlXkBH1w814pTYx6bnrQtajArz/5vz27ie+d79LK8vHyyD8
	7UYN1cRWhEy+bzfnyB+bd6kmwhqJA+ENV52m3W5zp59VL2TBYMAGB4RaKHE6Tm4NCg/RFKEr5Lne2
	Xt2Pqb1Z/bJBhPTbSuCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLIv-00072g-QI; Tue, 18 Jun 2019 21:06:09 +0000
Received: from 177.133.86.196.dynamic.adsl.gvt.net.br ([177.133.86.196]
 helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hdLIc-0006yj-4C; Tue, 18 Jun 2019 21:05:50 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1hdLIa-0002Cs-2h; Tue, 18 Jun 2019 18:05:48 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH v1 16/22] docs: driver-api: add xilinx driver API documentation
Date: Tue, 18 Jun 2019 18:05:40 -0300
Message-Id: <df317331caeb27702ad501bad2d5f46eee7f177e.1560891322.git.mchehab+samsung@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1560891322.git.mchehab+samsung@kernel.org>
References: <cover.1560891322.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
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
Cc: Jonathan Corbet <corbet@lwn.net>, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current file there (emmi) provides a description of
the driver uAPI and kAPI.

Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 Documentation/driver-api/index.rst              | 1 +
 Documentation/{ => driver-api}/xilinx/eemi.rst  | 0
 Documentation/{ => driver-api}/xilinx/index.rst | 1 -
 3 files changed, 1 insertion(+), 1 deletion(-)
 rename Documentation/{ => driver-api}/xilinx/eemi.rst (100%)
 rename Documentation/{ => driver-api}/xilinx/index.rst (94%)

diff --git a/Documentation/driver-api/index.rst b/Documentation/driver-api/index.rst
index 492b96003af2..6935d973ff5b 100644
--- a/Documentation/driver-api/index.rst
+++ b/Documentation/driver-api/index.rst
@@ -124,6 +124,7 @@ available subsections can be seen below.
    unaligned-memory-access
    vfio
    vfio-mediated-device
+   xilinx/index
    xillybus
    xz
    zorro
diff --git a/Documentation/xilinx/eemi.rst b/Documentation/driver-api/xilinx/eemi.rst
similarity index 100%
rename from Documentation/xilinx/eemi.rst
rename to Documentation/driver-api/xilinx/eemi.rst
diff --git a/Documentation/xilinx/index.rst b/Documentation/driver-api/xilinx/index.rst
similarity index 94%
rename from Documentation/xilinx/index.rst
rename to Documentation/driver-api/xilinx/index.rst
index 01cc1a0714df..13f7589ed442 100644
--- a/Documentation/xilinx/index.rst
+++ b/Documentation/driver-api/xilinx/index.rst
@@ -1,4 +1,3 @@
-:orphan:
 
 ===========
 Xilinx FPGA
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
