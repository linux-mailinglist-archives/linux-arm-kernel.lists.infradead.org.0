Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D5111F7D7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 14:02:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lZxA4AON4YxNM10EQQsKJzpcHd6OBoMdRFwoo8JqE1E=; b=kM6
	5ACiO3psPzDOTptwGzjgk+MPdBqH7DHP062oJHrHXogQHy4kqbrd3Q89keYcv9pbtwCMA0fgubUsj
	PLeFN4bPF4KylqfdL2oBtvAUIZzYCPJ3Aywk/L4wkk89tne8CDcP9F0zuj5SpU0S6oxFUrCjVPqMi
	C8r8nagrJR2i6Lv3KZxQXO/OUWC92hqmibCR6hjpQnbXDVUkEWAdeM7Ap6q+D30HSHuw33323n/q6
	uADCa+VJ8yFLd3d0fFIk+oIl/GD8z6j5O84HgsOoM0Vd1yDAHsOGSt7BBGN+Ue88MD7WZv7d8ciw/
	J+i4z2IZqIgbyA2VMc6z0QKjYN4qWNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igTXQ-0005jL-Mh; Sun, 15 Dec 2019 13:02:20 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igTXG-0005i5-GY
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 13:02:12 +0000
Received: by mail-pj1-x1042.google.com with SMTP id w5so1791497pjh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 05:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=xNa0YO9i+PgQItqALzHc2Ca92D6+HcEc/gZ6BbMbQCo=;
 b=anFNcxAJvR3IX167LmYZb3wvbf+jRobRHPJ31pDH1PrN5fnW70yM5jcvhXRQRLMPTu
 m4blTi+idGxM0T4eCf7cZKA8k4oIQNgmnMh/dLjC6FJut+e5mSjtMh7Q5nEirI1y6J5X
 MrlNYq9IoghInUaTWfXvpp31+wgobK4K+Ndzi+80DBPEtfYGO0xat+vkO3gaum+9Bj+Y
 QuOXkgF6uE2zXThOvKZjMfEPnKTcaDFxaMESzimnsEeU69EeBQFupmazyGy4HXYaAJpd
 8YBejr3Zn5fQb+mih5oM6XkPq2Z/QoleVi1U2DvuVNfx8pB15FrbdOb34IegX/gg6LTU
 Hb/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xNa0YO9i+PgQItqALzHc2Ca92D6+HcEc/gZ6BbMbQCo=;
 b=mtSMERW9eIPnZJYOYL1/USEdywl6eXuVdQLvmKL9CwdXyxzgoebBlTXdfZSWi+Mc3s
 Q9jW9IkhPPrab0N4ScVKog9dHTiY/H5gIIKLfPBMxA6eK8DTUFnOVogykG/JxLtbRsmO
 q43IFqIl1nClHWa/nrDysaRO5ulOQ/JOKfLM+wi/6ZYXbpiUr2nAij0cco5whVql8H4y
 4YE7pLGTcbyMj7oiHlbzuaMloHEx+RT1VL0aQkFv1e9SP4tPT7Tn9kR7hIfXUbdjWty0
 r3vVMTBwM0kO8gwUtSGhTvEbi9jJRy1reWD2JozCnui5Ev6tRSRYd4EFYiDj7FDHl3dC
 xidA==
X-Gm-Message-State: APjAAAV9EtczkrkOiEONTE+RvTvFlvkI100MXZZ5WTUKpoOlE8Zx7OZ/
 UpEzf0Y0MHzlnE0X/1N9idc=
X-Google-Smtp-Source: APXvYqweRAPO3QMbCaNi3MbULtPGBgI7s0pOkFauOXkW+xKr9IXis34RDvftiP+xuFAJWohKKYgaqA==
X-Received: by 2002:a17:902:d915:: with SMTP id
 c21mr10585935plz.295.1576414929617; 
 Sun, 15 Dec 2019 05:02:09 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id m27sm18896092pff.179.2019.12.15.05.02.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 05:02:08 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rjw@rjwysocki.net,
	daniel.lezcano@linaro.org,
	shc_work@mail.ru
Subject: [PATCH] cpuidle: clps711x: convert to devm_platform_ioremap_resource
Date: Sun, 15 Dec 2019 13:02:05 +0000
Message-Id: <20191215130206.30265-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_050210_575223_6A5D0326 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/cpuidle/cpuidle-clps711x.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-clps711x.c b/drivers/cpuidle/cpuidle-clps711x.c
index 6e36740f5719..fc22c59b6c73 100644
--- a/drivers/cpuidle/cpuidle-clps711x.c
+++ b/drivers/cpuidle/cpuidle-clps711x.c
@@ -37,10 +37,7 @@ static struct cpuidle_driver clps711x_idle_driver = {
 
 static int __init clps711x_cpuidle_probe(struct platform_device *pdev)
 {
-	struct resource *res;
-
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	clps711x_halt = devm_ioremap_resource(&pdev->dev, res);
+	clps711x_halt = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(clps711x_halt))
 		return PTR_ERR(clps711x_halt);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
