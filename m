Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE69ABA48
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HzU6jVH9eh37d1HE3aX/hfTngbSGNpBXVVRTN10HhJo=; b=qjbtXXOm+FG/iIky7ZtaQED5wa
	tE+jbTwlqH3BTq56MT23rkkBQXFs3OPPmRpnZscQ5/qwHfUj9SIjWLmIrOvObTqkm7e2V3auEldRG
	ZrqmyGWCFzGjOBNjxbagZO+nN+zdHVYyVOHT2E2qf1xiXUnPsBexChvlla3LQbAVuD1nwcaoxONWe
	Ia9DZoflRJobqSRgXXxh8q2N/VTBjj4xtg33jkrw+B+2i7+oSZzUhUqqWEtCLm0RSosqvpr0ual3J
	S8AKUPAEcIOs8DG/c2o56rzwKGGk8aBkT6EDHWqAdwleI1oYJzG9ZSNRFMO7ACj+MDyxbrmOh0vg2
	6LOBomVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Esr-0004RF-Bb; Fri, 06 Sep 2019 14:06:41 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Es6-0004Pd-7S; Fri, 06 Sep 2019 14:05:56 +0000
Received: by mail-wr1-x42a.google.com with SMTP id y19so6751524wrd.3;
 Fri, 06 Sep 2019 07:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xDojPBQ0esilIp1GUWD6dVVMPDHyVZuOXZ5O6hXNfas=;
 b=JAO4l+aNXT+ppe4+G6QuuzDNKHoS0B8hYBszu4W2QrYj1ILHp/3I2LcXFmDlAE3p3Z
 WBYU1UvWb9k5N84Ij0wI5Ff9xbHVse9QnQIsK1Fpttz0ri5xjxqzgR8udpRWb0xLQvCc
 4l/X/Hyd0D/XRuHp/tLfols29gVe7i/c/0Cvk+GjJWTll5q4H/ITrDHVTr6EDWHuY6Jv
 mXOcXlIpVP+CfsoLCG09Q5HsKreeAxAEA2lVNVtUheEizmPtscmpHJcRKOxdEIKZCpbq
 JR96v+f8LIAY2uJ9O8OSEwlJEpPYCd3/7sxvhaJ56JAreGmxIdf53uBVM6KcuLFML6n+
 j8wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xDojPBQ0esilIp1GUWD6dVVMPDHyVZuOXZ5O6hXNfas=;
 b=NUD3cnQUYEIeSeNNkNqL7NY98wmgz0aNa4Zr36yrnrCddiuzPuirnmz+MRC7EemSy9
 9RybYxqr+CWwmuGXy/u9rbOSco3CikiF+9NKVE02GLwd/5puf7HhAhCr2fk2aIpyIfQw
 BZ3tCLFo8vvTiofgi2WdfT2k9e8YpgwgKffzqFpfiINSofziyN/y7yrk0IV4g0Iqilji
 gHHNE7gRmQiQQzP8oN3exQiRpHT9uQTwjtFshX9N/TieCz9hb8optb6ediRfVuPCT9QX
 Da3Fj4EER7GqVQwsuKuiKppgqBrEhUMM7GPCTeXDPl//vlhsoNUcaLlSLE0pNoir02OV
 pkUQ==
X-Gm-Message-State: APjAAAW5yaI2CI4XkC92dWNGFEp+24PX0pGYX//AC0g3WKV3V123MvCA
 bBT6X07lARtmWbg3FCA16ks=
X-Google-Smtp-Source: APXvYqzYGaP/LIMML4wqp7oPFlAnOx7BAgRaP8hZH19dGjuCe6tr4IqS+370vWyzDV35l50+uStCMQ==
X-Received: by 2002:adf:9083:: with SMTP id i3mr7775711wri.310.1567778752389; 
 Fri, 06 Sep 2019 07:05:52 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id e20sm7480542wrc.34.2019.09.06.07.05.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 06 Sep 2019 07:05:51 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: Add vendor prefix for Ugoos
Date: Fri,  6 Sep 2019 18:04:57 +0400
Message-Id: <1567778699-59231-2-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567778699-59231-1-git-send-email-christianshewitt@gmail.com>
References: <1567778699-59231-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_070554_269753_44112680 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ugoos Industrial Co., Ltd. are a manufacturer of ARM based TV Boxes/Dongles,
Digital Signage and Advertisement Solutions [0].

[0] (https://ugoos.com)

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6992bbb..d962be9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -965,6 +965,8 @@ patternProperties:
     description: Ubiquiti Networks
   "^udoo,.*":
     description: Udoo
+  "^ugoos,.*":
+    description: Ugoos Industrial Co., Ltd.
   "^uniwest,.*":
     description: United Western Technologies Corp (UniWest)
   "^upisemi,.*":
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
