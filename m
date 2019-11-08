Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CC5F4CC9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:11:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWBJBk8AqhWqqP9TD/ouHbFlXhjaE+kOrFHU1r7qVRE=; b=isGFqmddTo4oWz
	yHu70Qw5WzneWOXXiBemysOUYmrRFg0AnCe40qxZTtQ8FNQG+yskDGbtKcOPt0VS/WqgFY6te2Vi7
	pMNsXXGE5pliTrpbASjPfqqU2+tB2V55eixH2FPN79KP3et7URq4pYt5II5PE/VfQl4uSvbQR7ZGU
	ly3os9Kn2O5phQeEAKn7I1hVx/RG+ZeXAlcwjqHsquBg8yuHUpXavJ7/45HjZp65Osmlpmdv1LFmw
	X0TpKVa6PB3a8AnQYm10sNV7NAEGxVVaxf0EJ+NEPt0izjLeyBEhZ3Uo9Bxi3zTOSqYCxSik/XdTc
	rGjG1oqqAW9/vbDiWusw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT42a-0005z4-QG; Fri, 08 Nov 2019 13:11:04 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tr-0004ee-UC
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:08 +0000
Received: by mail-lj1-x244.google.com with SMTP id p18so6130120ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N4h2w9DiO+4P3jPc0w1TT3xARdv8ATB93lgz8xw4vxA=;
 b=fwPnjhH+AaqAmrnzgfvsU+L9+8OhXmN2600F8bPtwqsqH8u1+zeWZvMRZT2S5CtXhN
 bzKLLdixWy9kgQjYP/uOsAIZp0u1Ssmgt4tcoj8VPgGjQ22Hm/uXXQlOmed8oj0PSuLt
 ZGmRW8UaAsucAjYrV7oJhG1YpGes9Og+Zn4Uk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N4h2w9DiO+4P3jPc0w1TT3xARdv8ATB93lgz8xw4vxA=;
 b=bWswJG8HTdwaESyx44LAuUsqtOsXBKw+xLDGKWNzmBvncbMaKmNsfs6/Va11DOxe5S
 /1qEg2s1o9ZoOCQf7se5mbi5XmVyLB8oa6FnGyIlUMpQ850UPlAtJspaBh/zv37kwwdS
 al16hi9SD65uDrJ8yz6mn4l2vUO7OOZ/3bNwsbkqQ3JMadb/YitdvUH40DnxXhE/X9Bi
 0Hg/MH7wCU5REmDbDJ3ly7hhHUJAeJOhx5XFFaCS1s9WKAU6mL9x3y6qsfnGRvZJke9z
 7/QYK1vlZZuH0JJs4qAaQKSnxL4ckAfdoVxLr3+CU+klwcnIEZwZqm/jQBrcmvGd/U4D
 vGsQ==
X-Gm-Message-State: APjAAAWJnTEoAvSmAeWlJqqIH0wRDcbz088ka/OPPqdzl3FAz8uXRCnj
 xVq860m9WAGgvLpEkWMkD4hn0A==
X-Google-Smtp-Source: APXvYqyCwmZwJn72ggRacXvlR0yu2D6d+8LbbMJit9Xetek1SpNBQJ7uRnYgqyaDOgv8d24FMyh9nQ==
X-Received: by 2002:a2e:89c2:: with SMTP id c2mr6731748ljk.161.1573218122321; 
 Fri, 08 Nov 2019 05:02:02 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:01 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 27/47] soc/fsl/qe/qe.h: update include path for cpm.h
Date: Fri,  8 Nov 2019 14:01:03 +0100
Message-Id: <20191108130123.6839-28-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050204_089561_750CFBCC 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

asm/cpm.h under arch/powerpc is now just a wrapper for including
soc/fsl/cpm.h. In order to make the qe.h header usable on other
architectures, use the latter path directly.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 include/soc/fsl/qe/qe.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/soc/fsl/qe/qe.h b/include/soc/fsl/qe/qe.h
index 9cac04c692fd..521fa3a177e0 100644
--- a/include/soc/fsl/qe/qe.h
+++ b/include/soc/fsl/qe/qe.h
@@ -17,7 +17,7 @@
 #include <linux/spinlock.h>
 #include <linux/errno.h>
 #include <linux/err.h>
-#include <asm/cpm.h>
+#include <soc/fsl/cpm.h>
 #include <soc/fsl/qe/immap_qe.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
