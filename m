Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FE9D5AA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 07:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZeIkPWy1Wrt5d4jBVKhedbbhSaa/ARLftHdwFetepvk=; b=eMYHH3po7SVI/7
	A2xu9EGSnTntutI5wOHZQNZIuqtXPZVfmXVOGZ6Tk9otQAhGXqd9DNYcp1OieytGiI0k5aL7ix/ym
	Ky9iBBBUtguaB8f6AMnB59bAYP7XQn12qyKHm5ay9nwI0HH+9vaq4aFyYt+dVOwh0IXuIy6RJX0j2
	hrf5QrNDlyy0bXd5uL3Nln2gEFmIes9MHCZKqFDnofz/Z3sRTJbK911NxQlqbc+yuKqfrgPipro9O
	ImPq25aZdPgg3BeluKwqtgrTcSZTApKJDyRN+92sFPcpa6QQuIOSu3pKnt/oJG6wFS7tBfF19Qoa9
	fFrp6Q2HFo9jtGXVZyQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJslh-0007je-Kc; Mon, 14 Oct 2019 05:19:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJsks-000778-VO; Mon, 14 Oct 2019 05:18:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id v17so15300649wml.4;
 Sun, 13 Oct 2019 22:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r27WGXUs+Wuhk1pzsYshNkJtTiZw35ZkKYZGAVQI7mQ=;
 b=ZxW7qDEfgKxLpLZQCQX6vWykm+r7cYH88LGy7TAuV6zMHBGE8rm/Lt25gNvc93Cxyj
 OQ7R1pmBFKqrjpOXlRkqgRMkB/KgBa3fm7bRqz0xyLeET4uYqtzxJp29dtNBjxSB5/V7
 kPqKrycbvQI3nd0E3rd+5OpQTVp1AZx17u0+NwOJ5ctEvClATX8lSF9sIQrhI0w43+5O
 ujAwS4nWWQJzR1MxNtnX89x/aWs9R4OJ+o383l12cX7GBbZVxTGVETBUH9BM5cKZArgT
 E3BqB8b1D17Zpkh7rQPwM+8vVn8uv57UOQl9bNy0pcOntwiHs4Z0K/okXHQITln4NRY8
 8BQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r27WGXUs+Wuhk1pzsYshNkJtTiZw35ZkKYZGAVQI7mQ=;
 b=CGTkrdiAMEx/pPAOIMULKaa5V/3QeNLUGV/mAjKVDSTKACIGPd32CDeE8IYmZeSRJN
 lBlgqWhMLBLruSEjQWCfShBMxoTigHjsnTW5WM9R/74bd5A4nW6l0mbicUjFMUHuznrh
 uKRLZaoZ5/XmhgYRrYc4Xdg/u7vVsu8Yf4VQm5QO5JTn+lGMHcJemx9TYSYZv+J4ILYQ
 9+A4txeF1AxNwz19Xg0GdMKQaqB73n/DdXSlz5wakgNKpEUFTkgRfaLUBh1xxL6qnk+w
 bu30b50e6l4BJVQWPXmVhxHxqJWRUr7rrVVOOvW57G46JbIkI6GBCvWYQpXpwvwkcT+p
 9iMQ==
X-Gm-Message-State: APjAAAXWcqJFedmbPYujtPvZPCDZxmtBdIMpUmQrqtQtZZjxC7bU6+Pd
 rY3lx3gcsI7SISHe5/4hESM=
X-Google-Smtp-Source: APXvYqzTsLHoZpuvisvBX8HutF5saEpyzHk2Up8rAkU+EmCCb/EqrEqbZTDKe8KERdgRDuazda+ssg==
X-Received: by 2002:a7b:cb54:: with SMTP id v20mr5811046wmj.119.1571030326771; 
 Sun, 13 Oct 2019 22:18:46 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 5sm14660340wrk.86.2019.10.13.22.18.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 22:18:46 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v2 2/4] MAINTAINERS: Add myself as maintainer of amlogic crypto
Date: Mon, 14 Oct 2019 07:18:37 +0200
Message-Id: <20191014051839.32274-3-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191014051839.32274-1-clabbe.montjoie@gmail.com>
References: <20191014051839.32274-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_221851_030436_4C46974C 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I will maintain the amlogic crypto driver.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 36c5d6ee01f9..a8487a0999ce 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1477,6 +1477,13 @@ F:	drivers/soc/amlogic/
 F:	drivers/rtc/rtc-meson*
 N:	meson
 
+ARM/Amlogic Meson SoC Crypto Drivers
+M:	Corentin Labbe <clabbe@baylibre.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
+F:	drivers/crypto/amlogic/
+F:	Documentation/devicetree/bindings/crypto/amlogic*
+
 ARM/Amlogic Meson SoC Sound Drivers
 M:	Jerome Brunet <jbrunet@baylibre.com>
 L:	alsa-devel@alsa-project.org (moderated for non-subscribers)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
