Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 184C61855D9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 15:26:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oqTzN2tStCgCGRfYr4i6HtYMWf9oYESeaUONmFnM9Us=; b=q8U
	gG5+p3/QQh8FYkkLIRk4djpXs+cbPaWN62Q+W3NfSei6hAKcU+ZJnGIJ0RwesOpEu8ZQ2qctV3bN9
	X0y79Eh6nBGxjxBXGZoLUwTrrJM98bPisrOiuwhuwXrYKZH7+oygttIyX0yS2jDI63Njj+9am9UN8
	aeVPUmUp7XI6ipJThKMKhN9Qvho0Epq3e0P3r75VPEJHtrGy3+aP0sS0rqZn+5t5Fm4uZRzjGFWD9
	WxZzrF9ltsWMaRwjfFkZlESPTIFHc3rW875TMswIY8XvmuQFAZDut++oXoJWdoo1NDUhDi7l2l4Fr
	p06NoB/HB1dH+nJmHLvAp/fKsLDhBmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD7kC-00011d-JY; Sat, 14 Mar 2020 14:26:28 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD7k4-000115-KA
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 14:26:21 +0000
Received: by mail-ed1-x542.google.com with SMTP id b21so5422103edy.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Mar 2020 07:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=owNdHbXOWvXX+OlxzZcv65vzJGoyLsxbbtN7CwBZUdI=;
 b=MeALrmArJtRbuiamFVBTOFlHV4itXzG5e8wOZhzp68mdH9SHNTMTC4ozlazK8OxMF8
 zKdTSjVj40QQY2vPxc0ESGrfym+h6/rk/Gb6wx2jbAVven+pAHY9+d8d9Cc9+WJrvzHX
 pUlq3KoqK+GXX7lqf3w9udtpZ6EIMz8q+r7V9d7bB1fjPAZv15DyNmQ4sauXIhPkhXsh
 oUFZ3dwmI7skBYGeGjsYPwSD7zsIII3Kffz3BIaXjSpB1w+Akk7yCwA6Rwj2A1Zm6VsM
 Epf03zpI6QxSBN0SzFGjoFL6RxhWl3HCs14VOFKaFon7EfpwNe5kh/z6WXQADNUzeGaZ
 TZfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=owNdHbXOWvXX+OlxzZcv65vzJGoyLsxbbtN7CwBZUdI=;
 b=WQ+dUrboSgavIjOfauKkZVCTCCTx1Q5vtJedpiBvM6yGtkWNh8Q4sZLy/M4w4JUU8M
 zOjghHGYAvk2jgP41zJ5EUpPET/X8exgf0eO4vchfPMPrPo6wYcCjTEnKTE5RungHn5m
 UhiPwgl0ktULEfKyJNd9nd1sEt9peyd0peuv5+epvEcEgcJOCy7a6Ju+XACLWYVrCno1
 cfuX8F1CFej54OHgCRFYSESRs/Z9q0o8lyjlj2IoRzb6sKiRd80s92VDlIyH5or34g4P
 KH6VyxLQUH56PDLZUwrbpyt7zxBhKGaSO9rwEVyGPIl9ezvUR/luIYZDdFcOesDXUxkl
 aUkw==
X-Gm-Message-State: ANhLgQ2rGK0UYFMloSrAEld1wEmjIey/qgeW2H2A1bc3A8f03NB4B3Gb
 2N6Wc3FjBlx2G/+SgM/he6k=
X-Google-Smtp-Source: ADFU+vsoCpaYAcicq37YrSeOXYcEWIKD99iwmm+7yeuQpkomIFb41onnAG26ZzpxMyrKYrbL8FB2qg==
X-Received: by 2002:a17:906:54b:: with SMTP id
 k11mr16615900eja.179.1584195978147; 
 Sat, 14 Mar 2020 07:26:18 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2d83:b000:18:83ff:47cd:7417])
 by smtp.gmail.com with ESMTPSA id v13sm751777edr.88.2020.03.14.07.26.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2020 07:26:17 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH] MAINTAINERS: correct typo in new NXP LAYERSCAPE GEN4
Date: Sat, 14 Mar 2020 15:25:59 +0100
Message-Id: <20200314142559.13505-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_072620_693833_722B926C 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pci@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 3edeb49525bb ("dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4
controller") includes a new entry in MAINTAINERS, but slipped in a typo in
one of the file entries.

Hence, since then, ./scripts/get_maintainer.pl --self-test complains:

  warning: no file matches F: \
    drivers/pci/controller/mobibeil/pcie-layerscape-gen4.c

Correct the typo in PCI DRIVER FOR NXP LAYERSCAPE GEN4 CONTROLLER.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on next-20200313

Hou, please ack.
Rob, please pick this patch (it is not urgent, though).

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 32a95d162f06..77eede976d0f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12858,7 +12858,7 @@ L:	linux-pci@vger.kernel.org
 L:	linux-arm-kernel@lists.infradead.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
-F:	drivers/pci/controller/mobibeil/pcie-layerscape-gen4.c
+F:	drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c
 
 PCI DRIVER FOR GENERIC OF HOSTS
 M:	Will Deacon <will@kernel.org>

base-commit: 2e602db729948ce577bf07e2b113f2aa806b62c7
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
