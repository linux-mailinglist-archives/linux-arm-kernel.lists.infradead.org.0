Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FA8CDB52
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 07:25:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ieo5p2zhu8YWIsqMTZj18NIrHqWLf0NfYXT7Rmz0KuY=; b=YMr
	9iwaYT5P+3pfRmG1MYO9Ryk05NYMgR9t1iew8FHyL3A+V6QLUGGfjDdXeX0GRcdBKRkuY4vKzKBIY
	hy1qMg1uEBybXLyJ0y0OAZnNAUdFk10vwCA4JUzYrZbvxdwWIKtNXOqnnzMv67GF6XXNDU2KroD19
	bkvK26gnQmh0qyjwyZuTQpBkbGEVk0ZyNdZY7+JCfM1cxmxigzrr9n/FvgghBDu0WdNYgJESkKYrN
	Xudz3eAG42nw4Fg47vseFQLn7cG6oRzrOBJovX3OYOmH8faieK3LvfinfDHoa1hZlOBFt6r6bA49x
	6w6T7V2LJR0w1IV4/u6GRsuMRZADQ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHLVw-00078C-Tz; Mon, 07 Oct 2019 05:24:56 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHLVq-00077r-Ep; Mon, 07 Oct 2019 05:24:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id w12so13542666wro.5;
 Sun, 06 Oct 2019 22:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Xg+QfBCXfzEbEahIMN/FjbGzkhLOtal9LzLwBW93FJw=;
 b=Iion2YvWLpU/q5nDVqVb5iNOn7KdQ/s4pyBAF9rWw5vHusRa0h+GUvX3iQKYIX15qL
 7ZukTRgfLDfTEsgZj1V5dSNHCcG5E0bUtz5C23zNj5mYl1XIZQNhYulE0OM2K1CDyG1q
 ANj2jOdjGWfjYfvlJLsMm4Bt4ZYcnoo7lsPWuEzzd3blVd/ijOLHk3y/IpJxOjHOJ7Qv
 ANppPm1EMZKjD9IBGIa3Vc7uPQqtdUFJytcOKnUN45MR+rI3gGhkJKryfw07XdDAJ6Ys
 sNIiOr55KWuGdYpQ2QoQBVWf9IQrubBiLGYCAGrK0JqyMMyfHDFT2kaWZKXn81iqLJ1R
 Z0Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Xg+QfBCXfzEbEahIMN/FjbGzkhLOtal9LzLwBW93FJw=;
 b=Rnzre1u4n5UqZsa4W9l7S8TfVhrOXfW7Oj3tne+ZvAw10s9xC3lCgfaQdsrsh8d26m
 yplgNHeehBpNirzVAo9aXLcTwePP1GT27I9Q28MectqPs0hTiZ8YSHXr9T5QXrJiW/gM
 5OqH2DOLsJtZ4mUAxYzDXA+FuxfrR8te/M9LzuYWLpYxBY6vY3dLHF6WFZEhsK9Qrg8a
 yIjHQa1unP3DobqZvLIyvlSAEgRXiJlrr5oQcBxpBPQ+uKUzpT3e+bRnI8IhQXOIz+s+
 u/L36/x3wbF9fhxMtvlWo5KQ+qTm6qsOWDuqIYJ3TU0aITQ2q+ZUO8eID9NGu8dWmsUf
 6alA==
X-Gm-Message-State: APjAAAXsrBhNzautoCu3Ep8/Il8JZ4UJjAveDeNNp/RF2W7nk4puYLsw
 5nPCym7oZOEVCUTcSHDZI9M=
X-Google-Smtp-Source: APXvYqztcPrY6UMHsP2lKj3STJyIPCr46O+RJaA9aAj1aMsHmHOAC66sIuMrLQWnXQfl1iNQFhLn8w==
X-Received: by 2002:a5d:4bc7:: with SMTP id l7mr14290627wrt.188.1570425889025; 
 Sun, 06 Oct 2019 22:24:49 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id t13sm37298074wra.70.2019.10.06.22.24.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 06 Oct 2019 22:24:48 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] soc: amlogic: meson-gx-socinfo: Add S905X3 ID for VIM3L
Date: Mon,  7 Oct 2019 09:23:59 +0400
Message-Id: <1570425839-4183-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_222450_519270_FB98307D 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VIM3L appears to use a different ID:

[    0.086470] soc soc0: Amlogic Meson SM1 (S905X3) Revision 2b:c (b0:2) Detected

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 drivers/soc/amlogic/meson-gx-socinfo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
index 3c86d8d..87ed558 100644
--- a/drivers/soc/amlogic/meson-gx-socinfo.c
+++ b/drivers/soc/amlogic/meson-gx-socinfo.c
@@ -69,6 +69,7 @@ static const struct meson_gx_package_id {
 	{ "S922X", 0x29, 0x40, 0xf0 },
 	{ "A311D", 0x29, 0x10, 0xf0 },
 	{ "S905X3", 0x2b, 0x5, 0xf },
+	{ "S905X3", 0x2b, 0xb0, 0xf2 },
 	{ "A113L", 0x2c, 0x0, 0xf8 },
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
