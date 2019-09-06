Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C0BABA4F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gkar1zPukc8r9SB3CT0alQx18RJuMba9afaFHozdEB4=; b=n8HyklAIbiNFerH6oUcbFxawTF
	eO5kM+8nlzBSv4YWWkbELKP3/zAx1+VmjbxNf2rBwS0EW1C6DRT7c7yWD5lkQJSzXxqYhVh5HnYgR
	Dh92iT27r2HQ87RC4qM4S4sLdJ9n5uE6VBzUcsWirZNBGbNDW35IGV7YPrXQnWX+rtbEdT87VJyvD
	wPN7kA5BS042F3yOkDxHWaIXdnc/9fpjDCK8zkyzGSa8ot+CQPMhfqhG54S59xVmRNveiWRMYJVlz
	DZgugKpb/9ohJ43ytbiLDqaXXWrWC7i8IPwBxyTGt9yS+UPwKiNjmGLmQpjclqhjlFPuCzdgGM26b
	SVz6F6XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Euu-00051c-Ql; Fri, 06 Sep 2019 14:08:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Es8-0004Q9-2P; Fri, 06 Sep 2019 14:05:57 +0000
Received: by mail-wr1-x442.google.com with SMTP id g7so6775562wrx.2;
 Fri, 06 Sep 2019 07:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sVRT27xgfEva/e1C67Zzs31eL0ogg1a2U8ejdj2fXBc=;
 b=ZnywVXdzjivUjfuWw8KWRGVDzFu6IuuVOmY6Mn58dcYWQlXed26VL4Rp68k9DjU4dv
 7V0VfDNvbx4A6XFv4lW0gM9xekpm8Ar8OsE/+THFTt8dmCUWxf1qE/ReGjkSNUe1RIJG
 Ye1UYNwok/zCByqPsaqlCJHXn+SZLd2/C9hh+CRwMsx6+BEV8/7guQQJIlK99rTEjPdB
 3lC6qJzUmNpvA/uvLPpE9HWbqJ1C0r8ecnshk1lVRGoCxGLI/MgJhvof8DycTCAdtzAa
 Lu6oiXbeunkhLNXnaMlhCLGoddF+k22b2w70rlhTHV+5X/RCFeKzrw9zanOuaL26bf4a
 3o7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sVRT27xgfEva/e1C67Zzs31eL0ogg1a2U8ejdj2fXBc=;
 b=HN6xNpQJrlN/p3m2c/WDUoswRP5Zeml0iZKKKhfkww+E9e0CBhdCRPNT9JoHZau9SC
 VtSG2EqtSwuKsos3Ug7pKn5cEU3uCkvtGI/BTU3LUj3KYjunQBWGP4RxvqNEPdd7dLgS
 +bWNs8uIPw1iPWOmuoMEnMhcTctJpGnHu24SueOixbT/x3w7zYTXzryXiigbn5WHTxNb
 wcZlccTVSNczR5X2mXdYrcE/SP/onNtdttDxCZpDQXgtbuTgU0zYCA8YLcws7HNsThZP
 lrCxlr/Mt6JFEFF26M42Z1Y50JisBRnHxRH5QseyfEOHWlCRQ95zDbCOay36EhXlcrzZ
 OCZg==
X-Gm-Message-State: APjAAAWefT/y4VB+Gp0/Ro9A2hmuXJNFm+VGEpKOAJdpKSqKsZ2Z+/Wi
 i5q2hWDjB/SQJ+nrlhdUEtc=
X-Google-Smtp-Source: APXvYqwHNjN84vTb0aFBpduETgbA5BSuKjVhRZOlvvvWhde7IDe/uBFdy1S7Rp6t2FWJZ++iNFUVRQ==
X-Received: by 2002:adf:8b13:: with SMTP id n19mr4125783wra.203.1567778754943; 
 Fri, 06 Sep 2019 07:05:54 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id e20sm7480542wrc.34.2019.09.06.07.05.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 06 Sep 2019 07:05:54 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: Add vendor prefix for Ugoos
Date: Fri,  6 Sep 2019 18:04:58 +0400
Message-Id: <1567778699-59231-3-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567778699-59231-1-git-send-email-christianshewitt@gmail.com>
References: <1567778699-59231-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_070556_153494_6C3B2777 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

From c9402f747c02605fd8bf7e6495271edf855476c7 Mon Sep 17 00:00:00 2001
From: Christian Hewitt <christianshewitt@gmail.com>
Date: Fri, 6 Sep 2019 05:38:48 +0400
Subject: [PATCH v3 2/3] dt-bindings: arm: amlogic: Add support for the Ugoos AM6

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
