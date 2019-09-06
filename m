Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8232DABAFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HzU6jVH9eh37d1HE3aX/hfTngbSGNpBXVVRTN10HhJo=; b=LTuwwP8GJn9nX4m5i5uCZh+fAK
	oUYaP5hyzE/6Xr9hcSWAeM8xP+bqLweV4bl2H0RXEE8X7NIG3cw29X2bzacPkCM7UJ2WdUTPCT4I/
	dk2OOMNaqlcaEA4tW+9ZWICofUhqVl8Cjnjsc0XMZKPE23vbt5fNmS5v3LMqvIu9GZuYsM8u3E8M8
	OZwaqCGX/M+9NHUTMjQnVVuTbCSjFoo+C69eyQ44rL+CosIryCTXkiB/Lm1/SUjD6RXRl3qnxP4d/
	hoKeqm5vTL+ivOW8r2URe7Ywc76dNa0llE8G3VMmnCzDNaU1QBUo+cybgOouwD7WHvrO4YpzLs/Hj
	pwI74PBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FJT-0006QY-Pk; Fri, 06 Sep 2019 14:34:12 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6FIl-0006Bb-P6; Fri, 06 Sep 2019 14:33:29 +0000
Received: by mail-wm1-x32d.google.com with SMTP id q19so6760298wmc.3;
 Fri, 06 Sep 2019 07:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xDojPBQ0esilIp1GUWD6dVVMPDHyVZuOXZ5O6hXNfas=;
 b=YzH4mSbbYfRqtEURYbLvIoEJ5+KI8c1yMt80p3RsRKRASmaiAW/4+gHJLWF5O+q4+/
 FQfD9kVr91N1VVEf32XobWKdDGkFaXiA3orv+mSsjDj+0UtzHWb+oJz1XSkabV+B4ZZC
 W1W7bcijUs7jyviTo8hEn9VmOnb59htd7b+9+VtVJP7d6WuLMJ2A2Q2pYtzYP5SP66T1
 CSds3XBTkBMqCyVD4We5j7y/OHQN89p4DAfFBnXlvo7GRMW+hspxt67gKj9qxcrrxVqH
 87RCcbZDJFnPnGAsEn6Xadjj9JOJ/cWQJzkP9djuTzNMqPsJN6oI3x4VaWcezPPqjIX4
 gmLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xDojPBQ0esilIp1GUWD6dVVMPDHyVZuOXZ5O6hXNfas=;
 b=Io3TECLUEeHz9OiOweyWk6nvAU/CJug1KbDH1GeBFOOt07UFd7Mc7ufNwWt3KpU8g/
 U4QZsl0LfafPEgpV1sUZ1ehcvU22R3PfF63Jzgab4OUmaWX9FF2RHBpu+7GljSQVHvAZ
 UBeOGes5Ns1I0+loDEYGbd2f2ULC1hZHT9c2sQl8L9U3aRrYe0a4VAM5MfVxxU1i9S4F
 TauC16QjMfuBNXnM55bBlKiWTr2iOlFiSB1NO6gBeW14yZRYcqz2WofLeeXx1l8x5gcu
 3sQbnEyBZVY+3p9LHqFdhFF/7tI3y/IJaQVEMFkPKGjRq1HquiOPwNp23QlK8/NcKPmZ
 HxOg==
X-Gm-Message-State: APjAAAUoPH/5RvRujj8wCTESIaGxRQKwF1gDXUn7c2KBADGNcjeUwDKa
 GU2MZjL0Q7rVdVCEg3eSkIEDmY3a0mvZAqLE
X-Google-Smtp-Source: APXvYqxyRyW6xvWFqlJIoXCRJdrac/WsqsMJ83RWT2AIilwBlfvFC8Zganf13MgW1uMyO92xXFzvxg==
X-Received: by 2002:a1c:49d4:: with SMTP id w203mr7163587wma.132.1567780406289; 
 Fri, 06 Sep 2019 07:33:26 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id s9sm9300198wme.36.2019.09.06.07.33.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 06 Sep 2019 07:33:25 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v3 1/3] dt-bindings: Add vendor prefix for Ugoos
Date: Fri,  6 Sep 2019 18:32:32 +0400
Message-Id: <1567780354-59472-2-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567780354-59472-1-git-send-email-christianshewitt@gmail.com>
References: <1567780354-59472-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_073327_812927_9A57B104 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ugoos Industrial Co., Ltd. are a manufacturer of ARM based TV Boxes/Dongles,
Digital Signage and Advertisement Solutions [0].

[0] (https://ugoos.com)

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6992bbb..d962be9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -965,6 +965,8 @@ patternProperties:
     description: Ubiquiti Networks
   "^udoo,.*":
     description: Udoo
+  "^ugoos,.*":
+    description: Ugoos Industrial Co., Ltd.
   "^uniwest,.*":
     description: United Western Technologies Corp (UniWest)
   "^upisemi,.*":
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
