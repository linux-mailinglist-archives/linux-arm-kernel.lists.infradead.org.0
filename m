Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF136F927
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=29xURYcRgSAWyczN9MhhoQ6or0lLPxnwPn6jv9ItBvE=; b=B85TrJnBw2wdDZcsKKmlVreD56
	IuJQ/1DlOQsO94SEcpcce++gnqeag6/5J/JDhYs/+40GnPyMn8zy6jheP4o/zH1DRjQypwRI2ZF0k
	577w8ucRoEW+Kug4rRjd+09tWRbZcq3sXn3DUyw/acNbqkIC1xJnnICa8kxPIWoQiPbpzLq4IStqs
	Au2DPpOYMzSgXdJ8Xp1OBUQVBOXHHyy7s2AM6acbh1d+Q2DndJneVw0LjvQWDohvKYe/ZbnMyvYkJ
	epV7CH+TPdzyNvwb7w1bMsRaxfFyvRU0h+px+nI3nTKzdGimJnCD2luY4J54Y2yNZ3tS0o+okpE9L
	yQLjezug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRJO-0005Xc-26; Mon, 22 Jul 2019 05:56:38 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRIi-0005G5-5n; Mon, 22 Jul 2019 05:55:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563774942;
 bh=GU89YlLcWxJcFvez/UaJULPPU3ocAYeano9D1Dz28OM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=TbHarNWIFz79a6JKSq3R1jg/7c1cEZ0b7xukUCC1wpbwKjy3S9QQPkvzURGssnadQ
 78zwIj+ocU0hGXdHyaTDe/Mb8c9wMkGLgb4MThEGFbXsYsLe83rfTq0Y2W9UibWJKk
 1hPzwb0RFxBG+mKkm/FqBJSYNv2QRv04nHyXbZnA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.98]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0Lb90f-1iHvMa3EZF-00kdbk; Mon, 22
 Jul 2019 07:55:41 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 09/18] dt-bindings: sdhci-iproc: Add brcm,bcm2711-emmc2
Date: Mon, 22 Jul 2019 07:54:40 +0200
Message-Id: <1563774880-8061-10-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:TaoYEtFo6S+DLQN5O+CGyxUkFR5mMK1xgBJd6RyXw3VKX/UrVSh
 BG+9tH/fcHsmYsgHTXW1kxK1UWwy4RSWfKcANA/BKooQJWwqa51a862tyPQockoHN8upkx/
 b5eZZAVZu90yqoJ7fgmbyudw4msCoCmGax4l34Q3BCSCQ1YuwzC4SIh+BccMCYMRGgd0DJN
 H8D1PpxKGa14YMA3X+dOA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Oc5cSNfgdP4=:b7SJHzW5K+AQaEndZymsXb
 k2CvHTZ7mHMnyIznsMUMbPPmlfjYI4tLfmZS4H3je1gdctzpIEc+V933v63sO4yOpI9l2aflj
 1a2v35bXMvDUAZAQaMEGMdzU0D5zqQcVTkNvdiuSEwX0YjGBExySyMa/W5DwF4e+kg8DRPHGW
 /auZZUCB0CwWW8IbrHSZXZYrKqjqcHOZkhhmLYZGLX2Xwduz70Ocf+9wA9vMkcidU66aI/vdN
 z1MG5kSh2hO49lZj5Wzvf3giDOQZiPtYPr/nfSacN1T/L4o8AvdBKDju+eCKvVDaMTW9yB6ZY
 b8Jkgj921ulQywo3jF+owYaullhNg1KmDQldjAAWYJ9kJpt8oSGn+I81UperGwyMKG0r/9IGi
 qOFBLW25gCkT53fatFooLF+/9Qg3Pd9EJjXV8pGqxJje91sk0nYOr9/JbTaXNspkQNLicWBtr
 r0OQ3jXAfGjyNidsQ8Jk8vv6dP6F6gdCDQoO8stENVrejLRER0KBHAMKAMI7H+BoYj5HNJif2
 c5BsLQ4ol0jZB7ZGaiHPgPEOAdPmqdMySwXik/e1uLfJn6ryl0Ix2qyrhOCVR/jta0xUH8t+7
 Sy0bWxmU1NWnRAa3ZlwRMiNbrYK1FG9jLgz5doEzUgjJIf0u5p3cbZZaMvwiFAfhbFkNCPLL5
 vzhuBvGhgwLkMarx5siygViWD/K0QmWhJPmkf7md8zZHu6HIeZVN320T/LpnU38mtcQq6Ajc/
 /8zYIPjDlUWKPOquM02btWMEGLwxZoAegAGyS/Bd9G2n/fKuZkCw5sJl2dzdiW2evN9n+1HXz
 tU2t7eWPPsjT5I/wbjyjdovMiLSrfWq9U3INcRG/ADEAqmkkDbMJlSzXclC/yuCCt06eQh0+z
 5d+Md25CSStUtIZVFD7UhkyxCjAgaSgS1uqChVFhNljjAnwrSMU/q8Tcx3z6RH4rMTtUl5vDE
 B2tVX9+LspqfRiJu5Fi55c53SAW86XV5mcOH3EP96AuEhIDr1Y0AeO9um+aIK0FSGSDb+8VYC
 ce8YGQY5dojEtkGWSvGDUMV/wzj3AtnCDEYDjSX2qFSWGqHnsF4h5k/qMfc2QDqTKDP4jGAf9
 LzLPSXWnXkIlyY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_225556_506411_B36A4E30 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new compatible for the additional emmc2 controller
on BCM2711 and clearify usage.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt b/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt
index fa90d25..09d87cc 100644
--- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt
+++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt
@@ -6,10 +6,12 @@ by mmc.txt and the properties that represent the IPROC SDHCI controller.
 Required properties:
 - compatible : Should be one of the following
 	       "brcm,bcm2835-sdhci"
+	       "brcm,bcm2711-emmc2"
 	       "brcm,sdhci-iproc-cygnus"
 	       "brcm,sdhci-iproc"

-Use brcm2835-sdhci for Rasperry PI.
+Use brcm2835-sdhci for the eMMC controller on the BCM2835 (Raspberry Pi) and
+bcm2711-emmc2 for the additional eMMC2 controller on BCM2711.

 Use sdhci-iproc-cygnus for Broadcom SDHCI Controllers
 restricted to 32bit host accesses to SDHCI registers.
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
