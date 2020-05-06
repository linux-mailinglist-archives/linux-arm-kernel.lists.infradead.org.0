Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 070D11C6E8C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VS2CrrVNMLxh2ZBtIiOZZm6ntYezlOobBONM1wlLoCs=; b=Hg4/1tz588ju1z4yBiMsOFeq5L
	WNhio5fP6Lxq2wwAoKVYbN5aerdxBOBecyyP26/H5V6pVfDe+pYYiJ27uzoUH/D1toB4GsnMO2liT
	wzXXKGejbP9KBMw25nn6smnvs2+TM0da2pU+47QxfBoTqThBRoPSJfVxp7KooTp/pUhLUFIE5xXtx
	YYMbJ0h8itoR1Dn1waRIn/5d9F4shnxsMC2pwAPfhcb19z1e4C1qe3umEcvFWOCEYx+IwCsV4zV9r
	pQs0sRuVA1DNw7PSqtgzMn2Fy/tt9a0UjlZO+Wz+vUdcbM8X5vb3EAoQV+TfYok0gQWNpqW8HV7G6
	4pCT4HGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHRV-0007Ay-5w; Wed, 06 May 2020 10:38:21 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHQ6-00063S-7y; Wed, 06 May 2020 10:37:01 +0000
Received: by mail-pj1-x102e.google.com with SMTP id ms17so657069pjb.0;
 Wed, 06 May 2020 03:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NyUfCa4vJCe68eCfNgGfux9KsQ2+gDDMK2mefVqlCAw=;
 b=om4uVtV4ScdAbAbqXOFUyoy1ztwGhbwiIexBYNcdLG+KgjsQfosXFHDf3hbIMXvoyZ
 lDaxKjhfrGMGyOpT/qoFx/UjK5pHgafg4FFAKEXwZXyMyWLOq/+iXRL6nSXcVeZ6A7ah
 +CB4o3/G0eiKwlP9V4yiWA56Pq11Evg37fD4IWUL4MraywLVT9AsVrJidVl8ofeo9+Vc
 mh18GCTsHqRqcTKWTQI/s309UE00a25SI/ypFmSSbp72+T1TGlbrwEjgcpv4qemJOSbX
 /KbBv768cYRUdc8kD/Jo0Z0quZr3hbP0wKAoyXkQbHcL4aVpfL2IV583zgwdqiXERkl1
 uymA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NyUfCa4vJCe68eCfNgGfux9KsQ2+gDDMK2mefVqlCAw=;
 b=WhCapbKB7XRy+18mQwn2XwEyryCJ2gQd4oORNJXkHhgJrFoTrd+1lxLPS1m9zoktyy
 QWMVzvIZXBbxV0A5j1Ht2HPQl4nqIy+C/+HflNEzVcYepfTKNMzC+QzjxSkXYkchItad
 ZDqPDZW7uO7Ps4Y87A/3yTp82ryjmq+19UFibkhUH0yraM0/ilTtC1ZuEqlmEupFWyVz
 szCFRsbH3E0SAjyGiy9TD+8gg8nkh3Z0snycitEMU6R9Uhdt9/wY1mLNcIR5uG5Q6uau
 NGliIhvfSc1wzkmRQRdSd5yI7HEcRkU07dJDolMyTYYBijo35hM8gGPEzd5sdYDVzT0G
 XERw==
X-Gm-Message-State: AGi0PuaIraAIWaG672VRZYLbiqA/nlmrMY91vxaIySCg5Fv/oZj+lO/o
 QKi62wTLk2j8xl65eCsAeNp+Puchmfl4/Q==
X-Google-Smtp-Source: APiQypJ8UpWJLNv2ibr8GmkStj1YLbGnyIzwVViF+uWsg3JwYZsuzqOvITZy3G/+FWnKiLA4H8gbmQ==
X-Received: by 2002:a17:90a:bc8c:: with SMTP id
 x12mr1316647pjr.114.1588761412427; 
 Wed, 06 May 2020 03:36:52 -0700 (PDT)
Received: from localhost.localdomain ([106.215.43.48])
 by smtp.gmail.com with ESMTPSA id i72sm1601582pfe.104.2020.05.06.03.36.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 May 2020 03:36:51 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH RFC 6/8] dt-bindings: reset: s700: Add binding constants for
 mmc
Date: Wed,  6 May 2020 16:06:08 +0530
Message-Id: <1588761371-9078-7-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_033654_339678_86571FF5 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102e listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds device tree binding reset constants for mmc controller
present on Actions S700 Soc.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
 include/dt-bindings/reset/actions,s700-reset.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/reset/actions,s700-reset.h b/include/dt-bindings/reset/actions,s700-reset.h
index 5e3b16b8ef53..a3118de6d7aa 100644
--- a/include/dt-bindings/reset/actions,s700-reset.h
+++ b/include/dt-bindings/reset/actions,s700-reset.h
@@ -30,5 +30,8 @@
 #define RESET_UART4				20
 #define RESET_UART5				21
 #define RESET_UART6				22
+#define RESET_SD0				23
+#define RESET_SD1				24
+#define RESET_SD2				25
 
 #endif /* __DT_BINDINGS_ACTIONS_S700_RESET_H */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
