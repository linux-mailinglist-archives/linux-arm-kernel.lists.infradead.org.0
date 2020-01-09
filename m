Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCB513568D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:11:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7Dmas8yXcOWOK9LKD20WcYyuKrO9GQC3W6bleTTeiA=; b=lPY51iBrplR6y6
	SSh74jXDHTeDYdZNeuUlJ3eZdbsI/TActlZsoe4Uf27ab1wO232w5bERvnRzDsjN5YJuIiXdsB/68
	le8ZAAy3F7zrpmQo9+Y2QBanfaViaPU9uT5YVUmnQlbCWHXHuPF4J51ZEdUp4usaiDMdHtIKNLNQp
	I4vvOm/edt5PRRR4z9jAJGruvtfwLMkLUmIbU0uFubxvpDKvtre+don+6WtVs+ythEkE5qOzyguJ4
	RR5orURXEiOwFPC293t4Oc1alCi9abLihH8brUMhstbMGqIqSKc51VGeXX6+floD+axbD5HdEkRRE
	kckdilRLuQxrLPh5mBYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUmf-0005at-DY; Thu, 09 Jan 2020 10:11:21 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUmF-0005N5-RE
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:10:57 +0000
Received: by mail-pj1-x1041.google.com with SMTP id u63so821925pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 02:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dbC21RRgSudcfzr5QWN03HN4co90yPnzp9bvtIPiw6Q=;
 b=IY5Q0BgmHLcQVi+Nd8CTG6T7x9dxAKRluJCeIn5hxSAAv6TjP61drY8WQRs424L3kH
 zmI1kurtlILQd+/5VKR+/k+MIeGWmMHnVqyyu7sHjxu/5fk29/84J7HOtFkRwydI1an5
 kOz5T9+B9Ujzd8FfG72TTneb3qAYzHsoxTauA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dbC21RRgSudcfzr5QWN03HN4co90yPnzp9bvtIPiw6Q=;
 b=M3MvFECqn3S4sQGOiMJj0t1cg/+I7eb6o0eACFa8aQ3UKtUcevPU1X+VPKyValia+M
 wfhOeLMiL/EhixRZCthPVHddC6tGePbhQJXdTo1OvLvcFyC23v5Ad4coIJnQAuSaIWWK
 Pp1Uxt1yYa30Uizbt3NSr1kwkqDGxisSHqxOADwFYgNZLPet/uc2vT+XAHr2glGqAzYj
 JZoYYBZd5oK5eMK5ZJn7IWYmFvI+7JH/ljt2/OgslWaOcpZ/uCIb/TkRE9U3pZ4AnY3y
 Cd8KgJVeWpLtHkcphJSBYfS4Udk6dycCJ6rOgTVqjUwbX+F9WeBwTBIwQYXXdQdotMiG
 8nKQ==
X-Gm-Message-State: APjAAAXBsFIdfQzwdtT0EHz+YULUFR/EWno74gbwMtCIvc785XljB76m
 2cqf/gFTdoS07Qh0aaDg57Qa0QV/yFc=
X-Google-Smtp-Source: APXvYqxuqSBYL6QU134n5GYda6RQAwk6cDgFPhQEWnVc9y4WnlfO7L8zj5BmXQnZhoNaDp7P+SdRYQ==
X-Received: by 2002:a17:90a:3742:: with SMTP id
 u60mr4446045pjb.29.1578564655024; 
 Thu, 09 Jan 2020 02:10:55 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id s11sm6518713pgp.1.2020.01.09.02.10.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 02:10:54 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: arm64: dts: mediatek: Add mt8173 elm and hana
Date: Thu,  9 Jan 2020 18:10:41 +0800
Message-Id: <20200109101042.201500-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200109101042.201500-1-hsinyi@chromium.org>
References: <20200109101042.201500-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_021055_904252_CEE7224B 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Mars Cheng <mars.cheng@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Elm is Acer Chromebook R13. Hana is Lenovo Chromebook. Both uses mt8173
SoC.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 .../devicetree/bindings/arm/mediatek.yaml      | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 4043c5046441..a27b22f264a2 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -86,6 +86,24 @@ properties:
           - const: mediatek,mt8135
       - items:
           - enum:
+              - google,elm
+              - google,elm-rev1
+              - google,elm-rev2
+              - google,elm-rev3
+              - google,elm-rev4
+              - google,elm-rev5
+              - google,elm-rev6
+              - google,elm-rev7
+              - google,elm-rev8
+              - google,hana
+              - google,hana-rev0
+              - google,hana-rev1
+              - google,hana-rev2
+              - google,hana-rev3
+              - google,hana-rev4
+              - google,hana-rev5
+              - google,hana-rev6
+              - google,hana-rev7
               - mediatek,mt8173-evb
           - const: mediatek,mt8173
       - items:
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
