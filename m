Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9AD10CB3E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:03:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tcnAQzMtWpbuJRe3J+JTkH5LBDGI01yiWeIEoLWEk/g=; b=uRK2E9K8CL8zR+
	5mWuVIdu36kro7nI4ipooFeGyXMUrrIQS6DHkbFpLg8MgvNFCxJImNfFzYHtL+l7seEROMSbuWXA1
	WiAjOVthGaw8IFGfgbzyJdk0BMX/LGzi52kH7urCAOfIRDMvRtyDUaPXFmCKVYlk2Duxi2iAogE1A
	539i4kEagpfnUQS42JZEpdjRuMRB4am9LgXwvyZadBsftz36UUi0gkEsUijMvrGoeRhvc16Ji+Bgt
	GgnlR0NNxWQ317JasSXJaZS5JnHfBuly8QQlm3QvgIzExHA+LN7dlUDL+QeoNAghq/qO9V4/j3eU4
	R5BobhdAp5cZobwWBRIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLKG-0005W2-Vl; Thu, 28 Nov 2019 15:03:24 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEj-0000ua-O2
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:52 +0000
Received: by mail-lf1-x142.google.com with SMTP id l14so20241060lfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qF5A7O/IvrSbLrPy3H+9dqWM8UA+mIW6ZOrUrJXGJ2Q=;
 b=B5Dv63RR/4pl4ZTNUITqsFRQQZ5TAI+PA/AhP8AenPQ4xG7rpFpGcDBxA0xbml85u5
 oiAdj7WL2T+g4bt3ulClOJHjd19qEsp17OzR97zqwpMNOOndADtLGUvta4gcSO+d5iga
 juT6tqHk6l4CJNz6EPeJxH8b9Gv9Dl9QSZehg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qF5A7O/IvrSbLrPy3H+9dqWM8UA+mIW6ZOrUrJXGJ2Q=;
 b=H4DpcXUIR8ocS92ojXLDatLJ/73HAUC5yhkCGSpeFCPJf5PTyLpM3Ux/TI6Gp/NQPd
 K21JOcJiACf9m09CWMvxKHaWeNyyWIB9f1uqHX8VjvY0/imL6exbEgJxG7KE5zrRlOnF
 hlO325SzPmBcV2S1MyU0xgPG/vZH/aN343jbh5RewTX2MhnCCKWWvYYRYa89xMpIbmDi
 QXr3JB8yNTiv8uZLXsMyoP3uT491K5dylVAMCtgjUfCHOBen7SRxLtCO43RXOaxRKRsB
 JJ7XnDqCJ2vC5Zc9DLjct8bVAbAahw39qfdZ8VWFjcI3xhseuuQnAYPyVz3La2ZY7tyN
 xkNw==
X-Gm-Message-State: APjAAAVX/tg92WqxLzLzvEDuuvGPbWVOMKvcHmg/BjY9T3Cn7H8dCwqT
 b6nunIxw7XMBnEZpxjHLsqRj2g==
X-Google-Smtp-Source: APXvYqwJE77ccwhGv7KUUNqfmf/Szn+K7DK68gwlig7WSVAkchsABzo/HLFah4BDnOh9yuV4ngQ3xw==
X-Received: by 2002:ac2:42c2:: with SMTP id n2mr4840125lfl.152.1574953060221; 
 Thu, 28 Nov 2019 06:57:40 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:39 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 27/49] soc/fsl/qe/qe.h: update include path for cpm.h
Date: Thu, 28 Nov 2019 15:55:32 +0100
Message-Id: <20191128145554.1297-28-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065741_862178_2D07CD9D 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

asm/cpm.h under arch/powerpc is now just a wrapper for including
soc/fsl/cpm.h. In order to make the qe.h header usable on other
architectures, use the latter path directly.

Reviewed-by: Timur Tabi <timur@kernel.org>
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
