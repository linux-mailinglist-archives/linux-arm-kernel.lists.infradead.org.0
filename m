Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26ED211D066
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:00:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U4/hW7AVVaWaSHuZakkk0v58Ou8bai4RQVhIee65UZs=; b=UXPq/+NnK14q1PomdCsW4wA+lO
	lXltoZKxVGT+A/WIIATFdz9n70px4n87LAEJrFAeWUfh3oYucqBgtVdkM6a0D3dgJidP98NE82aC0
	Fp88zDIB/ijXvupQQ/+v/zBerWT1U74Yey+oC+SKME5UU8ryjOd8r5skAfvikQ2CAEik8frFx9yZr
	w0k1up4MiZOtmJHRrMLKXUMtpUqa1AwbqSZ0QTSYNixV9K8a8i37skgfKdqnX38P7ZBnUvy/GAGBg
	RQW9BmDtwz4hBvp4XhP79O8XRNC5NZ6l0s9ZVsepn4zm5uhcBFlJPrHWBZU0Gb0bYD3Lr45/oubBe
	E2rHELhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifPwy-0006wZ-U6; Thu, 12 Dec 2019 15:00:20 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifPwC-000656-8B
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 14:59:33 +0000
Received: by mail-wm1-x343.google.com with SMTP id p17so2868278wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 06:59:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ac9PpPgQ/84i6pezXabxCQJUJWE1oGmfoqB8QI/gWCA=;
 b=dZcgLnNG3uYFgy6p80XmLl3qh+7E3BAQitI3+SR9eKqYAPkjfo95LtHK3USmkYHo50
 AawUALYM+B6a9KUj32JVT/yMJJ98eOmyat2sNM3CxhF3gRX0hCs19y26yN9JNaChJ2Vy
 OdEn0/d/YyS0kFNWPO84pRTr8S1Hv1ZWy8Vgp+rL+eGdCIcWQq7VVHgwCSCjPall2Bse
 iwsiZ73eWKDn80coakwDxHbqO1FafBda38kYY80Ubz6OHu/6C/InoLkI7jQxe5llbW99
 ISY3T0HiO/Lszoq4IsEkE9ZqlFlHMWJ1oAABHkopJKE8D6ZD9OdMw4lff6laB8O/lUD7
 vwAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ac9PpPgQ/84i6pezXabxCQJUJWE1oGmfoqB8QI/gWCA=;
 b=mHOkitCFUKTpzYCaJqeTc6LrqfliUaHKecc90OmmF8A7g6OD4eIkGy/gT62kx7Ck/o
 Aa13L4+z6fzEnrku/hyzimuMv1WpaXb90aIq8xir3KCzyP8c/STaCj9IL+CWG71TNIpi
 gyLToqtDD6oZLwVczaq/uqpGe9w/GgwXtCu0WbEgKnrQhyewR14mnRPPCLudt0leYtNL
 RRBP+rgh4o2tc3iBUxMlAJJk+mfY9ysk0whmfIB5Y3o4x3q8tpYeTU3fQeogxEiVT1Xi
 QdGPVp/srePxblbOTUZaMuAs2dcmpyuVcVIn1Bm+W+q8+JjdD3xNQDCseDbRhTe0Q6Ir
 8Sgg==
X-Gm-Message-State: APjAAAWh1mhHIhRXFyOcFxnXrbHgkevEa/8CRIKgw/+wa1T5xekleZks
 m1e5efGtxPnsErpaPQ5h4KL6NA==
X-Google-Smtp-Source: APXvYqz2EGJjniScqk1Lxu2Wl0Wslazw8x8Ill6fOn6GyF/VZNUHKYjPi5ScqDMGw6WkrreVEEsg3A==
X-Received: by 2002:a1c:49c2:: with SMTP id w185mr6903909wma.138.1576162768162; 
 Thu, 12 Dec 2019 06:59:28 -0800 (PST)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h8sm6670292wrx.63.2019.12.12.06.59.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 06:59:27 -0800 (PST)
From: Guillaume La Roque <glaroque@baylibre.com>
To: narmstrong@baylibre.com, mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 khilman@baylibre.com, devicetree@vger.kernel.org
Subject: [PATCH 1/3] media: dt-bindings: media: meson-ao-cec: Add support of
 ao-sysctrl syscon
Date: Thu, 12 Dec 2019 15:59:23 +0100
Message-Id: <20191212145925.32123-2-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191212145925.32123-1-glaroque@baylibre.com>
References: <20191212145925.32123-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_065932_318458_1445C8B0 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ao-sysctrl syscon phandle property is needed for CEC wakeup support.
This property is optional.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../devicetree/bindings/media/amlogic,meson-gx-ao-cec.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/amlogic,meson-gx-ao-cec.yaml b/Documentation/devicetree/bindings/media/amlogic,meson-gx-ao-cec.yaml
index 41197578f19a..1f721498d249 100644
--- a/Documentation/devicetree/bindings/media/amlogic,meson-gx-ao-cec.yaml
+++ b/Documentation/devicetree/bindings/media/amlogic,meson-gx-ao-cec.yaml
@@ -32,6 +32,10 @@ properties:
     allOf:
       - $ref: /schemas/types.yaml#/definitions/phandle
 
+  amlogic,ao-sysctrl:
+    description: phandle to the ao-sysctrl syscon
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+
 allOf:
   - if:
       properties:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
