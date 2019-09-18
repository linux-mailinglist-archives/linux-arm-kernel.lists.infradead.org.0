Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A824BB6BCA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 21:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7FRY5GAeNXDFP/mRCBJIDh2RHB0EYsuQB7YVpz8Xvxw=; b=nedqG65kHFIToM
	AF4fr9wlSvCXLdBKiPzHVntA95lU9/5gYkAFrXlJieHbwJ2mVvxrX2RLeOAPe69BO8MP3JoqHM9Pp
	PFr2NcV7WyDE8WX55yhkNsqpxvRk1NMglfnLjHRZUC2b571nGeZOaUeJWdikb258s+QZG9feY7OWE
	/QC+Z2qeL1wpHm0M63R6DdZFoPv7bnwJ6cC6EDvdc9zR++sZaGtX4e3hskjEBn59WqkYBGdN3eks/
	/McvRlBRKPzwiKEgyL7I+HfjAvOaNzMhTJw/eKNSp9LMgPfjs7f4qZGRY2swRo9fxWENBjLxwDYxs
	gjYj8Z9MlJo1o40hEOGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAfO1-0003nM-H2; Wed, 18 Sep 2019 19:13:09 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAfNr-0003mx-8M; Wed, 18 Sep 2019 19:13:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1568833969;
 bh=ogt9xHXFw1a+zq5NrbLOn0ST9esi03Gf1tHNKap0bkE=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=R6y7VpnxqnYgl3e/CqVmCy+GHtWhZZM8Dle7nYITDUsG4V+kmkdtcfsUVcgSa+tKp
 Te16WGeTLYf8bxExJpERj/QZy1lznC0++8tFc7nh9TnavyMKg99K1RE8WmhsKPjpN9
 dw0jdMySDznwamAami++hWRMrhy8YnCEAXG5tRTI=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.2.101]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Lxf5f-1i8BRq2XIh-017GfH; Wed, 18
 Sep 2019 21:12:49 +0200
To: devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, =?UTF-8?Q?Antti_Ker=c3=a4nen?=
 <detegr@gmail.com>, Emanuel Bennici <benniciemanuel78@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Neil Brown <neil@brown.name>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] staging: mt7621-pci-phy: Use devm_platform_ioremap_resource()
 in mt7621_pci_phy_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <1c16a43c-3a01-8a86-02b0-1941ab7321dd@web.de>
Date: Wed, 18 Sep 2019 21:12:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:1/wIn/kDSDvJmbntwINsBITOVGmevk5sOOoUngXuqdzXlRllaU6
 9kYGcNz/mN7aHHbyK9W1PPHf9ADDXilu/y2DSW3rnanjDfkui7zdiyBVOscuFg5dNC1EZar
 wV7Lm5M9Qs/GBbmS14LroF+hiAKnBUgSSSwnpHDFRSMDx96bEFBPbUuB9xLrGiMOZlyEDlH
 u8gE0vCkoFIKP32iIv/VQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Y87RE7ZsE+8=:DWYXh+uuxNuGAKEvohXJin
 APYgKdIonjjEmZP1edW0Vyyez3VJFgJCj5jpHSMIfPg6L+/J6KgNlPUY3RZTwNke7iXTuqxLl
 5Fv7JElYW+NGdmafvZL5UxqUFrZgduQqmsjY3GgXaXmKepFR+tcy6S1wQ4U1j8y5BOEKfxAS7
 c2owyGU7NXl2GBiYTi9KKpDUeR88K0d2vBnpDtae+MgShaV5SY6plkXiSWK+160azuoM5mIJ+
 yQ7d1KubbZo+c0yHKGkQbJ3dihMWqip2hPrYAZu72LxK6zYPgaA6wZam0MlY6ZBlP756zhhle
 jKxY75mcO3PcwAk8hsSXznNrwSxcmA9X2Nw3PmyU7F2m6RDqogNlV7e9YRSzvSsLPyV1x05JN
 9n5U4ohVAw5UnsCXR0jXoQz+vH4GAGLTSICn5lUA6TE6l7Nthg9ZsjKFVKHpgmSsJ1TANbDfy
 VcYLzk1g9SOddaHaL/OcGsueGCxNF1MDIFvLtiwTM18DhAuaefk/9SyqfSCD4PTHzSaEIXIO3
 Y3sZ5IK7w75JAaGaTTfhnAjNZiEyzj6eD5eVUl5h3t1e4RfBUXkcfO/c/SHg/7Kk25Gkc7iXI
 YFAGn3F+BXwdYI2vUmEbmHjq4HW9oJ+wxjOLjK28AZ5QczfoAc6hVQTrT/6NtMY1yO+/xhcW7
 JvlZYiwJYcptipN+NJax/b+PbVDbFmBC8DY8+jd+7nDIHwBVQQzFjezAZ11WXUPJn9eUTA/8o
 EXDNpOGC2WQPina5MELrJlBt5tMiXxsneYK30KSfQrG3IRFc2cMRkZmiQaxhdGfZ5duYvMXHb
 xxJzjfTcKHYjdtVHPZkkruuzWUL0YiurTrqqHUR48LHdT4T/uDmAxRzW7jNizEvlcRlaRKkiQ
 AV1gseJ9uG17qr+789ObxUaZOfD+07WGNJYavMQVpZG3nRKsDhCudRIBY8qDOLwmoJnaGCt3V
 BR4P9PJBchvQaURybK5Inaz0p3lZqQRDk/qUZLx6X4m1z6ysWHyqO4u8rn5JKAqY7/k6V7Vmo
 iGAbwyJtuQEJ/Ra4hAmafoUYtWw0wd3w1XcxbgJB17Axs7XTWgTK+TPKF81pxg7hZp1/g9Eft
 kP3Sjh6sE+kc9TdffSxFtBsH2pfLRi2I9esw/8gXzVgQyFkQw28flg+SwUPPBmtlmYN2/JujV
 2T/oBnD0uoIcslOzfNRMVTdfVAnkwlWfWqQYVtoXdPC3LcTCaqzjlZ6Xhq40+s/h7gHgAqwcF
 s9mdk0uDYSGvmygSi9QnYvP+dfkp3inNJmjNSq5s/ONahtzyVjpBUxIPSF9A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_121259_595259_735F221D 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Himanshu Jha <himanshujha199640@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Wed, 18 Sep 2019 21:01:32 +0200

Simplify this function implementation by using a known wrapper function.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
index d2a07f145143..6ca4a33d13c3 100644
--- a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
+++ b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
@@ -324,7 +324,6 @@ static int mt7621_pci_phy_probe(struct platform_device *pdev)
 	const struct soc_device_attribute *attr;
 	struct phy_provider *provider;
 	struct mt7621_pci_phy *phy;
-	struct resource *res;
 	int port;
 	void __iomem *port_base;

@@ -344,14 +343,7 @@ static int mt7621_pci_phy_probe(struct platform_device *pdev)

 	phy->dev = dev;
 	platform_set_drvdata(pdev, phy);
-
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res) {
-		dev_err(dev, "failed to get address resource\n");
-		return -ENXIO;
-	}
-
-	port_base = devm_ioremap_resource(dev, res);
+	port_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(port_base)) {
 		dev_err(dev, "failed to remap phy regs\n");
 		return PTR_ERR(port_base);
--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
