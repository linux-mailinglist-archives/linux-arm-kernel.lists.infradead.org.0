Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5CA59B59
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 14:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFSzdlBdqCdSm9Fst6polNWefPDGbHQemZOgVzONd5g=; b=iQ7x38pIyQKp3P
	B4UyMgWIWrbrYjXTROAA8NeM0peqvOdsZanB1OLIQ08F//ILe5Im+0qk8pbhDOyIdm7H4x8GRZxAm
	FeNwHyJ6kbYqFWcJchxamRikT3yt1gZfje86M6YNV22ZRNnwz8egx3MCiTw8HttXzBYBdpReCVXv5
	4kSgHwW1H6YDukRl14Uvx+LU9ZKTfOHXSfUxqASCdyFIPtGYldi7la47bMK3RVcrMILhmq5lCDcYT
	AaeiDXStwjGTb1scy4tV3bmwxje0tBf2lTD0Asil8R13g/c4ogtbs5bOuSBvKF/OsUWYR7cuzthpR
	a/VJS1HWPnwfuRIbSamw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgq3J-0006Nm-Tr; Fri, 28 Jun 2019 12:32:29 +0000
Received: from [186.213.242.156] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hgq1U-00055i-MT; Fri, 28 Jun 2019 12:30:36 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1hgq1S-0005TJ-No; Fri, 28 Jun 2019 09:30:34 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH 30/39] docs: driver-api: add xilinx driver API documentation
Date: Fri, 28 Jun 2019 09:30:23 -0300
Message-Id: <b587333d0add640d6dc73f1b5f276521b0d5fd8d.1561724493.git.mchehab+samsung@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1561724493.git.mchehab+samsung@kernel.org>
References: <cover.1561724493.git.mchehab+samsung@kernel.org>
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
index bba01cb95162..0bc5f2e3b98b 100644
--- a/Documentation/driver-api/index.rst
+++ b/Documentation/driver-api/index.rst
@@ -93,6 +93,7 @@ available subsections can be seen below.
    sync_file
    vfio-mediated-device
    vfio
+   xilinx/index
    xillybus
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
