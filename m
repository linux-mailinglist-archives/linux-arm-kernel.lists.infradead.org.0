Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CA39BE28
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 16:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U5/BWSJKQKBj9UEWnS3aeEGfmk43kZBNpMGOlio6A2I=; b=HA6iz1R1jaH7hciIfT+srfEZgC
	MFnjbnUGaChag+KwLQZdhbb1lKRvLVuwTk7FiZfNabxdqMw+wenpkXHwy7kP0roWoLPt7TublFBBi
	4Ejt9Jh5uoaUDrqg3vKcfdndtW7PC5iYNO88rBLaLQtFD4dib0EBGkuFqUXdGQgxnXqwSIC2BXbkf
	+r/W3zyStN6jrRXHJLpw5zGzQ/hFSXnF+9kjwRGB9rUvjeTAwkPZnAVeYUC4NYFupXTKZ++/NLxfQ
	l3YjcpgIZu/s+Dn7JZ7XNpOMMKmXryoSlXq0fUitsq1IMtVGSDR//nx0e4uHk5/wbmDQS4UDdMkcI
	uyU4FNfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Wkm-0005cX-Pg; Sat, 24 Aug 2019 14:10:52 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Wk6-0004nF-Cj
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 14:10:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566655798;
 bh=rRIKSJq9ObxQ/pOOw2ApNgV/oQBg3tBp8gJFC1ntmhM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=IzQqKi5xE2IcwK22fDz9kIIEKC3dBzfKooZPjztmD9kUrQpbB3UbgVUshGrC3VatH
 XoFItX5R1B2QmZD3afTPnoPQRxThEon61Olkw/zoVHMybNUUn3BbbWR87tY0z1EM/N
 m515wEKPl3KN2Utjz+pl9i2+jrfSZ3Zc8PUGGdoQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MmDIo-1iS67C2oWe-00i8fo; Sat, 24 Aug 2019 16:09:58 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Thierry Reding <thierry.reding@gmail.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V2 3/3] pwm: bcm2835: suppress error message during deferred
 probe
Date: Sat, 24 Aug 2019 16:09:48 +0200
Message-Id: <1566655788-24949-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566655788-24949-1-git-send-email-wahrenst@gmx.net>
References: <1566655788-24949-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:32UdlmvSNs+Bubdd9WzEPRfqqlhDYyyRN89kD6V073ChqdNlB8+
 oR5pJwySQ84SvsTgYT4srJHSz4V8X3EOCmE/Aj9vIJrYg+81erDalw9X1pj9gGM1YQfmmTZ
 ugGNNncxu28nqRMMVzVVMf6pwpAGqhnb+zdJypv81Q4nkbnYUArHNWeRn1AFNk8rQBk/v8j
 mOfC2kdPPNfzfxnLisa3A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fhMKr21ua04=:nJy53uGPEf2MHM+JqTU8D0
 Jriu2LbdknOxCIznnwPY19RodlJOyQMU0xdCdvWDiq7fvoeBJ/55CcqTSrngrxlRm56IWpR4Z
 Dotok7jb8JCrDGmMOmVS8hpIAAXnAsX5ta/36PUVbXkfonpiGWpXJI0KMR4n/nUdAuruiHYsa
 PSM0lY3q7a5U+1FPnQyC4h1VVqD7FyGmMcqVemgPBK+5d92eM7x/q5nB8wH242samcL+j7m55
 NXX8a28F4mYvuHhxz7/8Q+xJk1h7DcPEAvV2g1Su6ppCC9bTSHTIXKzdwMuyp4Vz2YeaWBzUk
 j6BPdK1HLOYPzv/j0mRnCAsqqMkIZSgGSbvjsBTVuU2XUA2CE4C4DbXHyDkmbU5/GMkKGAx05
 ToeTJ6cQgCCbapNd1QrBOzB2GE+VE33BGjz4Op9brjJeFMp7CLLKzwtefXsepdAb47tLk9CrW
 jy5u+0JsboeqMG6jibmCW5e1Jcm2ZNe+0hFBmoRRD0iKUACkzeESJxXfxidXOPprI2cn0eknv
 2kfYbZa7M4kpvTrY35FQ67SnH5sqEA2mfixdOF+EC0slQUvz1+bUHVPm0Tg8e1CMEiITIy62R
 Y6k8mfHuQekkEPYoDpEtzoSbQrBvuxXpYd2jQgywNLB5WeLPZgqBt4nz0sJekiCJ8hJImy2Zi
 LlKB+0GYMyu5zc11lle3dZWed9U9x+2A4B+gFOpTCo9JW8j0e4tQTWPqIU/HyTuimlK3BxpPF
 IIWgKzWBJ+vE0gK1UHNj894y/OQOiRt03f7lXaNHVSojG3am7x+8Rjs0ZRyHBqQxZ880UsvqP
 grAoGHNnDc0HUMPFSbg4ZH5BBMcP2CVtmkTyN3ML8wUIIJwH5cQHlSifPHD1LFQa2DmlZNt2r
 6g+TBuDXEu2mTh7SlgIoI2OqKDezYSuyYFmhn3Z1GdPSmXEqD67tyf3fNCiVVjhe/IKLWL/O4
 1XuOUCH00v5XUkLV1h4TJNUaw21y2i0Vyzm3CaXX/ERh5gH6cAfmUvEpihBKuSBt4HYWIFOUG
 zCRC4DI0j61cbaZvBbuLdMoObHfbjH9si+MEjnBVHMNuI6aE+sLs4JfmySw5zS0T86LMXqrMA
 r/tGmYwi6p4GsL4kVRm1ZBHpg3y/xwIT2XhQJBWeacKuSSyrlx9zA4NCg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_071010_747392_B91C46DF 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This suppresses error messages in case the PWM clock isn't ready yet.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/pwm/pwm-bcm2835.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/pwm/pwm-bcm2835.c b/drivers/pwm/pwm-bcm2835.c
index 2c82386..91e24f0 100644
--- a/drivers/pwm/pwm-bcm2835.c
+++ b/drivers/pwm/pwm-bcm2835.c
@@ -153,8 +153,11 @@ static int bcm2835_pwm_probe(struct platform_device *pdev)

 	pc->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(pc->clk)) {
-		dev_err(&pdev->dev, "clock not found: %ld\n", PTR_ERR(pc->clk));
-		return PTR_ERR(pc->clk);
+		ret = PTR_ERR(pc->clk);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "clock not found: %d\n", ret);
+
+		return ret;
 	}

 	ret = clk_prepare_enable(pc->clk);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
