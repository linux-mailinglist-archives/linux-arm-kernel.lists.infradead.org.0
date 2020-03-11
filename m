Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4771817DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:21:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MXnuK+3MVrFxNXDkQvTr/QSFPTOAIS1wHlIywYSQr6Q=; b=gLP
	E4/Ap55vCYngpktU3Eak5ZyB2rYgtr5EOUloWuAms/8QVHnA0FiItCqIuAFdQYnQPnWRussFOexbL
	QWWheuL2VQdauL5OfscfLM5K/DJDCAQbmdSwdaxhWH5shaiyh+7+Hg1RAhHsUizaj+Pgzt657KYrF
	uujsQSw0BmnADCaV4Ab5QBFH9Xfk7LT4JbdbYdqY2nA97IdhMP6bsZTsFWfBmdFmGnTwRWrN0sC6y
	LZgx2YwfJQHD2xxVb7yd89cuJ+Nn7p3wTHTnGZmSJhf60XByrFGscsLRNK/HhqAjVoWK7rKIgKLeh
	FQLRCEIVWIrtXEzhkhMy5MlamMKL71g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0Mn-0005dH-De; Wed, 11 Mar 2020 12:21:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0Md-0005ao-0N; Wed, 11 Mar 2020 12:21:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id a5so1866420wmb.0;
 Wed, 11 Mar 2020 05:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Bjy8AO/uhgcJDLcwPUOIt+S4XzlyY0iXNSdbKltQ36A=;
 b=YrNGJzGF8Sz2KBSWeK/hf7PDvkuhUmUPaFUWpED2XjFzw8lBww62twa0MakQBVltJP
 QSVOZsRbcvEHxN3/9nroTf6TmN4ijSRMvcYGRUrD8ILrTI8x02H2uRtst5zkj79NME9f
 fbRMlZ5KFxbjcKsaPAtBbJfRqjFTvqAGdLc7LR4DAX2yJEg7yxfT2JApHkLu+/5BAKgz
 5RPMPL59oa9NJ5mbgSJho8Ku8mD9/LDcWmksukWb9N9YoIVhYOzXYOlZDaiWxSB7SgZW
 RclTYtjNVQsDIyIAiF/Mp11e25GRj2NZOBvAjC4YvjI/ehZiote6WpeYLRczD1+N4Ppz
 0dpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Bjy8AO/uhgcJDLcwPUOIt+S4XzlyY0iXNSdbKltQ36A=;
 b=WZ3YXFQkE7kcH5HnK0KeA3tVrKa9WbjCxBHqIGJmtnmBTrQx/4rQjoO8d1MX8FH65V
 LzxvL4x5tGmxvi2eqL6Dx2/cha4xe5zHdg8QtzfLaDSTnxitLzeEaFJH6VgLU8JIEsu+
 MaI6TVmjJXHU08OFleVHQIMCU+az4pPCrMr0OzXa+WVOx6FuZCOAyRtZbxdgpMHOxrlE
 8vj+eroLTi4y72EJXLMdP9uBS5ikP9uhCAo1HgdvG89T3vwv2KRVzFefTnuxVnN9bBVI
 nLtQHb4qIxMz3cRBwtaa3a1KdP9B1ttFEps10cyiJxKz4im7ttjtfWNWpqri8wW2B0eN
 r3Yg==
X-Gm-Message-State: ANhLgQ3CBd3q3Qln3qIr19RqF4K/M7evAMb50PYGiWD7C4WkY/MB+9uJ
 gQelBUns6ZAFApaWaedYDNE=
X-Google-Smtp-Source: ADFU+vuoxl7Rnu55mlVmnlycYhZAAsnWZUu9SUYm83N5yQjSKn6nH0w8BR0h43FMBG0sXrWPe1kBGg==
X-Received: by 2002:a05:600c:2214:: with SMTP id
 z20mr3458638wml.57.1583929289117; 
 Wed, 11 Mar 2020 05:21:29 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u25sm7998875wml.17.2020.03.11.05.21.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Mar 2020 05:21:28 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/2] dt-bindings: usb: dwc2: add compatible property for
 rk3328 usb
Date: Wed, 11 Mar 2020 13:21:20 +0100
Message-Id: <20200311122121.8912-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_052131_067930_10A67605 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: usb@ff580000:
compatible:
['rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas

The compatible property for rk3328 dwc2 usb was somehow never added to
the documention. Fix this error by adding
'rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2'
to dwc2.yaml.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changes v2:
  Combine compatible properties with enum.
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 29 +++++++------------------
 1 file changed, 8 insertions(+), 21 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index e95ba9373..d8d3c7c22 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -18,27 +18,14 @@ properties:
           - const: rockchip,rk3066-usb
           - const: snps,dwc2
       - items:
-          - const: rockchip,px30-usb
-          - const: rockchip,rk3066-usb
-          - const: snps,dwc2
-      - items:
-          - const: rockchip,rk3036-usb
-          - const: rockchip,rk3066-usb
-          - const: snps,dwc2
-      - items:
-          - const: rockchip,rv1108-usb
-          - const: rockchip,rk3066-usb
-          - const: snps,dwc2
-      - items:
-          - const: rockchip,rk3188-usb
-          - const: rockchip,rk3066-usb
-          - const: snps,dwc2
-      - items:
-          - const: rockchip,rk3228-usb
-          - const: rockchip,rk3066-usb
-          - const: snps,dwc2
-      - items:
-          - const: rockchip,rk3288-usb
+          - enum:
+            - rockchip,px30-usb
+            - rockchip,rk3036-usb
+            - rockchip,rk3188-usb
+            - rockchip,rk3228-usb
+            - rockchip,rk3288-usb
+            - rockchip,rk3328-usb
+            - rockchip,rv1108-usb
           - const: rockchip,rk3066-usb
           - const: snps,dwc2
       - const: lantiq,arx100-usb
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
