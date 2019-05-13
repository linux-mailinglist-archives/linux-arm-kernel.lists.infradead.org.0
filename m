Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A6B1BE9B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 22:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mLdfLMMxvcJdX0jesKmKL5Jdti55ibaJqwcpAXDC7M4=; b=slr1y5NFErEDc3zbCtb3yk6RXT
	dkWJApDBcmAb3khmlDSpUMbhlq7e2PykRZ39nNRpl/9SzxPiBho+XAV1pPap3mQt0dcblAm5G8A/X
	IBper519lfJyh41jKGzkGLvhntbkK1wWXHmwExFfu/e7DnXXWaCIm968xgj6x7N6uh5neXQ9YGpXx
	a5KMgOplu3PcqnBxpgamWdHQz+Bq9LHDJ6yNVuGKf4Z71Ll9iwsz74h68YDFvLpIUvxDAbqqrrHpN
	gagu+cgow5Ol04U1dQjQRxOZiyOBiluEmOTscYWHfCi6JfrCNbKeDkxm58WVbTD9R2NZVzZJMjKGL
	Ouy7RJGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHTf-0008LY-4M; Mon, 13 May 2019 20:23:15 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHTX-0008KD-8o
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 20:23:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id B8A204E2051;
 Mon, 13 May 2019 20:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1557778986; bh=gNh7Uyxf9iAWSXDoAQKzkojnr+ABCxdVSR93YXCK1nU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=as+QUZkgM4v+n6rMYLDzmKhLzeZ+Jc4ydpP5slSM/mS2+WombQO/ehYDlcrNkWBcK
 IVfCY8RSWzA9izl4Beo0zhUlHp/J2kXz0AsV0em8Tuh8zdCdkzR3HLybVkardmnLzz
 b0Pii5ObaCzG0d01T9SPUSyqqP2phMP75ICB3IEg=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JShOuHyvJsxg; Mon, 13 May 2019 20:23:06 +0000 (UTC)
Received: from midas.localdomain (S0106788a2041785e.gv.shawcable.net
 [70.66.86.75])
 by node.akkea.ca (Postfix) with ESMTPSA id DADB44E204D;
 Mon, 13 May 2019 20:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1557778986; bh=gNh7Uyxf9iAWSXDoAQKzkojnr+ABCxdVSR93YXCK1nU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=as+QUZkgM4v+n6rMYLDzmKhLzeZ+Jc4ydpP5slSM/mS2+WombQO/ehYDlcrNkWBcK
 IVfCY8RSWzA9izl4Beo0zhUlHp/J2kXz0AsV0em8Tuh8zdCdkzR3HLybVkardmnLzz
 b0Pii5ObaCzG0d01T9SPUSyqqP2phMP75ICB3IEg=
From: "Angus Ainslie (Purism)" <angus@akkea.ca>
To: angus.ainslie@puri.sm
Subject: [PATCH v11 1/4] MAINTAINERS: add an entry for for arm63 imx
 devicetrees
Date: Mon, 13 May 2019 13:22:55 -0700
Message-Id: <20190513202258.30949-2-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513202258.30949-1-angus@akkea.ca>
References: <20190513202258.30949-1-angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_132307_351580_D06724A2 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an explicit reference to imx* devicetrees

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 7707c28628b9..9fc30f82ab81 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1624,6 +1624,7 @@ R:	NXP Linux Team <linux-imx@nxp.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git
+F:	arch/arm64/boot/dts/freescale/imx*
 N:	imx
 N:	mxs
 X:	drivers/media/i2c/
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
