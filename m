Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D61AFF35
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 16:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=P4QEVdReUM3BNMbwEiAZDhnpMokNEsXkMQOI3oQMXmw=; b=Dbb
	qLcHEwBG7xxwO39HNYt6MlyL8JWgAKuo4EzKfWqQWkI4rR+o/wp3jac7pb/j14Mk3Pr+cAAzzpd2m
	3Z1oJp8dUfFyEx64EXpfkC0cPaOvIsb0Nr6NnutkymqOJlV9jy+yUFkUajke53NiIr07WkOJh61Rz
	jZ02SDTMzj7VTwNXwDLG583zYUXqJyWVE2tFG1LirWZzRtlkRxZxsy5NhVmIZ8hDbsYhk0P2IGsxS
	ntvV0xgpM2DElAhu5JL88Kq2K+UuDTq6BizTa8fRGIKi+8U5MizKW5UMfUgAkajMhwK5YhxugB6T9
	XQH45plfZlLct0GpjeNk1hzrb54RZxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83zR-000813-Fd; Wed, 11 Sep 2019 14:53:01 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83zD-00080A-9n
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 14:52:48 +0000
Received: by mail-io1-xd41.google.com with SMTP id r26so46331575ioh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 07:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=NGTdt9F3ZZ0dAl/NdWgfhoQHQnI6Jo5dypLz9RxIFA4=;
 b=GbyNlW7h2LT7nD3Ki7aDD9R1X05eplw0cyGNnFV9cKkIE8KMZE8Z5Wi32J3x9MuD6d
 zED3Dr8G52vVyizid/Bfl4ycAopbtx6KJ82zD56iixaf5vJMVq9adv8MxHqXJE7i9rB3
 LXwhDREw4vrAttqxN5ia3975x/V78DTDCq9/JFA8r4htJgk2YgUNzlacu+5f1be+4+V2
 6gT1D9PPSf5hIgpKrxPjYbJLLDYbAALoFHUuIrqvxLpuTy9W1VVINDSfjoqicZ+OAZGH
 YxhKsUFVpHWC6lRx3F4J6r3XOenJMbPiqY8tVGxJp/hYw5oKLCQIfhMv9S2fR+nuT/x6
 NqYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NGTdt9F3ZZ0dAl/NdWgfhoQHQnI6Jo5dypLz9RxIFA4=;
 b=egqc2NX2E4ML6TbuxY6Kr36WmM0kPNi3PJR056L0Y0bk75VNUvy7teU2DeJsSxd/f7
 7IOITwp/thZoN9itmuEujylwHRqMdmeHgP0gcg4nrk5/gLkzqu+556P7N0y8YXzv5oiy
 8CvlugJBfEkfGWt5Z4/k8BqPzMXaKRkjyEF4ThIL4U2JYcdIH6PedJVw/9giqG1M5lTQ
 cjjU8c32eft1tjGQYP2VtqPyLrdkoFw/HRnn5bwI1cmH9JokjjPlGteZPOnhrmvB1c9N
 vkSkUal5BM8ZyKiKTzvJjXhskb9HcfNMactPv3p+ezdrZDM7wA6ZRUpcMSJSfjytwO3+
 qwdg==
X-Gm-Message-State: APjAAAXx0tAiLoE/u2AOsh7W3HF7+w1CeUAG6Ehh08JDgdX8Dnz+Uqa+
 VC46cRnwBokjU6smMGrVoIo=
X-Google-Smtp-Source: APXvYqzVP2bjj9XYcMcE3MUN8QMaHKh++5QvZJUYU65sh0Dv0wdc0Q1dzhJAnOiiWC/xGnT3dclImQ==
X-Received: by 2002:a5d:894a:: with SMTP id b10mr17475319iot.49.1568213565885; 
 Wed, 11 Sep 2019 07:52:45 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id p25sm17109904ioo.35.2019.09.11.07.52.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 07:52:44 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 1/2] ARM: omap2plus_defconfig: Update for removed items
Date: Wed, 11 Sep 2019 09:52:25 -0500
Message-Id: <20190911145226.21088-1-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_075247_366776_7E6EC0A3 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tony Lindgren <tony@atomide.com>, adam.ford@logicpd.com,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The omap panel-dpi driver was removed in
Commit 8bf4b1621178 ("drm/omap: Remove panel-dpi driver")

The tFP410 and DVI connector was remove in
Commit be3143d8b27f ("drm/omap: Remove TFP410 and DVI connector drivers")

This patch removes these items from the omap2plus_defconfig.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
index c7bf9c493646..166b36be2ca6 100644
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -349,12 +349,9 @@ CONFIG_OMAP5_DSS_HDMI=y
 CONFIG_OMAP2_DSS_SDI=y
 CONFIG_OMAP2_DSS_DSI=y
 CONFIG_DRM_OMAP_ENCODER_OPA362=m
-CONFIG_DRM_OMAP_ENCODER_TFP410=m
 CONFIG_DRM_OMAP_ENCODER_TPD12S015=m
-CONFIG_DRM_OMAP_CONNECTOR_DVI=m
 CONFIG_DRM_OMAP_CONNECTOR_HDMI=m
 CONFIG_DRM_OMAP_CONNECTOR_ANALOG_TV=m
-CONFIG_DRM_OMAP_PANEL_DPI=m
 CONFIG_DRM_OMAP_PANEL_DSI_CM=m
 CONFIG_DRM_OMAP_PANEL_SONY_ACX565AKM=m
 CONFIG_DRM_OMAP_PANEL_LGPHILIPS_LB035Q02=m
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
