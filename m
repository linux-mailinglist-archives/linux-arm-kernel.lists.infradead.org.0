Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A41EE70C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:13:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wzBjOrm5kwX2L1Rk0T9/5h+jVtIfdjOaqmQhQZJIfFQ=; b=tc8H/8whNUWNkkqgBde1hlxKhg
	F+imcc6niKTAMp0pHsKXuz37Fmjme0/wOPU+VzsnMo8A20mk+Ma1pg40wYAOgwIaEceCuvmW/2SYC
	ggh0mCykuVgnsTkLipOGIb/my5CY9g1li7BX7fLVeeqixm3ZBwhyvCF5hYRk+G/bnjJktl8WtUvuu
	s+nbSMZnbHvDvrIVHDYi1H9ij8vqCUv8tg94rDouVKVyo6I/Lryb3JsIC3GaQ97V4QIyZfdGVI9GM
	5Br20hSEVZoH0m1OYaGaG5OLGL/HhdB86UpyFqN2C5A9gbROYgayXCzBfaukSw6MSEsoJ9cO1D8T+
	tQEW8OoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgrH-0007Uh-4h; Mon, 04 Nov 2019 18:13:43 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgqW-0006xf-74
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:12:58 +0000
Received: by mail-pf1-x443.google.com with SMTP id c13so12839084pfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ciXUSjrJzeNJ7x1YqUH63bTMmxfwRBsuiu2kMzOf67g=;
 b=H3BBaQmVJVl+8T39kKh3UPdS/XpJ9Q2VTPAOpfckdFx1bb9wba7xd/QD+BgQM/9Ah6
 9cC/e1iwKmsTGx3zd6x5oC19ft2PPIQuqXTJ93j/EISnxE+eT1tGGclEZ+uL3BzD06++
 +K7DYbObU4N+OJQyaBWGMMEg8oWlgwmtmXnNZgeFfFLDTeVnv3I73ibQd3LGkL6CCadO
 bN2+DYrqCKMeKZK2ugj04lS6vydLyGVv/RMfpSOlVeUE1TCSJH03TdKrVOob2mLH19By
 Zdlw/wbFj2imiInrA3rrueUMzjeMJvRLmBIRf9t8BeFnmiDUgpC0X1jZWnPCCGR8b8b1
 mT4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ciXUSjrJzeNJ7x1YqUH63bTMmxfwRBsuiu2kMzOf67g=;
 b=cHJeSc7Yk+XE5RoCWgWnEfAbd4F4uiLVVYnVUxyJsDUr5oTxfLidMHL224Ixdnj98X
 jVztX/7YUOmFBIBqGHlUqpzqz9/HcPLziqta36jokmujj5nsiHwBiqcXoMwPPndQZPuz
 RmL+iwBm6nNPHECOPT4I1hOqKjOtdQ6tOD1bQadSDkKWXGfF78xucitVGz0ki8N9H5iS
 adLRT9SA0dI4KozCFjJGcAfldsULS2zr+cF2/fxtw4V/uiuN5cFBQUh+W8HX5e28jkrk
 CAjhHQmXtJRrg/XUFrNurSoYRdqhi1KIJDv0cFhyYA7Vaq6Eu/mdiPE7C91iwnaFdbBp
 pcQQ==
X-Gm-Message-State: APjAAAWXERCO9mvUurpcXHFxXSEmqBlraiQGwx5v0gnSvUiATnvASdpT
 g5dbEg6sfs0HKpkq2Z2rKrnFFA==
X-Google-Smtp-Source: APXvYqyXGAX5moLNSKJJD6DBF7blkFyg5DP0ebMZ+PMsworRWcHt3ua8GOXx6Ev02S/YNcXwsgJRNw==
X-Received: by 2002:a63:3e0b:: with SMTP id l11mr28009360pga.448.1572891175644; 
 Mon, 04 Nov 2019 10:12:55 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o12sm16149520pgl.86.2019.11.04.10.12.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 10:12:54 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 02/14] dt-bindings: arm: coresight: Add support for
 coresight-loses-context-with-cpu
Date: Mon,  4 Nov 2019 11:12:39 -0700
Message-Id: <20191104181251.26732-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104181251.26732-1-mathieu.poirier@linaro.org>
References: <20191104181251.26732-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101256_253526_661F7609 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Murray <andrew.murray@arm.com>

Some coresight components, because of choices made during hardware
integration, require their state to be saved and restored across CPU low
power states.

The software has no reliable method of detecting when save/restore is
required thus let's add a binding to inform the kernel.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 Documentation/devicetree/bindings/arm/coresight.txt | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
index fcc3bacfd8bc..d02c42d21f2f 100644
--- a/Documentation/devicetree/bindings/arm/coresight.txt
+++ b/Documentation/devicetree/bindings/arm/coresight.txt
@@ -87,6 +87,15 @@ its hardware characteristcs.
 
 	* port or ports: see "Graph bindings for Coresight" below.
 
+* Optional properties for all components:
+
+	* arm,coresight-loses-context-with-cpu : boolean. Indicates that the
+	  hardware will lose register context on CPU power down (e.g. CPUIdle).
+	  An example of where this may be needed are systems which contain a
+	  coresight component and CPU in the same power domain. When the CPU
+	  powers down the coresight component also powers down and loses its
+	  context. This property is currently only used for the ETM 4.x driver.
+
 * Optional properties for ETM/PTMs:
 
 	* arm,cp14: must be present if the system accesses ETM/PTM management
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
