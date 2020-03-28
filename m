Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5141962A9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 01:42:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n0u2f+AUjl3RGC74fD1hyDrpzdOygMiz+NZ8Kt55OXg=; b=BuXq70yfcN7UnP
	poobr7XuJAVB5OWOsWup78jad8Z169K4aIqgXIgQc6NNeOU6vO02nvyJW8egeTg4BUcidnaFE1Etl
	Vnr/d5gwjPfdWFvEajwlLyTL4/5vFvwOVRZf9JwqmA8GZH+iuVF7FuktHTqxpo/hhh2BWCvFnfccq
	E7327m7vDXkKYAIxIF0jjjp0mKRQ41Mg03qujlTZ3D1KErOIbzKqT/YAiqzhE0eJMLurOBM05C4kI
	XUipudfpGU/tObkm6l1gdKfIN5sEsM3td3vy7dpScOkVZo6XQkLe/WyJS7ZzNQjJRkHwTyLNW47rN
	Llu/HtJymjLSBBXMqJnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHzYS-0001FS-1y; Sat, 28 Mar 2020 00:42:28 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHzYG-0001EB-O2; Sat, 28 Mar 2020 00:42:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id f74so3746739wmf.0;
 Fri, 27 Mar 2020 17:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CyGjashJridaD7EOncRRtljYVEVx0U+lNGZaPp2V68Y=;
 b=IptMWCxZLROI05RPdivzL/MiF45cGIjZgNtc4RWBqeNsCIeOsisxtfQTPTt8Frvkew
 GN/AxvkeF6atRjS6S3g9JimBi6e+6Bk82g8Kht9L/S2NyD5pdcnOoFcg6aMxUMN7S7/u
 9DmgWye5ERHiBSRmiJVyop0S9l/19iYR7YoPc5B/PmaQbJROP7HSsMhoD8qFkmqU7SI+
 +9J1dr3mbTpX/ha7onANt5lsOl1GTqzf1YdcHKEgMCx4uvTtHWNiSVf7Urvn53nWD4uL
 vkx8ECR9Qg+8tqrr/FJk/rLzrqcjuIG3FB9/ejW24U2df8cK+RUZkhLP3bARtDZUy+ex
 HboA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CyGjashJridaD7EOncRRtljYVEVx0U+lNGZaPp2V68Y=;
 b=RuBLHuhUE6dMn9k+SPlz2hdhrAuXoalvtSKaH9US5L56EV+uo/BZO508aE1leor6Ic
 Xci9dzkjxfcsjq5kJgFGbAI1KZPMk9RUmULz/l4drx5jBoEun3aTnKpHlB9Isl47FR8E
 MrYzSsSSV4hr9eHYd/geJyULlvPI2zWtrUc7HG7CWtta3SZeQol7zkDfHadq62D0LwRu
 QD5YX+30CwDiwEs1qmEGgrVYAo4CClaVdVV4vHJyj5otjESAINbNgZDBfxv9Pcm7a0UL
 zLzz0bhAqt0HX4oQcJ6mcEWaiK6mCLDjO0sVu7BW6GDVA1wv6rVoFcwGh89ySKhHy3Tn
 dXxA==
X-Gm-Message-State: ANhLgQ2iPpk9bK3QUBCAxuhw4hROY2d6VUycctPfAuOn+ygEM3dSunm2
 reg75MNbC+ZTOeUgDh4LMOfI1dI3
X-Google-Smtp-Source: ADFU+vvlJnYzsX+ao1dSJir0qYJy7B2HfzwRuyqzEeXskD58u19UIKeamdohRQLTKyIpvAMohyf5Ng==
X-Received: by 2002:a1c:96d1:: with SMTP id y200mr1376296wmd.114.1585356135213; 
 Fri, 27 Mar 2020 17:42:15 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13710ED00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3710:ed00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id p21sm10783857wma.0.2020.03.27.17.42.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 17:42:14 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, robh+dt@kernel.org,
 dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: display: meson-vpu: fix indentation of
 reg-names' "items"
Date: Sat, 28 Mar 2020 01:41:57 +0100
Message-Id: <20200328004157.1259385-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_174216_807922_0A5C2CBA 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, airlied@linux.ie, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use two spaces for indentation instead of one to be consistent with the
rest of the file. No functional changes.

Fixes: 6b9ebf1e0e678b ("dt-bindings: display: amlogic, meson-vpu: convert to yaml")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../devicetree/bindings/display/amlogic,meson-vpu.yaml      | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
index d1205a6697a0..cd8ad2af52c9 100644
--- a/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
+++ b/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
@@ -71,9 +71,9 @@ properties:
     maxItems: 2
 
   reg-names:
-   items:
-     - const: vpu
-     - const: hhi
+    items:
+      - const: vpu
+      - const: hhi
 
   interrupts:
     maxItems: 1
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
