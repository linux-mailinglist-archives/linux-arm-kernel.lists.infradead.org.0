Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A814BB671
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 16:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=clNF4VtknbO+KtZEkRoK/9b1VGbZMrxHCDN6T36h1kk=; b=QFNlTBUI06nRKfvIVuclZxDx7e
	Tzn76lLxiXVOXKtrxGqRwVAnNIeh2zIkCocCgsWXwlpFAez8+SmpMJoPL3BdWamsuyUYjGvkj8dGd
	c8hUn3xC/r5fq0tetnOtBJzdS14oLeRW6heocoFflohFrih3zEAvH25CJ9UqVKPMP5/drca338oMn
	482t3NeThc/dkDRQZBewgOmnS68GQy3Q77NuCBKCozp/nXQIyNtOQwE1EMsnHsCNhSOLETJLuV2TW
	qjMXw89ycCPXgQKaTtaYPkVJJCtXAeN6cGnCxb2OajnmbWUPj27IG7K1fH1ieAinm910L6EHoStwO
	wfqw5vbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCP8f-0007Zo-LJ; Mon, 23 Sep 2019 14:16:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCP76-0004z9-Bb; Mon, 23 Sep 2019 14:14:53 +0000
Received: by mail-wr1-x441.google.com with SMTP id n14so14135076wrw.9;
 Mon, 23 Sep 2019 07:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=l8lFr4ZwIttjBYV2ogrlwO0w9q8AMXRri5mgGEzyZHU=;
 b=hnqKrCN7lLeYsPQiig8wbtkvC3eseac9EPEnUHjq3dHHrYjA6VEsPHo16jRG9yP0W5
 9CIzqMdeKZXuk3XalqUTD8USFPKaxePq2lpYU99VC47YZjROqtz3e6Hrw2aIi96vwqgN
 ShNg51yP6x3AXadrCjQZGBGWjKGhEToZ5hn4VPIKnOXeeqBIbXQQ5+1W6MO9Gjrqch1z
 /fcs4UHaMCZKpDgndKm+JMnkyyOhy/a51+4evmftLHLwY0XimYqjFJH8vXvO3mdwnIri
 59qVfJYPoDsSbCtvmp1KS0f+zAGDXrHeq+Optp+3AjrO9EOcQeeZKmRl6WZAnvru+RhF
 BhVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=l8lFr4ZwIttjBYV2ogrlwO0w9q8AMXRri5mgGEzyZHU=;
 b=ZVuoLT42v8XxUks4TwT8gVXyUqgJ8bNt2vAyb5FEd1dWNMeXNQWunmNKADHZbccIB+
 HsNghiGIwWNW8lF7fK8SBpjdb9aSgqqmkGybcIY0/DVYsNGoy1MF/YeTBOn8h3PpG31B
 gdctsgRZtCxaGQ7V7UmIicT7/6e0knDjiA7l2gI+TNki1jCVsqkvE20UJz5t2A8FFUda
 E8Eo0AHSr1dpaQlUAjewcc9vcGxjYLNJeJFWHW+3GS96pAGFJ6AiTa0+eWAQMnxK/c0Y
 xuj53QV69dFclvkBYEcnySZcJ5x7qS/OCyQvRP6s1SMP/W/XNBYcXu1f6CeYpyz+JrZG
 w4cA==
X-Gm-Message-State: APjAAAVOMT6+viuXx965Pd1l+I6KaGBa6ez0qKUvSTC4BfIwIukaX2OJ
 ZuuJlTC/4i5fWe4NEoklrk8=
X-Google-Smtp-Source: APXvYqwaiZzlkw+r8pdoD05JXP8R8T9t0jmcqcK9qyqnQjd1fiZ/EgRLvOxtV+9EryA+EgMHDqLC2A==
X-Received: by 2002:adf:a50d:: with SMTP id i13mr15806940wrb.152.1569248091098; 
 Mon, 23 Sep 2019 07:14:51 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id h17sm7001700wmb.33.2019.09.23.07.14.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 23 Sep 2019 07:14:50 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/3] dt-bindings: arm: amlogic: Add support for the Ugoos
 AM6
Date: Mon, 23 Sep 2019 18:13:55 +0400
Message-Id: <1569248036-6729-3-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569248036-6729-1-git-send-email-christianshewitt@gmail.com>
References: <1569248036-6729-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_071452_419440_FC25B50F 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Ugoos AM6 is based on the Amlogic W400 (G12B) reference design using the
S922X chipset.

Acked-by: Rob Herring <robh@kernel.org>
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
