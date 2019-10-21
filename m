Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8574DE37A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 07:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/OHtHH4MGnZvYKR8QiK12J7FTUF1HIUge3O40t9tW0I=; b=qGc
	gwW9KIl0RPIzRH6xAILwQJY45yb1ydeP5TTjx5ea2z6VcUr3mRiPwYvXzsjuWGhvJHyzwmumja7hT
	rUguNC+4mUodzQVyDqByqKR11fbkjeNWezr42KRFyvwFmcQtsPVgzXcDOXf9sc+5ppVhET7cwYxSy
	WFBk2nlgg2u4B/BQeREE8yuH+0V27IMykIUsK9j9J+UsJcB/PSu8Czb5Xg8OBR/zQ/QjTmdnbb86E
	4Dowsqso9bos1d2PQw+3FjhpmMdvsu0j5AXialnbl3kdEeWt+WhrMa9k+fJ9O0Ugy6eLiI2q6FOhE
	YIKRCLs44H/7Y3ejCp3pezaHBSteDmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMPtM-0001Pp-Ne; Mon, 21 Oct 2019 05:06:04 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMPtD-0001PM-Pz; Mon, 21 Oct 2019 05:05:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id 205so7631794pfw.2;
 Sun, 20 Oct 2019 22:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Pxy+SjxJxYfLUhAFsu0Nbm4mmirWGbXqhMNfG1rN5fc=;
 b=uNPXEVPOhc7PtyHvjnTOr9Tw37fVORVAovKWrb9mkg1g5++6EKEnlZDnc7iOZJ9eXJ
 jzDVZkD1sFNTDkJPYgvOY2QBJEWbRj45nvsRwXqY3Nlk/vLaZcpjhGVRsW99sHaKGcLW
 GakTy01QtnKQRDi+JMaaxT8Xv2cPE/KnCMB57/fuArbOZ1+D/hNl3w17duJl7njCPF7j
 PeIoqIcRGGdUhP37YmBcbQF/e8G8EBWo0Kmo5iVsDMx2fymFWZMuwduY1J1lz2Vu85GP
 c4WEBsOBYHjiCTk6AQbPZ439y5u7tQ1FP+cVkWPEnpoVQxqeHdJDvLpeDEY8kxbe0opV
 8JYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Pxy+SjxJxYfLUhAFsu0Nbm4mmirWGbXqhMNfG1rN5fc=;
 b=SoI+Gwa+S4L7JEML84hvoaC1h12gJ+tVF6oz3OysemhvOsq59VBI3lEUemsMMphLOi
 2M37+o2kg+ObwbThbrW+Ubv80lj8Ek6ttxew7GN6ZNQsEUU/eU4W5KTJlafAIsz9CjIf
 D68QCNJmmAyUoTGsdFuPVI2//7AIXb+SywW/RDzHBNuvA9f2sThy+DL81LlBI9eCZRtv
 skuaJAVtgDjnpyzZdSISllbcZiYNy5/eooGQId+fbtAteRMCBws4MoMmYCqmCIjJQqot
 kLSXjpzJn6Hnjn0RbZPfk1ya8Gon4YPTyPs/z22wmRQ9sRTAps6zW19gnfSfVDK5eVLW
 7dwQ==
X-Gm-Message-State: APjAAAU7BjdAA5hcBzGJK1hWJQYuLLvql8uIj8OyQvs/4xvTqH9IPzXp
 fbyOhtdkZxwWCEnEBlruZ5Y=
X-Google-Smtp-Source: APXvYqzkDit0WXzbdvh8WzqFu4bucecX6K6NFb7w5V7MWhpjim8QXFo8+etuqfs/ce9dWcE9Io86Sg==
X-Received: by 2002:a17:90a:8002:: with SMTP id b2mr404997pjn.39.1571634353641; 
 Sun, 20 Oct 2019 22:05:53 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id 127sm13611191pfy.56.2019.10.20.22.05.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 20 Oct 2019 22:05:52 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] soc: amlogic: meson-gx-socinfo: Fix S905D3 ID for VIM3L
Date: Mon, 21 Oct 2019 09:04:55 +0400
Message-Id: <1571634295-20154-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_220555_842827_0B129310 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Chip on the board is S905D3 not S905X3.

Fixes: 1d7c541b8a5b ("soc: amlogic: meson-gx-socinfo: Add S905X3 ID for VIM3L")

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 drivers/soc/amlogic/meson-gx-socinfo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
index 87ed558..e612dae 100644
--- a/drivers/soc/amlogic/meson-gx-socinfo.c
+++ b/drivers/soc/amlogic/meson-gx-socinfo.c
@@ -69,7 +69,7 @@ static const struct meson_gx_package_id {
 	{ "S922X", 0x29, 0x40, 0xf0 },
 	{ "A311D", 0x29, 0x10, 0xf0 },
 	{ "S905X3", 0x2b, 0x5, 0xf },
-	{ "S905X3", 0x2b, 0xb0, 0xf2 },
+	{ "S905D3", 0x2b, 0xb0, 0xf2 },
 	{ "A113L", 0x2c, 0x0, 0xf8 },
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
