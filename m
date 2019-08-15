Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C79738E4C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 08:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aGeMHNSREJ4oWm1xLHZjw5whxpfEYeEeI/focfH0j3M=; b=Zwb3bglehBVAy5
	vzT8BzLmhPqf9cZLSe8eITcECEUYSQ4ak6bM4GMKYIDapw2xAFI0v4EfokENEg6qsy/5JWJ9kxxMW
	IoBNv/Nvv7mkdJpD3B3odqn93m43vNjWzVgM+iHlN21+eyzLlLecJu+b8tqxjvU5qXGibNB02T568
	ybWyNDSuVoibsbkGWOJUUVEqD5MiVH7Kcy/MltWaqDKc8JGKdR3n1QQGci/Mli2Zi8eFLNKi5uinc
	KBQM75iFYohjylhU+QLdvHa0g6WHWnj7oHwvwVWkbyLUO/x3iYPcpXX8H34f8EbCFk3Me3CeeVVw+
	14x5mG3ocR273jVUYVdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy8vK-0007Nd-V1; Thu, 15 Aug 2019 06:07:47 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy8v6-0007NF-Rb; Thu, 15 Aug 2019 06:07:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id d85so868553pfd.2;
 Wed, 14 Aug 2019 23:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nbRwOXKFE5eNws370RDclsbMmRDAT//9YPbiestE4wY=;
 b=fHZf9rFi4VtCsvNnlPfpJU5CPwx0kwigmDhl8xEjJO35UUyrzL2YW/yFsJQM0gWBh0
 ZDfNDOGR7gBPz3s55URjfWVMpWU4LW4qtnw8bUPowVARninQAoZAXbNXUoj1oYWqFqZc
 wmmveYzzU9+iuM/AoH0XjYrO+leCe/5+Bfx0Eh2ux5iMCr+18bvc7SSxDPxYYAF2rTuc
 2AntRLN7LnRJlXz1etFemwFZr+CyHAp8PUNDPuXoEgd1bXhOHcyFkW7RRoGdOTV7Ne1M
 rY7jUeq2MZt18TDWJqbiz724gQuK2d4TCZKGQqqGWeSS0y9KGEqOGTgB2pnzcs8ssv5B
 DUVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nbRwOXKFE5eNws370RDclsbMmRDAT//9YPbiestE4wY=;
 b=heXdVsiTbrr4wpnxyWMCBM+uEhbygazOQuc8FUgfNBPJ6zkkZ2+HG8Znk48L8ARgQ7
 bcTGhUE6Gqir+65Pfmq7xO7ep5bTMAAW5KKEFuWqTSmJ2bm+B58GJLaG6Yck8Bxtq40/
 LUP9spAAr3GA3fT4UO76oC8ZsSdwlp7DIU/pD2sjIB6HDZs1xGdtVpjmGnjuNidk+tvc
 DKLVT5BeWPmScnq0Y4ZAr0Gx29e3L9G8Elgze1XlPuHOr07JIHlhUy6aIaUCA5JzQhwT
 tacr0MsRT9iuZx80t1DYAnbni6dyMPVIEBMP1HA8vKnBJIbQQCQejb4BTM6F8Z2amzha
 njRA==
X-Gm-Message-State: APjAAAXMBQ3sUm5tDvBIIIg9BTFIxiyX2s12gx/HNE/HYhJoJvmkS2n5
 l0vcWgb+LCDWVDw1z0dz0sWNTZoZ
X-Google-Smtp-Source: APXvYqwLBY2ssKw0AGZ1KHz50LA6yvlcIAp8rgJGJ4bXPVBr6cKJvtCFsO3ksoIC+G2zfvbfYXb+CA==
X-Received: by 2002:a63:5945:: with SMTP id j5mr2276566pgm.452.1565849252354; 
 Wed, 14 Aug 2019 23:07:32 -0700 (PDT)
Received: from localhost.localdomain ([110.225.3.176])
 by smtp.gmail.com with ESMTPSA id p4sm92648pjr.14.2019.08.14.23.07.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 23:07:31 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: khilman@baylibre.com, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: [PATCH] pinctrl: meson: meson: Add of_node_put() before return
Date: Thu, 15 Aug 2019 11:37:18 +0530
Message-Id: <20190815060718.3286-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_230733_035174_E130221F 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each iteration of for_each_child_of_node puts the previous node, but in
the case of a return from the middle of the loop, there is no put, thus
causing a memory leak. Hence add an of_node_put before the return.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/pinctrl/meson/pinctrl-meson.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
index 596786926209..8bba9d053d9f 100644
--- a/drivers/pinctrl/meson/pinctrl-meson.c
+++ b/drivers/pinctrl/meson/pinctrl-meson.c
@@ -651,6 +651,7 @@ static int meson_pinctrl_parse_dt(struct meson_pinctrl *pc,
 			continue;
 		if (gpio_np) {
 			dev_err(pc->dev, "multiple gpio nodes\n");
+			of_node_put(np);
 			return -EINVAL;
 		}
 		gpio_np = np;
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
