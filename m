Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 451DC1D29E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:22:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cN8lGdw0klK0XSrqOev6ptO3WnFv2Ldoc89nDtOVO7A=; b=ILx
	u2Gk9cWvdV0L4yKV8kiPA3kxq7D4tiY7BNmbDG64XQ0TKJfU6R+Tm+tUgAXLK10c865ZRSg5mW8eb
	CeIEEWI5tT4KpY8rf8VDbqUEVZbc0EiKBSMtA8yHBRmlbgad2dZQq1z9DRn2ew/No+b+u6DRbimuG
	EORVdAjoCJybIKfH4dygp0YOpvqg42U6w3U0gmFaRB1lrlreIwly3bXpKX6n0huran0IhrEkFv+HC
	K6i5oSLaStuhhBMWRoBU2Zwlc5tmwnp/7svsLGGc/NYpX3kvPfyDwUh3FVkO0MrDaoCnKpqIPjFjh
	0j35qlfwqHq/77g2dQYOXQS9ZLqfPog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ98H-0005Hp-Sx; Thu, 14 May 2020 08:22:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ98A-0005Gm-Az
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:22:15 +0000
Received: by mail-wr1-x442.google.com with SMTP id v12so2650152wrp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=qdWmA1Euy8ZG30FI7AUlbvFYtFSjIbnys+8nxgEJbhg=;
 b=PFa9LEYzjwWMWmcWtxzDu0fdq/K+5YMclCSXA64Rlr9wUvrZBZ/9M0Qb4+G+g+R3x2
 funKlEv/81De8p6hoqZ3C3Mp6mO8xxpd5qSRdl5a/M+eRdY21v25CSDE7E9Od/hZRrd8
 NBuC3HaS9FIXoFWk4+YW6hfGd8hGWuWGZ25BhmJM9uTsJRmvlYJ0H7q0e9fzq+s1mlq0
 ovec4GfMY3KggkqZlGxoVqudk53Il3emE9lMn22vHRRGjaDXDoQPKYiIFY62zuo3YRRz
 yI+/47qBFaVlJqYfu3PgkPwcgU/ZGxs22UbhoIAV/vN03Hn2EJouCZj8xIzPFSFy5FSe
 ZhzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qdWmA1Euy8ZG30FI7AUlbvFYtFSjIbnys+8nxgEJbhg=;
 b=Oa8INZ2yY3WIdF1V3h+t6tXcpfaa9xFsmVtFjCb7MOhtILt6vTAMXBdPTRj31JbxH0
 rtfCUnmcfoSjjkVfeuA6NtsoExoisAScetJPjN1Po/aZuxZ1/BYP8zotRX4V6hopPs/3
 PL0S1erE88y7qOtjqGAl0KPrq8i57x4fvpsHTJnw9CuhKNvgjK1Orbq7S/h2AIJkI+KU
 nZkH4jWKLhN+jIICVA3inVQq/1np1XX5WYF8n+6+WnLtzRcDfFpKF5v9hh26HKvPJc8D
 e9BVLv/EmQ1BOEkqiQ25AmI0xs/6wi7GoUcg5E0gIqJjcDXfSG5Bk+n07Yu7Cxu9/zou
 Xknw==
X-Gm-Message-State: AOAM533BhwFbMKUUiXxSFMJKXfI8S00MUwZQigaAfV1g+8nprO8VDK6f
 uCdFnE5dO76U8SlgOjUbfUtwd/Q/f3dSCA==
X-Google-Smtp-Source: ABdhPJx+f1wrdNofwBzUEfjZS+B2S5ZwBh/K69NL9NfijqNi/OpJXubq5S/Uj8dTwz4ehytw0AUy2g==
X-Received: by 2002:a5d:4dc9:: with SMTP id f9mr3974180wru.407.1589444531787; 
 Thu, 14 May 2020 01:22:11 -0700 (PDT)
Received: from lmecxl0524.lme.st.com
 (2a01cb058702ff00bc4b798f4f30d41e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:bc4b:798f:4f30:d41e])
 by smtp.gmail.com with ESMTPSA id l18sm9170002wmj.22.2020.05.14.01.22.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:22:11 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] firmware: arm-smccc: define identifier for Arm SMCCC v1.2
Date: Thu, 14 May 2020 10:21:08 +0200
Message-Id: <20200514082109.27573-1-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_012214_375144_278A15D1 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, maz@kernel.org,
 steven.price@arm.com, alexios.zavras@intel.com, tglx@linutronix.de,
 etienne.carriere@linaro.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Define identifier value reported by secure firmware when its
supports Arm SMCCC specification v1.2.

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
 include/linux/arm-smccc.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 59494df0f55b..1cf221f3f07a 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -56,6 +56,7 @@
 
 #define ARM_SMCCC_VERSION_1_0		0x10000
 #define ARM_SMCCC_VERSION_1_1		0x10001
+#define ARM_SMCCC_VERSION_1_2		0x10002
 
 #define ARM_SMCCC_VERSION_FUNC_ID					\
 	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
