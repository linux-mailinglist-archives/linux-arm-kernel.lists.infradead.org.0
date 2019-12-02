Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D42B10EE19
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 18:22:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xv4Bwt2n0GOZAqY+YUNirGa4gAQpOPs4tVXnD20Am2k=; b=miM
	h47xxT85wivyhH9WfipQ/WWisi28gUnz9DeP+sd8o4xBiJzGvJVhAasVqCucWbomDnee28qxuR4i8
	VhvH2vVuNxrN7OwnjBJ9k3CAmSVEejobN1sJwD+0W1UKl0qdjZm/KwUaApzb9T7qydfFOZGkiH6/w
	cAt/HRZwAbZI5zwT/EZexpE7GMhdVEccp0R6BiMg6BW+P11t4TDbK1TdqAhNO27Oqf1ExnBanV+G/
	hup1P2RGeHDrDUrXOA8QOBVyL71PxZbO8Wap35ibjWvho6DDdyri1aUwa2CnPAXVlCTwLwd5uyvdq
	o9loNPNVnkHy1KKMVIX/efortJwxTTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibpOu-0000Uk-29; Mon, 02 Dec 2019 17:22:20 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibpOm-0000U4-Uw
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 17:22:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id B6C324E200E;
 Mon,  2 Dec 2019 17:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1575307330; bh=Tay7PkRhxC2/HjsR27QnZoDpIHZRaRRBRVcxi/0JbN0=;
 h=From:To:Cc:Subject:Date;
 b=kF36udmj79PxzlmPMUv7izKr4qbE/7DwPB17XqS2jgooFuBBFM69CWI8ydDdYleWt
 +knkMlQsBVrcSjYiHBglkllwofuDV+mL7OfyL9woBAIKtMe538ZXdFjVsx/s3KfGcB
 EclPrSIiz5KJG9cJV4JAG9FSfrQkffOC8IFFRIIs=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IzGH-TaFCzUL; Mon,  2 Dec 2019 17:22:10 +0000 (UTC)
Received: from thinkpad-tablet.cg.shawcable.net
 (S0106905851b613e9.cg.shawcable.net [70.77.244.40])
 by node.akkea.ca (Postfix) with ESMTPSA id 7E7054E2003;
 Mon,  2 Dec 2019 17:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1575307330; bh=Tay7PkRhxC2/HjsR27QnZoDpIHZRaRRBRVcxi/0JbN0=;
 h=From:To:Cc:Subject:Date;
 b=kF36udmj79PxzlmPMUv7izKr4qbE/7DwPB17XqS2jgooFuBBFM69CWI8ydDdYleWt
 +knkMlQsBVrcSjYiHBglkllwofuDV+mL7OfyL9woBAIKtMe538ZXdFjVsx/s3KfGcB
 EclPrSIiz5KJG9cJV4JAG9FSfrQkffOC8IFFRIIs=
From: "Angus Ainslie (Purism)" <angus@akkea.ca>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: vendor-prefixes: Add a broadmobi entry
Date: Mon,  2 Dec 2019 10:22:03 -0700
Message-Id: <20191202172203.11917-1-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_092213_039545_4C5351E2 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Heiko Stuebner <heiko@sntech.de>, "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Guo Ren <guoren@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add Shanghai Broadmobi Communication Technology Co.,Ltd. for their modem
dts entries.

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6046f4555852..fa657235dbda 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -149,6 +149,8 @@ patternProperties:
     description: Bosch Sensortec GmbH
   "^boundary,.*":
     description: Boundary Devices Inc.
+  "^broadmobi,.*":
+    description: Shanghai Broadmobi Communication Technology Co.,Ltd.
   "^brcm,.*":
     description: Broadcom Corporation
   "^buffalo,.*":
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
