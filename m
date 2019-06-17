Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F1549556
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 00:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9oQizHDFPXMxmZGCk9rnTWcoyyiB+yfwhuqxbQG72Bk=; b=gdprIqsFpG+SCF
	oILbs0fa6jvQh93cZKi05qLbSIjFWPp+iU88lh+xJ2mXFbzvH6gljOIvYVc66OqFbAAdptEwFQ7vl
	tOC0CyLplWQzXclR2lIqjHGFsTulxasBOmmeDg882S/+07p/BFdbnYKICNX2/1zZj5k2OyIt1+NkK
	hW2uhsvuVLUZxd3SYI1u2zGtskkVTWA8ektU0PWE3XSghg6LCZjsn31o0o8Wt8XTCC0+5uS2Ueq0b
	xqKoq0RbdqZECGX3vdv+VEkB4y9g2Zzn1ucNNIfIs7dRaTzGxtxJwNIMB2vTPRtT24QFbTWeHI4a3
	20xgffOylS8l6hwWIcAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd0Kt-00007n-6S; Mon, 17 Jun 2019 22:42:47 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd0Kh-00006R-Pw
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 22:42:37 +0000
Received: by mail-qt1-f193.google.com with SMTP id m29so12937055qtu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 15:42:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bw9/gZedYD5980KJZent+GQTBWT7ibemqHL7O3rnU9c=;
 b=dwwQzZJS7M7hauGMp3mVM73VEbGZMmEI7M5hGdosIBehcK1MBo39jkcObGCfLoosM8
 Fk17I1cFNOXEx3prr4WojqRIIPbQRGCfHvRvYa+GlNeXADRKBymXYtB63bOhFaYCOPAs
 FgJXbrFYzl1PyzYdPy4pyDpVegwGOJzP4YWkNl/GvxZY6k2M+n8zMZnFTnL9yfusW2XT
 HVsL5O7DakXIDWMoDyhXDyGNE7gihzaQnS9+pwaQhcl39WFysCXEE82zDCp9X/1LSVeu
 cbGLjPF4WMiYJLBC5j6sa9oWTfrcnZHVWyK5kp23F2SQBYmx/T9Yf5FXwLK9jy+CCr0D
 T44g==
X-Gm-Message-State: APjAAAVlJyQVwO3MEeLsUmI8poR+JRCtbBPF3jfohO1WG9LqB6xH/8L0
 oHP+654ICv5+lfTd5hIasQ==
X-Google-Smtp-Source: APXvYqyj6jp4wEA64XUXgYgwlrvjLF95s/v4VU9XXCmt1zLcH9Mcti1t44Pq5cdvmc7LhWRffc+oHw==
X-Received: by 2002:ac8:38d5:: with SMTP id g21mr95189678qtc.52.1560811350629; 
 Mon, 17 Jun 2019 15:42:30 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
 by smtp.googlemail.com with ESMTPSA id d31sm9308876qta.39.2019.06.17.15.42.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 15:42:30 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: fsl: Add back missing i.MX7ULP binding
Date: Mon, 17 Jun 2019 16:40:28 -0600
Message-Id: <20190617224028.26974-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_154235_845120_8CE65F5C 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the conversion to DT schema, the addition of the i.MX7ULP binding got
dropped. Add it to the binding schema.

Fixes: a1a38e1f4d1d ("dt-bindings: arm: Convert FSL board/soc bindings to json-schema")
Cc: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index fbeb56345b35..0a6b4eba2bb2 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -175,6 +175,12 @@ properties:
           - const: compulab,cl-som-imx7
           - const: fsl,imx7d
 
+      - description: i.MX7ULP based Boards
+        items:
+          - enum:
+              - tq,imx7ulp-evk            # i.MX7ULP Evaluation Kit
+          - const: fsl,imx7ulp
+
       - description: i.MX8MM based Boards
         items:
           - enum:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
