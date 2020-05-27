Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3E51E48B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:57:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d8XKJhn6i42Z+qx4eNKaV0N9Txsak6hiWrG4AFrDqrk=; b=ZnIFHEdSkEhKfZ
	Vl2rcwL8o98r8jDIA+DfcSqju/+92yC2hKM9lGyEfwCggM4TUWgVheRZZjoU8Rizuy61KFa5s/n8Y
	r3pezlY0XHhp0jXXQ2jpyRwqMYeN0VzeEwheXwdoTU3xeghSH4eZyVwtQy+P5q2NbDfGf0XlVXHGb
	1xC6wCHQY/GvGQT5s2QByed2TKyDfYUlRzjiYrqsp8siswHPYPJs27EuQG8ILOsUOgWJ1fVBrOEWu
	24gvrQOPWF37TnZ2Yr+tzIVT/+ZbItUZM52XzzvfnxTPwaLj2d0yeIGxYE+iT/Fd5eS5+ZQp17NG5
	Lr2QtPig+QEtjRyGkt7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyQI-00081f-Uv; Wed, 27 May 2020 15:56:54 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFq-0003hi-Sa; Wed, 27 May 2020 15:46:10 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 053785C0220;
 Wed, 27 May 2020 11:46:06 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:46:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=87eNKXUXLK3tl
 nLtCpRNlpSIF8WfpGhrUkNfAEF99uc=; b=Lvo2Y+qkUjbo3DDu0fzrcR2f1wgTW
 UJZ5UvkUhM65Fd76Uei/flqLULaXV0AEHgdClcT2Gi53GpgBSZ2Di9EgowZvaCPX
 7L8fOAadlHob08WuF6Lls01Rflyr3oI9hdF7Saw/TCUEBjH7n/7nGg5EFFN4UI9z
 wWHNauMu6xIiySMy0holRk9wgS8dztfcu0Ls2fG3lU+UHY7fHa9173ZV0yDiS82E
 bLmag+oSkzKf0HxwRM/pdIFCmZr5jJpXyfaZnzV0NRt0o+fL3/mTNlLHuWewa9O2
 o+7ITsinNck/SYsVvPNYyxhIjSYMLM4hbtFvjxx6CpkGVwNBDq3g0V66A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=87eNKXUXLK3tlnLtCpRNlpSIF8WfpGhrUkNfAEF99uc=; b=l65K9OGZ
 TSbIrtWXlZu9MVogylcJ8/dHF30saDK8dc30RM7Va5QzcmimMbGWaU+rxZiKmuq/
 PvW1qOYpDg9CwxGxJnm2jF2ANwJHGd5zmH7BT1dz8Bwl2HJFhhFx5kQUgX0z+2Yx
 sb1Ydhf/5pBzeh+VPDfX+g/HCh27xVl/SYg+hrmpLO5jccSonf52sfE/T39K1Fqb
 QwSfvSU+BDGIS1A3Fd8HKdir4MhozeMdiq3beIlcuuhDuZ4RMhP0vxnW5Qmc6LZ7
 hNQ5KZDFK/HJpYhHQtlhO1d8kEarYPHHP5ZBDQpWeobbSESlJhHoAVjZFL6Zgo64
 mJFZ+xlvjcDD4w==
X-ME-Sender: <xms:PYvOXoY_ybKs2nv92JfY7Nnxm3Y5IzRdFdQp5AkOWR-TGEHDh7m6gA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvddvne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:PYvOXjaMQPqg5dpar60mvJ6uAfMj3KXapdS1XitN4jiLMQvSeDq6lQ>
 <xmx:PYvOXi-PnJjpBlIzpKqJn5lNoFWJnoZTzFgR3fWStdTwD74vcmbNkQ>
 <xmx:PYvOXiqdhKkG5itgr8mcgAGyGU9haKcrAaUk8RCfB9t-vkBfHJW_xQ>
 <xmx:PovOXkCm27yFuWpONNGk0jlJ0YX0jnovff8pvQjk2q7WQkQGtu3LWw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 832A230614FA;
 Wed, 27 May 2020 11:46:05 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 25/25] ARM: dts: bcm2711: Add firmware clocks node
Date: Wed, 27 May 2020 17:45:21 +0200
Message-Id: <ec9e6942c9f16390e530c2aea2a565f95fe6e929.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084607_096797_934C6D91 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have a clock driver for the clocks exposed by the firmware,
let's add the device tree nodes for it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index c7f1d97e69bb..222d7825e1ab 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -69,6 +69,11 @@
 };
 
 &firmware {
+	firmware_clocks: clocks {
+		compatible = "raspberrypi,firmware-clocks";
+		#clock-cells = <1>;
+	};
+
 	expgpio: gpio {
 		compatible = "raspberrypi,firmware-gpio";
 		gpio-controller;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
