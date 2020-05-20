Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F27AD1DAC40
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 09:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=toqFWQLVBME5lRvDZOoG4ZQ44/aGfwPUvLaHDKva5qY=; b=o3z
	AAfFx+2E5gYB3W12Q6M0d1JSloIi83GFfUFP1nF5fdIYCuOzxHzQagpzrEiY4k8Odn0sYGv0/Q0Or
	TkR3/WbVqKw6zd+0DdTn5f5b/Ul5tBGOkGFhfsT3ihPN8+eW40eWpR9qMZKQe+L/bmGIAZcBKB6yM
	Ww1rSAqxMmDhMylBsK0mK39bGAjesgyOGY0CgGyKSiAfRrm5nSPdKfBSszV8VweJJ4DjmElFSdkxU
	U5jOhaG6TcaKsR5yN8Z0jv7gjaEXkseRGZ+bTSxrbyUfbK6VrbJzgvkMaLM661RXdUtuIy4xhveeZ
	PzZL7D/qVv1joTWAjt+Et9x8Ot3mz0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJEX-0002WR-Vd; Wed, 20 May 2020 07:33:46 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJEN-0002VW-Ap; Wed, 20 May 2020 07:33:36 +0000
Received: by mail-ed1-x541.google.com with SMTP id h16so1838176eds.5;
 Wed, 20 May 2020 00:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=JhMvQ6wT2z/w9jJ1AFzBZlKrPInU1Ytn40KkatChIbI=;
 b=OMMvxKw98HtRI0PuS3gCbRt7U0oBV+X/jYhUXMOzZtBBWsa/2zBaiAzySqnvgAbuUi
 rXiyqAkfovsELMtD4msd6trgfju0pOHGSoBT8VZCDGNAT9XjF3ah2vTD9OM2tgYxED/z
 4joKMkb917LW6jRKmKdPT6OHqdRIL5Zo3Pc8DqqCiKCb4Y06YOtLsdpG8s7JPa6+QHNB
 k7cxDzlzU8ASGhhBQERLxZYTsEsEROjs+YYtrC46x8k5nl6CtAp3k4uGaMcaa5zV+kAo
 J+VMdZa5vjFOJcp8nW/y73ommkh2dISrDXYp7hr+UhhVopWkTZ5VlGnZt1WKydQHDQus
 wE1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JhMvQ6wT2z/w9jJ1AFzBZlKrPInU1Ytn40KkatChIbI=;
 b=LzTrYYlbVTVYO+HLaocGNaybD2MIrR9tqpFM8p8evHW82meodbnUUB959EgTJZSAya
 VqVRpQo2XjOnMdAjykhwQrWYsQnqmAuVvjQNtS4MvVt/v7ojB1KAst00hlsTJnyY3eSW
 bTkZ0G+PHLhT0Fq9dKjZhv0XGIrz6OFhKSa/maJXRO9PbJuIlNBS0a1pIkahtkdHpXjp
 t2Ys5spbMss9W3hAo0+QyC+m8ttWR+kSpDqeKPp4dNT0EB9/cXtsdQZ/l8uDX0nQepBt
 4IAXtOdq+zqcoo92rlTNQa3zlrIf97C1lTNerHWrSUEMdKsqeY/UrAGd9Fuqn3ISS3rT
 6sbQ==
X-Gm-Message-State: AOAM533GOPI5hgf8ypP+1G8fsX6enN1jC+iull1rDbxgqHV+FLqUr5un
 mZklstlkTVmW+SlAVmUpPGk=
X-Google-Smtp-Source: ABdhPJwB4O0WJOY8eMzSBtHOUZMdLBdwqnBOUTE9viaGo0ldgqm4CzJ5o972WDJ7A+EM4U1tBXuh0Q==
X-Received: by 2002:aa7:c4da:: with SMTP id p26mr2186573edr.184.1589960013840; 
 Wed, 20 May 2020 00:33:33 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u10sm1057252edb.65.2020.05.20.00.33.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 20 May 2020 00:33:33 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] dt-bindings: input: touchscreen: edt-ft5x06: change reg
 property
Date: Wed, 20 May 2020 09:33:27 +0200
Message-Id: <20200520073327.6016-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_003335_366821_90F4AF76 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives this error:

arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml:
touchscreen@3e: reg:0:0: 56 was expected

The touchscreen chip on 'rk3188-bqedison2qc' and other BQ models
was shipped with different addresses then the binding currently allows.
Change the reg property that any address will pass.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/input/touchscreen/
edt-ft5x06.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
index 383d64a91..baa8e8f7e 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
@@ -42,7 +42,7 @@ properties:
       - focaltech,ft6236
 
   reg:
-    const: 0x38
+    maxItems: 1
 
   interrupts:
     maxItems: 1
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
