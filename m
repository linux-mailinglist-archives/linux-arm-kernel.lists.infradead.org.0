Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A42E17982E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 19:42:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C5fUub9xkuUg5GsRcq5wtjCY02cPMpyk0u+xTfjdyR0=; b=Qb28bt5BTz7JoQ13n7qL5LMbjZ
	OdkniBJTMLpEh8c/9bk0mgVfcOU/M9Nr5Y7qkaOomYntcRox3/QvijIvP04op7+WRUaK4fSK7EEFu
	iIyLKbZd2GuCH4GnwWuw0RYhJSEev2hNQCdrisTwVVza4D7CAlCmas60JxYddPou+SD0eJbLqteNc
	f1sjFkxCwlVoA65jyvwrXQu8J4mbmGHZ/3zbcfmwJxJ3+EjklxtyNgCvD28bvnE1M2QAzCUrxbQ0T
	x/9YnAYHmzlKTkh+gKwdSx5OUPBtrbWvQ44oic2ZL07SgYdpw5w23Oz1Tl1fduAk9mqE6M8iUrRuh
	gTbKLfsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Yyf-00047K-Gs; Wed, 04 Mar 2020 18:42:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9YyI-0003uV-HZ; Wed, 04 Mar 2020 18:42:20 +0000
Received: by mail-wm1-x343.google.com with SMTP id u9so2961821wml.3;
 Wed, 04 Mar 2020 10:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Taz9B582B17QJFHq4vnyy3ks6+/Yxqr+YFZUhRft8sQ=;
 b=JOyfmgSGO+maesgkLYYDa0CJeG7EdGd6AzUXmExJB2vvYlruA9zcJHaLaBClmeMSEs
 q1SjIwXR4xJfZLtV5cXNlVWfBv1EWzNZj7Rnh5EnLDHTGsYSlDX8njy2SoiOjEX0qoJs
 fQeoeP1NW8tmls0GKQkkLWdpUU4NADd7UwAuXobByJrORXReSn6EuqRrBC9wZ4dmUnVf
 mgHxVCrA0eSDGpUREUE7knc8U4GsHJsZmuypfQKeij2bPTwllOH0Zcvs1fC3PbH3oF1J
 R24Umg04leHsDw7iUWZm7DPtnqwGavl/ldcx8UG21M2VWrkZQ/qpApMVzzu0jscUjmLs
 kmIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Taz9B582B17QJFHq4vnyy3ks6+/Yxqr+YFZUhRft8sQ=;
 b=FXIlUhWktcI/kwUQC2be8C/dvL5ZCGx7b/8WKEIqNmN9ZzOvkddCI198uqL9i+IaJs
 Uz4cfy+SMHWL3zWDBgQpNpRsOvNvhw6SyOS9VJCHjLwXAxwLMVYVBrqaEYJ/2pyKKzvv
 rroLmrP/1R2BMB/TyGAbe5wWpcj7TAEhWYPBUYznBhbryLa55hBSZWISPtEjmv96kMyB
 qUC2QVBDl+F6vJRTBZgU4+bJIxOcOYIzRR0sdfhmnd+nkaj1dM5jF4NoVMwNssdM8YVn
 ve6eBcgZLSPk76MfCcY40eM+7EI729WpXvUeYQv1ORhs/uZxfePZFzJ5wginiT2mYa1Y
 +5Gw==
X-Gm-Message-State: ANhLgQ3OKVHSGUijeEBhDHjIgsSn+tV0O43zWF8h+oa+Ev3ZePzfUlB3
 9qbiEmQQ1UewiCZXoK2brHz7jR6A
X-Google-Smtp-Source: ADFU+vu89SUtNLXOa0wDBls7mVKttadFUyRVC8wIrTXOR1+RiC1XClyH+9OgoeF0Ll5q4Sa3ayoZlw==
X-Received: by 2002:a7b:c4d9:: with SMTP id g25mr3634960wmk.121.1583347332383; 
 Wed, 04 Mar 2020 10:42:12 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v11sm28175848wrs.54.2020.03.04.10.42.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Mar 2020 10:42:11 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: broonie@kernel.org
Subject: [PATCH v3 3/3] dt-bindings: spi: spi-rockchip: add description for
 rk3328
Date: Wed,  4 Mar 2020 19:42:03 +0100
Message-Id: <20200304184203.9548-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200304184203.9548-1-jbx6244@gmail.com>
References: <20200304184203.9548-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_104218_631682_CC0B87B2 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The description below is already in use for rk3328.dtsi,
but was somehow never added to a document, so add
"rockchip,rk3328-spi", "rockchip,rk3066-spi"
for spi nodes on a rk3328 platform to spi-rockchip.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes v3:
  remove some comments

Changes v2:
  add acked by
---
 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index 456896e2d..81ad4b761 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -30,6 +30,7 @@ properties:
             - rockchip,rk3188-spi
             - rockchip,rk3288-spi
             - rockchip,rk3308-spi
+            - rockchip,rk3328-spi
             - rockchip,rk3368-spi
             - rockchip,rk3399-spi
           - const: rockchip,rk3066-spi
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
