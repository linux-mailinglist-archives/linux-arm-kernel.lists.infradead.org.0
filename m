Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFFAAFF38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 16:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O7nYWpNazvF5YJMi4ks86gvUo1VjnkT634mnzdW4cJc=; b=iRFi/EhRUARRVM8OxY2hJmOlPm
	OZ6aLBLXIv1wcjtpNUy5Frt4Us/D4MLprohb1vEB9RWMZbX/5jR2oiVbzxhA7C20i1YLfwX6XQVKj
	0PAkY5SCLwc22k0EuCkcls3n5X+d5eLk6NndOg6AcIeilNx4iHs8lcWzm1vScb+urAkE6BjuLw02W
	U29FfI2BbGhsGHYNwkJ44G70XhxY3rr7thyzZqmsrZa6gOEfRJwSEA5Cq/XGhdJ2Y9tQyW48hJ2P1
	c2k1s/bhi8uHDD4tV0LI6xpYnNDhdBAXxgLdLng5+/4ttFlXvwdO8H+sC4nNqFZtnFOmoXg31uEX3
	BIZJ7XvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83zj-0008Gy-L2; Wed, 11 Sep 2019 14:53:19 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83zE-00080X-Hy
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 14:52:49 +0000
Received: by mail-io1-xd42.google.com with SMTP id r26so46331788ioh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 07:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EK6qCrLs052uo8saG/CKa8ACsOJwz6xJszIlrDZpsn0=;
 b=EJxgSrwxeKZnsDxcEKl73+la0dwFwYX53cwgBqHkUzfOWdRkYE1XxsiDi4DrMNJIMR
 Huj0+fS8TUIXfbu1WeaeSOSEWJu+b1sZzSPtc9ZT8dMDVMnG7QCx5o4v8y5V2leVJ56q
 f99gBbjGPULCbdirwzwaa/++SJrrJzkUtv/jscMiHbSeFamYbaDaO2HFlvO8fInoeEzi
 UiFsGXrbMxO6Um0muMOiSruK/WVsGTrAxZaQp4Z5xHc10NOy4hB8sAALYxVhvHhJO4vs
 sTjqzQJVaoqNj9Z0fh5YESgsloEsoGJRWtY546a46OFbfT1osPKkAHd3FiG6PUHRAGlw
 YScQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EK6qCrLs052uo8saG/CKa8ACsOJwz6xJszIlrDZpsn0=;
 b=IS5itfduPnQ1Ri8EuboraCzho+kXyKjKd6x+ioobIM3XdXKPDb9ufNtYqG6uoJTbkm
 aZVkf69Nwg+GMoHIyyOk2TP1/FPLeiIfV2IGcFtjvuGtEs0Ce5Gdn0pSO7KAmcAlhlib
 chHShJHynPN9M22Mm47yb0u2pJCTQyhSg1qgZee3kC6TFYJQnkeiGdZI1oIzpio4Q/cI
 e8s4xths67zA6cF4BJDih/lHqGGLmoawPqmfAqKxNGmynv46KoNKvtyh5HUOgyIgUntf
 d3pHr7FkWuM53QulKGQPhl41GRoaQw3PGh01Pu87Sp96YopP2JEq5a1ePNvCjzfrt0Nw
 Bfeg==
X-Gm-Message-State: APjAAAXxB5wKJNBne1UVBYRJv3DEeBlSOFwnrwai/6zGckGxgKE3KpMe
 T2Zxm2hriLcH9C6svmwia3o=
X-Google-Smtp-Source: APXvYqwmkuACqYgeZMs8kyMj9c/8J+l6z2tWpsZtI2fuCEHycQPjmI33v7tLfm0zVUbqyA5tbqGiKA==
X-Received: by 2002:a6b:acc5:: with SMTP id
 v188mr43578191ioe.268.1568213567401; 
 Wed, 11 Sep 2019 07:52:47 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id p25sm17109904ioo.35.2019.09.11.07.52.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 07:52:46 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 2/2] ARM: omap2plus_defconfig: Update for moved item
Date: Wed, 11 Sep 2019 09:52:26 -0500
Message-Id: <20190911145226.21088-2-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190911145226.21088-1-aford173@gmail.com>
References: <20190911145226.21088-1-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_075248_590956_82727497 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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

When running make savedefconfig ARCH=arm, CONFIG_DMA_CMA
changed location.  To help facilitate future changes to
omap2plus_defconfig, this patch re-syncs the omap2plus file
with the updated location generated by make savedefconfig.

No items were removed or added during this patch.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
index 166b36be2ca6..a0449d3b48a5 100644
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -128,7 +128,6 @@ CONFIG_PCI_ENDPOINT_CONFIGFS=y
 CONFIG_PCI_EPF_TEST=m
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
-CONFIG_DMA_CMA=y
 CONFIG_OMAP_OCP2SCP=y
 CONFIG_CONNECTOR=m
 CONFIG_MTD=y
@@ -537,6 +536,7 @@ CONFIG_CRC_T10DIF=y
 CONFIG_CRC_ITU_T=y
 CONFIG_CRC7=y
 CONFIG_LIBCRC32C=y
+CONFIG_DMA_CMA=y
 CONFIG_FONTS=y
 CONFIG_FONT_8x8=y
 CONFIG_FONT_8x16=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
