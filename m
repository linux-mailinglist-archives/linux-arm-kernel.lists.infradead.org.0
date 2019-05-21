Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8554A24A2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doyrZOWGx4zw8n2HL0ZpWebAEoYqyetkUceamYsVO64=; b=QqxNQ08aJPzCgH
	H3n0opKPcf+XDeQ3tX4rE4CJv7zsjGScqdBbY1QgVQDB6kj38GoVeOYLlK1tlVCI6KAWqTK9QxAvI
	k5VKaNSm0q+hgiljrJXxqgzc0BqyXURDz+h6e81F9yGqS+dAh+sAJOxAbALGAXrRlgw2v61aE6Ek1
	3JG8q9XBA+jOA72jPAV2xVBCYVbKhqEPESL/bu9YvzEnqY0Q9qfaO4KN/E/mCiCG8OagzCGBrV5i6
	uc2ZVLmFp9KattbMaLMEQVWDWbL5G5QeYsQHsfiNCPNlTYQS0BWa8hhjXFJh3j/+OGXoj5u9jTzA3
	tN9q4lFKan2J8/D4D4GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT033-0002ew-G3; Tue, 21 May 2019 08:23:01 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT01s-0001Eq-0B
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:21:49 +0000
Received: from localhost (p54B334E1.dip0.t-ipconnect.de [84.179.52.225])
 by pokefinder.org (Postfix) with ESMTPSA id B34E02C77FB;
 Tue, 21 May 2019 10:21:46 +0200 (CEST)
From: Wolfram Sang <wsa@the-dreams.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/8] MAINTAINERS: add I2C DT bindings to STI architecture
Date: Tue, 21 May 2019 10:21:35 +0200
Message-Id: <20190521082137.2889-7-wsa@the-dreams.de>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521082137.2889-1-wsa@the-dreams.de>
References: <20190521082137.2889-1-wsa@the-dreams.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_012148_187495_D67E843C 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Patrice Chotard <patrice.chotard@st.com>, linux-i2c@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
Cc: Patrice Chotard <patrice.chotard@st.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 09f32866bdef..cce1173be35c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2281,6 +2281,7 @@ M:	Patrice Chotard <patrice.chotard@st.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 W:	http://www.stlinux.com
 S:	Maintained
+F:	Documentation/devicetree/bindings/i2c/i2c-st.txt
 F:	arch/arm/mach-sti/
 F:	arch/arm/boot/dts/sti*
 F:	drivers/char/hw_random/st-rng.c
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
