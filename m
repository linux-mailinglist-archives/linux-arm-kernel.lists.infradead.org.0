Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7365102C29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 19:58:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q0RgCOCGYZ9lY+ovtvLBYoaNnFwGcod3F2fIpIMjO4Q=; b=A2I59mUaQ/50Ys
	1aQQ3Kzg/QsWGCnvVGsfadFOMmk0Js96UDlNZX5VqWTiqto8Gx7y80wCUkSuAOh1nke3kJraq/+Ak
	pzGrumd0I4Utn5WtgMayZ0ghx9iV9/BqCmSH8Z4jlzM6AZyid/5hg6wX9CIxCfT+V1SCWcyH+Crla
	H6udWwQiBG0e/BM2wgjh1iCSF6NsnNHI6XvmgmlMe28Qgj4J3sr33DU703fqP4MIjG711Z/pG5p1h
	aTUOA/0zhlgnq6yFsKeBE5J9h9dPCvLRhejBlmB0M9+8SMAYVvvr3ObWF1yc3Ul98vbp4A90/DouD
	hSONekqGbhTWO5F69fWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX8i7-0007Ne-2j; Tue, 19 Nov 2019 18:58:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX8hr-0007MZ-Sa
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 18:58:33 +0000
Received: by mail-pf1-x443.google.com with SMTP id c13so12647342pfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 10:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y9nqNj4GquRt57X05X0WfujOjp8Op8DDDIt0VSOi728=;
 b=B5Aknp7zhIjV0TcCd1gLIqTsG/ZVJD82Lg7Z/gRutcByoB8/oqLjqupp9e6X2p5Jxf
 aB0E8gdat11VgjQqhbLO67MdbwQMV4wAjmoSxtqFtSwrFk+d4isJg5ifHKdyEEgkz0vA
 h2pt7HFkU7mu2TYP+7VjwgRGlL9lc59AzLURM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y9nqNj4GquRt57X05X0WfujOjp8Op8DDDIt0VSOi728=;
 b=UODhLxpNLuN2G4ZiQED6o0eq3oTgrrJbs795OC84YrOskZfZXy6R9PXNAYaVOm+EPg
 YrZUPWb+ljKM+qxPesxsJ+A25CFMNItLv+pVuXRDlFHqvZ4VZ/wCRrQoFgK5z0X47VEK
 xkMfLSrE6wyoM66hsaSZFAcOxjm8IttOsBz6AtpBykcVWOi11goEgv9YX0KcUV7DRB2X
 1ZCSdALPNkiWoKOo268QmzIys2AhQWGOOs1jLFQh5QIGD6v0YTB84Rt4AiMDhvlqARXD
 JbcUM/3CQb/VSupDgmo0PDd4MCZa6QTuQHY8bHhTdes3SBmLKkeQUx3XWPVthKHwlA/X
 lZGg==
X-Gm-Message-State: APjAAAW5ohld13thaJ/x2p1ZUQkX6FQfoJI36U3bw+gso/8kJ+tCRV9H
 voaVTnJxRghBqBezmhMzUNj64oz4hncLTA==
X-Google-Smtp-Source: APXvYqw86InbWs2GTOT0dpGYsI8/Ms3OejAuSyTvrx28igz5AHPOGWioboph+YitaeLi2+JazgTLJw==
X-Received: by 2002:a65:4907:: with SMTP id p7mr7125684pgs.327.1574189910148; 
 Tue, 19 Nov 2019 10:58:30 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y24sm28017581pfr.116.2019.11.19.10.58.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 10:58:29 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
 Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add libretech for roc-pc
 binding
Date: Wed, 20 Nov 2019 00:28:16 +0530
Message-Id: <20191119185817.11216-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_105831_944210_EFBCA0BE 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Da Xue <da@lessconfused.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Though the ROC-PC is manufactured by firefly, it is co-designed
by libretch like other Libretech computer boards from allwinner,
amlogic does.

It is always meaningful to keep maintain those vendors who are
part of design participation, so add libretech roc-pc compatible
with existing binding.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index f7470ed1e17d..45728fd22af8 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -100,6 +100,7 @@ properties:
       - description: Firefly ROC-RK3399-PC
         items:
           - enum:
+              - libretech,roc-rk3399-pc
               - firefly,roc-rk3399-pc
               - firefly,roc-rk3399-pc-mezzanine
           - const: rockchip,rk3399
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
