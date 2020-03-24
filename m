Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F701909B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 10:43:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8GS52u6SgFkmSssxQEIMwhUUwcPqga0hmPmFOcHfnlA=; b=VAWPXzpZ+RdlstvxNG+ZJXMoMt
	LWH0oy54JatMlcbOta61+k4To/Ripv8mp2AdkTrCdd+x7XCYqUkdlNPYFMeZKlsHMnpk1U9sC26fS
	UJa8yKx7OAcgpg3qIZFJSnLC+YyEN6XAN7Z4BN7WK0WlrNV7ZkgBWZWbDDMK66W1K9TNMGwtmTbBz
	DoAAy8RJsVSpiCdMNC4kypYLykPg3YZt7yR+4tfDPwr5LFuif+5DdMW4SU1ws4FOMooMgmkxwzMAT
	a0dnIqcgznex8HlJuxLEDE66KyqAjZqs+tpTIAI0wWBAhPn749Bw3eAeh8MX9Y7sMgoZIkhEvtPJ+
	O/rwyFDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGg5K-0001uR-LK; Tue, 24 Mar 2020 09:42:58 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGg4O-0001Ly-E0; Tue, 24 Mar 2020 09:42:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id w10so20569244wrm.4;
 Tue, 24 Mar 2020 02:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dfxSm/ZXM3N66X722SNsL52L/LGFXqsTtz+9P19Vsaw=;
 b=t3N5twz1dwcUQlv/08FOM9GloZJW4uZFPOoAGwANFxm+gRTe7xCqofDI6qPDLyif0I
 EKQz1253Y/rNmPOh+fUE4y4OiDiLPLkrhoI+TKhmK5sjXDtCL1D/LuEtCUxjkMZaId07
 o8mmzuIja7j7REE1UdenUBxgPbbhXKBA4dwFA35SfT6ap1e8zFHy1RkAomULznQlAi+0
 As9q2Ey7X3TXiHSzybimrHuKLKdRiuRPnt49y9lb9QB86QNEIv8xMi1pn2RW97lwZ1E5
 KagS2B/fuqU5oVwOCble67kAx9WmHsXkcznJRjUbSoe/wtRfhnhF7FZoQbaImvc6yha/
 2JJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dfxSm/ZXM3N66X722SNsL52L/LGFXqsTtz+9P19Vsaw=;
 b=QU344ZefqYGZY/VyiJfwFdYqvwN15CN6UAY/3ynerGYGRMH0YIOiVxEikg1Sq1Ofz/
 OgWCZMBg8nJD0TEzb7IiZyhyfZrcKd0sUHTgk3YWiN9e+H03wJZtdYvRegq1Au4ga5Ao
 CY6STgY79Fqz9OU55u0jfT0qndk/cLJbUwMp8nDXo50bhsu/5pzq3vcEcN2aQRWInF+c
 7AITNwtT/I1uwFNA8os3g1mf4rby0QzzUZxPcD6OpFD0kG2sCkm1aYwHnKlpfI+n8b6L
 XA+lt1Hxd7cMNqr7ytTHwuiDIlzmRsF7OKCeE9KFg7j0lt5Q39hB6FlJsFAed+o3kmS3
 FKQQ==
X-Gm-Message-State: ANhLgQ3UsiVcFYt7G2nmgIAeUj/sSjIUgJB8vljCRNjUNy3MFuBB+YF+
 btELX7IMUeBReXx21dJXI4M=
X-Google-Smtp-Source: ADFU+vvzCwo910TMGcnGtFYdDqZ3y/Vb2IoyGQ7eCMIcLg9baIfRO2Gk1omipjrbpyK3LZsE5oNM2A==
X-Received: by 2002:adf:d0cb:: with SMTP id z11mr13022001wrh.1.1585042919263; 
 Tue, 24 Mar 2020 02:41:59 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id r15sm22489916wra.19.2020.03.24.02.41.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 02:41:58 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: lgirdwood@gmail.com
Subject: [PATCH v2 3/3] dt-bindings: sound: rockchip-i2s: add power-domains
 property
Date: Tue, 24 Mar 2020 10:41:49 +0100
Message-Id: <20200324094149.6904-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200324094149.6904-1-jbx6244@gmail.com>
References: <20200324094149.6904-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_024200_495136_51913F40 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
so add it to 'rockchip-i2s.yaml'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
index 7cd0e278e..a3ba2186d 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -56,6 +56,9 @@ properties:
       - const: tx
       - const: rx
 
+  power-domains:
+    maxItems: 1
+
   rockchip,capture-channels:
     allOf:
       - $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
