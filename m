Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA040D1E08
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 03:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VMt6On9Ub03v9gjuqTH5edWmwCiVz4A9OwM1w7fK8XM=; b=QOw
	5Vrh4YvtIn2LuU0hIo8ovBmLNoKQaI+2xprLN+oMi8LRepACSc7l2TB3p+Yk/9ZvCO4c23f6qsuFl
	sYmUK+dNNzMhUGOI3MvDD3Y5E0/yfsfj9jckNGqVKHuLcfe98e1aJ9yNAtFx/8Y4n2k6jDWpJkTAA
	aA8O49uXOboBZqOnanSZJSqGNeBIgBFqUI25LSjjVgsSicb1gnBDwtowS4Alicg1jXkSsr2OybRSK
	xeq5pEhvwFc/YalxQYgyDOEN7vbZaDS8YQqcnhoi1rRKl6CYLwieVysMLCuroIPU/TnkWbldQOc+4
	92ygdl1RCQcYPTQPs5PhMaLS7b2RViw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iINIa-0003gL-NY; Thu, 10 Oct 2019 01:31:24 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iINIQ-0003fc-LA; Thu, 10 Oct 2019 01:31:16 +0000
Received: by mail-io1-xd42.google.com with SMTP id c25so9953835iot.12;
 Wed, 09 Oct 2019 18:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=EECY3Fn7ERfSk3kaNkDc4LWe0Wk5Us4HkrIqZXFVQYs=;
 b=BpVYwvBLiXdK9jnurSGzV8/RWT0CoEeQztHt9l/+nWHXkVlZMtnKykxW74MRuVw3Qm
 w0FBKi91ib1bV2MBNW8Ghp3keTncEJbdHL2XHKDYD4rInuLrz8DGLlYMsg6yZdK+D8Im
 ABs2VErgJuArZbu7KqVjGekm/kUn11Lj6S5nzjct+nmHbWf4w2eEm5ZkkH0e2jSIFWKa
 4rdv9s6iqF7TS5Q+v1fxVX5SQ2wxfvlr2NIliNlm8Wt4JLjKOHxCVUKpHHdhBLw100j2
 TaA69t0VZmKgSmIdiUjHQHVGDNadAgpKfTR5qvBLhTAH93Lbfao/71w7BY35Xutfa3ym
 57YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=EECY3Fn7ERfSk3kaNkDc4LWe0Wk5Us4HkrIqZXFVQYs=;
 b=msNFWLwlvuD62Ma4zVY/6jSe4XAjQLOynNdhgD4ZWWVXftdROonBnW17JWbtzMiKWw
 RNN/IuTZzQI4jf1ahOKc3UQyeHN9SCL5RhR/LuEcoIALQ0jPCfw+sEv7xekKfeYJpELq
 lXiNMgIt63xK5AZdLlg7yrwBTibXu0/Ds+2lFQUVqKh6xQWwkDtrJ2HVHFelU7xJsyPm
 pey6PKYTl6MZ8jntRhIXLvmUlsCDN6/+529x7TsN0AJzqUUkPsFT9PNJREi+OcLUVF6u
 OtJc0EU91RNkO6Q/XhTXxvs9JZTUYI5oQjvBKZ+DMeamScrgEy57szgINjiQzXRDIwKf
 i6Kw==
X-Gm-Message-State: APjAAAWG8Al2+hJFVdH5age76UVU6R9DFjxGBVvhaS0W7b6gl3PhL6DV
 6ZjgCW92wDSjx63JdqQiUbg=
X-Google-Smtp-Source: APXvYqxEHzLMBGtscrLT6MKlC333wTgfQcvHlzq59OkQTbwmLZj2u36d3Rm/smtUBm5BON7GESKAPQ==
X-Received: by 2002:a02:3081:: with SMTP id q123mr6874353jaq.24.1570671073004; 
 Wed, 09 Oct 2019 18:31:13 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id z1sm2300510ioe.8.2019.10.09.18.31.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 18:31:12 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] clk: bcm2835: Fix memory leak in bcm2835_register_pll
Date: Wed,  9 Oct 2019 20:30:58 -0500
Message-Id: <20191010013101.5364-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_183114_718006_3D2EB35A 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
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
Cc: linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Matthias Brugger <mbrugger@suse.com>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Michael Turquette <mturquette@baylibre.com>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 emamd001@umn.edu, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, smccaman@umn.edu,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the implementation of bcm2835_register_pll(), the allocated memory
for pll should be released if devm_clk_hw_register() fails.

Fixes: b19f009d4510 ("clk: bcm2835: Migrate to clk_hw based registration and OF APIs")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/clk/bcm/clk-bcm2835.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index 802e488fd3c3..99549642110a 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -1320,8 +1320,10 @@ static struct clk_hw *bcm2835_register_pll(struct bcm2835_cprman *cprman,
 	pll->hw.init = &init;
 
 	ret = devm_clk_hw_register(cprman->dev, &pll->hw);
-	if (ret)
+	if (ret) {
+		kfree(pll);
 		return NULL;
+	}
 	return &pll->hw;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
