Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51701888A8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V/94v4YPBmTW5ESZwdwLGiqdZ1rleLb5vSLyXu7Vzlk=; b=eJGWiEZxbBVRgDOUX0tBQTPqZr
	XHePKT2z6uRQBPb1TD7NXvn2TrG1HDTUHfVEkkm1S1/ULAGNvqr3tRfaMzsoHCet7Hojfx75aHWbj
	M5QAzWtH4KtVo0AcyRJBwIkRzyTRs6uBEF2+jHjxid9ZfVJORDHxH2LltMxRi+15sHfrzPmGBVudY
	Doo5LbZ6TBqDtuIw3l2eG+uPRPkdZq/sPdw5jyGj6Ff752AdbGVXjDI5CR875pbYlTHQTelG0pp6F
	xluatCAp7Vs/eLMKSnsUVtRHHmuuL8k7YWE9NUYswyrp5KAuZGCAaYoKzxk5tYkQd2bHzqhKsJbCp
	bzFuvJ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwK01-00050V-0P; Sat, 10 Aug 2019 05:33:05 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJx5-0001fw-QP
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:30:06 +0000
Received: by mail-pf1-x444.google.com with SMTP id f17so43126252pfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mDKOJXA/ys1npDjXBTQ2s0rGwBbMEHrF7ffvpNaphqY=;
 b=rsarVL0KdYe7Il/Tpaw1MIVKtFiR0Y2kuIrFSMBz5fojZCq1sgccTdo1ozHTVdD8y1
 mfMc9r955mHTdwEeKcbiyCugDa6k7IC3GoTyvxUqkEeEl+h0unaFWnC+QjvpLgxHtXX0
 99C42B+QCDpqqwwQcgn1jBc3UlwLB/KAqVTJS4THZPjKa2fQPzGa/yhfjwxb9LngoAkc
 4JGi4JCJ1jdb2+2+oCMlrs1LOc66trOuznPVR4bE0EoM9TGXilRjQ0yG1KcSR1qBrG8B
 ra+er8sAtFIPxl6HNIoKJq42HGwRe6rFx8silSqCqs+OoiOZA7TixdSAPDum+RgMN1Uo
 EcEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mDKOJXA/ys1npDjXBTQ2s0rGwBbMEHrF7ffvpNaphqY=;
 b=jISbPj3c9dloWd5w+/U1anCxGkDeOlaVYU2NlQzeNYylOq27Z3olV2K0cANnd4qTo9
 P46H43W9bt30rmNg6D69GIj7lIdpnY9QIx0reaUiG7NkO3Wr95Z4sBDHCjWPh1gqTBu3
 PQ0s5H55aHN8xWhyftOXyifS+XyWUWsjCr/9nO7IGYE8z3C2IBMwC4RczAPqzGxLLTJB
 l2++JCj5FMdp1G89w10oElVZYD79dHA8W5StJR5lzNDpmH5EAD/VRALuRVWLXZBc7Dzj
 ovaMw+IlRK7JrmexokjlMUnZeRvyHfgg9MZcU1fB3eXApkgV1AgXKbQP9TNtQbh9cnrv
 KtgQ==
X-Gm-Message-State: APjAAAVdrVRbfCLUAsmYbGes0mrR3a8tCHN4h0mMuOiBBj5HRb5NGP9a
 geoSIuPdQFHgSHCdleZ5V6U=
X-Google-Smtp-Source: APXvYqwAkVuLdow5oO8itFrdem+xM/Zhwse/76vid6q2uk8MGOkz2hXbK0XNT0eZiUWzl0KdwWjjtw==
X-Received: by 2002:a63:7b18:: with SMTP id w24mr20690940pgc.328.1565415002991; 
 Fri, 09 Aug 2019 22:30:02 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id n128sm55019042pfn.46.2019.08.09.22.30.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:30:02 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 12/18] dt-bindings: thermal: add binding document for a64
 thermal controller
Date: Sat, 10 Aug 2019 05:28:23 +0000
Message-Id: <20190810052829.6032-13-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_223004_104670_6D9D8FAF 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds binding document for allwinner a64 thermal controller.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
index 6624cf6b1ce8..f935b4fab8ec 100644
--- a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - allwinner,sun8i-h3-ths
+      - allwinner,sun50i-a64-ths
       - allwinner,sun50i-h6-ths
 
   reg:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
