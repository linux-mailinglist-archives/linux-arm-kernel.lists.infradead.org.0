Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BFB6E177
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 09:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZQWbO2v4FC8h0ClHhYh/gWXfQSFW1YM+Py3LT78rXzQ=; b=EHTZ/spj0EAT024Kbbf/6L3Dzt
	4JSLyjOkl3DzZ0SBpkk61+yZSw1PDOh3auTw4V46Gam4FcF5nRpJMjuSbtW3OWre/36m2ejouLWLL
	5TEUQjnOcRgA6Ckn60oQzxToWKUs5yTyLupq7nXg4tV7MTgQqoOZwcSWaQ+UCI1EXyQxNYYO3XMty
	vID/ROUktXVkG3R8DICkzVhj0y0h331ftk2uOMI91GZFRZmiPZpGiJP6YcZr1IZFaU5G/z9E75v3G
	9efJ4gUAmqptCW4NdwcYUjmAKfXYayh6TLU29S4P4XNocn9YllW/z1cIliMTSdXLXjMSK534tTOd0
	XjZKLk4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoN2s-0002Ue-Cn; Fri, 19 Jul 2019 07:11:10 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoN1k-0000lM-1d
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 07:10:01 +0000
Received: by mail-pl1-x62c.google.com with SMTP id 4so8197889pld.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 00:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wejlJJPjvhTTbCNGB4VjnLtYjtQuI5s6iJfj743WH8I=;
 b=lmu043Hz6zAVciotAIw/JtZ9gpdYGTWPlmxnLrJhHiguq63+npVZdwXC9Yq94o9dJF
 S4TYuKUcrC6nPnjd3BoJ26izYVnpbfMWHrQvcpxMsztSF9K7Kvnfu1Vdky+C9p+gB1Zp
 Oh98xM0LMQHYPgE5MPM55pH1qK/dWz/oMTk9FAQNd/n2TLrd4Zx4+cJg4skaK5RhkwQ5
 mmYmxYJ+RsBdPoz6T2IK9wpbNw8VVu3BekgcTs1guzTY3y5zCFtFv1TktgnaCAkobBJR
 6fZY01Q5OT7IG4FvrdcYcT6OueIt4s/UXex6ghjoDNm2sLmYY++Lg/bJlFs7dvfH+KVO
 RiHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wejlJJPjvhTTbCNGB4VjnLtYjtQuI5s6iJfj743WH8I=;
 b=EfWgct6b8eLRsfTZoA79fysmPkY2b5/C6GFOFbTqe4FAJLpiz9VY61wzPw3zcPg7qg
 gQLc5R1YdeIO8ukLArTfwRd4SvNT68d6AYM9obtsxSLzSyMvhQxzpHQFq59tFF7AaohX
 EABq1W0A4Oq/BDx4736RKxQlyraRsnGxyjyYJ/J+QKY7YJBnWBMxXO0dzFBiddu76Skd
 v12hhytMzgSeAP300C6h1BwhDXX9JyeGvokiH/1NJp1NwEsdTp6eRAV8ZEnbel/XAxWV
 hA4OUJTY7ykPjXtZ+e1QHSieIdivbiF46eRfIVjnQbJc+tGHJvQT4gHm0VwwwIysVwde
 QUhg==
X-Gm-Message-State: APjAAAVJkPBriJxJmqrsyHcaGvEnXLuiCJxILvKgl7QuvzcBqt6sHEfn
 XdjMaHiLfk/6bp26vuALgLh6
X-Google-Smtp-Source: APXvYqyvX2dItjj9s9D7tuG12+0UPJBQozTDJS4lYY0lsaWB25b6IUqfd8X/oUBdeEUOluWrLVNr9Q==
X-Received: by 2002:a17:902:7894:: with SMTP id
 q20mr53150658pll.339.1563520198971; 
 Fri, 19 Jul 2019 00:09:58 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:730b:4a40:d09e:c7ec:fbb:1676])
 by smtp.gmail.com with ESMTPSA id
 r6sm56259346pjb.22.2019.07.19.00.09.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 00:09:58 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH v2 2/3] dt-bindings: arm: Document i.MX8QXP AI_ML board binding
Date: Fri, 19 Jul 2019 12:39:25 +0530
Message-Id: <20190719070926.29114-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190719070926.29114-1-manivannan.sadhasivam@linaro.org>
References: <20190719070926.29114-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_001000_536386_C469203E 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, kinjan.patel@einfochips.com,
 linux-kernel@vger.kernel.org, Darshak.Patel@einfochips.com, linux-imx@nxp.com,
 kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document devicetree binding of i.MX8QXP AI_ML board from Einfochips.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 407138ebc0d0..8e9209a75478 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -180,6 +180,7 @@ properties:
       - description: i.MX8QXP based Boards
         items:
           - enum:
+              - einfochips,imx8qxp-ai_ml  # i.MX8QXP AI_ML Board
               - fsl,imx8qxp-mek           # i.MX8QXP MEK Board
           - const: fsl,imx8qxp
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
