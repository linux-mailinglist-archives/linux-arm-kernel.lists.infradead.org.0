Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD5A10FD0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:03:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fy3POnKQWR0j37frXUBeSFRSss+PnUdatECggnNO2/4=; b=K5Zl+XPVygTH+R
	q7cwqK3l78DlznYgOln7wcpOQA6/bt6BHAJpkdlx8Mr1o4HDqA5w9rDLfD2OHcN9LuUc3MLzMA0Ha
	8tDCeo6a53PH7fGAsRr47YB/5u4gzz9J/ax4lz2nfy0sieQk8cL3wIGUXXhtRcUQRe2QOOb4/EYAc
	FNA34KtYEJDB/BdYApRy99Elo7h8XDFsZXWG1Xgea8V3NaX607wPMM9624LCyNEPWLCZYasg2FsT4
	mz7Wkw3gI92x2uEcjn4Wsm4g6V1YOHmH3TugGuCXIjOFMuB1zpbw0eWLtPRtCdlzOQKlurUiV5O85
	F2YDFrvxwrjIuQr0kw2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6u2-000130-U0; Tue, 03 Dec 2019 12:03:38 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6tH-0000Yh-R6
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:02:53 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 426612238E;
 Tue,  3 Dec 2019 07:02:51 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:02:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=dBjUWt2kgJuEQ
 ixLajR6K5ymul+LldyLVlWi+jU9gCE=; b=Gu15yB4Sy7GB58K1q3i0PMJWpnqoX
 Xi51bwbSGnkCkl1ygTCcBzhO/obbzcJ40UZbYyU2PF3tdSRwUA/5wqIUXR0VJXTV
 FQOhSDtJ6h8Tk2F70XNHChTe1oto3vasDK1CqtaIyu0nbbNosTWgmfd7edRpnpZ7
 jV4gcyIm+Seq1MQs8ArlCh7s6kHWbDnAysG5BBILTOVri7I1HvEAxccYqkP4aBEO
 nN5QHVBeUvBJDkct9zysisxpwSSQnSVCpxzq8mfqtfNWSBG4ZgFxk0NmPverMaKp
 GwLg4F+BOWaBe9llDmDRi+ZmUrFOLWxpWiViL/7YUs3jo69bn9NdC1bkg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=dBjUWt2kgJuEQixLajR6K5ymul+LldyLVlWi+jU9gCE=; b=JiOOrFvL
 ib0zt0MfG8kUMKe8CRjg0Y3zOhJWup6vzRlGlfsShrf16lvyxm6ynVyt3YKVFDqs
 D6Ke8IwOc8bGLe3hsEugGJuV0NR2vpg868djMauzH1E5rtM2rguwD0BJGHUIIsjW
 5+HmBRSBX0R9OQzbVtQCIsTK7lJRCF4YdX2/UhKIvUyQh0XOo9w0X7mcJsbf5KuR
 JUooZoXjSWieax3cYsOb2A0EGtriZPiEB2HqO5TDH53RaLgrTSty8wx+k4DGvHHS
 regUm3qltUY9u1o3ZQzJ4snQhxwqLSRqQslUbL9AYjIIhv+aNYAolTZIdXn0nGRJ
 3i2a2jSMUKgxLw==
X-ME-Sender: <xms:607mXRj3jPDC45uNbtSTaYhh4VYwwcKUzVtby0NyZvACzqvFU0ds3Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfkphepudduke
 drvdduuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:607mXaRhH3rIYT__z_RYfofT-puBbiEWW5Gv151FJfncRwHUSkagMA>
 <xmx:607mXUrelm7Fff-hX0olrUnEKuvB0sliP6RFh7JcVPE74RMvNmI71w>
 <xmx:607mXVYyVxIm1WIDU655V6HgP2t1JrUtI053gvP5AdM9e0YX_xs0zw>
 <xmx:607mXaAOcyKA6KazU9jplqMkGy7aV4YB8KeI6NxrjEJL-TT5IE-rVw>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9A811306010D;
 Tue,  3 Dec 2019 07:02:47 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 02/14] dt-bindings: misc: Document reg for aspeed,
 p2a-ctrl nodes
Date: Tue,  3 Dec 2019 22:34:03 +1030
Message-Id: <17ccbf7c6f9f7b81543eabee06d81e137c8759c6.1575369656.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040252_016247_833926F5 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Patrick Venture <venture@google.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The P2A controller node sits under a syscon device, and can assume
offsets from the base of the syscon based on the compatible. However,
for devicetree correctness allow a reg property to be specified, which
an associated driver may choose to use to discover associated resources.

Cc: Patrick Venture <venture@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt b/Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt
index 0e1fa5bc6a30..f2e2e28b317c 100644
--- a/Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt
+++ b/Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt
@@ -18,6 +18,7 @@ Required properties:
 Optional properties:
 ===================
 
+- reg: A hint for the memory regions associated with the P2A controller
 - memory-region: A phandle to a reserved_memory region to be used for the PCI
 		to AHB mapping
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
