Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B216BB95EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 18:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oalbGz+keWOfzelrnWdyBN3lPyy4hTleQYZ8eHW61KA=; b=PJNyEcxhsMUVb8
	XU7NaI3C8Yx2Ctq0oAfgdGnVv5myNqX9ZQ3XTVacHZjwJKdc0LkcplLTxhRKefkhNUw/5ZyLgMy5s
	x+iUn/UqLb/o4CXKVd9pVCYx/SSIUK48OEDJg1JOkT2MS/mGD49S/sGIZBmbhTkUlku3V4j00A+7H
	UlabYN3U8iAYeSzaqBuzbd9t5md8YRdCFy0yQOkuieyrP8qSNtahciQA1jXm8NS/gq96ghQb0Tgse
	R+km+/Yr+Nce6MG4lqumqA3Kw4Jhza13Ode6hoeIf2XGERih4TBqdjJqMC6lwcw+gQfQL3B8G4IiZ
	77uWTG/0MJyO/mhhM9Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBM08-0006Wb-Rt; Fri, 20 Sep 2019 16:43:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBM02-0006WI-CV
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 16:43:15 +0000
Received: by mail-wm1-x341.google.com with SMTP id x2so3210293wmj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 09:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0R4P0e6biWFdfRAffWr43LPqQx2wK15FMgY2jc4qKiw=;
 b=SJWTFZofuhTRo9sIcRyltPKWzvI/EB9t2s3RWVQyxtKnE/WHMU4ZBlG9ZW5/HOzqFt
 sMYu+luwdDHMW8Yn1NzvozvdMEip9iDcgBCwWJBfLDKGwZiCKS5FNg9aIySN/IPwRZko
 kbSq1+YskEZtxLiWLbyq+waM0uZN2KHvVeP0UHPI1ItbplOGxGSwv0Z8cViCQcu5hUHB
 1zrtruJ+CNJDGPbPCAIZUipP6MsGZi72H/YalnI94k3uvSBvzul3ze0YA500ZAb6RzmQ
 JQJFvdFDkfwmnMLMFjzhevUUqDURXKaJZfphZr6GMpL5h6Fy6hPoCns8B3S3DSSyif1u
 eTYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0R4P0e6biWFdfRAffWr43LPqQx2wK15FMgY2jc4qKiw=;
 b=Nm/AicioXO/vLCzwlxX5mJvxr7nSPFkqJT70nmYwaiaGLAqZxu//DGXUGtdq/OKyfi
 SfAvA/mgL/n30FHnYTyZONE1FvY26Ckqx/8PNQ08t0vxR134G21I4XOtMOEvxrVv9ugC
 1vtVTG9B5KO04m+yIaD3XfP+DFGwE4z32euPmPgVlS75vbXTsebu5cfpHHHcdu4CO6J9
 8b/6Xh7kaIftqyVUSHstdJuzHHgtMvLGx1XGqCMIYyRc+GBZCs71ylSz0g6iefDKS+Qu
 3W8Y/v1NrLApZWmOwMLj3kzTXfG0MQsMJZKE7/bGTjaR5RdZcU9PDJbwIy8bl1l8COUY
 pebA==
X-Gm-Message-State: APjAAAUhAkpNt1mdeqNJfMNLJsg49uvmn8l0OzUfxfJhtcHsXxuOK7vY
 h+RfeTeLU5iayttNY4vL4pe8rDLk
X-Google-Smtp-Source: APXvYqxhIrat6YtAgGi+pV9MyPiMvjmGw/MozyhbFXtgvjEBhZj6BBOO76bCu0OGkdliyRZOVgr8ew==
X-Received: by 2002:a1c:c5cb:: with SMTP id v194mr4125121wmf.108.1568997791350; 
 Fri, 20 Sep 2019 09:43:11 -0700 (PDT)
Received: from xeri-steel.it.int.avast.com
 ([2001:67c:284:64:5646:bb87:150a:dd53])
 by smtp.gmail.com with ESMTPSA id b5sm1696887wmj.18.2019.09.20.09.43.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 09:43:10 -0700 (PDT)
From: ja.kaisrlik@gmail.com
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: update Kconfig to better handle CMDLINE
Date: Fri, 20 Sep 2019 18:42:49 +0200
Message-Id: <20190920164249.6935-1-ja.kaisrlik@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_094314_427287_0A2CF7AB 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ja.kaisrlik[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin.marinas@arm.com, Jan Kaisrlik <ja.kaisrlik@gmail.com>,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jan Kaisrlik <ja.kaisrlik@gmail.com>

Added a menu to choose how to CMDLINE will be handled. Config strings
were copied from arm32 port.

Signed-off-by: Jan Kaisrlik <ja.kaisrlik@gmail.com>
---
 arch/arm64/Kconfig | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3adcec05b1f6..b1dd948f9665 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1538,6 +1538,23 @@ config CMDLINE
 	  entering them here. As a minimum, you should specify the the
 	  root device (e.g. root=/dev/nfs).
 
+choice
+	prompt "Kernel command line type" if CMDLINE != ""
+	default CMDLINE_FROM_BOOTLOADER
+
+config CMDLINE_FROM_BOOTLOADER
+	bool "Use bootloader kernel arguments if available"
+	help
+	  Uses the command-line options passed by the boot loader. If
+	  the boot loader doesn't provide any, the default kernel command
+	  string provided in CMDLINE will be used.
+
+config CMDLINE_EXTEND
+	bool "Extend bootloader kernel arguments"
+	help
+	  The command-line arguments provided by the boot loader will be
+	  appended to the default kernel command string.
+
 config CMDLINE_FORCE
 	bool "Always use the default kernel command string"
 	help
@@ -1545,6 +1562,7 @@ config CMDLINE_FORCE
 	  loader passes other arguments to the kernel.
 	  This is useful if you cannot or don't want to change the
 	  command-line options your boot loader passes to the kernel.
+endchoice
 
 config EFI_STUB
 	bool
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
