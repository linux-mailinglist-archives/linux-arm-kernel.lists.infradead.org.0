Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C839EC331
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:51:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phdG8dETw93i4+B4t+Nwup/3+7WSY4kHLgrDAv4zO2w=; b=tm6cvzXji9TRGP
	qjKIttCkltYlX1vlXeA6x/m5x76lNOaPVprYFXoAhS1x1u5dEoTXyKEHLjFojZ43xkl5WLprBKKPL
	OJxNGe+r7/HEhgycamysUliRoqj5lE+Z+FCdyb7vpZt6k4vRnkv3rkS/gS3DgTfAu7usfUUESPXQK
	v9OTdnHNW30A+JeArdzTJTeujAFYzPeBzdN2F0fj/QiOqV5Ei/PaGSveA1dcfixTY9Nwxc11VvJTA
	dY3i8J4qHLhqazXczAJ3wofRMQDrkkdl29qhoNkYuthD422E8z6tn7WShd+90JloYVwYwfPpPgQpv
	F2DWGBOEDQIX5GFvdwjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWOS-0000ir-Ia; Fri, 01 Nov 2019 12:51:08 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWGR-0008N6-0J
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:42:54 +0000
Received: by mail-lf1-x141.google.com with SMTP id j5so7132936lfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=skc4BB3FfJVhrMQufim0pPb5lTLStBal+/ZiI3PgHrk=;
 b=goNZ5OE4tByzOYzAc1bKhKcL9oM+UBCCFrvDNLRRvcNalh8UnNn6w3j3/Q21+wi139
 yiMCFOFtB95G2/yRPf1PDZQuswYXEi69SttUocHkc6sMbHZBdFvyxel4r9/0e7RIvZPM
 c/eVWDJF9fTGzUPSul9kKDwPdfk36qWT5Kll4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=skc4BB3FfJVhrMQufim0pPb5lTLStBal+/ZiI3PgHrk=;
 b=rybfHMx5PesSw/UZH0tYSXxetaa0QcYgGx9RL4KRMq/7dQgOFyvloCnSUrkSZayajT
 VMrq2lgSHjzdygr3WdbR5F5O0p4VWQ5/+VeNRUP5gJZP9iVG+NwcV+TRG1IJB8n3fHIn
 e+zYNyeHHrEGTRML1DMGe9N5Vwm9PVB9edbBMOOIh8bBmae5kXmhMcOMsgY298eSl6OX
 aRJD+t9QGRnUoDCeTv9EGvmfiyJoiwxs3ZEpci7b61PYK1x5Az+8+QOBodhj5C6bGR19
 JmJQ6ITYJJ/yNmBWn34RP66SHxZYIu4vbZj3sdb5mLyCUBgeGXtcYiytS0Qmf/DidjF4
 7i4Q==
X-Gm-Message-State: APjAAAU7xlf6DGSDeuLqO5SVln6CVCC5Q1UGgxN4SlOGDsYXCSie8pdA
 LpHAzXUyTvwSq6ibWNiuru/nog==
X-Google-Smtp-Source: APXvYqx+LkhhsdE4uicd68kleysrFNvL7csaxcY4M/SzGwCUFxmQjOfm//4bJ58IrETbPNpw6KnCjQ==
X-Received: by 2002:a19:8c1c:: with SMTP id o28mr7221433lfd.105.1572612169565; 
 Fri, 01 Nov 2019 05:42:49 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:49 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 28/36] serial: ucc_uart: explicitly include soc/fsl/cpm.h
Date: Fri,  1 Nov 2019 13:42:02 +0100
Message-Id: <20191101124210.14510-29-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054251_085712_0362934A 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linux-serial@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver uses #defines from soc/fsl/cpm.h, so instead of relying on
some other header pulling that in, do that explicitly. This is
preparation for allowing this driver to build on ARM.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/tty/serial/ucc_uart.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tty/serial/ucc_uart.c b/drivers/tty/serial/ucc_uart.c
index a0555ae2b1ef..7e802616cba8 100644
--- a/drivers/tty/serial/ucc_uart.c
+++ b/drivers/tty/serial/ucc_uart.c
@@ -32,6 +32,7 @@
 #include <soc/fsl/qe/ucc_slow.h>
 
 #include <linux/firmware.h>
+#include <soc/fsl/cpm.h>
 #include <asm/reg.h>
 
 /*
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
