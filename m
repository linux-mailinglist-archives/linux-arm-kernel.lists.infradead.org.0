Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE966132E36
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:17:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FI3zHZWFfRXQ5XfvKcNW0c7MrnTDIP/1CsQtLlw0qhk=; b=EHM8n8KNF/sE/U53eeci7J27D/
	L6VFKJctUZqFEOfeRIf3CEPuX3Pk7huocVD4K/yvqJnuSIC9Sje4gjYORUjtz0xEW8CKjxjf5sbo4
	iYEtnBsDYtEQWwTsMvpNbOtR9yZQiY7fMcQK8nhC4R5A9vtv43ytxgkV84YVL5SLBHhGZjzUmuRb9
	FKBtltjzocTcD8mbcVN6Lvjcu/a4J5A+/LHRH7nzuQ7ChaJ9Mw/y7zJHcaBuEOhba/3Dzd9+03jLD
	oOExZgjTpNtAXsLye/WHt/BTHen3PFAjAAMLvLPE6fEStapg1ZuOa2ueopvmsCSgQ7KMmBHUkX5NX
	8kfsNepQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotPV-0004Mo-Ug; Tue, 07 Jan 2020 18:16:57 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotOo-0003u5-Ni
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 18:16:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1578420966;
 bh=ywvSvkZtxIFgQK2uzodzJ55BZghcFbFAXSLbAwo36wY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Idmw230VWPBhZW2v+dAYw62P6JElxPEL/uqCuoHO0gDvDK3VOnfVdcv9d1ALNkZ2+
 Y+8kPpr9BiXxUfm8bw+Xmjv/SzBxlFpg2EK/a8Hg1b+OzEQC+AII1OlGsc5FjmhCdA
 PYd0h0yBiUAl3qCFDZaEL6GR5SqLeAQ2sKdGgVLY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.154]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1M1HZo-1irdDo1LiM-002s6V; Tue, 07 Jan 2020 19:16:06 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V3 4/4] ARM: configs: Build BCM2711 thermal as module
Date: Tue,  7 Jan 2020 19:15:57 +0100
Message-Id: <1578420957-32229-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578420957-32229-1-git-send-email-wahrenst@gmx.net>
References: <1578420957-32229-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:KgT8/xCsDfTXBG/ZvIRxjN+W6EAwuQgL8jv7F25Vy4z+LXj8G1P
 FvRXVhgSwOlulZ964d6rnvX7HL7dcwoY5KFt4EhM20cYoQ7YJ90EDHTamYirCxIqbox1UqU
 ONycfR3lNn3uKEv5yBZAPy3RJBy/loio9XdwmoBs6tYkYaaVTtIztndrmforVufG7I03eQv
 W3OI55XFGJevmqp5FLjsQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XO0bOe0Ep8o=:kSgMi1gYunuPgzCu/XiJe8
 55cXkb2VEpp+0ZB7lgktyFvshluW/8SnuuoMm0yhsBOUju5moUy3EZx62VduAycSWKQ78+NnI
 nuuYaeMimJEZFIkXd/bIo8qA7TQgY5Ai7wFwAtnufeOK6yhqeXld+O6drS9SE7OUPwiRaFLvX
 a4z3zZIJ/WSdgxfIjZJl+1A8tbqJu7QHtc7BvlrnNqu0L7T9RP/4wKZFs+iqJxgb56ONYX6aW
 eJEAdrGioHnjoWK1N2opYc6mYPThXU7WIGI67W1LEp4sdfzemZwQzCuEX4itQkAnL2DeCQ5Ga
 TB3twKe/JfrKyCgWbB1LzE4zIekmdDkNCLP1O1ry0t5+zdTGCZqjgF0aW1XQwp7nUNAKqvnkR
 oGFH00fcZrTjP7GTsAHM1SFbj/j8S4XbS2KGdNqEc+X3ozKoe941uA4inBhtY+DCHFbDc82RB
 saG1XiaXGsPKwjXuAqFoy+XoGrMHnHWh5g9mP7Zd8K8eY9UW2y2qLVLlIfRct6viL+vCIg5bq
 bBOs7WNQuQK66Q8JwSFVNkWe5cjQ4sjCurxBOCJu6414eyACNqp75abbUH3UXbZ1ZWeQB05gV
 pAQjr6XZtxFBUpzRIscP1mp92bxLC60clMvMwMY7L3J2tmJzvf+8KaEZ46/AXpMn/5UHILhV8
 RHgsmsQOZtPYbgegdxdoBc4kR22+31P9QayG4NNZpKN6TEFlqDfoNUbNez4dIJleG22IlSiAm
 HnfbzPvVXjeK2JiZBcfGTDhAuoGbB8Fj+2eQ26gxDe6zKM6e+8/ggitNae4Dbbw0frlGYT/H6
 Wawodx5tZYYdi+XZ6h7xR7gVz+qUtDxU3/g+269QUGswvjIS+a6z7lzkEuyK7V6ieV8u7Eh4X
 sN1khUObrdWcgax2sqRsD0RD05hMRw3yVlf9xuWpUo/SWo+mVR/rXK6YkXDiRCL5kmMzaJ/ZF
 b4PktMNM1fUynsV780QqPYKWWfAdvMlDCWnofVBqBUPHArgmZeAkiFzfCcecwEBz+jAxwUZmE
 ANzUWQENqeKB/qYYpxtBwoBTpfvKT9aAuk83/Xxf8kHjFo2JE0BLWXqe+/i6FQUtXR4VmNd2G
 UVWlOQJHCJCaXerv7dUwcdFH2tluzwimauf3xv9Suhg06gzqG2AzZefj6DSqfSFAESG+a1r9m
 u1k2ZLky+lFSekVHbbxsc5W/2rXnl7YvbHVJ1NqvR0HhNJjn7ISBZGvzeJz7kFQCKjXZiQA76
 XprBZmCVmQkyOoIyjE6h4g5xdzecqsXUyniZ7MA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_101615_064044_029A3653 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This builds the BCM2711 thermal driver as module for the Raspberry Pi 4.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 arch/arm64/configs/defconfig        | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 3f1b96d..f5d19cc 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -496,6 +496,7 @@ CONFIG_IMX_THERMAL=y
 CONFIG_ROCKCHIP_THERMAL=y
 CONFIG_RCAR_THERMAL=y
 CONFIG_ARMADA_THERMAL=y
+CONFIG_BCM2711_THERMAL=m
 CONFIG_BCM2835_THERMAL=m
 CONFIG_BRCMSTB_THERMAL=m
 CONFIG_ST_THERMAL_MEMMAP=y
diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 6a83ba2..b2f6673 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -442,6 +442,7 @@ CONFIG_ROCKCHIP_THERMAL=m
 CONFIG_RCAR_THERMAL=y
 CONFIG_RCAR_GEN3_THERMAL=y
 CONFIG_ARMADA_THERMAL=y
+CONFIG_BCM2711_THERMAL=m
 CONFIG_BCM2835_THERMAL=m
 CONFIG_BRCMSTB_THERMAL=m
 CONFIG_EXYNOS_THERMAL=y
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
