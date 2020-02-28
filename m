Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E536A1730DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 07:15:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sF6awgxvhEi1i5Ppmb3FeqgvUvuj4B7oDWFhmiDvnfE=; b=RHg
	xM7t53+9enBb5WmPJXK0Uj8+nYQY8ksBOK0j72aCO7AImX6ZnZbZflQ9TTqe2ZNBnJDkajEasDqDH
	aJQBAeP2EGdaRZnhk0bdRmXclGWzXzNzHPyA3PzlkB4R4k7VJat62oQwGbBaqMF6WC1T8uZn6kZw4
	ECJc0imQYUydor3ASPH7JLvlF+HoR1m9MEMz5oLtGFKNBcWpJK0zXJ2CYjmiAnLxH9XBf9UQTMq5X
	wYjV2GUMrpQe9/XlNCTmJI+tqXwnQ+eQB8QmcJYLRS4nzTGeX/7hVHf6wEbL82edSGJr6VjhIYjLI
	FJTAxMwhBF0WIYDJYdNNUO13cue+tfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7YvG-0000Lu-Pp; Fri, 28 Feb 2020 06:14:54 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Yv7-0000KV-7j; Fri, 28 Feb 2020 06:14:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id p18so1577012wre.9;
 Thu, 27 Feb 2020 22:14:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=V7hcfg4eflxPQJhhG1KndzdHDXeH+yawJ68Tsyyhejo=;
 b=oEn4bNNwpMt6DqG3AmAQqLjKM5UUcUdjQY0aWw6vyjicqAaWzpM9BHLTp1jHJoXVm3
 HQDdayMMifnuuBkft9/YFeNKfyyIfZLB4mKhtOxODdV9h+9TyL7rF7lBBX7ytiEFfSZ5
 mgNG3mkwccHJAc9hiQHYnYqXBQnkvlE+0e6Lj6vUPN7F62/4TD/nNoIfpJUSGV8LnEyR
 qf5ryWMFcA9NyQnnMWdgMk1BJncEj0NDZNo6ebBrW5GJu593T5ySY5XmZ/iOkOEEqoAx
 DkZI8QaN3Q8hgmK78UTeq534oen07/myJEiqKUh+fvsAzvcxyMUXk11jLcd/AF0XgZ16
 RQXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=V7hcfg4eflxPQJhhG1KndzdHDXeH+yawJ68Tsyyhejo=;
 b=HTsJWpDWS/n32KeWFSWC4AW23AGnLxxj+CVdxW7AWwANvTRkt6pZNVz7xO04kuNp5B
 oT11XfqcKpkq5CkA+a/0m3wolP6JZtOdlxF5f6GUJmzXxCOdZHBiROfK54Fn1vdcGZ7T
 bu9xiQZkkRKCxdZTD5OUt2v51/P1EBPRz983BJ6ih9S4SzgttmRJ/aurlELMZP2k61hp
 2k0BkxUn5bovJXORR4i9rVS4AC4/XY4u7dWNKu7sgO6Lee1+lOyHOZLcUesCeM7NxNCU
 e04QRHrNyHiLFqxx1FG7Cl67CTG3g2yhzMdd/YInPhuRYb/i6c5du9gRiEX7N3SUbh5R
 ka/A==
X-Gm-Message-State: APjAAAVz6RHJSAJV7SRjht4O99x5pDBPgVqUT72Uw5hJFRIj4Nk9t/Dx
 hoyKu3iTZ4GCN+JHLqcwdPI=
X-Google-Smtp-Source: APXvYqwb8w751wXsSCK0pdQEDc0f1MsYrHDqMC4V0cCyXZwk1vuD4FeHuMsy7PsXoJ7wCkCZzEmN6Q==
X-Received: by 2002:a5d:5647:: with SMTP id j7mr3068045wrw.265.1582870483014; 
 Thu, 27 Feb 2020 22:14:43 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w7sm682554wmi.9.2020.02.27.22.14.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Feb 2020 22:14:42 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/4] dt-bindings: arm: fix Rockchip Kylin board bindings
Date: Fri, 28 Feb 2020 07:14:33 +0100
Message-Id: <20200228061436.13506-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_221445_279019_D5954EF2 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives this error:

arch/arm/boot/dts/rk3036-kylin.dt.yaml: /: compatible:
['rockchip,rk3036-kylin', 'rockchip,rk3036']
is not valid under any of the given schemas

Fix this error by changing 'rockchip,kylin-rk3036' to
'rockchip,rk3036-kylin' in rockchip.yaml.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 874b0eaa2..203158038 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -443,7 +443,7 @@ properties:
 
       - description: Rockchip Kylin
         items:
-          - const: rockchip,kylin-rk3036
+          - const: rockchip,rk3036-kylin
           - const: rockchip,rk3036
 
       - description: Rockchip PX3 Evaluation board
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
