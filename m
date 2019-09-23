Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B6FBB611
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 16:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=clNF4VtknbO+KtZEkRoK/9b1VGbZMrxHCDN6T36h1kk=; b=dnRdmNU2UhcN444PNeNoLu7wVM
	H1pt2wG2Z/pBtcMLpWLsQTzIm16GISAlZuqFeV8ea5Tw5rkYE3xwf7co7M1dGTX9od3z2gsr55nfs
	3oAdISfSnEH8Jq5vJ5ReMJvcuqMOMdlhRCUzgC4IFEyFAARqXY2Ly5Iw/fFtWIidC4XIhG0c18e0N
	VN7DsOMfRC47F0egHScHDzZW040RTHPut2T37UhyZjBwUuY+BwhGuPGibPQlWpynwfhVTYeUS18mc
	Fn7FLW9+Dg35RfGy/ND9oIsjkw8il0wNrc9wmO2spx8Q+Dg0/hmmJ038Tk7c5HJ4DfSu5aE8eSwnJ
	IKRu114w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCOtG-0000Eb-Bj; Mon, 23 Sep 2019 14:00:34 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCOre-00067U-Pi; Mon, 23 Sep 2019 13:58:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id p7so10104566wmp.4;
 Mon, 23 Sep 2019 06:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=l8lFr4ZwIttjBYV2ogrlwO0w9q8AMXRri5mgGEzyZHU=;
 b=Rqy21PONemEQUYOliMIMP9uYFwq0imIihVq9/skI9LRVxxWKwvCJ43YdqRhXiERWWV
 9jI2aDo3bEZhIP+UhpkumhfZLsAj1oeW8fLRAPlAe5b8Oni5j9IQrCROoEtKw0+bekt0
 9MowP0kBmNB4n2FUBxIke2JdzLkiTWtM/zVnPb6lrDykCQEuAlRK9JwDCOYZeVAdzhMJ
 RRc/2Pce+SFtCOzKlEQd1WcAsJETaowxiAvI4/WFvVXhCaeKZc9yJjoklVAmEG2x4zew
 u8i41FzYeYbWUShUzqrRUgL8Y15OvgBwWL7UR6qO5FnQlrAkxyznYRKu6vLoFIBIbbfL
 ueaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=l8lFr4ZwIttjBYV2ogrlwO0w9q8AMXRri5mgGEzyZHU=;
 b=ZtYX3bOcPrbnpERJ1oSmXOEDIMil8ZkdLctaqBfxABtjZ75/GC/wz7nqAeJnfDqbVc
 snyqNQCsPvMhhMcE+V/13WnlVjqBbLA8pgySdcxVmtj7P/2NnvNE/ZVGQw8aRLuX4U8M
 VTDATDIDmYcRHkrM9fj2EAo0EzVWL+nsfuGp+MGYA9n4wo1U6+5hwDrqFA60yshiRRrI
 H0X3AiXNejyLHrKOccE3YhJWL1KUPJ8NfNiBvPY7jqVwqn8/Ysmv1XGjUjh8ZGQK7aLl
 hOfPJJXERkUD5uKCdTCMvKD+Y1P6AeRgXwaPVW4OSS1KLruJftQIE3Vd1xMsMMS7tPcn
 CaPQ==
X-Gm-Message-State: APjAAAWL8mzA8QQ0pvvZHsu53HcxZ3coST2BLlltHpub//ixxKdthRa6
 2gAMtsm5JhHflFfZXQLrXKU=
X-Google-Smtp-Source: APXvYqyNZQ+NFxGJlIuTy9GGMXbzRUrp+BtFMLg/fjKVcqPQfcSleY5YFbiX1ptOjnoNXfne+DYefw==
X-Received: by 2002:a1c:3b06:: with SMTP id i6mr13937510wma.6.1569247133526;
 Mon, 23 Sep 2019 06:58:53 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id h17sm25266184wme.6.2019.09.23.06.58.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 23 Sep 2019 06:58:53 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/3] dt-bindings: arm: amlogic: Add support for the Ugoos
 AM6
Date: Mon, 23 Sep 2019 17:57:56 +0400
Message-Id: <1569247077-5212-3-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569247077-5212-1-git-send-email-christianshewitt@gmail.com>
References: <1569247077-5212-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_065854_867644_5AAC4839 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Ugoos AM6 is based on the Amlogic W400 (G12B) reference design using the
S922X chipset.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 325c6fd..2ded61d 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -139,6 +139,7 @@ properties:
         items:
           - enum:
               - hardkernel,odroid-n2
+              - ugoos,am6
           - const: amlogic,g12b
 
 ...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
