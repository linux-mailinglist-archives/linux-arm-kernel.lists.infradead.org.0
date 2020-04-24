Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3252D1B7DB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 20:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0qq3q62tJd76XLHGaO45xdls8j/1dwkbly9Vctfw4FA=; b=G6dxVvxGOgi037
	UWDM3KA9QLfYpj1ANTa+L5lKltOWatevitEyKqwBL9sQfFMsuOtLnFLP1YTVXrsNgbopoDJI6dnsE
	x2bIXurxK9DiXSRMUkIS95vOGV4AlxDTau9zmI0txzwKgVXvwa7T/4LxYyQKgpXpUcIMfTIlCqvI1
	HrWip2gvXj85m3MKIrGxx11Vzf48FeTjCdCJ28rvV46HP6PfOkEgTSZzRFLA4bfQ1LnDH9lxalYWF
	vlVE7tGjxrOtGPL+6RyQ9Y9F1UmtsDoEfQqdclgQJ4sozof6/pO1br91JZ5o+8UkaUpWPthl0DqDz
	oBEUaa9dRxiKoGKe08DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS2sh-0004YN-1b; Fri, 24 Apr 2020 18:16:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS2sY-0004XL-5s
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 18:16:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id b11so12041503wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 11:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ieWnO8DComqla3yHOcWNlGDT1t9CTFtocezocte3FwY=;
 b=JfBwZ6Y8cWCcahCa59GldWU93zzWnt8l14DjiUJIwHvNELNGgIXOEWkcg8GJtAg0KE
 3ggAZEdzrMcnAbE03Kj/AZdCVqfnUbo4lCQESa9FJGpIOW94m2oLd2yIyrm6k1hZIzcG
 k7lDOi/JcF8r4Eu4imA6Z6nciBGRXP8bqF0bcm2UNkMMMZqOTQY3XMu0Lc9t1+p1HTO4
 4WPNvvdUo4hE4CCqAJowHZtTuTtwV8KzL/03aYqGHozoUaqoO+NBRtcRvIYdb6ebgqig
 pJGUhv/oammk8nJpFd8f5zBcKqyXjKp/pK3dyrlFDxIt/b8JbvHi2Am66usvwyTBuOBe
 fD8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ieWnO8DComqla3yHOcWNlGDT1t9CTFtocezocte3FwY=;
 b=U5R96T2h6Goo6o3mV94kYkLMqqO2igEwHqTUH0HtUirOQmV5b1OKARX0jjpoPT1e+a
 N1jO+ffgiIPxK4Ll0JajemS0r8TeT/sYcpYhau0oFZ4U/Y3PnmQwRzX8Af3LaWouysjh
 EwZ6ypm1oAiikL3jhg15HOXvbK4GKxh7NKhlXxyRH1XKeqOKDtfuWAoeOaKVENE2oWx/
 em6N5gzkqmA2RblcdmrjHaOMMXrjJzAY8VcZT6KKKLbFiXb6F/uESi+ojj6hAjcFzlS2
 pjxPTjKyyDujFZYyklkl7L8dDsYN/I8+SO7TV01h8TPs8RR1YyBWP/Mjn+FJw35Dofek
 mF3g==
X-Gm-Message-State: AGi0Pubzz50JuWckLRUtZtCyFkXs05LlP89J/dCeO65F5agOyIHJKYdG
 UknCqdXQTXqHOEXSg9B3n1Q=
X-Google-Smtp-Source: APiQypIKSmT1g/OvWZvryuhk2ZfBiuMTXa6LcUv3vESta4ZnJL2cNrAoW7cKm4HTnxlFjfLG4W8Qsw==
X-Received: by 2002:a5d:69c9:: with SMTP id s9mr12531518wrw.307.1587752203918; 
 Fri, 24 Apr 2020 11:16:43 -0700 (PDT)
Received: from localhost.localdomain
 ([2a04:2413:8140:d480:18da:1e39:90cf:b88b])
 by smtp.gmail.com with ESMTPSA id c190sm3913426wme.4.2020.04.24.11.16.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 11:16:43 -0700 (PDT)
From: Adrian Pop <pop.adrian61@gmail.com>
To: Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/2] arm: dt-bindings: mfd: stm32f-rcc: Add missing DSI clock
Date: Fri, 24 Apr 2020 21:16:42 +0300
Message-Id: <20200424181642.32084-1-pop.adrian61@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_111646_245464_9E2A0AA4 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [pop.adrian61[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pop.adrian61[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Adrian Pop <pop.adrian61@gmail.com>,
 linux-kernel@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing clock.

Signed-off-by: Adrian Pop <pop.adrian61@gmail.com>
---
 include/dt-bindings/mfd/stm32f7-rcc.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/mfd/stm32f7-rcc.h b/include/dt-bindings/mfd/stm32f7-rcc.h
index a90f3613c584..ba5cb7456ee4 100644
--- a/include/dt-bindings/mfd/stm32f7-rcc.h
+++ b/include/dt-bindings/mfd/stm32f7-rcc.h
@@ -107,6 +107,7 @@
 #define STM32F7_RCC_APB2_SAI1		22
 #define STM32F7_RCC_APB2_SAI2		23
 #define STM32F7_RCC_APB2_LTDC		26
+#define STM32F7_RCC_APB2_DSI		27
 
 #define STM32F7_APB2_RESET(bit)	(STM32F7_RCC_APB2_##bit + (0x24 * 8))
 #define STM32F7_APB2_CLOCK(bit)	(STM32F7_RCC_APB2_##bit + 0xA0)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
