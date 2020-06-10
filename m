Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01181F5C2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 21:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Ca+uPdkqY00MmB2lidTMJIwwLMIIYSWWz6k2x2m6Ko=; b=DyQIQZIAMjtLe2
	f63XoRbNoHm5dt2nTOmKlISKsCrA5+5ydHothXdY+oOgCNNlOivAKSsepxG55hpAe7nju60VsOztI
	uk1hBr7PSldw4HA5qNXfaS5/j0SPJ+nkdHKwWl5XGM1nwdJkZt29LQCOM207a+sov7s7vAf9U5DAV
	triBkqZL5mUGI+Mm6Iw4GMtwHPrrX6t84n1beaqvTGzvy/RllssI80zq3Amy/zqhJpfwJAlT6k6CR
	0ycviBfPoZS8EDzz2dVYk9NI1GohPDW7yHkJOWDJ3VOGjatC7aZ7PYNcH++1dosbOpqLoD0vG0ScN
	naSfqcb9eL1j845ddAtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj6gF-0004Vw-9H; Wed, 10 Jun 2020 19:46:35 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj6g7-0004VZ-L7
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 19:46:28 +0000
Received: by mail-io1-f66.google.com with SMTP id p20so3648591iop.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 12:46:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9mGfZeBBTKc+FrE4dVawruNqiY96bl764hS1tXehIIE=;
 b=GdIlUvMXgw+fk0DXlhVl6EucFJaHI0PRJWYtZ3kKo53tBSdwVrLSI+BqmWcR+byzph
 IzBcTCRHk6294SCuHYyp3jJzp/2zYy/lqJoEQm56Qk2PbxfmSK2zHXW7QdDRC5ugxLyc
 JNwQL5J1OG1i4PJfi2X+7z6tKviVjDb+weOswB6sY0Lc7SmsS6FWIhhpfu2V3KVOmnoA
 7UJ+d02FNJyOBreU0qEsLHByCvotEtlx9IoRHEfK++52Z0QF2HauvtF+xpuhcwR+PkWt
 SFuDXo/4iIVI4G6Nu55WZhf8c9Uv6xwMGWw4bcMmRJ4qE4JsST6Ivd4a6lzsWAOI9wIy
 Ut2Q==
X-Gm-Message-State: AOAM532x4jzIsONL7c9GmdyLZokKOdGPJTu2S9HaWp+U0qYtFcvTCCKk
 RcMR5FWrNnNrW8V+NQNtVQ==
X-Google-Smtp-Source: ABdhPJyTfZ7stvJ1zJp4PDYd4mXFlNbonBQ7OxS6Ub6k8MoKgsezkrMt64D7x1mMgr57NVmsKtVrYA==
X-Received: by 2002:a02:2c6:: with SMTP id 189mr4797468jau.115.1591818386360; 
 Wed, 10 Jun 2020 12:46:26 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.251])
 by smtp.googlemail.com with ESMTPSA id a6sm385535ilh.60.2020.06.10.12.46.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 12:46:25 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: Ensure 'syscon' has a more specific
 compatible
Date: Wed, 10 Jun 2020 13:46:25 -0600
Message-Id: <20200610194625.3597460-1-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_124627_688562_787D91C3 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using 'syscon' alone should be avoided as compatible strings should be
specific enough to identify the exact set of registers contained. Update
the schema to ensure at least 2 compatible strings are present.

Cc: Lee Jones <lee.jones@linaro.org>
Cc: Maxime Ripard <maxime@cerno.tech>
Signed-off-by: Rob Herring <robh@kernel.org>
---
FYI, there's 43 cases of this on arm32 in my testing.

 Documentation/devicetree/bindings/mfd/syscon.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 19bdaf781853..af7a68051392 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -43,7 +43,8 @@ properties:
 
       - contains:
           const: syscon
-        additionalItems: true
+        minItems: 2
+        maxItems: 4  # Should be enough
 
   reg:
     maxItems: 1
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
