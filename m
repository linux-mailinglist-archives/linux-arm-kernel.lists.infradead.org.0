Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4AA1A6F4E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 00:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qRV8w46MTnCyGR1rhykE4ckHDfXBX7ZtTwsNG0TI+qY=; b=GVgTpOIOtrUTc8gU7FFTLuqbNh
	pxSDERZD0vp2K1L9sC8JXMzk0NRZrsZGcmoQZq0tTJuHZKEOk4iUo6Lobmn5D/Wk48aRrUDDTIdKS
	qKXTbPFMqRKV5aPXoQ0b1QId9+kx4F7QS8sK2vwBtUyXhj02hyIb8thbSd0yZUHXkdBDsTauOb5T4
	EkS5oz7EWQYeLPemtXQbOLjWY7kYo9WPGXY++1DGpOy0QLZcFGHPqTXXr3zgRbx1WUYz0sc5Ew/pL
	BX8GdxIm6WSLfx9z4vOXbyqPQ0H6rRaeRhq8ndsX/hNIqjQz6OP1EItA4DSk+SyJfLZJ1+z9fy6XA
	E4cvR1aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO7ci-0007iZ-5j; Mon, 13 Apr 2020 22:32:12 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO7au-0006Ib-VB
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 22:30:22 +0000
IronPort-SDR: SrNziQUPtUOw22ABd0fIGoqghXXLqIOoM6TapXOVN2ABlzK5GruGyg0lNdJNO3yAHGnkfDbbLA
 Gs8LeHtZ/2lw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 15:30:18 -0700
IronPort-SDR: vRCsw9bREBOCC60RABl7bp+ryTEzmchD5yk8aqBS/Cgjhq0OSHv37Wni/NqCIyDXNdcGm+rTV8
 yIVyEvPleqQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,380,1580803200"; d="scan'208";a="399760858"
Received: from epcorona-mobl.amr.corp.intel.com (HELO
 epcorona-moblu.amr.corp.intel.com) ([10.254.189.204])
 by orsmga004.jf.intel.com with ESMTP; 13 Apr 2020 15:30:09 -0700
From: Ernesto Corona <ernesto.corona@intel.com>
To: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: [PATCH v29 6/6] drivers: jtag: Add JTAG core driver Maintainers
Date: Mon, 13 Apr 2020 15:29:20 -0700
Message-Id: <20200413222920.4722-7-ernesto.corona@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200413222920.4722-1-ernesto.corona@intel.com>
References: <20200413222920.4722-1-ernesto.corona@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_153021_083900_B1DA788F 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, Steven Filary <steven.a.filary@intel.com>,
 Vadim Pasternak <vadimp@mellanox.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Amithash Prasad <amithash@fb.com>, Jiri Pirko <jiri@mellanox.com>,
 Rgrs <rgrs@protonmail.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Ernesto Corona <ernesto.corona@intel.com>, Patrick Williams <patrickw3@fb.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Oleksandr Shamray <oleksandrs@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

JTAG class driver provide infrastructure to support hardware/software
JTAG platform drivers. It provide user layer API interface for flashing
and debugging external devices which equipped with JTAG interface
using standard transactions.

Signed-off-by: Oleksandr Shamray <oleksandrs@mellanox.com>
Signed-off-by: Ernesto Corona <ernesto.corona@intel.com>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Cc: Jiri Pirko <jiri@mellanox.com>
Cc: Vadim Pasternak <vadimp@mellanox.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: David S. Miller <davem@davemloft.net>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Steven Filary <steven.a.filary@intel.com>
Cc: Amithash Prasad <amithash@fb.com>
Cc: Patrick Williams <patrickw3@fb.com>
Cc: Rgrs <rgrs@protonmail.com>
---
 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e64e5db31497..96d20fbb719c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9144,6 +9144,17 @@ L:	linux-serial@vger.kernel.org
 S:	Orphan
 F:	drivers/tty/serial/jsm/
 
+JTAG SUBSYSTEM
+M:	Oleksandr Shamray <oleksandrs@mellanox.com>
+M:	Vadim Pasternak <vadimp@mellanox.com>
+M	Ernesto Corona <ernesto.corona@intel.com>
+S:	Maintained
+F:	include/linux/jtag.h
+F:	include/uapi/linux/jtag.h
+F:	drivers/jtag/
+F:	Documentation/devicetree/bindings/jtag/
+F:	Documentation/ABI/testing/jtag-dev
+
 K10TEMP HARDWARE MONITORING DRIVER
 M:	Clemens Ladisch <clemens@ladisch.de>
 L:	linux-hwmon@vger.kernel.org
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
