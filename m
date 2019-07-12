Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBCF67603
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 22:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oTgO2kiVR5GgphxKETJYu4HdWBMfskbMScELpF9INpA=; b=gpf85sX20RxkBN1gtbwfHlZpLT
	5970UDAZN9cwH8v8g/Bj8tMu4puhvEJ+Iq3FM1/gohsFvvXCTwFcW9/AiamF0qTWgH8yI89/9kPbP
	3fHn6UyO8Q1nNpsdQbtypP4Azw2GMYpdbCnVb+kBKGmqF7YogyPgRC2zIsvWVtNIi6FfhKzLmWy9Q
	wYvOELOdRJo+pcX4x3OVhqD+DfirQT+Ioo01izdtM6Si1SQQcNyjFWXIQtUDCvWdoGgRI/MOC1rr0
	3UVNq7LqGQv8n/yvKwJngWUoF3byUuwDhaM26nVSry/yOE0EPsD6KUveENjwYawD+DS0BQeU2N9MF
	hH+as5/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm2OV-0006E5-7o; Fri, 12 Jul 2019 20:43:51 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm2O5-000631-A7
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 20:43:26 +0000
Received: by mail-io1-xd41.google.com with SMTP id k8so23328281iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 13:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=g31FrlFxuFM+xjFOCSjFHeI9OKsmJhFCkAkzNbx5Z+4=;
 b=X8hcH3V6OicPZyF+iBNl9yPFRYodLfeLabhL+gDENEtdOmHpWQQWe4jKCac6IbEqHv
 SnxWymnXOjRXXfhUZUBqZcfoUvFOBR6GoNp5IR9Gl9j7r+U9+0xdbn4I7Fx8XHOk6VGJ
 xiN7yncbQAeudz/U6f7RULTrnHlFEmofos+cV0FAdsWtn1UNEzNSWs2eE8w8v+KJ0oZH
 nG3MdR0F6HHV6Aw4LMrPplHeY7rUwYlbPAJtKovFIcbYUH7OE+oy89k0rBwf0i9z796O
 /i8Gz/HDdwkyZWjyAAIXr5eya1IKO4ue5S9UOEW2NGA3k/j31KZT2NLgraOp46zMH7um
 a9Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=g31FrlFxuFM+xjFOCSjFHeI9OKsmJhFCkAkzNbx5Z+4=;
 b=XbPJOtVx039kDhfMx5BoBWBs/syANSNuUC30bKv35Uu4nTLkK7Hy2hF88WgKq3e28n
 aM3z9RK7VJImFU0aBE/Ci/FARCgzZer8eARscGvS7DVCuZOrWNf5Y9K8OaAEJMOabNhq
 ZOp7n9mfUAXBvD9X2O5ZjmfXnrm/lRvX6fWVC8ULjMkEOOnbJqLwBisrX7Q+ZJq6EbL/
 2Dkr5gDbr30sI5K61uaduijZ1F3/DybRULzQaWNSSz7ZM8e4h4Dqwtk+R1pxQlQ5dT07
 TY/IdIYcHRKKxB7LkF9nRArBgQ+9TzUoqS784NxmWgffGWl1PlWo0uhW85n9o9gm6ODo
 YiEg==
X-Gm-Message-State: APjAAAVbGnC43QAThvY+6VNfFFwu7WsKc30neuNiyLedj6C73ujxcfov
 Ksgr50FjA4WV46cC7sXgPYw=
X-Google-Smtp-Source: APXvYqxP2f2F9YZvE9gZj+i0IHuwbPUIDjLymCmzm8DfSmRxw+Mp7EzQ4drKtvZ8S8QQFWtaWNWzQw==
X-Received: by 2002:a6b:ed09:: with SMTP id n9mr12266556iog.153.1562964202986; 
 Fri, 12 Jul 2019 13:43:22 -0700 (PDT)
Received: from localhost.localdomain ([198.52.185.227])
 by smtp.gmail.com with ESMTPSA id l14sm9725013iob.1.2019.07.12.13.43.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 13:43:22 -0700 (PDT)
From: Sven Van Asbroeck <thesven73@gmail.com>
X-Google-Original-From: Sven Van Asbroeck <TheSven73@gmail.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/2] dt-bindings: bus: imx-weim: document optional burst clock
 mode
Date: Fri, 12 Jul 2019 16:43:16 -0400
Message-Id: <20190712204316.16783-2-TheSven73@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190712204316.16783-1-TheSven73@gmail.com>
References: <20190712204316.16783-1-TheSven73@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_134325_347033_A6B2583F 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thesven73[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (thesven73[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

An optional devicetree property was added to the imx-weim driver,
which if present instructs it to operate in burst clock mode.
Update the dt-bindings to reflect this.

Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
---
 Documentation/devicetree/bindings/bus/imx-weim.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/bus/imx-weim.txt b/Documentation/devicetree/bindings/bus/imx-weim.txt
index dda7d6d66479..1b1d1c5c21ea 100644
--- a/Documentation/devicetree/bindings/bus/imx-weim.txt
+++ b/Documentation/devicetree/bindings/bus/imx-weim.txt
@@ -44,6 +44,10 @@ Optional properties:
 			what bootloader sets up in IOMUXC_GPR1[11:0] will be
 			used.
 
+ - fsl,burst-clk-enable	For "fsl,imx50-weim" and "fsl,imx6q-weim" type of
+			devices, the presence of this property indicates that
+			the weim bus should operate in Burst Clock Mode.
+
 Timing property for child nodes. It is mandatory, not optional.
 
  - fsl,weim-cs-timing:	The timing array, contains timing values for the
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
