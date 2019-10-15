Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB48D7FA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:10:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g++ergQeF+qtQlkL9ekjMjNuXOM4bN71Po73r/npm70=; b=Ka+D4uJeOxqHZnThnhJ+st/7xH
	tJoVUfamcIRiXn2+JV28JsGCLjbpw3krfc7RWX4+7yR75MuF2elHgabPdSZfFr1oQKTJGsu/ASepz
	q8SZD9Qm7RlLY+GVAZJtGj9Ygc8Kvzq42/oQFuW03fQjTWndSOCXqPYwsVS/gTkQOM4ca0RadvqvY
	8IJnomRsDwbZr8gruDRQLRX9zHhqi5puNFGewumKOcj/hC1cSOIEmcWkubypjGVR2oMPtsMiJ/UjE
	UzXk4bBCFsBeWHEEIX97uCOPI8fV721Jp2C/dV6MsfMIcI0Y/xfWTG9+tIUpOPxKrUhyV/v06P8md
	/iYlHAkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSDY-0007AF-Pa; Tue, 15 Oct 2019 19:10:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSD3-0006yo-J5; Tue, 15 Oct 2019 19:10:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id r19so243770wmh.2;
 Tue, 15 Oct 2019 12:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iUvBerQddYmthJVayR0YUavvmPSsApA6rPHT7ry9gZM=;
 b=CQPBccpCjw/Sso/I1eghm8gDdbDrvw6bhKk463W434QzPsmH/EcDrwH5OjhZgnD85q
 T979D8d+4CXOBqNJUM+WwpZdgiD0jqvwxuJLKTDtvf14rf4EKtMZN9s76jmm+BhGN8QV
 JcolqoGCKfGCJMy4tjp7dWc3rsP2kY6Rh4hGk604EgvTKQC+I74h//Fa3MSsvwweztxD
 +zDgOwHK6PStVZPGrPh2EPP/XkHhCIOzVTnvFAi2MQG3ZtkQMeCmzjnGj7+iRIQyYK2h
 +23Ndauj8wLvqom7LpzbhcDP4Y8r4OSdIbE+c+DNKJhDUyPmt6IUMdCL48noVtMa1UA9
 jsMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iUvBerQddYmthJVayR0YUavvmPSsApA6rPHT7ry9gZM=;
 b=G2DrW6+SidbcyDohD75Cq+6h8lVUw4ctYWjR52gCvnb0w3xtdZz1tTDWRf5akvimv9
 44soEzccSRnAphkcnj4TWfG0cL++wKUFQI9UImLjmo6X5pGNNz6GgoD3u1Ule1zqbVVF
 W+uyVwqkpNORWt9cBW91r3AVS+kUp5BPX09hWMSkraU6fTCTDEzztbsZBsPEy5QVOXRt
 m4hcWVaL5fK9NqeMBlY07PoIsLPhZfNIn0NvfkarYArBtUn6+A/o6FEacBvrK3rZmMD0
 CBH9jMVjfzENXQapDAW4B/+MHdwZ41g3MqeqQly+hMnWJrC7Pkns7DMX74V78pDfVAo/
 n+fA==
X-Gm-Message-State: APjAAAWOVFeRFqH85m8JJrDRNkAQt4nUnr27kf67GKxBJ2rqHdbRgWeX
 EhUcM48L64c7YUiAzeDv9As=
X-Google-Smtp-Source: APXvYqyBlK332ZryIQ0G96MVaBD1a1pECjFocKt//rUbE5ZTMRxlSfCkSM0UjXKmzCeVAUuZhl9iGQ==
X-Received: by 2002:a7b:ce89:: with SMTP id q9mr31686wmj.2.1571166611570;
 Tue, 15 Oct 2019 12:10:11 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u26sm25089984wrd.87.2019.10.15.12.10.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 12:10:11 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] include: dt-bindings: rockchip: remove RK_FUNC defines
Date: Tue, 15 Oct 2019 21:10:00 +0200
Message-Id: <20191015191000.2890-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191015191000.2890-1-jbx6244@gmail.com>
References: <20191015191000.2890-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_121017_625359_D9CA311F 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The defines RK_FUNC_1, RK_FUNC_2, RK_FUNC_3 and RK_FUNC_4
are no longer used, so remove them to prevent
that someone start using them again.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 include/dt-bindings/pinctrl/rockchip.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/include/dt-bindings/pinctrl/rockchip.h b/include/dt-bindings/pinctrl/rockchip.h
index dc5c1c73d..2798b6c03 100644
--- a/include/dt-bindings/pinctrl/rockchip.h
+++ b/include/dt-bindings/pinctrl/rockchip.h
@@ -50,9 +50,5 @@
 #define RK_PD7		31
 
 #define RK_FUNC_GPIO	0
-#define RK_FUNC_1	1
-#define RK_FUNC_2	2
-#define RK_FUNC_3	3
-#define RK_FUNC_4	4
 
 #endif
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
