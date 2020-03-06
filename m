Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED47017C4D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 18:47:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwmoUBe7WYtSPXJudhI4GM1SShwysP2rkzh9oA/iygA=; b=YjdlKV21P2YnYd
	uFZk/zUDicQRMv6kHWHSeOubxKYNNZjuVUmkI6PWtCuEt37bz+3qPjaDWjY6QO0qR9wHKzxaPikjZ
	upSKvBHf9jcYSON0gQhjCxZEGnfO3zrdObtnjdQFTTE9rJPiUXe+bIsvhqlNCO/5Xq4pXjSVR81Fw
	IVfXtxtw0tmDjrN7VDqH+dhvUPrvLDRnXOHnolvQfQyuvyvSZ9I7Wn/c4fFJsZemBA7mjvORI7cTd
	lVRuIqACikY2bT4Zh+ZtglOCFxtlNjCe60Dj94AnA/j51dvC8MHQOOD+HGKjGzKBwk5FONXjvKeUZ
	kR8WGaZiQsG3hj3hzxyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAH3w-0003wN-RE; Fri, 06 Mar 2020 17:47:04 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAH1V-00085X-Ut; Fri, 06 Mar 2020 17:44:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 8906AACC2;
 Fri,  6 Mar 2020 17:44:32 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: adrian.hunter@intel.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v2 10/11] ARM: dts: bcm2711: Update expgpio's GPIO labels
Date: Fri,  6 Mar 2020 18:44:12 +0100
Message-Id: <20200306174413.20634-11-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306174413.20634-1-nsaenzjulienne@suse.de>
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_094434_171925_0978A2DC 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: stefan.wahren@i2se.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-mmc@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, phil@raspberrypi.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 6th line of the GPIO expander is used to power the board's SD card.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index 1d4b589fe233..b0ea8233b636 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -68,7 +68,7 @@ expgpio: gpio {
 				  "GLOBAL_RESET",
 				  "VDD_SD_IO_SEL",
 				  "CAM_GPIO",
-				  "",
+				  "SD_PWR_ON",
 				  "";
 		status = "okay";
 	};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
