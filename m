Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C28978BE58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fXzJSbaKGODN/SvSy5TWPPdvZjSJIaMHMmH/KOuDhW4=; b=JxfMJIGSX6dHJLwVc8Bwr8usww
	lCXXP7FJXB4kH4EkDgYlVqO5CJtrSHcrpQeZCj02YQ0glLvCt6cosiylCT43xcm+GcBX9s1Iq9M3m
	xSJnjDvwLQpPw4EpsMtaitBtg0Rhv/rHgRLE93iUSe4eeDzp0IUXmjUe+3ZS3xUHdJjS9cg59PNGp
	V3mbvHYynkyComOL9nsMZwXrGJk3TpFcw6egxZssCktw5tynBw3ngBMcy2WH1bRQYPx1nqRtyieN4
	SWUxdajd6oECLz2XfKGnmh3b181+UOc1DgDZBgQ9k6z08HylRiRaG8uOXMDd68ZBKbl6enbXa2RgJ
	wSEjUvAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZZd-0001I6-BV; Tue, 13 Aug 2019 16:23:01 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZXn-0008Mu-LV; Tue, 13 Aug 2019 16:21:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565713260;
 bh=uRHDvL3TndR8wGBn8RWaBtvuYQCKr4j/BBz8Ga9FesQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=FD4Yg2lq/EwvFJdKqcle/04/mM9YxkFkhJBujTJPAx7L4Tg7folHXQuavb+A0FUeL
 1p4LTYdw5W9/Wngcwog1CjPRTZ375rJdL75CG6B03kqa5CgihYalh1HP/seJi2P6M2
 AGbtQTjjKOCXRjNB2LSOc9yv+fV1dMpESbOfKFWw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MUGi9-1hoOJE43pT-00RFcV; Tue, 13 Aug 2019 18:21:00 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V2 07/13] dt-bindings: i2c: bcm2835: Add brcm,
 bcm2711 compatible
Date: Tue, 13 Aug 2019 18:20:42 +0200
Message-Id: <1565713248-4906-8-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:0cRHZfQHKeaAt4ouWJuDoL7IzMS/0ykCsxm1ArsSFkmJwmbdWdv
 SoPXQAAsZXksgG77tAe3/UJGlqPk1jl0LKXDwsgQQoY0xvsHgzUlNWnErDNfwZtWG5n3Q6a
 NFZzMIZctTNntz7XfsE22RrJYddL45W6QLlFIeMeGJOlmNDx1WOCRPmvk0on4sPrtGDhybQ
 IaYaLlCG6JWIw83K6kEvA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/rvAzAeYiA0=:FN5M4wjfBAy5hu8tlP0v3T
 FDXwcxrxr5zUVQI1XKkrTKoFJDyzFHJE2XLGPoynZYwgpmok/hiG9urc2+ZmfO8oPUmqF9t3R
 jhfJqvhL1oXDDMeJHraVwQ4IP0YvBNIgluqw1j9Orb9gG1vHYFySZFu/y2DhDw54sVO101twT
 7k5XaACYS2Rmkfp7kdV+at/RaA4pMiYuuDm6Z5tRaYlzlCnNoP4XtIYatwsBSedjl1YVfIs6M
 PnCjrSVG1U4aP3BAfHEhVWkeQS6z/ElBY96JSOtMFRqWdanSnKZWTZWEZw0LnR4mm4GPWfQsJ
 ZRfbCAmJFpVZiii8BNl8Vt3fPhd7q68knKrzKeeEb3UVYZvqjkG1KIODDW0ijaJjhu1VuLW57
 CmC7tEA7tEyOI6Tc1NOb/5KoltbZBh0lyaM8kjdssXev+bF/ydu9qiEjQCQExQtMwBfe5IfbD
 ryZVglojt6AFGhzEajt2v2FdNg/OJt9+h1SOHhpg4Qt6Q2O19yKfgQ8ywfq061c27nSaPxxDx
 Mu9pjb5/n8Qhsg+ngZPkKX583i3z56fDyjgN+DyKAU/SECDEzxYsLZJzYRzZPdLSMuN9Nubhx
 UP6tN2J5RMCsQf6B/QtXNJoU41dDF35RJ8Nt0pAGKYqME13v2gKttZeKfmQ2SEoOvd2HHkjSZ
 WqFl8OIpdlmr6sPb8KTTjUZ2RfCQUa6RmOkrImsDWwwznSUxxkTf4TnfsRz2Ytc4ww+TE97L7
 5MP045jdalgfg383oDhnpX2NrDr3/BSoGqnksQR9SwsmvN+4xCraLL9BDJiD3p8/ystQvZzlP
 sU0zsVvkyzp3ouKy3cpuW8bfOKd0Mk3qT+5Iz585hXEUJ/yD07jbpAwnRA8eNcPC68Gd5FP78
 tBABbJcRmIvZb6Uj3GyRh6RWzlxgorRUFPfqpLm0S72X8nLVCC68mnoKu3v39MNlSqR4ZgtCM
 BGEWqEAtFCD/5zJnFYng56lRFT6ogZ9yLw3qagJ744nTNiPATpbRKzGIoVcS2bfFKa9gU+2qx
 Vn89/SYLzVRbrNQotYZ001sXafDKZKJOI7/BMnH+JD6cv3gz4bM0XdJ9j8yia4w0FdOxNSz8t
 24s1j29sZd81dTWe/fR9Ih4qMQHNr5xM6StHJcMG7qfkoROPEFMaz2oIqN/FqBcyZva9Gtu48
 SZSYvQV6mKYjiLq0IaTDwvIKJ7bfuOsSl297QSEoTUe+9WTA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092108_000367_41918565 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new compatible for the BCM2711, which hasn't the clock stretch bug.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 Documentation/devicetree/bindings/i2c/brcm,bcm2835-i2c.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/brcm,bcm2835-i2c.txt b/Documentation/devicetree/bindings/i2c/brcm,bcm2835-i2c.txt
index e9de375..c9a6587 100644
--- a/Documentation/devicetree/bindings/i2c/brcm,bcm2835-i2c.txt
+++ b/Documentation/devicetree/bindings/i2c/brcm,bcm2835-i2c.txt
@@ -1,7 +1,9 @@
 Broadcom BCM2835 I2C controller

 Required properties:
-- compatible : Should be "brcm,bcm2835-i2c".
+- compatible : Should be one of:
+	"brcm,bcm2711-i2c"
+	"brcm,bcm2835-i2c"
 - reg: Should contain register location and length.
 - interrupts: Should contain interrupt.
 - clocks : The clock feeding the I2C controller.
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
