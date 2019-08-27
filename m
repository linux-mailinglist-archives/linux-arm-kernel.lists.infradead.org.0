Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D479F121
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 19:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oyDlXLb/Da+VdrP9JfanFT71TqnYcLZ97q9fz26Qfgo=; b=F0uWGVC2H2W6MZmlZWkDKopvT3
	pvdhX1TniAZzu0P/WbrIp7RE7IgXoStxHV5ag8c+p75C9LE59BIpu6S0yb3Mw1JBfU6l47gF3rNCi
	GxSCIR5Ta36n9GnoKPBjEE6bUhtQK3afeZafA+eWbQHS54gsB3f9cf9uSUmck3ZSLF3pZ1rw+zoRv
	3JN+S5qiWMsXqIiNUD36AGnzlK2Fz45WRWyUYB2aEAfVdCrxcq68RSc+Fcsv1aoyH9tpSvJg7Bqzg
	YzmTFZ9vItsPw0qhsYE65oq00ff8CZ3YaZi5krkOlyNfUjC0LMXfSV9S+/AUPI2YBGN9adAk+ZxYX
	NwMBZ8sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2euX-0007hb-0t; Tue, 27 Aug 2019 17:05:37 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2eu4-0006SL-F7
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 17:05:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566925495;
 bh=4j2ABTJxXzVQpL1MUAY5wsip78ebEuKdC8l4vRx7EGc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=hEwUgqVaNCqE/dzyWKEOO0BL1Jy88FW4iCc+pt0yDQ6MmArvC+vLPcTsPGXAkm9eC
 GoDCMgTHjrrXOf/y+AxpAdpTVZCLpsl1CH20VMGLeQzgvIywGAnPacehTilT8vHzpW
 4rU2dV8iZLl2U9WubhiSlJVN7Zu4pY5zLtjgtROY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx003 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0LyEqr-1iEXVC300D-015c7i; Tue, 27 Aug 2019 19:04:55 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Wolfram Sang <wsa@the-dreams.de>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 1/3] dt-bindings: i2c: bcm2835: Add brcm,bcm2711 compatible
Date: Tue, 27 Aug 2019 19:04:14 +0200
Message-Id: <1566925456-5928-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566925456-5928-1-git-send-email-wahrenst@gmx.net>
References: <1566925456-5928-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:KrvTLehEGpnLznYvNUOXcPZV4nLSLV7YsDxTvKjwp/Im4ZcKLfx
 NDSV4j3sntIH7leBqwk3CIBRzER5r6wgp0vbCdGJcsykK4HWy9Uha+g/hI0O51rM/wPgiHD
 5I3XnUPLVulET1NJLjQqiXzQRz3B12xFbicDGuOyvTzMDWAo5H+lg1wGVo8hIHn493NHlRG
 N99Q95uNlnMRYyPtesB7A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:W376pQCHREo=:v8k8uKMZ99f8P7I+UOXMs+
 gZukDeraPdNnkwEeoIGqMPHI81RIe1WPdIlkWYwc86131Efjn+zux5cWk9DgQSbvJNXVc7C70
 /GM0pmwOyp0y1sTQXEycle9lHOtj1mSVyj0bIJVlFheyNjkYE411gXx9h6jGxtbqzaMiyIH9k
 7n89Z5GjqsxTRR3oMwXMRe8gHI1UlkAV2KTjEo7spelmXNa26jxxaExIEeaGP7ZH3Iv3jW60t
 cQT7x5UxbV7g2L5x0LqzJEVgjnMlLK06dSw+soDWS+sKjYIMCTBeBNxDOy51i0LKcc/zf7k8x
 JG7pa6BO78XcMcTdbieBZhCH6MyQUoCFNITRQVUwvbt7l8+fG4JTCCIPMr3jBcyrLHUBBr9cK
 JcipZt/SArexNypDTHPEZoDV40C3oaprO10gS4XG81WuJ2g4mHhawjeHgr0oiOLjYpCiQO4qC
 oUa/UjPA9lYxTJiHQiuk0KJbatzmlUC1qOokycotes5eTtfXDHZ7G/eePZel1Hw05dT3fXtpk
 NAIwFnXFlU81a2mj0/sKKy3HP0eWEjb/APD94BvyYKWAGjs+VD/GzjEghpzKjo6zjPJ48XRok
 V7l3CWsEAieuVDyTHAItSMG3ZTO/5mIuNLeRV8i0xIzNeA8eDB0qBFPLBDwmGpTb/a8S2gB0r
 D7kDo9eoJ+8Vb/2+TSs8LVPuSXdURFT8xXLhXL3mfsGjJQutSRtOi8btVSJjZmQpOoKSH66m9
 MGCUeIKKJUY60aBjy02GLTsBVntMQtvxxVMVhnH7rfOeTZ2EaRZvZ6k+YeV6Wir1a+hY3HKD0
 PmFu5QQ+vkFXFVe97qyJe35oH+7jSQrKJ9ciQcfar2ZghQGoTooWUdGtXRUK5FtzlH5C1u9Zb
 xvwajglRrSnkhlv9IrZOxYZlwcyg2Md74dSkVv5zVY8jlpEzhV7RV3qRfbCT1Pb22LjiUPmQH
 ktmFmVhgY3rVGNMPd2w7ktUwAp1488Aggamp/cjJyq5usUfiYGMUj2JNKOcg9ppB8WMZh1hFK
 jVcP68sSvPx3QB/Mlh6b8JpXyim6n4p/mgUeeK5XvHVdiqzRdTQ0aGfsFM+B0aS7tCLbEt6oZ
 fAOvXp/naKOv87IjJm0JF/ynk+Tp0ys9Z/MAdgFU26sKeeV7hB9VZVTZ5Fpq0W2r4ddwYDsQQ
 SrKyJtYdWM2jtp0Hbd4LXL3GMX5VmqUR06Z33XowuoSFMOcw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_100508_885577_2B4B35E6 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
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

Add a new compatible for the BCM2711, which hasn't the clock stretch bug.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Reviewed-by: Eric Anholt <eric@anholt.net>
Reviewed-by: Rob Herring <robh@kernel.org>
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
