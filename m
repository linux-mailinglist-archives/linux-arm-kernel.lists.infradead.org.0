Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D77617A7A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:37:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B34BAREzkWla/MY9jSqkbr6lebyiCchIMPstqhYmyvA=; b=g/w30p1q/2hEEZ2I+IbPZolP4a
	7itIxPeqxD9UYazIkjXYEyZx39iFLlPBYSTJNH+WaAdIK/oYnv4qBAotrmU8VH2cuOXi1RbsvTBH5
	MgAuKeJMnJUmvaqsTBA+Twkys4jcNbHZyLOHub9HrJZ2yMrhvOEsqwAaxbhOr4O9MF1pIsAPlIobR
	vjGpr3R/PIMVrn69HKkouTOgRs1BJeDdXNp5NaINCceQP3EyCopY02mF7gDg6Sl8u47bxFpTuivfw
	aLoLSICRx4x1rZo1vyPnJBe+7yb6J4l6Fhncw6zSnOEq8YR6P7t5kCku+yuwIoaWsLSeQyvyK1YNW
	lnJIzqxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9rcK-0001nO-1l; Thu, 05 Mar 2020 14:36:52 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9rbs-0001bU-5e; Thu, 05 Mar 2020 14:36:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id a141so5986955wme.2;
 Thu, 05 Mar 2020 06:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ByZXWnJHqaW7QVpVISE1TPiyXWuEjtw6nBQAA8Pn/yI=;
 b=XcG4pFklevBZFiwQ6VxGoiuKj8EdOdh9pLAwZKRrUmgBTtXJbaREGmq0Omyy5TxaWx
 PBnDljF54O+cSB+tlHQskFAqnvwwKOmRIsulOPwUCG/k11jSzC2yrI71R3FcKCYHQEdI
 XqQoCiVfCsJUB9fZZ1cBHvtXaDPgywJl/aUo0/iJsjWMsXUbVD9AmmHOBK5wuIGTTuti
 3WojWYi8OOcBOtmfbM/hYuDhwlYvd8kEcxIdIMSeeadS7ikx1dL7DgxRKghwolx0MqiT
 r0XVg7/vWEXA4BUHG2rOU04BHOFWNQY1RmGlAPL6ixmYj9JpPEhSkTOiEIGY4PuzWK/A
 ZJdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ByZXWnJHqaW7QVpVISE1TPiyXWuEjtw6nBQAA8Pn/yI=;
 b=dHiLpbIqntnJsRhD3v9pU4jJYlv684bRMkKpq+tk0n1ELjYeWZ/sjD7NPohdsWRrJt
 K0vjEsPzNMSAliPH5ddalWwKfeR0VHNfuds7/LzYFQQSSgIOnF5Ad3rSpf6iO7QClh2J
 HPOlMZ7pA3dyrXXatwy3dXSOEY9jFcKgc76YTkz0J2nYpIYPpwZ2k1cvSARRQOlTs9Na
 4QX7sq+T1w3A2ZtqhYt/tVh440P73l2e6Q7BiwflXecEtLNmWpKecoM4yPGK2OQ0583S
 WqHdmOZx+YeoPALX8Ok223yyLNo00oHnf68VOsAxkGoSCI/KMSguZ5XIfNSyjL37b9Ns
 8FPA==
X-Gm-Message-State: ANhLgQ3/NHjPOhiasgGeC00brCb6Gizqy+qMKGyCzFUN9kWu3mYNcMjw
 TWE9pkvxrmZN/hu7uSi7MGQ=
X-Google-Smtp-Source: ADFU+vu5AhrM5tdRcpL7UhKvY/QyM1wRgxmPaDdySYrsRaXKPbUJz5eJJdKvYOS9N2HnrUL9zq5Q6Q==
X-Received: by 2002:a1c:df45:: with SMTP id w66mr9866981wmg.171.1583418983047; 
 Thu, 05 Mar 2020 06:36:23 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g201sm9365124wme.23.2020.03.05.06.36.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Mar 2020 06:36:22 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 3/5] dt-bindings: i2c: i2c-rk3x: add description for rk3368
Date: Thu,  5 Mar 2020 15:36:09 +0100
Message-Id: <20200305143611.10733-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200305143611.10733-1-jbx6244@gmail.com>
References: <20200305143611.10733-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_063624_208749_988FDA18 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The description below is already in use for rk3368.dtsi,
but was somehow never added to a document, so add
"rockchip,rk3368-i2c", "rockchip,rk3288-i2c"
for i2c nodes on a rk3368 platform to i2c-rk3x.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
index 0bba39998..67cdce8fb 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
@@ -29,6 +29,7 @@ properties:
       - items:
           - enum:
             - rockchip,rk3036-i2c
+            - rockchip,rk3368-i2c
           - const: rockchip,rk3288-i2c
       - items:
           - enum:
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
