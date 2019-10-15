Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470C0D8165
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 22:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U38qp36B8qjWjOwbBqPq+DgGQU0pr65EeXsIF4JOdCg=; b=bdhp7O5kyGO5YvldBet08mt5dK
	4AY8Bt4likbXBWrhrOk+XixPZ3gBLQAeLmW6r2weeA0ZabTJjTqs9yezkgxKUkIeo1R7CLXsW4zs1
	q2AGn2quLy8cdH48bWrMoCZk6nULomx7E2Qkv1ZTuHvu8WvcIzyVjaLp+2l96nauhMwk9XQ9bPIT0
	swudz17QjcldcjltQrv4cUUOcr9JuSdVnXxy4up46hxaz3+MjERjTH8qYAu1b3xl0iPSLlTjFDo8s
	pEyhjsyE2B1xhk8TDrrxZC7dETJgLs7THZgNvpZ3PMqA2iY6CgDQw44Vy26vatv7+YoakNFOvqcDe
	4/uqqz5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKTus-00037c-5s; Tue, 15 Oct 2019 20:59:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKTuI-0002p9-VK; Tue, 15 Oct 2019 20:59:04 +0000
Received: by mail-wm1-x342.google.com with SMTP id p7so505560wmp.4;
 Tue, 15 Oct 2019 13:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ogtau3Uh0A4ADmjc9/qgEzfRMjPeR7tQvaVRI8Bj8aM=;
 b=q0mEzJ+xvj7olp4fPt3m+zHUwJMGxg/yurUQobCwB1fAMuyL4TEC8sOeswPQG6WCx8
 judxGSBphzglY4itOq0X4MUtb+oSRTj993jh6Dcn53VeVZooGDolngXdz+eZbzi5w2F2
 Yys4GXk4SVwk3PLNHURny2IbE6Hp8UvjPAYPLfERyNs5dT4lYg5sAS/UxqRFHL7Jq8pq
 xvVw6gKmbziszw2y0ocg2J4laEQeIr82cgQAHxr6eZZ+gkl4yzseePteZ5Lr8WU0qkeT
 eYxb7ENCg7NO4Y02QH1r6JCuqCujvviqrwAbkQYRbzv81mCGnsFXgi54SXo812x/D9BX
 5C7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ogtau3Uh0A4ADmjc9/qgEzfRMjPeR7tQvaVRI8Bj8aM=;
 b=GF5vEwNoDJxXQydWqnvMRHtJRFtsNXq5oaQzci0YyJI8MtIjVZ45EFyXtVRnHiT6u9
 Q9Qh52Ii2xfJzscCJmAgMeppzwcNyVbMO4FcbkhmN+TUQdLxlGfDSZun2BF1yCcK663Z
 AMIWen5FWSRajqTnfunZlhfTsYv9oAuxEB9wjCBQhEBpXHEMyXdVINDflonwFtCQ+zvg
 1+EV/qZO6m+z+Q3Xm/lkxVEEQkpQPPhgtoAv8TXfjEiKZtJOujvicHjBilrrISAineEX
 TfeGjmz2jMfluCeDUYAz3UQEcZ0uUdOibaflOaCQMz5+FApZxA/BKtQUdCkuDUFRcymY
 /xSQ==
X-Gm-Message-State: APjAAAUVYLBLbHPUiih7DCmesmaIxQOcTOGAwhCWZ3xibAEZ7ywuiiql
 z917AiTiZR67qfZaypQLj+E=
X-Google-Smtp-Source: APXvYqzlLqMWB6ZoWhuayr8R9lneMMXByJF4r2POBJBFL/aXpfLfbf+owDml9VFIq2cXb25zvzih6A==
X-Received: by 2002:a05:600c:21d2:: with SMTP id
 x18mr397536wmj.146.1571173141891; 
 Tue, 15 Oct 2019 13:59:01 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id j18sm19216963wrs.85.2019.10.15.13.59.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 13:59:01 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/2] include: dt-bindings: rockchip: mark RK_FUNC defines
 as deprecated
Date: Tue, 15 Oct 2019 22:58:52 +0200
Message-Id: <20191015205852.4200-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191015205852.4200-1-jbx6244@gmail.com>
References: <20191015191000.2890-1-jbx6244@gmail.com>
 <20191015205852.4200-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_135903_005015_A27698CF 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The defines RK_FUNC_1, RK_FUNC_2, RK_FUNC_3 and RK_FUNC_4
are no longer used. Mark them as "deprecated"
to prevent that someone start using them again.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 include/dt-bindings/pinctrl/rockchip.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/dt-bindings/pinctrl/rockchip.h b/include/dt-bindings/pinctrl/rockchip.h
index dc5c1c73d..6d6bac1c2 100644
--- a/include/dt-bindings/pinctrl/rockchip.h
+++ b/include/dt-bindings/pinctrl/rockchip.h
@@ -50,9 +50,9 @@
 #define RK_PD7		31
 
 #define RK_FUNC_GPIO	0
-#define RK_FUNC_1	1
-#define RK_FUNC_2	2
-#define RK_FUNC_3	3
-#define RK_FUNC_4	4
+#define RK_FUNC_1	1 /* deprecated */
+#define RK_FUNC_2	2 /* deprecated */
+#define RK_FUNC_3	3 /* deprecated */
+#define RK_FUNC_4	4 /* deprecated */
 
 #endif
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
