Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D3A15D75B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 13:25:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDzQoxMQ2jMd4jrYfiLFVNySlhkluhVHpBj/cdL4Xx0=; b=cAfOQrnGmEnx2E
	XB1T4VogUjWiXrjOEAYQtfUcEOO/rPIp7TcQ4CYKN8lL9pMyP7TTJWsXLYCZ1QX78JZIFPIHbeC8g
	W0GZkBHZm6cnKGwAkmIOzNiDHSpb7/0remLRi82qjGr12I9vC62CLBna12YbGjqoHYuTszZtSAY17
	JfKJGMf0O7KjKckujyECM7JdpmteM+IgbAHn0WOf2XC8badCHGWuwjLpu9LF/Vo2DA3m8XQI/6qhG
	ph1LWQDIenmFyXBlvTIWRan99Pe5X7EdnkfD3eGs5XHdOHb5mNFNDJszzFPlwqHIScZsZgTCz4yqa
	NWjRrXiurajec1lEuEgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2a2O-0004X4-Qa; Fri, 14 Feb 2020 12:25:40 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2a1X-0002rZ-U6
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 12:24:49 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5411F3AF4;
 Fri, 14 Feb 2020 07:24:47 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 07:24:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=rwNWZVmBtWdIw
 bVzvsN+k7pWGqA8/J3u/JzQZKfK/0g=; b=Dk5KDX75Rdys5uWQNp1Z7IZv73T1L
 NXyS/ORyZKSr0hJ5cmcH2Gdm+qzA3x0PIroSHAaq/rb9V+g2EjDLP/3UPYr1Q0/M
 1uxoaHODNBKQyVVPh2beBYgtoPYvWfBZTSJKttff6UDUn4rSNQRHQmiY7Z7r6yCl
 MNtiG/QcwhaA7BBze3F1Nr0QGAVYIcSSQzw8b2qe/HGuhxWRAz0mV5TmSECFLpdT
 p00I/ZYYaHTsfjUL9u2GwrqYC56S9IJwYm9E/Prevf1k1fEkBjzIqMgqjnqPaVu8
 0Jbyx13l+G9Jsx8yERKKrASwqu1tbl4chm4FeOaK6MIj7PFBdee5XAMZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=rwNWZVmBtWdIwbVzvsN+k7pWGqA8/J3u/JzQZKfK/0g=; b=VR/gyYZN
 MYWlElM8PX+S9WhqzOFDtu+IgOWAnXf2ZajoqneO/wGvw72vIbGRGD1T9RcTSGge
 NjdzGM5bIZfnrDjePBk2bF5kjAvn8aJvphbnnV3gIKO3WtdYTinnRzuPDTO5Sp/D
 fejmX0YsyIL6B+A/+Z4N9X5s6k8sbAKwS0TWgZIGkwtbJGEmFEPNAg5rOLCu6iRu
 0vTHDegH9GMxdnRGMi1zbvsA2YeunFz0iudtbfVXMbCS/Ss0iKuSPlp6IVRm0xcS
 MdRlm5Wb1TnYE4ZEdst84QXu9qIjiXLHCgqK5JIpCdRJzxAYYjuzhbXMKPj7fuNK
 LS1ZyJBh9HfDTg==
X-ME-Sender: <xms:j5FGXkZDtxIwiDKf_NaxbDoNzmBCyAFHbRPfHWBP3HO6VETR9S8ucA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedtgdegtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:j5FGXqnG_yYnQZVRR7eGanLgTLF-QfZfE2g6RADczxsoSpkQngsfXQ>
 <xmx:j5FGXizqZ1XEveghUbyyzRkGPddBD8Lfr4cu7lJ2mf76T1gEQ5zdZg>
 <xmx:j5FGXo9C36DFX4OvBNRMcid42hiVAqPhtt6u5_0LmGaigjWV0MW5lQ>
 <xmx:j5FGXo9-nSad-XhG1rgsF8stvC43tzLRJNcPflMjR1djxKQCeEM68Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E69EA3060EF5;
 Fri, 14 Feb 2020 07:24:46 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org
Subject: [PATCH 2/4] dt-bindings: panel: lvds: Add properties for clock and
 data polarities
Date: Fri, 14 Feb 2020 13:24:39 +0100
Message-Id: <620a740cec4186177ce346b092d4ba451e1420dc.1581682983.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.b12a054012ce067fa2094894147f953ab816d8d0.1581682983.git-series.maxime@cerno.tech>
References: <cover.b12a054012ce067fa2094894147f953ab816d8d0.1581682983.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_042448_148785_27592005 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime@cerno.tech>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some LVDS encoders can support multiple polarities on the data and
clock lanes, and similarly some panels require a given polarity on
their inputs. Add a property on the panel to configure the encoder
properly.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/panel/lvds.yaml | 10 ++++++++-
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/lvds.yaml b/Documentation/devicetree/bindings/display/panel/lvds.yaml
index d0083301acbe..4a1111a1ab38 100644
--- a/Documentation/devicetree/bindings/display/panel/lvds.yaml
+++ b/Documentation/devicetree/bindings/display/panel/lvds.yaml
@@ -90,6 +90,16 @@ properties:
       CTL2: Data Enable
       CTL3: 0
 
+  clock-active-low:
+    type: boolean
+    description: >
+      If set, reverse the clock polarity on the clock lane.
+
+  data-active-low:
+    type: boolean
+    description: >
+      If set, reverse the bit polarity on all data lanes.
+
   data-mirror:
     type: boolean
     description:
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
