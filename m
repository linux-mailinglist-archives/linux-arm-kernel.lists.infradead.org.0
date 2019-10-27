Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B43AE630D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 15:27:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D43vY24Lg52w7Of7cTpZ6VJ1sDLNncKoyH4qWsZca8s=; b=gPNqbDd/m0bbOt
	UjzJmwlYFpJ7UsuRKPpYV7dhJg21de30HnK0KH+KYFSsE9Od0Q/jowfGseNHPbOlXUT2OGKVkj97f
	A0LahH5roCTjoebWKkV95MyEQSDZMBBs6t1TxZF60cCJMRgMgHdYKCmnr4VUjPY+UJCLsy+Hd4Hsq
	WGXSdFuRVWejMkAZfxPLUDwkqvdPPvzUqm9CSZnY5OjoAie2yZZocAcCum2wZhDtsRmE9AH7mAAEP
	pcO8zh03HnVre7LBy0quhosZsYvhxScI+waGGTEGIVQvVecP4MDT85hkM4ZkHZJE2DdACrFflvoyz
	ZodHnHhg9BHcF81lQ8AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOjVy-0003ag-Dg; Sun, 27 Oct 2019 14:27:30 +0000
Received: from mout.perfora.net ([74.208.4.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOjVX-0003R0-Ph
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 14:27:05 +0000
Received: from marcel-nb-toradex-int.toradex.int ([31.10.206.124]) by
 mrelay.perfora.net (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id
 0LfRRn-1he65P42eX-00p7fq; Sun, 27 Oct 2019 15:26:23 +0100
From: Marcel Ziswiler <marcel@ziswiler.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 1/3] dt-bindings: add vendor prefix for logic technologies
 limited
Date: Sun, 27 Oct 2019 15:26:07 +0100
Message-Id: <20191027142609.12754-1-marcel@ziswiler.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:heAvjHkMaQ14q2AF3Kh8VU+foLLPfuqVtVUsSN0DU7wAn6jdBCi
 kzN+cvsQP/1Rbh0r2hYunbuT+PtH2UVZEftITahIy90Eg+EKW3nTG6TomsUh8gzC4q6RpOu
 vVtT73rG6lWNmoPllJCa7CfYSLSMNl/EbqwdBGq5qCAV2EqsyvoC9ruOl9kgWr7xWW21APM
 sWpnZESnqXeNCDCqF7iHQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TJ6us2BmZo8=:QSjvIflxkNhYzy1fkhJabB
 ysxxNlXhSHyEIT3m9fLCDPzoBXhLGx1MMSulX7MIJrfkEfRmT/sy6ULWRpbLBC6j8gurXqE+c
 7rgnbzpYIGVA/AlhQEOl8ajUyBAhpOD2cz4ADpgCIXB8JOnBSWLr4rkOCaeG0oZtHxpXIDygV
 0MLcGDz7cis9KkmZPRPjVutsS4cppRiCYcz3hntgfUg9dTTEI0LTC3M77HTLlY6Iraf3Q0Vfu
 A63UT+in6O2RMFnKY8PrXj2PdJJjD5lPqRaHZcwmx2yO13rJ5D9aI1ad5BE4uIGrBwYTKVp54
 aRuE5B6hyFX/tBShOdiQbkxmhID/c/Gw6CDqAzrtgJFNJb3q3QxCxDk0+yll+AE2xAySr4RL0
 1x1cAvjA7WUF0XhAonELOTtBUK9oyY2+b/4k9aP3ROPRHI5/y33ihs/GNde7eYemjwTw91GYq
 1Zo1yf/u+8iqax89uXu50ZbWuuCcAowOkTryFDx8YznGvp4I0h0Wjsipw7XI+xRy76gzJWFe6
 eKERL/VrpOxkAJFSfQSH/0n28SL+dJNv2gswbAtf/60Bk4cpfSDTX4qr1zvnzm68Ob/HhQ3w3
 lWGbM9H2axUA6HRfrT8idPnYokUncUF+pX+xJmS+NtzDKwoauQjviUwTJi/yGfPI3PQGsEyv9
 FiWzlNzHvWStSix/mbP6YvcyPqbtRkUEQKnJUL3lyAdaiyQbZy8ZA1eub1kAZhrbovAwwhtuW
 92aVLUtZIEJI/1pNvc0ofvsXWGb+GpDULJefel2MQ0xexTJIJnroF27dReDNxZPxsxo2u3tYO
 rmcNn/iq4PwJMMqZBLZKNFNFjrOLSHz3OkxWw3+W7Zoqvo6+HkvYxqHy9TcBU0q5aDEulNGIc
 smJMrl22Lxz2TDJvknTx6kTnC4ozRkc6ZF+9PX24E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_072703_902638_C2CE0336 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.208.4.194 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, j.bauer@endrich.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>, info@logictechno.com,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Add vendor prefix for Logic Technologies Limited [1] which is a Chinese
display manufacturer e.g. distributed by German Endrich Bauelemente
Vertriebs GmbH [2].

[1] https://logictechno.com/contact-us/
[2] https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Reviewed-by: Philippe Schenker <philippe.schenker@toradex.com>
Acked-by: Rob Herring <robh@kernel.org>

---

Changes in v2:
- Added Philippe's reviewed-by.
- Added Rob's acked-by.

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9a8495e39c5b..94aea715d4e2 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -543,6 +543,8 @@ patternProperties:
     description: Linear Technology Corporation
   "^logicpd,.*":
     description: Logic PD, Inc.
+  "^logictechno,.*":
+    description: Logic Technologies Limited
   "^longcheer,.*":
     description: Longcheer Technology (Shanghai) Co., Ltd.
   "^lsi,.*":
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
