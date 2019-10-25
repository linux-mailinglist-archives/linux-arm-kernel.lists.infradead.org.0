Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B3EE4B80
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLjX01zBhuoaXuBuhgy7L9RClV1o6FObcZ1UvOHpuwo=; b=a35juVwlMFgmLe
	0NF3kfwc7ueuy0KEU86E8eVAb5UMNpnX1644s2oHWGS9QQCZUmhY/XfzY8bHHyTG9+EFa/dD+TvjP
	cCzCSxlOo3WeLjjMJHp+FdwGlZvjIl5i/yI6MFjvlZMar/2zXU9WCQgWWB1gPZ+h++fToFjAl5A+8
	CtcKD6wRTI+TIRJQj4KpZ1kugqTEFVrjlIekAv39kqeaER5J1ETVUB1H12bAh8x2CCg/H3He1ndcx
	gDUlgwI6Vv7MMOkBmuH1Ae0Ily69QsnIxVNbSfq+x3JYMsT0s20I6Bxod5dZjmo9bm7L3xsMTsjIy
	B8d08qQ5MnL7BJZTIesw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNz18-0004Rf-Rh; Fri, 25 Oct 2019 12:48:34 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyuJ-0006YK-Ou
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:33 +0000
Received: by mail-lf1-x142.google.com with SMTP id i15so1618374lfo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iGJonh7VqgV4Y1nWqTZdSXnTXxbR6q5lO30wl6/it2Q=;
 b=E1hiJE/N8uyirc34yldY8uoOKyp6Aafi6pTD1KNMz37l7ZxFuQTs1ly4mphyCyeoLm
 BIfJpTGn7JnPGMw2F/xN60qCJErNEMevmCpDy0g8zwOdSCaqJCYYVHT4CQPIamvwj2L3
 MdqAsCo4b5XqddEjICpt0BEm/DeSmy611x/Z8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iGJonh7VqgV4Y1nWqTZdSXnTXxbR6q5lO30wl6/it2Q=;
 b=KGwOnCgfzhlW17PtIKklq/tclUQ+mjiWFIwwH9eZqisrKNNQCuJ3CPO1gvhXhj9l6y
 cIHCQGA5NRGWOuCHTzFo3wuTo5Bt0aT4j2mhFDj7ULSYRcon5Sy/oERaiuVsVSarf5GL
 tZED8lCb6dmDwV9oVGLqtemieAWJ0TJP6z01CIzX6nkKsy1JmStI9p2BOTl4SkL1oQ+U
 ++gt2+IgwuWYXHu4f+vACg2/0t7wAMA33p3dErBiAiwUuUggsmDhXGTSrk4zgYhVMdTJ
 wmL/evr8nkpK4IxsfEi0B/lVA1Kg1lEqRaIOjbKmn+76+aoowT8zcIbmtd+iJ/fVWFao
 brXQ==
X-Gm-Message-State: APjAAAWYYOdTrfy7SD4PxYCAP6JXuboMKD6lSn2Ye7h3P94WYUnM/DBe
 iZg06GR0ZwKob0f3drQ0+O3dRw==
X-Google-Smtp-Source: APXvYqzWdgjzit8ixR4YnUZ9xLOIPsZHRAlHxEezNI3JzgRLGEBgrKtCg1284a/7LWYjFvAyXUS6gA==
X-Received: by 2002:ac2:4c15:: with SMTP id t21mr2581867lfq.7.1572007290172;
 Fri, 25 Oct 2019 05:41:30 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:29 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 21/23] serial: ucc_uart.c: explicitly include asm/cpm.h
Date: Fri, 25 Oct 2019 14:40:56 +0200
Message-Id: <20191025124058.22580-22-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054131_825935_02B322AF 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linux-serial@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver uses #defines from asm/cpm.h, so instead of relying on
some other header pulling that in, do that explicitly.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/tty/serial/ucc_uart.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tty/serial/ucc_uart.c b/drivers/tty/serial/ucc_uart.c
index a0555ae2b1ef..e2c998badf81 100644
--- a/drivers/tty/serial/ucc_uart.c
+++ b/drivers/tty/serial/ucc_uart.c
@@ -33,6 +33,7 @@
 
 #include <linux/firmware.h>
 #include <asm/reg.h>
+#include <asm/cpm.h>
 
 /*
  * The GUMR flag for Soft UART.  This would normally be defined in qe.h,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
