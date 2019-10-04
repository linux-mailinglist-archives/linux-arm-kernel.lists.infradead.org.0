Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A45CBED1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pvd9JqlJfcH+U8CLrD9oeWCWKd91SLVrjDHOzJYGdKc=; b=mHcCQLIgAqr4X2
	o6sZ6DTelKTss0rRksHmQU2P71oUuetFXeNL/9Ix93xYWmUioGReBzlcdtr6qJwY12uod4ew0lgtf
	XowJdVfFJs0/y5kzrEuMNYjMItW9PrEt1NuXg1ssZ0LG9DGFeCry1x/dXDXmdVFf/kXxUwKWz7UJs
	1FO9SIIJahb+qjxK79MsAhwOy2Mlaty3pLGKmvvARP7sf8rlyoNcuMnpZcEKrVLAPIGsbspqBTwCs
	1NzxCAUB0KqQ/AFUVqOA39j0phUS9TbbCwy7zgXZhEZ1aaQRYl/utQlegWQu7OtPtfZiAiRsR/k7I
	lflQh/neeLoQ20rhJjRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPI9-0006rk-9I; Fri, 04 Oct 2019 15:14:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPHq-0006l5-BK
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 15:14:31 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA3AC222C2;
 Fri,  4 Oct 2019 15:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570202070;
 bh=T+96WbhywkN9TZ3RgQsCxJM8eZpY0gKukrAqlx2v0jM=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=XbNy0vjvtdDr7yclvUmZXuFX91a7a2NmRHOkhWFrYJdsLiTWwiw/PY+VE2zOSgaJc
 JFCE8U5N2omSGBkLx5Jk0Qwqr+2WfhjbCDPbIZ3uKUHxw7weadLSquNzRFbcUSBly3
 QGtdp9XUgZgmaydqz8uauSYOun9jHAwHXMzTCQrE=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Maciej Falkowski <m.falkowski@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-serial@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: gpu: samsung-rotator: Fix indentation
Date: Fri,  4 Oct 2019 17:14:13 +0200
Message-Id: <20191004151414.8458-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191004151414.8458-1-krzk@kernel.org>
References: <20191004151414.8458-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_081430_440170_A2356DB4 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Array elements under 'items' should be indented.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/devicetree/bindings/gpu/samsung-rotator.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/samsung-rotator.yaml b/Documentation/devicetree/bindings/gpu/samsung-rotator.yaml
index 45ce562435fa..f4dfa6fc724c 100644
--- a/Documentation/devicetree/bindings/gpu/samsung-rotator.yaml
+++ b/Documentation/devicetree/bindings/gpu/samsung-rotator.yaml
@@ -27,7 +27,7 @@ properties:
 
   clock-names:
     items:
-    - const: rotator
+      - const: rotator
 
 required:
   - compatible
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
