Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14C210043C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:33:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phdG8dETw93i4+B4t+Nwup/3+7WSY4kHLgrDAv4zO2w=; b=m97Fp0MJPpkQ/W
	JdLHXcPKPlxvlID84/SxJ91M6f1udE1u1Jh18E0syfLw86IMsswAfiRxaJDiS0IeOrtLdnVm+z73m
	/1xqPCJyNoZMwQLCSxrGER9yRrt1mkQjRyFPDq/GXgRQUUZLP4vsqm7z/qsdaIt6f30BP6LNT+XJV
	tuKNHq0n+FyKoYEVBtQMhoD2IOkHT3XSTgdXHuB4co0TwBOO9cgR3teFgOLg+ARWYubtJwC4szdq8
	YcClJk1O/8SjtLD1fNVH588a5i4sn4DpKujdBGmFbW4/KQrc6AnLJiPhR8jGL7agJDtBN+8F9roNu
	9X+/KietCz++n8LxmsHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfHX-0002UQ-Be; Mon, 18 Nov 2019 11:33:23 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8a-0001Mp-MG
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id b11so16952316wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=skc4BB3FfJVhrMQufim0pPb5lTLStBal+/ZiI3PgHrk=;
 b=bIXhboGAOfHEuhy5XNvLSkt/v8AbF7er8M7+DnbVSRGu/nfzVD9BIZMY9lvVjK01yq
 x4OwM95DdJqvHHmAn2AEIZpahfvZGZTl5VI+0W8Nii1hH0oJGGfoxnKmw/9+dD48TPoO
 1EZMF/DjpiyKhwbirwHabUH+m5MatGIRUQD+Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=skc4BB3FfJVhrMQufim0pPb5lTLStBal+/ZiI3PgHrk=;
 b=MCHT4rZXd4hxLpYgilgbZuCU2dnrPz9/jPbLu0Pmw+OMekZjHpXvHDrbCMUwtfvR0a
 AiECqrYn/uesQ/egJPJJ4e9ye5XDRTJ0hLglvjvXYNWMddtrTWoX2TYS15KI25VnBuYB
 CgSNun/rHPH4qac5PulAe5gOWJ+Nz0mH57MvG8AjMQHk7CKHIuMqPAeRCzggs4iNbBuv
 aSS2uzhulJ1RWBV3IxiWWZeY2mOY3yzTX7vCJb0wZZJGMiTQnS3HVyR337RvbdyWV6yQ
 dHu+7KcxBbjfRSjbQKN/h8SGC6LHH9Qsb1m0VJW7B4hNFyrFUQgtOLyHpOYoO24YY0C2
 N0jw==
X-Gm-Message-State: APjAAAUxmlOz+M4P4QaZGWot5DH30XjsHsDb9U4kEymdZsIYudEo3uUg
 RDpGQ/ds4hYIhMBS2zillg7Riw==
X-Google-Smtp-Source: APXvYqzv/wXIsjaRbMxH9N3IlxmKxJic89M7wV8bzm0V/mj0kc0XrptcV3zjVvdAWMEcHYldq3xfjg==
X-Received: by 2002:a7b:c768:: with SMTP id x8mr29728216wmk.26.1574076247328; 
 Mon, 18 Nov 2019 03:24:07 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:07 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 28/48] serial: ucc_uart: explicitly include soc/fsl/cpm.h
Date: Mon, 18 Nov 2019 12:23:04 +0100
Message-Id: <20191118112324.22725-29-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032408_744147_84FD520B 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linux-serial@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
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
