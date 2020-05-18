Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0531D7D56
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:50:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VyHGoXeCRANIj0INN2H5cino1R8p2Y/sl8s0pKBu/gs=; b=ho3/AaaZ53DCzEnItFbKaxpMKj
	kla2CJiXXD23KJga4fTkiAmBcNzyomyBxofwjpaQ2TSODnTXCLwwiDo5mbk75wrydj2xDle6VRmiU
	TCxB/MQlgtTDUeIc4uVkO7aIY9Bx2bjVtpAA84sZfiiXxTtt/s4CdYlOCmIaF7Gs80VYZ8yTdww9F
	WeynkM9ZXPEjpcfN1LxtD5oUOZ9KAszBwydQwOwcH7tJDG2L+FrKy3qr27j4z+4O5uEEusgeMfO0d
	o/M6/CYp7z+TWNqZeu/3VtqmxhlwzQekQWbL9n1387sCZMTpj92RZkOiKhuq3s0Yh2cRX5YcbzWsK
	Rft4A64Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jai2G-0005Nm-4V; Mon, 18 May 2020 15:50:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jai1j-0002tY-EU
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:50:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6A7FE11FB;
 Mon, 18 May 2020 08:50:02 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 34BBB3F52E;
 Mon, 18 May 2020 08:50:01 -0700 (PDT)
From: Qais Yousef <qais.yousef@arm.com>
To: Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [RESEND] [PATCH v2 2/3] usb/xhci-plat: Set PM runtime as active on
 resume
Date: Mon, 18 May 2020 16:49:30 +0100
Message-Id: <20200518154931.6144-2-qais.yousef@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200518154931.6144-1-qais.yousef@arm.com>
References: <20200518154931.6144-1-qais.yousef@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_085003_570556_8D24D25E 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Oliver Neukum <oneukum@suse.de>, Mathias Nyman <mathias.nyman@intel.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tony Prisk <linux@prisktech.co.nz>, Qais Yousef <qais.yousef@arm.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Follow suit of ohci-platform.c and perform pm_runtime_set_active() on
resume.

ohci-platform.c had a warning reported due to the missing
pm_runtime_set_active() [1].

[1] https://lore.kernel.org/lkml/20200323143857.db5zphxhq4hz3hmd@e107158-lin.cambridge.arm.com/

Signed-off-by: Qais Yousef <qais.yousef@arm.com>
CC: Tony Prisk <linux@prisktech.co.nz>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: Mathias Nyman <mathias.nyman@intel.com>
CC: Oliver Neukum <oneukum@suse.de>
CC: linux-arm-kernel@lists.infradead.org
CC: linux-usb@vger.kernel.org
CC: linux-kernel@vger.kernel.org
---
 drivers/usb/host/xhci-plat.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/host/xhci-plat.c b/drivers/usb/host/xhci-plat.c
index 1d4f6f85f0fe..05cafef702a9 100644
--- a/drivers/usb/host/xhci-plat.c
+++ b/drivers/usb/host/xhci-plat.c
@@ -407,7 +407,15 @@ static int __maybe_unused xhci_plat_resume(struct device *dev)
 	if (ret)
 		return ret;
 
-	return xhci_resume(xhci, 0);
+	ret = xhci_resume(xhci, 0);
+	if (ret)
+		return ret;
+
+	pm_runtime_disable(dev);
+	pm_runtime_set_active(dev);
+	pm_runtime_enable(dev);
+
+	return 0;
 }
 
 static int __maybe_unused xhci_plat_runtime_suspend(struct device *dev)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
