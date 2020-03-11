Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E905A181DFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/cQ949bybUBDuKom+CC7Il3xu56FF10MfRPJUK2bMSg=; b=gUQcd+bcfn0d86
	G0Mmq/joO4gOZWa9gOGnoVa7cSTu37lmxFUG77pIpsFayp4mLjyyqdmgHirtbsOIsXQpdO2ltIe02
	WgbTq0BcDcjjcPFcwCpP1P4QBU04lXSQJ1jdSAuP6BpLAio2wBTqSDV5UKpwZJ2Er+3ymAayHJXvK
	icurpjHzPXBnVz4ZfZUC8lX8VqHKl91CIJU33GtrFn83hRe9z7uWSrbieMIQNQ/tOZlLCbS+K5wbb
	iV+LAPpJn79/oEytXem8zCF6T9NHuKy/Py2FXVkB0j9esfmh7WkyDFD3t6qymA0HVTcMm9AgNmrgu
	Qa0N1SAVPG7VQrcPU2Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4JH-0003X6-28; Wed, 11 Mar 2020 16:34:19 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4Ip-0003GR-6b
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 16:33:52 +0000
X-Spam: yes
X-Spam-Score: 6.6 / 99999
X-Spam-Symbols: TAGGED_RCPT, BROKEN_CONTENT_TYPE, MID_CONTAINS_FROM,
 RCVD_NO_TLS_LAST, ASN, SUSPICIOUS_RECIPS, FREEMAIL_ENVRCPT,
 TO_MATCH_ENVRCPT_SOME, FROM_EQ_ENVFROM, MIME_TRACE,
 RCVD_COUNT_TWO, RCVD_VIA_SMTP_AUTH, TO_DN_SOME,
 R_MISSING_CHARSET, FREEMAIL_TO, ARC_NA, FROM_HAS_DN,
 RCPT_COUNT_TWELVE
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id a7fe1285
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Wed, 11 Mar 2020 09:33:50 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 4DD2A4C335;
 Wed, 11 Mar 2020 16:33:44 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Ondrej Jirman <megous@megous.com>
Subject: [PATCH 1/5] dt-bindings: vendor-prefixes: Add Xingbangda
Date: Thu, 12 Mar 2020 00:33:25 +0800
Message-Id: <20200311163329.221840-2-icenowy@aosc.io>
In-Reply-To: <20200311163329.221840-1-icenowy@aosc.io>
References: <20200311163329.221840-1-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1583944428;
 h=from:subject:date:message-id:to:cc:mime-version:content-transfer-encoding:in-reply-to:references;
 bh=AfXGWxD0IIuyOwz/1L1dhkzs7UBLknMSUFpWsqJiTqw=;
 b=Kbx6Pv20zwIKbLvVvzanZyPPAMGOwFSiOUEuJwmIiIGEY1xPeDlqFMFfMFg4cf91690Z9q
 bkx44L/lsQ+wznNumkSScXaEfJQWbPXgnCdzk/AHM09TIssxpqW1tgdzM/pt0JgI8gvbN6
 GQm/JRw9ST/jJXBSvMxQUrr1aDrqBzE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_093351_295597_5360E719 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:8001:184d:5400:2ff:fe7b:e8bd listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b8e9ef79cab9..038a2180d34b 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1102,6 +1102,8 @@ patternProperties:
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
