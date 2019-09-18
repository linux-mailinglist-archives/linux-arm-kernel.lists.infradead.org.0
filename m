Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C4DB5EFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 10:21:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WoMwMhn3SHqnxnX4LjVcmGVTIT5T/T1fs9sHhpwo6ak=; b=lss+5tvSFjtLsY
	q3m68JN5ImID1i7y/pP/5oZxOttpd9/TmB+5xK1jfS70+yQ/C8VV1iOqUx2s/ykB0PEofghmPyGjt
	H2S/ipkZdrv5EUg9sIoltkN2Rm0PpuIrF4i7ziF8wh/+SZpKIbaTj8WadJwa0QyA+SgeTZojMaqZi
	bap34RJkdzN95dEHOpi/N+Hnf7FIOQlzmKKlK6Rhz0BFvfELF5uTCFrDqSkWLslThlZN/aoTL2lSS
	yeb9NSQ6PB0ab+qkrT1c/rTOXTlv13ytWW5EaLM73z/biId40z5zA0ivuMKOK0VgfkAPddiKgmMBI
	fIxS48kexetzzAQEd8Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVD2-00031P-Kn; Wed, 18 Sep 2019 08:21:08 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVCo-00030z-WE
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 08:20:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1568794814;
 bh=kl3+5d55kYmOUszrkbFC3X73LvbxfWH1DxtIwtNLNjU=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=kmdmc3/aLDz67yHqHKf/aFEPQH6B16k83DlRDe0pnxEo9oxWm71VfoshcXcwqLVll
 ouOxIw26pTAJOb6mY6jZYR/8/5zKsLyETE1P5/oiYwBMPKSxFBjJAuxTc96eciCF0x
 K6+HpCfz/NWlUGtHLCSqD1UrIO9NAD1B5ChjXCn4=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.2.101]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MI6F4-1iELkB3BGQ-003rsn; Wed, 18
 Sep 2019 10:20:13 +0200
To: linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?B?R8O8bnRlciBSw7Zjaw==?= <linux@roeck-us.net>,
 Jean Delvare <jdelvare@suse.com>, Joel Stanley <joel@jms.id.au>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] hwmon: (aspeed-pwm-tacho) Use
 devm_platform_ioremap_resource() in aspeed_pwm_tacho_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <cd5bab7b-9333-2a43-bcf0-a47bbbe719eb@web.de>
Date: Wed, 18 Sep 2019 10:20:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:YMH6mg5kaUBoVv5GIonZBw2R5Sy5Htur1qU8tdIJrLkDBp0mvJq
 vQbHswXf8bSTtwFt+rNDn6rqLKFm2hgwvSwQVKPLFBhFKc9HWUv7QDVrGinL5bpRulYoczJ
 90Vs1FYYA9TDXaS84R5WRJlCtBV+Kgdups8L6ARUR9VJEb1c447SEjPNI+o2wpa3oKWWrXW
 qgbksN600FHMU5mp/e2Zw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BTQOmjhTucs=:xhbddetTM6aK/WxSnm2mMs
 o/fjSY374/ChhA7C2IN86A85PLDnEyiFTRzfDAW90r/ABxoJkgFHl/FsIf3xR3AkEXOd3Lgoo
 HlG+KAVUdzC+jORMxuyBOspI7IJGrN5mjzVxykuO23mcCr0Srp0oVaRsZlaHQ+tf36z+n7L/o
 eXwVgioDvec2QW39CeGZ2g4ERVcH6oVmHb8KJhCNR3FTTvH65Tpdv/P1SYvWvxz0jkwECpH0k
 VtgIeMDjnsOTsOyNh2Bhk/0d0XDHNX9IQtPhqaHiN7B+J5u8LAQksH0XqrodCiMnIQdSnior+
 feNbAsHq+2E6hSfnQEBSLcknNIFtSs2hVbYFmxJvHUFooe6XN96UoCrwOI39Ljne7Nig5ej5m
 8OkKtu0uTEvWao++m1AHfaKlXeDea5ZESTUPFEYLi6QrCV9qbeVndxLQ5Lm5U6smM7byH5cUr
 AkjT1RN+TAPN9BEKVJS4w2OMTeAjTyQafTzblHpvYHZTdW41JgGROAIRpiXjbfc3xjVUqOXNr
 yljUVK8eGP7EXOl1FjEraOUIXzDA2BKMl4bexWhVyh5REkifcQJr10BlehROkllKndx2AYogI
 yQfYcROWEmCPd5PkvAHuQ5TLAjexyRaGAvP3EZ1kmY4Bn19odLAPnHD12tf260dtnd7+JTMlI
 i4zvTCKP54Bm1sMWS8lX5AKSEXdfOcrkpj1dRvzGXEcRhSBMa6E+QiQRJHSLfy6j4YHNGfn2o
 vmcTf0PdtPWIYDXkDak1BtBQW4QWat5vNNhz/rY+COgNOmPV4bQxORSZ2K1PB/RvjfGihNUqk
 pveprS68926uK9s3smXscWmg9FsYBuAaI+zyosTt5X7vZRhMMH4HY0KBkGUg/BNFbdENEe3Sh
 WkUOkouSik104WQrZdXezbbkfK8AxTyvfyHuuCUwK7BGpqX1p/56ee6zRzCqvZahfXDPGxXaz
 Oa51NkVErWfJqq75Dgz5wAgHzvOO0IGe6TLFhHduleV2mtnlBjV3EYObW2IxK1Qm7NMyL8LSu
 C9uPt1czKiEQ7YJm/jqUZuliiIPoWX+f4lvcd7FUuVGpW6jM6OGYfpFkGpFh55B0Cv+J4UAQV
 ah8WnGaad1UlqEOPoph5H1G36PfhxMsg69+R/VysFpOLVedDhkebBozUg1rWeuUd9DcRYjnki
 3lqMLjwvvRt5/wrCaj+ipjC1mnnfFik26ejkoV/ant4Q0tNlLuxmwM7MCaV2I53UBdHyoLzpx
 EGdlwrafxexMXK9a/ZHuaz4weNco4Hr9H2cfidr+TzauOymI11pEe0rRjYRA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_012055_373073_22F9C201 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.3 listed in list.dnswl.org]
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
Date: Wed, 18 Sep 2019 10:12:31 +0200

Simplify this function implementation by using a known wrapper function.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/hwmon/aspeed-pwm-tacho.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/hwmon/aspeed-pwm-tacho.c b/drivers/hwmon/aspeed-pwm-tacho.c
index 40c489be62ea..33fb54845bf6 100644
--- a/drivers/hwmon/aspeed-pwm-tacho.c
+++ b/drivers/hwmon/aspeed-pwm-tacho.c
@@ -891,17 +891,12 @@ static int aspeed_pwm_tacho_probe(struct platform_device *pdev)
 	struct device_node *np, *child;
 	struct aspeed_pwm_tacho_data *priv;
 	void __iomem *regs;
-	struct resource *res;
 	struct device *hwmon;
 	struct clk *clk;
 	int ret;

 	np = dev->of_node;
-
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res)
-		return -ENOENT;
-	regs = devm_ioremap_resource(dev, res);
+	regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(regs))
 		return PTR_ERR(regs);
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
