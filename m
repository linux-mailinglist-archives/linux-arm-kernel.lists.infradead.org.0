Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE2619E4C2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 13:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xh7aVb3ZmgnrWxBJLGEdDBJW6GiVhpvcsbkj6hfpVDw=; b=ezjnnbAaY8nh6jqQl4ng27jFbP
	dW0I8CmAoL/9P+tEW2Ua7xIkLMELTsVCLMTqQQk76ISdGanKkdkOYqqKBImxDpuc+N9v5y4JQ6QUe
	ujLhpveD5vS72aYr7ow6yh8jW7EfZtLwiEAt+KPRL2KE8YUOKTpUPFPJjp0MYbZoEHsQeEse5/Kzn
	y9HX9jcOW6+IxMUWcjQtn3YMlFKhzqccshHDYNSvVggydgMiAY0iU4prpU7I8ChWyAK5YYjvsvPNJ
	72b8/rr5I4oO1KAa+W2fsM4AmvlKBd1DbVLaSKxJuXvfYoKtZa6fvFJQd4SgTbLVvSSYixnF8h5ma
	dDw2TfUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKhLv-0003SJ-Qa; Sat, 04 Apr 2020 11:52:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKhLo-0003Qj-9v; Sat, 04 Apr 2020 11:52:37 +0000
Received: by mail-wm1-x341.google.com with SMTP id z14so4085186wmf.0;
 Sat, 04 Apr 2020 04:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=J7JWQaNHlZkGey2CYstynUU1J9hNrgdTpL9zcYilbqk=;
 b=KMcn9it08ctna9tgMEQrsjpXRPY/0IlCndUov70cazbmUWifl1XfERwQwaWbxb8fnc
 CLSlKcbbvKF41FGA533Eo8T6KEFilYbQfMX6N8aj2xG5UyjGjz1EHWEzRMlxi47pQ6l/
 JbVRLrHt/o1cYKG4K+Cbl8/dAuKYYNau7sL18LJTBtmT5ZB7yvb5lxVrEYqrw+VOQPLg
 tHdn3DP5eElLfpIwficpxfYtQwSeKfIcHOzvNeTewtwjILWrUU9eROXl2mfMeT+3XpiG
 D2wB2Z5h4oRkvkYHL/5jX95ZgLH6PaAb1G/9UpiUXrBwceXrAL3QjS4G40EoPA50iojj
 fLtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=J7JWQaNHlZkGey2CYstynUU1J9hNrgdTpL9zcYilbqk=;
 b=nQCjEk3VPvN28GzwE8LnwF+zG1rNUdFhX5TbgfsQU6kGEQKnMrt4w6KOpqMedSP1Xi
 BB3LcsjM86nQqlOiejosUM6KHkVJHESxQIzdPVLahwtfXmUZrC9vA1KGq4XboNDqUzjK
 PY0s3+shX7qK7nKAIGPwfBvYtAuj1Kfjt22S5oVKl/8Cl0rwx7rgZHw2XYUzPAfJ7bfH
 pADGJ6Du8r8IZaenkWIjqQ8i2A7CwzRo0d0c3a0cofQMObfQPiLO2LM7mnhyWgGcGCzB
 DR/WFaVY9q97XztZouKTtk9h1YUVW4agyfLspNe312RiUsLaNvqPz7sxMznwne5L2a15
 o8gg==
X-Gm-Message-State: AGi0PubV6wlSUmVe/ukIh8wkmruoPgccZxdiIGsXOdN2/cwIsmOiX/jd
 qeoFU+DAdtiARtC+AwXgfCI=
X-Google-Smtp-Source: APiQypJOBCdxMEJ3ncc/Kkyn7t6jJ/t0d4nR31OFtbx1bKw5Uw1QEC7QFaR1ybRs/cSapZBPKEkpqg==
X-Received: by 2002:a7b:cbd6:: with SMTP id n22mr12504001wmi.29.1586001154733; 
 Sat, 04 Apr 2020 04:52:34 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g186sm16183276wmg.36.2020.04.04.04.52.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 Apr 2020 04:52:34 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: lgirdwood@gmail.com
Subject: [PATCH v3 3/3] dt-bindings: sound: rockchip-spdif: add power-domains
 property
Date: Sat,  4 Apr 2020 13:52:25 +0200
Message-Id: <20200404115225.4314-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200404115225.4314-1-jbx6244@gmail.com>
References: <20200404115225.4314-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_045236_371681_7AED46BA 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the old txt situation we add/describe only properties that are used
by the driver/hardware itself. With yaml it also filters things in a
node that are used by other drivers like 'power-domains' for rk3399,
so add it to 'rockchip-spdif.yaml'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes v3:
  Add reviewed by
---
 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
index f381dbbf5..c46715265 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -51,6 +51,9 @@ properties:
   dma-names:
     const: tx
 
+  power-domains:
+    maxItems: 1
+
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
