Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AC0186C5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 14:43:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zR7PcD+SIhiTI6YcryNzWpZEf/GPFW1zVxZojZQIt0A=; b=KmybXnBlTusYGa
	i3eKWjjeQ5oOsZBNxjHQz+hD/3VRhxsvmXxJjJG5M7ui/Ddnw1ecIvQNSMGBpmiZqp6j1jYL0jwc5
	dkpJMLxFHXU7ZFrulvUKk3laM7piEKp+kcGnzI5dcu8/r6uKi6VchoASrBS+vUd3mVfkaxCCpvjYm
	l5nQwPquYlai7jU19xEmcbbfd7gBnl8edjNyxgWz3ojCPSdZChf7A4UavBd4Bn+HmZodY0OgTRa+V
	lEpvrnEkgsMhVdAnBw2/ALecleQkEizXAK6VP3FvcwA0PpXkSWvyFqSkLgQVjslDuZQN3wdW8zOYR
	m5EXfh0GqUCZJr+InaZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDq18-000277-AW; Mon, 16 Mar 2020 13:42:54 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDq0w-00026d-Fr
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 13:42:43 +0000
X-Spam: yes
X-Spam-Score: 6.6 / 99999
X-Spam-Symbols: BROKEN_CONTENT_TYPE, MID_CONTAINS_FROM, MIME_TRACE,
 SUSPICIOUS_RECIPS, ARC_NA, FROM_HAS_DN, R_MISSING_CHARSET,
 FROM_EQ_ENVFROM, RCVD_COUNT_TWO, TAGGED_RCPT,
 RCPT_COUNT_TWELVE, RCVD_NO_TLS_LAST, ASN, FREEMAIL_ENVRCPT,
 TO_MATCH_ENVRCPT_SOME, FREEMAIL_TO, RCVD_VIA_SMTP_AUTH,
 TO_DN_SOME
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id 0e527ca8
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Mon, 16 Mar 2020 06:36:02 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 565904C196;
 Mon, 16 Mar 2020 13:35:45 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Ondrej Jirman <megous@megous.com>
Subject: [PATCH v2 1/5] dt-bindings: vendor-prefixes: Add Xingbangda
Date: Mon, 16 Mar 2020 21:34:59 +0800
Message-Id: <20200316133503.144650-2-icenowy@aosc.io>
In-Reply-To: <20200316133503.144650-1-icenowy@aosc.io>
References: <20200316133503.144650-1-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1584365761;
 h=from:subject:date:message-id:to:cc:mime-version:content-transfer-encoding:in-reply-to:references;
 bh=0HfFUPjqEgQwk282TtGVjN57mA1btMaLRbIZ6w6p3rA=;
 b=REDQumeYtu2hFfNE/0noLkFBnWLBO0K+j+7Cl1oibcFre31634hVU28mtpy55VHq7hemb5
 9Y/h3REpWyNd//ndafhD4+trF+cFKYr8mxOkJEW8BtetEuX3kI1XpnvOLWBbguNyciZFV+
 +hPgrwK9gX+BZf947U0jZ34pe2LBgAc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_064242_574478_2D7C4A24 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:8001:184d:5400:2ff:fe7b:e8bd listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Shenzhen Xingbangda Display Technology Co., Ltd is a company which
produces LCD modules. It supplies the LCD panels of the PinePhone series
(the developers' kit and the final phone).

Add the vendor prefix of it.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
No changes in v2.

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 23ca95bee298..0d9e966eff19 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1106,6 +1106,8 @@ patternProperties:
     description: Xiaomi Technology Co., Ltd.
   "^xillybus,.*":
     description: Xillybus Ltd.
+  "^xingbangda,.*":
+    description: Shenzhen Xingbangda Display Technology Co., Ltd
   "^xinpeng,.*":
     description: Shenzhen Xinpeng Technology Co., Ltd
   "^xlnx,.*":
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
