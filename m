Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA0F1371DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:54:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LenCiDg6kCgBWupD3HAR8hJvTC9NnlhQMACIKE76SWE=; b=LkGzsSGG89NR+U
	2DFLsg98zhezi9xLIcx2kCH2nSomHTG+/MJq5eSTM0UMUCE28+yQ9ZY4N+jKW9Lj47BNv9ZrSlvov
	8vuLltg0NsRtyYMzJOqEmTyOUoepJtE9Hdb40lEH7ln/5bTbUPDU6uvVDs1/CAsdSDSKefZ23/9LO
	qQB2Y4GMZr9f4f0rmlvJ1XDdOM7uHUN6SAQaSw6P5FGgjiKoD6RVu7k+gMfYyjYDI/6d+EIv+ACEB
	QXJEm4QFXnC8Gp1zERkC8CkClsvTD+mC+j5NwlV02fR7fd2YatZDnHzZyQrcpKfSvwMqh6Ej6NWJD
	jnNmey0XqjG5Qwh4NYeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwcF-0008JX-Ln; Fri, 10 Jan 2020 15:54:27 +0000
Received: from dodo.xh.is ([144.202.88.237])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwbn-0008AZ-A2
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:54:00 +0000
X-Spam: yes
X-Spam-Score: 6.6 / 15
X-Spam-Symbols: FROM_EQ_ENVFROM, RCVD_COUNT_TWO, ARC_NA, BROKEN_CONTENT_TYPE,
 RCPT_COUNT_TWELVE, TO_MATCH_ENVRCPT_SOME, ASN,
 RCVD_VIA_SMTP_AUTH, FROM_HAS_DN, FREEMAIL_ENVRCPT,
 RCVD_NO_TLS_LAST, R_MISSING_CHARSET, TAGGED_RCPT,
 MID_CONTAINS_FROM, TO_DN_SOME, MIME_TRACE, SUSPICIOUS_RECIPS
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id 11bb8e54
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Fri, 10 Jan 2020 07:53:44 -0800 (PST)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id D439246EEA;
 Fri, 10 Jan 2020 15:53:35 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 1/5] dt-bindings: vendor-prefix: add Shenzhen Feixin
 Photoelectics Co., Ltd
Date: Fri, 10 Jan 2020 23:52:21 +0800
Message-Id: <20200110155225.1051749-2-icenowy@aosc.io>
In-Reply-To: <20200110155225.1051749-1-icenowy@aosc.io>
References: <20200110155225.1051749-1-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1578671623;
 h=from:subject:date:message-id:to:cc:mime-version:content-transfer-encoding:in-reply-to:references;
 bh=qHBhDO55HUAaYVOwGJfe4RFCcrIqyzRWESEqAvvlFkw=;
 b=F9FNv9lvMYHdOqMyE099ko7xEGb6TDt+J+bqq9bmldjWjfNPwUKp14k19jqN5tcWBzZENu
 lfsPrAbf2wXvOwGdbXMEKyI0ETO8Ukc+DNWpjfq9PULOHVsDw0yp7//caNBZdTsDJlFfQR
 P3uRQklASD7s6a4z+DKhfQXnJydUEUE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_075359_393137_583A63D3 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Shenzhen Feixin Photoelectics Co., Ltd is a company to provide LCD
modules.

Add its vendor prefix.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 3dab8150dae7..a6d53bbbe33d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -335,6 +335,8 @@ patternProperties:
     description: Fastrax Oy
   "^fcs,.*":
     description: Fairchild Semiconductor
+  "^feixin,.*":
+    description: Shenzhen Feixin Photoelectic Co., Ltd
   "^feiyang,.*":
     description: Shenzhen Fly Young Technology Co.,LTD.
   "^firefly,.*":
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
