Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 404981B0028
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 05:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+wS1Hv/5rCnX68FX5sov7qLnsexi0iqDaWj5+KbOn8=; b=SI8K4VwOnt4/nJ
	pR5ANPsfnaZ1lRIH/D5l1js25SAkOjlsTIgNHCKxclxBLuVVxoQLiUEMvDnkEcrM+Ghp5BkrEmrvv
	OLjZNQqrp2nNbT39orUhSauDcwTt1FuJnAnue1B0jyv8hUwFsNZWHrHbpwRf4e15zVU925zrRKS1H
	cOwSyLQTZDa5fb5fQsMHIDAcGzvape7E1/VkZ68Vi0p8r1KZt4rs9m/lGr7X1reQ4tZvhPA9CXe+X
	hP4EEe5+AlNG2TrPG+iGOUpcmboMQU5axMNagT5xObJuPGk/IDQZ5Co05MobUudhDChY+RlKZFjQK
	+roOLIxQTJxI91kAQeaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQMu2-0005Wl-J5; Mon, 20 Apr 2020 03:15:22 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQMtD-00057P-Mm
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 03:14:33 +0000
Received: by mail-pf1-x432.google.com with SMTP id w65so4264609pfc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 20:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T0lF99uLQLnyfKTe/QvdKgO5tiY6oaeN5iApPBgVKXs=;
 b=Qa/QPTce1Nvr39mGg1qJ6fJuqbaUygqB59ZfVi7Ix4Vwtg4wLN+eHK/SJC/cntMZxd
 Mh80/wuh9k6+H1W1dlPKnWF+/BcEWbN2syaU8u4gFPaQ5snReTBsg+xd0YWR3BxzVTlJ
 Er/4BUr0Ciu2gmRpB0Se9YzOmkh/wqZo164VF4QKQxzac3uaV1nn4vK90b26Tt6yNIY+
 BoLPtSn5cf43ZBPbi35RHCF3TLbMnpSI1Fan4T7gHZ1JeLvHIERhhZKa4bKQZzxdjZHE
 kfLg9NxplVOD2U06xN1WkKDkqgSo+zKvDIst6I3l7E9CnTB4D0hudhoQ2nFRPX5MiBzy
 ipSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T0lF99uLQLnyfKTe/QvdKgO5tiY6oaeN5iApPBgVKXs=;
 b=OdeiQM+IaVDJ9S+zaGB9rF5oyjc4qiBbwctPJzmgY7brs3D7oK7zIinNg6Q/irVxeT
 0PMEfcJGdRTq4gBPlUQTgjWWi3EiA24vFk69F1c/wp1jhLhcwcqBBvn/aUwzBosEbXVA
 zdeDnWLPeMIOFV8M9Sji8NhWH345loeuUdztaze06h+vIifuKfDk8OOICcGz8/Jcdlbc
 +cmQWeV9O9m0BDgCx2UOUkqbygkoEa5jUkLu6EyLTAlFfC8FGAKG7WXs0C9Up1mnZ31z
 +L/yTpto+QTmuwEsG+FrdKOYkFYLN67lq/u7kvOvGxpZB1/P+OhUaJlJVr/XTYXe6if9
 1rLQ==
X-Gm-Message-State: AGi0PuYHBy5YBLfauS2+HHJ7pNnVBVPzBOLFB6vmqTPXz72RdjOt+g55
 aVfuLVQesLNc/TjvVYu2TRmncA==
X-Google-Smtp-Source: APiQypK84uc4ognzeD0viab/AZZOf9OkE9vw89Glm4qOs/xTJrWIPnM60HbOQ9wQITjs0qQbLxQfEQ==
X-Received: by 2002:aa7:9724:: with SMTP id k4mr512138pfg.309.1587352467446;
 Sun, 19 Apr 2020 20:14:27 -0700 (PDT)
Received: from devnote (NE2965lan1.rev.em-net.ne.jp. [210.141.244.193])
 by smtp.gmail.com with ESMTPSA id mu15sm12792830pjb.30.2020.04.19.20.14.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 20:14:27 -0700 (PDT)
Date: Mon, 20 Apr 2020 12:14:03 +0900
From: Linaro <masami.hiramatsu@linaro.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 1/2] dt-bindings: arm: Add Akebi96 board support
Message-Id: <20200420121403.aff9fb209ee0da7f20ed3ae2@linaro.org>
In-Reply-To: <158735030084.17831.6159788305648251972.stgit@localhost>
References: <158735030084.17831.6159788305648251972.stgit@localhost>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_201431_762387_F2D02968 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add uniphier-ld20-akebi96 compatible string for
Akebi96 board support.

Signed-off-by: Masami Hiramatsu <masami.hiramatsu@linaro.org>
---
 .../bindings/arm/socionext/uniphier.yaml           |    1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml b/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
index 113f93b9ae55..6caf1f9be390 100644
--- a/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
+++ b/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
@@ -51,6 +51,7 @@ properties:
       - description: LD20 SoC boards
         items:
           - enum:
+              - socionext,uniphier-ld20-akebi96
               - socionext,uniphier-ld20-global
               - socionext,uniphier-ld20-ref
           - const: socionext,uniphier-ld20


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
