Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 066F29F11F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 19:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wjboJgM0qc77lCvG2XTINX3KH/tdznhyRKzouXQWvbU=; b=Fd1h5VqjbiuEDlVSk/IWAWeV8S
	N+XR/l+PAooeMmOV60MQ61X8rLKQaMLqR+MS8PN8Iy6iW5ozmzRNfxaae4PZmli7Bg0kOVI96u4vV
	mX5FhzCCaRMLZBnREeT21dc6cqQ/D6o+AcF7dH5x3Adx44gjqC9odaA53nYeYx3Sf58+NX1qoOBXt
	3RZKEXJx01DVRB5wYhw7K7zLNKNm/xUD9OWPocjisXQl6u51dUwnybB7DZiFv1ZSUu+twfe8tXamJ
	pX1m996W8lajC3fZYswUFWOvZ1C5YaDkwr+9wJa7k6ZhYj3Yqytly9ogTbWOxNGC0+uxP970+Rn66
	Jcdo0JaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2euH-0006yX-6t; Tue, 27 Aug 2019 17:05:21 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2etz-0005sD-DS
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 17:05:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566925496;
 bh=iHML+3J8Gz/ZoXa55rWlvuO5gxBAoQS0ShcVMHMoF+8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=QIRU5LXEtpLxXDh5f4Tu8sKtaz3KCIFtqmFhU+C3bPOjwrcWwow6Wc6s5ei1cnDtZ
 kUQkf4QjjnqV9oVJec58sB0ERMGW9/V7NKmaW+OwfKU/y5Kw+zLqiOpcHtLnFh9xVq
 jT0owZ1x7wI289IWT+BlBVbjqyT7Sr7HinEjsLiQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx003 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MIuSH-1i4aq91kQD-002VXu; Tue, 27 Aug 2019 19:04:56 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Wolfram Sang <wsa@the-dreams.de>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 3/3] i2c: bcm2835: Add full name of devicetree node to adapter
 name
Date: Tue, 27 Aug 2019 19:04:16 +0200
Message-Id: <1566925456-5928-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566925456-5928-1-git-send-email-wahrenst@gmx.net>
References: <1566925456-5928-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:aZYCnrYSUMa259o8XUY7VioHSFgAqtazTRKuK29qv+dxx4hlcWX
 y3W507fuap5c14ulqH8+mdcazpaWUShLGhu5I+k3ayg7Kwoh7HYWFfozjn8mihWipo166EI
 sUBCS75QNwWoMNgYORuMcxPV+Dn5tm0Y7xWcykJe1Zi1SuSiU7hpl+zB5HuF4UkmsxJqziI
 PbIK5Dh6YDWo5TU9CDaTg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:te8ExPthDRw=:+1A4+agapq1RX9Pb4knZFi
 qgN1IUfIiJsvYeSE8DMBA8l0KJSLd+o1+EEXGa+8GzeEIt2RfBv5v3wOCa3XP8ZXmkpfkYU8+
 lgLZYAwxhMW0DhiksWtRhvlrl75myih6YgU3aUlPG3S4Fm6P9mfTKztTnQBI/6ntTIRcPJZ+5
 0yScBSID09fHIZfAyRNCnC/SUyaOiLMzPHz2cFD7ueXU2341JDvwTl8y6ugw2L0SBLw4SSgoP
 beOMXtp264Ki9CDjCLSHImUUR+yluM5uXZiwZXbZCpnmG1BgUM4/uSSVhjN3tJVlla9bC6M7m
 1h+dNnTojqAncg9Pn6ErKpPW1G8KLUb3pjoFNT8o0KbDtCuj98TUS5DkPzT9fjvFxdhpdtxzc
 Jrl6dwMDHbDhlWpxmoyRNBXSIbRE3STl6aOeNwFQJboWckHQ3parW1ZHQrz2o5Tf9KuN8aQqm
 BT+0EQsfLrNPdneD0LUug90psobgLYLzm4GTbkizSHT4GqIJ+0slyN+mVBxKeGIlHC6Mjss8X
 Tk65u4vHp49mjI3afTl6+bViCiAlncVm/obV0GY0bP6/UJnrbm7yNPUduKSjx0laU4FW7OD/W
 Mgo/C0eSZ5K4yC+CHYZLI/HvXSTzJP07dzTgDqiQHRI5NzE9fDe4olBbw/Erdcw+K/TyUomyJ
 gpEfJrpDMm1t2hgvGHUCBTYTo6OmpJ3tjqOn81f1dvrdVdFYAjaARoAGSTTdrhlj0FFT9U3Er
 CckhZybyO5x+OdAuCO/pJjPFAMdMvo84sHWX3IjNus9Lu+zO/SvdjbHeTZ98GexWDGsCZNcjw
 eIjhq0KGqruQn9K7eEfyt5cU5wwoO+TgFaNRoaCZZ41tGdBoIGzEFHozh1fxFr+hyhBrlq7MB
 JzG24VMXCf0DturZZ8AmIjQWwvBV8w9kSONe294TQAMzlqKpWastQOoIKJXDJpyLbskl+UM/Y
 KX8U0bAyWP7fanIERSmYAUU+EajnbUNjzX0ir8pvUsfosPiVLDJAUFMTRRzton2ZuTcnKEjOI
 Oec9ixThaaW0jTF9cTgsYBz4MZe1ksw3o71tU3jc4+J6rqKjNYMSvjU0TLY3AfK3HI7BHhhx1
 jYrnYKcGffNkLfoig7Tt+ScnyD33xir8nxt4aF2ZKDHie4XMnhAw1hjig==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_100503_834488_2D7F05BC 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Inspired by Lori Hikichi's patch for iproc, this adds the full name of
the devicetree node to the adapter name. With the introduction of
BCM2711 it's very difficult to distinguish between the multiple instances.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/i2c/busses/i2c-bcm2835.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-bcm2835.c b/drivers/i2c/busses/i2c-bcm2835.c
index ab5502f..e01b2b5 100644
--- a/drivers/i2c/busses/i2c-bcm2835.c
+++ b/drivers/i2c/busses/i2c-bcm2835.c
@@ -472,7 +472,8 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 	i2c_set_adapdata(adap, i2c_dev);
 	adap->owner = THIS_MODULE;
 	adap->class = I2C_CLASS_DEPRECATED;
-	strlcpy(adap->name, "bcm2835 I2C adapter", sizeof(adap->name));
+	snprintf(adap->name, sizeof(adap->name), "bcm2835 (%s)",
+		 of_node_full_name(pdev->dev.of_node));
 	adap->algo = &bcm2835_i2c_algo;
 	adap->dev.parent = &pdev->dev;
 	adap->dev.of_node = pdev->dev.of_node;
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
