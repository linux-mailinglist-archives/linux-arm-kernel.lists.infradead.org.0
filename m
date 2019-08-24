Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B41D9BC53
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 09:08:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i+3HB5AOHhjZRmUeK5fTNTcEY6Qo56gtFBSRgOcB/V0=; b=LBCSIsLdIaiGMHbVYM7sZ0jr02
	IPAMTZsQNpqO+98aKkn/30DlQ3gw5NGL4Zgjg+GIbBzIm9QaP49/tC/1oR1DOnV8KsZIVRCTR04Bh
	djaMMtfWHcJ4Nbcz0pdFDIvcpAKIPrcBJlNTJilYdQEYHpk/RleBphGIjBegPa4YXKNynkvqsLVkp
	L8qJ8wjs0vMs0mNuAyQjD2IDh/RsMp1ryCFK+5uY82pm+k5PyBBAFDnUxycWsc/R+rqk/10kLKUZU
	JpBJsj7pSFQCwH2msN686ti3DFmAVr7nIzlRzY9g6F/ey+A1oNUxwGc9EOQes/Os7/nJSUUDUbWJH
	zPUKZQCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1QAK-0008R0-AR; Sat, 24 Aug 2019 07:08:48 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Q9U-0008I0-Bv
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 07:07:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566630464;
 bh=MB84cv/KL61N5vEmJ6+3TzMhv+UMcSlJU00FuLqAzrU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=TeryD+a12udrVP51FXUZT6+1uVeoL5/GsgAGw0m91KCU4/69KNsUAy17oEGEHxBRz
 CcrMhGlV9k7Me5UeXyhguzMvzbOyDJpijkTa/9h2jFvrK7kpRAKsnSSeYdewak7+0r
 NpAMA49EEWWIEZ7LxkMDuvedTm/xl0o+5t1tFXHE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MVvPD-1hcIdB1Io9-00RnFR; Sat, 24 Aug 2019 09:07:44 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Thierry Reding <thierry.reding@gmail.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 3/3] pwm: bcm2835: suppress error message during deferred probe
Date: Sat, 24 Aug 2019 09:07:25 +0200
Message-Id: <1566630445-4599-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566630445-4599-1-git-send-email-wahrenst@gmx.net>
References: <1566630445-4599-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:vSh+FWB0hIgx87Ju8ImsCa1tHiFyOl1sni3i5VO3MMQcFsr1yVv
 T6YDh/7DK1cfchpa7U2REVHF69x2UCsx9F928SGJ6avsB06jLrqjWq/sfjQcRFfMSECAKKL
 pufGrMjAvmTxaTSEkxeac+vwg6bifMhF45t+5LZk+1Wqe94x6kPmgXiCj8iWMWGALvlFntO
 oODfydGw0LDFsPWrY4ANQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4/wiuCA+KLA=:ySVx7KJdsxd9TLlv32vmgJ
 ysdV6Esxf1Hx6VAmQzDPoNcWoTPtKEmWyXWBJbVwUfwoDHlUshk7CUUbYzSAz0VHI9g7O0IrE
 A+zeu8iMaEojrN8HvmnjAXFUUR0w3YLSuJJomGdpvXVWm7OpbEdgtz153oKU9JRPvVHqsmdwD
 FFoFsMGKMbpT6l613Ga4y0rr5/ZpABtw+HlgbbH1SRE/6KT4GhXhbA46fjyI/1lECOeETwPF5
 sNNGeqHKJcZFW+iUUB2J5oW47LK7whN3fYo/z6r1cVcGLp7ADhdoDplhSZYUnTAfLljiaZPJt
 0zb4KSNrWQePszVGZ3VPgkIQJbQyLCjvq7txU7n2B+P+WTqxwgLQts6PtC3WtvT3zuEhjeoY7
 UQ+hQB5rynAkRkU/WEAOmGz6L4TlE5w1U/W3I4YbFVwXLOMpW8vITZZP5YeMY2yQwqJYGZdgR
 u3JwIWVYsfVPiDx3tR+Yg1ZtXVsoUdG/K8islNYBPyzDsQ8pUsuSqpgtyw3E9FkQngkpwAwEk
 cVJKVkZfiz3Fo64z/I/OcDocAnkMP33frKGB1kifOSTDk4X3QHg3ktEH2wAQpujcwXULZeLCC
 zyw6FRjy/xMsWhkrlt/9O0obPrEMwmh2F4p7BWCFHrZrHCzXCd8Kx6RnWz8qohcVNGcUkO7LT
 nljWcv3OLvV230nMNzH0pLCUsBCtF1q9ERp4UYOe1RNo1VsywTSfb0kGN8/zT70G4QUXf2ntj
 bJbMc2xjl1o+T2Ny57ioc0gpHmyq3MC0Qu72iOPZIkqEbPvzcMVYbzGQyMI9qPP0x4i5Uk00e
 UK5BfDp/xsHh15gkD+HCpodSnE+P96J4ThNO0SKF5wP3h6UbAWZE0FB1Y4UvIvfv7oQWhHqrI
 0MxaXpHHdEpWsychVCh3fbD8hmaYknZI3JY37EJzSRsNXz5ArRycYAH3RMVt0gZZqagIkq40X
 MEoaNUnSapCztsuIdj1wn8HeK2k8dHq+2yCKxaN+/YqQGbofL/foJ0j6Vj6v2TT3FfBtdvWZU
 7fHIw3z0wbM1BLnjo96wn5M0QNNpLo7+kMCHaYoRyP0rLW+P5m3XfguJEy/tx4L8L2jJJ//kz
 W98XoVf8RARniKqcrtUiBnUd5CileaO11eCT1cIC9vovhxmVqqJMzTGyw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_000756_697234_311B98F4 
X-CRM114-Status: GOOD (  11.60  )
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
 drivers/pwm/pwm-bcm2835.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-bcm2835.c b/drivers/pwm/pwm-bcm2835.c
index 2c82386..ce362be 100644
--- a/drivers/pwm/pwm-bcm2835.c
+++ b/drivers/pwm/pwm-bcm2835.c
@@ -153,7 +153,10 @@ static int bcm2835_pwm_probe(struct platform_device *pdev)

 	pc->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(pc->clk)) {
-		dev_err(&pdev->dev, "clock not found: %ld\n", PTR_ERR(pc->clk));
+		if (PTR_ERR(pc->clk) != -EPROBE_DEFER) {
+			dev_err(&pdev->dev, "clock not found: %ld\n",
+				PTR_ERR(pc->clk));
+		}
 		return PTR_ERR(pc->clk);
 	}

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
