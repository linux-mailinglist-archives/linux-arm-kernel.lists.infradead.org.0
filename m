Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED145E4B81
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:48:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQLUBu7HNdoMaLd24agAKAQSO+Bm5Q5SVaED5Llal8I=; b=tH4HcfAkn3kAYn
	LWTDjMj+PE/Q8zwEGNn2s+ohR7G0jB0ZAotXpl0xvPhQOG62TBtPigYmeAK8tSJZvWByn3StxqK3m
	M3ieI/X9yH+NzD2eNZtL3B4OZ4tqNHsioj5UJqTEcPdgekH0mA6lPdA4r52huTPU8tNJMHpsBncaI
	HLcHQe7cbqVKyR7MMApyn4j8lkm/D+g9/9Z4r5k7iPVHJV9KIz3fmDDC7X9PYzpkEVkzN8TmQuOLu
	HUkTrixRxGfDtNrPNeXn38cVyp2w76WOsWr10dFrPmGvFtQ7tyM74wZrQLJDqJQQIPU1vdKykZ70B
	eNbP8WAEu9dXzrQ7/1ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNz1P-0004g7-NU; Fri, 25 Oct 2019 12:48:51 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyuL-0006Zq-0N
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:34 +0000
Received: by mail-lf1-x12a.google.com with SMTP id y127so1643852lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qFJ5knvRmhJ/ykv6ig7dLhGdF7aP5T5p7rUQ0Zs3NtI=;
 b=fN9FLv1TWt9RmdqJPXYJ1BSICN8810u9B90Dtb66/JKKA8kMmjNMG4Z/Vi2NepiVHv
 U71PRBKlbkRbFHhqbC5PMO652qEYoi77kvUe0e46Ve9Kh+Xpu4hungqtf/54qh0BBEAR
 F9UUwkQt99O82HP3vUEdNXGLHMuCUCABaicHY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qFJ5knvRmhJ/ykv6ig7dLhGdF7aP5T5p7rUQ0Zs3NtI=;
 b=lFAAXYnr63n2nTL2FmPz6DcwTp5td9JIz57Htyod4roF2WHG1BXZCwnsQY+HtjN84a
 eeT8gGyE948conb6YNY8DjWN569Pxdq3OemjksQEKBa5dKlxi6TU0r6C5mQYvjgEVak9
 uXrLKI1xC1EF99TPhCg+tOHqJUyPYW1Ex5N9Y/m5Lfr29X6l3FPsfjl/RMbhD5AfIqtE
 3Lbo90RFxroPZNrRpxiy9Ti/GHySCwxeoUwkeizuCg8L5LEDD/PU9KO4Fi1dtMfHzNuX
 JwYy9wL8s9Tn546eIH4FxYELvjQ2i8f3O5JdrjlACRbPSe8lpZVqXref5eB/7nhDuF0c
 0TBA==
X-Gm-Message-State: APjAAAXzmXJx8bYhJz0dB6ZKVMSqr9GktZwTZqSeyO3/Yo/eDOWr20DH
 /fTLCAYvM/dJ7YZeNM0nXMbueg==
X-Google-Smtp-Source: APXvYqwTKAlx+8gqS83r5t1J60mX4EbEf9p/r/d9BH0dUVal/pLCp3KxgEe9mUFMqZVTpXniZZQs0w==
X-Received: by 2002:ac2:55b4:: with SMTP id y20mr2600154lfg.173.1572007291311; 
 Fri, 25 Oct 2019 05:41:31 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:30 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 22/23] soc/fsl/qe/qe.h: remove include of asm/cpm.h
Date: Fri, 25 Oct 2019 14:40:57 +0200
Message-Id: <20191025124058.22580-23-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054133_064393_39CBC4D1 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12a listed in]
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
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

asm/cpm.h only exists on PPC, so this prevents use of this header on
other platforms. Drivers that need asm/cpm.h (and are thus inherently
PPC-specific) must include that explicitly.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 include/soc/fsl/qe/qe.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/soc/fsl/qe/qe.h b/include/soc/fsl/qe/qe.h
index c1036d16ed03..3768c226490e 100644
--- a/include/soc/fsl/qe/qe.h
+++ b/include/soc/fsl/qe/qe.h
@@ -17,7 +17,6 @@
 #include <linux/spinlock.h>
 #include <linux/errno.h>
 #include <linux/err.h>
-#include <asm/cpm.h>
 #include <soc/fsl/qe/immap_qe.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
