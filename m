Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CCF6B657
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 08:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6fN9NQvh8LgFhSOGPvZHTz7Z4D7XVhBSFAAZEUk+lkw=; b=vClK9SUCz8GiPSm1NMAWfIdPAf
	ENhVC5lelYqmVDTuM9uExa85/H6cY2EAObwnIfL3HCP4CbTgNhaLf0BUmFxu+0z0t9m8C6q4U0Lc8
	98N7x4ZM9yrRIumv+aaK03iiVw0hQ1Mh00SeCrFUTfbuv7nO9nnTvx+yWEwE8CYZnD1beXt5eCHjM
	bZUq0s0ZDvEN8IOeQ8sJPukyN3rYa+gtBCDyT10h3VM2w+m6vMex7iLnbpXmnO8WVRA3qGDZXDsH3
	Rm3EkAHPIwBD7DZQ8rdwObePpjHbinFm7MxMTbaPvEjUmtQQbp+G+DvHn/qMwRAYbZd3lNDCHLrGS
	HEc3zZsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hndA1-0006bW-UF; Wed, 17 Jul 2019 06:11:29 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnd9a-0006QR-VA
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 06:11:04 +0000
Received: by mail-pg1-x542.google.com with SMTP id u17so10613443pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 23:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vN79lmOQ+vzumU1jDpqE7NFEQZL1EfXi0bwxGYdVrVI=;
 b=tm2mbZg6hha+q1G9c4kaetRiZMsb6+GMeXdyEK9s+xiCXMjwjzqAlHeOQ/fMUbeD0W
 wu7s49zatRRw/wpRb1aXNDxc0go3LI4pFc7EDAr6aM+ulHogSDI/U80Bnl/r/zzHe3j2
 YGhGdP/d2w6s6BKVDvRX2pMu5/XTHZuOy2cancQoj++vMHTsxfSETaYjfCDUD2zEcUCL
 VobPZkRq+xDb3YPUowTi6AtLYK5IEkI5VpIhbW8rp6z09XXJti3sX1sIaYOm6g43B3kQ
 z5SCDiQBfNbgcduk5aiGCI8fxY64zdLYmaZxU75GDSfo7WoosRucOGlfddt9WvHeTrMF
 5+Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vN79lmOQ+vzumU1jDpqE7NFEQZL1EfXi0bwxGYdVrVI=;
 b=SHBJSe6VEC33R7BJGCNkFgYky6gBz+e/ozUpm9KO0TB/hCsAh5ysHeFEVK4Vl0iXcg
 73kgwLCpqLnLBtoIL+6cvirvs3Jm2Exb4figIe9Fr+rkQ2uUykorOQcQ4GrUE1Bp8+P/
 g9ELVf0z34W45G5zfoH3WCC4OgWvK+QK2KE+5UngcEGYl5aOsmqQhGnnsgvf5vPTWPmy
 58aJaqlgnizXSAHowbOuK1w0ZJVHnWqpVhuZY+sDxchw+QGSH37xQj+dgfWmX175HYAo
 gL+HEYNy4YW54rSdoYD4ocmBbGpHceIxHPR2QVM5ma9nEmMhNTDx2OKabsIIGVkKomrG
 P9Fg==
X-Gm-Message-State: APjAAAWGhuiH34TI//bbivPjOh/8v/uyB92grTJ4qxT5pLZN0QJ/0ZxK
 iyJgdmnBzAxIl/IRNcc9oAq6
X-Google-Smtp-Source: APXvYqzsCsoCU0LtZpW6aTjrP7Q95hULw+ZhlXOavzCScJo+T+BGRa+MK/t5qSfF8EgwqbbRpxPRkg==
X-Received: by 2002:a65:458d:: with SMTP id o13mr38583589pgq.34.1563343861778; 
 Tue, 16 Jul 2019 23:11:01 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7301:59e6:f493:40df:9c8a:5041])
 by smtp.gmail.com with ESMTPSA id r27sm25993313pgn.25.2019.07.16.23.10.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 23:11:01 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH 1/3] dt-bindings: Add Vendor prefix for Einfochips
Date: Wed, 17 Jul 2019 11:40:37 +0530
Message-Id: <20190717061039.9271-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190717061039.9271-1-manivannan.sadhasivam@linaro.org>
References: <20190717061039.9271-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_231103_123813_F1CD839F 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, kinjan.patel@einfochips.com,
 linux-kernel@vger.kernel.org, Darshak.Patel@einfochips.com, linux-imx@nxp.com,
 kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree vendor prefix for Einfochips.
https://www.einfochips.com/

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 1acf806b62bf..9b74c4de5676 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -255,6 +255,8 @@ patternProperties:
     description: Emerging Display Technologies
   "^eeti,.*":
     description: eGalax_eMPIA Technology Inc
+  "^einfochips,.*":
+    description: Einfochips
   "^elan,.*":
     description: Elan Microelectronic Corp.
   "^elgin,.*":
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
