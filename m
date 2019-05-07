Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF88116B7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 21:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hJmchRaASuaNE95CIAeOp/zCFqm3l0jpm1Zkf8oJyN8=; b=W6xqzobh0R7w/g9VMkVmbmRRjc
	FJfzPpefyACCtsWoQytZvqgPDcFGgjM2XUOgjQjbEmyILGTYAKlmyHkWikSzRq7U0Sej3KbqZQfkj
	KLNOMm/JyJYHDebqrt+hURFk9Z9UT4UVLAPYySe7GTs/92YifGfnaUvq3vJintRT+ZJZK2Dls/WuB
	dvCVErymoRJDkXjmjIzKQxhyz4RkHUt8gr55xKSvGFV3f7tEueSLQIIjCDzPhj22jYfoDRRIu3WRy
	EwA+gkBGlBkU7OD0MG529ZHNaU+v80eoQG+4h0DDnYPvEk/FsM+dqzNfi7gMt048Lj8C02sGUlFuL
	RxaRz6GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5v7-0005Pu-IP; Tue, 07 May 2019 19:38:33 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5uq-0005EF-GG
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 19:38:17 +0000
Received: by mail-pl1-x643.google.com with SMTP id d9so8676697pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 12:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=E3cy6coJyOOa2SbBo8UlxqrSWJcV9cpYsmbojY6zx78=;
 b=PdeQdBMH+PUZqj2w9dPXVinwmbVbRY3710/zgoNzmgAAwN1AnPnO68PuvRcTOgHdGC
 ztkUdxZHXvkX6BHIg+H4erw9aGn9DaxXx3diAqZuf3ThTXCSBbfcYT9mckVk1F/RYBI8
 vFPjklCNJW2gmPY9EZSVJmdZO9xxOEsViODA/+Fdy7FjBpKFZi24JMxqOjXFmoBz7vSW
 AFnR5jMbkNZSEt6tRcevkk0cRRxTwksw0LKr9AldUi8bxRDcLXAQ9LB9PRwx/wLbZzk0
 zVGxm/MEOKDNF91YJVNk+Ofsq89/gAt68fo76RXVPNxH40O5HAn2CUzUrYt86PSyg7rt
 FSog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=E3cy6coJyOOa2SbBo8UlxqrSWJcV9cpYsmbojY6zx78=;
 b=NJHKskLPH+HhG13t8PPsj3TNLYq18lZmUnaafPUWiucMIfp3VFonacyHP2NUHH7+Yw
 ftGkZmMpFHxRKPEoHgNuOdWZjJ7pGye5n/+r6FAmZ+4MIsjFg/vR8H9e2OY4bsnc+McJ
 xeMx8FE3eKvnrf8JYVYoQcB9kLXD7CpDOE+pNGkhLq3JVVyPTKRW7NWIe2bxKaqQErsh
 tT/BpQrOGuAc02Bi1tiyB+LXmejoPS32c6DQmtpsiZfVz6wpYQd/ARyZeRV5RWz7rVBo
 n7IyKOcKxD0WnUc/ATxxFrBWDJesnjrXPeIL9C98zqPLRB2HPeth2USXptmlso0zxYLe
 Z8TA==
X-Gm-Message-State: APjAAAV8RNFFjptoJqZq43f5ap+kM11cb2GsgSXkZUGVud+QWmtg1oeq
 SPuujVJxn+Zubym2xxKGlWM=
X-Google-Smtp-Source: APXvYqwSKFH3OcPH0UwFlrAn9EVBXhRUaujmIGC6dieqwuOP4POjIFzGh4hKO76fOOfeE/bNAObGkg==
X-Received: by 2002:a17:902:8a81:: with SMTP id
 p1mr42323974plo.106.1557257895759; 
 Tue, 07 May 2019 12:38:15 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id l21sm5964658pff.40.2019.05.07.12.38.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 12:38:14 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] kernel: Provide a __pow10() function
Date: Tue,  7 May 2019 12:35:02 -0700
Message-Id: <20190507193504.28248-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507193504.28248-1-f.fainelli@gmail.com>
References: <20190507193504.28248-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_123816_537041_061A7B4A 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Guenter Roeck <linux@roeck-us.net>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Provide a simple macro that can return the value of 10 raised to a
positive integer. We are going to use this in order to scale units from
firmware to HWMON.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 include/linux/kernel.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 2d14e21c16c0..62fc8bd84bc9 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -294,6 +294,17 @@ static inline u32 reciprocal_scale(u32 val, u32 ep_ro)
 	return (u32)(((u64) val * ep_ro) >> 32);
 }
 
+/* Return in f the value of 10 raise to the power x */
+#define __pow10(x, f)(					\
+{							\
+	typeof(x) __x = abs(x);				\
+	f = 1;						\
+	while (__x--)					\
+		f *= 10;				\
+	f;						\
+}							\
+)
+
 #if defined(CONFIG_MMU) && \
 	(defined(CONFIG_PROVE_LOCKING) || defined(CONFIG_DEBUG_ATOMIC_SLEEP))
 #define might_fault() __might_fault(__FILE__, __LINE__)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
