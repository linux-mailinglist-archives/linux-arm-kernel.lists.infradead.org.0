Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EE39BC87
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 10:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q9oWTDRftCOQSEo+N7UhGeA3IUb7lxu1T3Jv2rNRp8U=; b=bp2qieVZDuxO368pDgRFegLqhP
	MQjOUXU95zBalcV276Q6qEqAvcXcsjoWiYkIK7avG0bKl1cpqv4MRGIG67hoUNbhB9z+I70nN1Hh6
	Qj0CF/31wVp1QFqfrhFl2ew6J3NpdbMGNeszb59oJ6wTX+QJTYnq0NH5BEHpC+J3ppfGi+zbdrN7P
	hT5h0+3ZJgNhPMbIXjHEJchNLMkDrG9oqd6451RzM8TDo1l1jNvyQpEoh7Su2Le9hNQ+iWwj7jOuX
	fU3iK/Wlvwv7QdiI9PWZk/D2H93tT9zdnxfNUCcg31PiybCkoyFtbQZEvtm1boDdoW8evRlrNE+a7
	fXMDFbKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1R3h-0002gz-DZ; Sat, 24 Aug 2019 08:06:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1R2p-0001em-FN; Sat, 24 Aug 2019 08:05:09 +0000
Received: by mail-wm1-x342.google.com with SMTP id d16so11154036wme.2;
 Sat, 24 Aug 2019 01:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K+60LdlbCqtJ4syN92vvJCUvdUjv+hUfRrAAbnZIgK8=;
 b=Z/jXSBzzIBPfUtpD4JBH8pFN8MtUbg/4iBP50Ys4wRovpm0EmEJs8CQX0rhqf3FvI0
 suE5+eOnJ/SEnzSAQNI0W5CEFY0mcsbt+0uVBgyKJiQTB0GnUDqiCFeqixeMJVdOwEhX
 GXv/HV7a0meXqKCUCy8KKoKtAQTo+nvZSCfRtX3ImVX+pWuNd69H1MXJ7n+AzUz/K5R6
 b9kQjTA+A+58A+MHLlt+QoDS8FWYfXl6cPY0lWHENJxPQYhT8uDu/2kT6AXq+1WI98L9
 SzrNeuXXy7Hgfi99DULmb6qxNGn1ruM9sVVtoV54kKwNYnb7UiUXEmVGOmZEN/v6YFOy
 CbKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K+60LdlbCqtJ4syN92vvJCUvdUjv+hUfRrAAbnZIgK8=;
 b=klk9IyvuUXA6+ZbQtJiQFchxRwl8HZfY8V6Psw3h5LTKM6ySbvAhvmYv0aD5FBNode
 5r+Ya9igtoK97fDLL3Olgzi8bgNLXg1A7s5yl88al7cBgz40S2mXymQz/JJnSj9rDB+K
 a68hDflcgxXAiMu11B14WFh7viXTR4VHysJ0QB23aFE9hniiPvjAxnZozMGLwTtR6WtB
 qN8K7SInFzy2wsgBhXauhdapsr5InE5CROIsezS8daiJA648iicQxM+QO5gEp/mVrdOC
 ArQ5yv7LGrv4poWpVue5+zXfDM0SYQnnQNMMytiLsi1T/jKuGwMQc7rOL3gWTTeoGo4s
 /0Gg==
X-Gm-Message-State: APjAAAWr0bjqOiwMtdQeKpDWsG8XHJyJ/W6RobnANT/I7QXANydOSJvL
 a+L2XC5PMZtkIX/lrViPCr8=
X-Google-Smtp-Source: APXvYqwtfEgzay9VkCqtIBWQdafyJCktisSy5n/2gTrK3Jp2Nunb1lIPkWrquChZMkOnteVH4OLQKQ==
X-Received: by 2002:a05:600c:254e:: with SMTP id
 e14mr10259290wma.150.1566633905944; 
 Sat, 24 Aug 2019 01:05:05 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id w8sm16615656wmc.1.2019.08.24.01.05.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 24 Aug 2019 01:05:05 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2,
 2/3] dt-bindings: arm: amlogic: Add support for the Ugoos AM6
Date: Sat, 24 Aug 2019 12:04:09 +0400
Message-Id: <1566633850-9421-3-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566633850-9421-1-git-send-email-christianshewitt@gmail.com>
References: <1566633850-9421-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_010507_966843_BF7E9B46 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Ugoos AM6 is based on the Amlogic W400 (G12B) reference design using the
S922X chipset.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 325c6fd..2ded61d 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -139,6 +139,7 @@ properties:
         items:
           - enum:
               - hardkernel,odroid-n2
+              - ugoos,am6
           - const: amlogic,g12b
 
 ...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
