Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 740CCE59D9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 13:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xAEYzTkcTKjoC7c8Ddb3P4Yl3MJ2eOjutMzpmZzf8fw=; b=TbAVrTEz1EQrcArZ4iefAX/jsy
	ADdkiRunVaXEico2OVhXR5IINQ5RkvqZSe1ysCULzbs8pvz5ngA6u1mqrougErgMf1+ral9igwPET
	5AOEeimqdyneYQ/avBvd74a7DsKby37rOg703laU1DHk9OfvLedMAiWqWGN2puCKU+pc7W1R2ylb1
	Wp5ULzMrceigDm1pd1Nkykb2vBunWkkFrl92cpjw1R6Yy7QemYHOgsqzlkYLZPkxIXM3UcXEznuFf
	L0jYN/iH7FHAZlsHrFdfUSl4A7gwz+8Ye8L9jU277R8lTmDNOfE5J1sGHvzRgF9jEVEjJpvnl6zDw
	Oo+Wt0iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOJt3-0003tn-3Q; Sat, 26 Oct 2019 11:05:37 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOJrP-0001LV-PT
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 11:03:58 +0000
Received: by mail-pl1-x644.google.com with SMTP id v5so2773597ply.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 26 Oct 2019 04:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vyxQq6l0DnXXPlNTL9PGBy7Itz+G0TwXgp9Tr10w+hM=;
 b=LqU7fQxXADEoJo1iJRWCPMjKjlbLvMNCiGX6jTfiWYZG0EJ6J4XceuUuxTOMdSYt1W
 K23z+LYN8oSwZmG+kVX6OtzON2AIffTwVtY0imNKXzg9E4km7NgE/39FzqOPcOf+Rb17
 RGuZm9KUni1rKnG+YGQx7wBVyUbMsINQC0jQqgx0MXdswzY5Q9iSiykkynJ4GU305JFw
 N79jss3RB06juP8aMGcumOnPNsDXAgMcEtN7KgJAAoGRR1T4pvSbF5sS5U4qt+W+YL5P
 ee7gJBk15XQLz7oJWmkMyktlpO6guN+uL/ZyxqXLKCgiSbMKXWODkeX3I66TI3CYAumg
 93aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vyxQq6l0DnXXPlNTL9PGBy7Itz+G0TwXgp9Tr10w+hM=;
 b=qPP1HsfMsULNr4yDBosh3aDaCGXXtMv62rOgioR0himuzrhLOenEXE/Mtc8OGpvLFS
 5idi3xIYbjaFuGnZ+jPZ3qvjwDu0r+y2yDJqBF1RtVI405PqUIvJyzN4ArDNW9x4oKni
 HvXEvkbC/Beq/1x29buisVIichA4noxOHtwbRtQES0eWwh7HZgeSz+B7g9SGB+1ooaCr
 w0qT1683qZNjL7zCB1YOZXua7Sk04OyabSubi+gN7yvQa4dU4UVNdZSEaoJJjxnch3+b
 qyIbhgUt183nI7WcmQtor/Iaf77wPLuWnRrUqwZQbk3YW0tl1wbtRcx/icE6ZDaXcV3E
 8jfg==
X-Gm-Message-State: APjAAAW37rFQLWVIhVv9G3m+nGqw99KK6L1ChODI/mSkUsf3/Pa26EBp
 0oXQkC3LjCvE6OdXg5Hg8qj7
X-Google-Smtp-Source: APXvYqyK9jvXbwURhpAqztJP3EnJdLxxvieDfHWxplIGYVviYZPsHLpbr0LXqo0jJlnLgVYJsK1XsQ==
X-Received: by 2002:a17:902:d913:: with SMTP id
 c19mr8912095plz.48.1572087834354; 
 Sat, 26 Oct 2019 04:03:54 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6214:69c4:49ad:ba3c:6f9:2d8a])
 by smtp.gmail.com with ESMTPSA id x129sm5543379pfx.14.2019.10.26.04.03.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 04:03:53 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v6 7/7] MAINTAINERS: Add entry for BM1880 SoC clock driver
Date: Sat, 26 Oct 2019 16:32:53 +0530
Message-Id: <20191026110253.18426-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
References: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_040355_855024_633DC200 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for Bitmain BM1880 SoC clock driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 52f3ac28b69e..40e9ba15ad2a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1529,8 +1529,10 @@ M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm64/boot/dts/bitmain/
+F:	drivers/clk/clk-bm1880.c
 F:	drivers/pinctrl/pinctrl-bm1880.c
 F:	Documentation/devicetree/bindings/arm/bitmain.yaml
+F:	Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 F:	Documentation/devicetree/bindings/pinctrl/bitmain,bm1880-pinctrl.txt
 
 ARM/CALXEDA HIGHBANK ARCHITECTURE
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
