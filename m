Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 455958CBB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AKz/+0WuEdLBSzN1lw0lpAbjoYgv8DBknVQzIvCcF80=; b=lZyCCjSgDC3S9L
	T8nHQmk3mUhsW1czMEzNSJdYNJ/iX01fLup6fmPwj81UJm18Pk/mNTOlpiOzjlx/hJiJ73VRHn3uT
	R3y2dKkInITdVc/qk3wcNpc6R7AB4DUCRJGk3/CNhOzVkBGFhLt3tSK876OtkNI4Fxzj3VBYn02FS
	hEe2KaiNQ5KR52XDUmtGA0NHOBIeZAGJO7qHo9U4wZMLoV8L4Uk2wBqhLUH0oy07E1NNgW44qFn+X
	zUpg9UOWekY+Uf+MbRFj+FAE1GvFiyOtRgPCLRBuqx3yZ+pYflPwucAdIgXS419+qVqH97qwn/P03
	ktPEFEjHMrkq8ge4Me8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmX0-0004C8-Mw; Wed, 14 Aug 2019 06:13:10 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmTD-0008KU-9Y
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:09:16 +0000
Received: by mail-lf1-x143.google.com with SMTP id j17so24448689lfp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 23:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8xlhGnlcLyXPojY0bRPSDLMcy+hJZFPi39TOyTS/wBU=;
 b=LDjG+Z8mIhS5zgHxWzmnF037zhntmBJl5zKjHirJ7skqEwESZ/9TPssPMun9VHd2gJ
 paoyDg16Hp50SSAZN7dwo2ODWuSrTe3rFjXzjteC4kXfai6KEhoTk5mEPSbXAOmNftnk
 mXGruXqtXay0ByyQKbpWP+ihz0ogwxrIp6ZmEKdCPOwSl0tYSW0pcFhNKIQ8vlbnPl3T
 5W8QHXnGS/Q9C/oSNSp9ON/H+4+u67fPjkyRotDsZDaGrizdtLuzOBuxd2VnHjgEjYrr
 Ovzwa8TmuLte801MqTa06cGHKe8YtzbV1XAPsjES+LYOL3nA7flEEaNGdXfEFp/gY6ws
 Yk3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8xlhGnlcLyXPojY0bRPSDLMcy+hJZFPi39TOyTS/wBU=;
 b=E6sr/qMuC1784lL2O8uCM9tATJzzh0WArG7F69dWZdBsE820LdgRzi+/PqdNXWL2HP
 ftrR/SW0tNfaKzd9m1WpAuDcgC0ftLpcovR05K5xB6HT/USOpYbZVm7H8d2UsgoEfi8h
 ziwIn1xvpheldvAllEm2tp65zssrkI44jG9wa/Uge+K503iSQ+gH5UQMnazVQcj64/YV
 0pGzCkJ+Sb0hZ+WDYPWn4soDQEexW1hOiMKyc4+yCBAtVVxiPLqxbW23VREtLV+iM/B1
 ZiYcxNCCjvN8fe8EcKsUWsKW2tTroWr20UjYq3qtv8bIgvhuhKDi4HFo4i7e2PM6dq5A
 7FpA==
X-Gm-Message-State: APjAAAU/CrDzgyJjnLKZ4YDj+M9335SMMXSkC9U5ITIvrjEEo8SMkwML
 jxn3rJuecIziLgRPN+3kmzY=
X-Google-Smtp-Source: APXvYqyZgq101jMRdi4NBQz/E+rmMXrIu0bWV/oCYTnoMBDnWs6w3jX6We+jj/pMt68nDXYjRzfYqw==
X-Received: by 2002:ac2:48bc:: with SMTP id u28mr26657795lfg.126.1565762954043; 
 Tue, 13 Aug 2019 23:09:14 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id s10sm3124235ljm.35.2019.08.13.23.09.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 23:09:13 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 10/15] dt-bindings: ASoC: sun4i-i2s: Add H6 compatible
Date: Wed, 14 Aug 2019 08:08:49 +0200
Message-Id: <20190814060854.26345-11-codekipper@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814060854.26345-1-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_230915_435205_1900B124 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, be17068@iperbole.bo.it,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jernej Skrabec <jernej.skrabec@siol.net>

H6 I2S is very similar to H3, except that it supports up to 16 channels
and thus few registers have fields on different position.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
index eb3992138eec..6928d0a1dcc8 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
@@ -24,6 +24,7 @@ properties:
       - items:
           - const: allwinner,sun50i-a64-i2s
           - const: allwinner,sun8i-h3-i2s
+      - const: allwinner,sun50i-h6-i2s
 
   reg:
     maxItems: 1
@@ -59,6 +60,7 @@ allOf:
               - allwinner,sun8i-a83t-i2s
               - allwinner,sun8i-h3-i2s
               - allwinner,sun50i-a64-codec-i2s
+              - allwinner,sun50i-h6-i2s
 
     then:
       required:
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
