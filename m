Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F27BA208
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 13:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TR9+sQOg3ATJCnNpxRIaH8RjCosXE+l/hJdrN8Uw/Uc=; b=bBGyrbpWaE/47n
	ziXE6BVpqyz6NmV7hm+8KvuX1DRZiGisIwa5ojudDUYs/RJ+UrD4lrob/UptCTIk3qdvsfEvqzdUH
	xp+s123PqLvmETARKpl8ren3ih5+DsA7QWBfo/Y2R3gxDZsophw/+fUltTmy81kvBCffewaIx6hh8
	Ci6lXVmSW6PKAHNuU4rpT2b83im22BUeKH30YY8AYcaG/+SWGxoZ03KsXju+sIuD5DBRigQqvNPl1
	A5gRB7fVLxKuQJOvw1G7FPrTusiBisZ7wJd/ZBpkP26IucIJJVOybWPpMQtwUiH/OQsbHp3zv4phw
	SNwWqBCX/9yKPt7wAdDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC056-0008DM-7W; Sun, 22 Sep 2019 11:31:08 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC04z-0008D4-ID
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 11:31:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1569151844;
 bh=kC76RXvfJTy1HZUekXpbmi7oxCJC1XxnD+EiRjMIZvo=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=EAhfm2pN+jW523GMafYEw+FVFzrL4bDED1EDqskmS/0ccx3hWzDCk5iiOmtFXjNQw
 rYYqvjVDcEmOVI7lkWjsp6B11mizPO8Zk1C1VVQ+1R9lXuAK/sRaVyzGTq6BBHsliA
 4vCzdx4VR6X0O9s4WfsVyAZpqKIKg/xuLX+tb/ho=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.8.78]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0M9os0-1iN1ch460m-00B38s; Sun, 22
 Sep 2019 13:30:44 +0200
To: dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
 Dan Williams <dan.j.williams@intel.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Vinod Koul <vkoul@kernel.org>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] dmaengine: owl: Use devm_platform_ioremap_resource() in
 owl_dma_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <d36b6a6c-2e3d-8d68-6ddc-969a377ca3b2@web.de>
Date: Sun, 22 Sep 2019 13:30:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:DjgGZJ2CdVmeeHm5b7Ehe3aT2ACCFpE86w/u10/ZvEVJMvN2S6B
 sL85AWmfmP8feL8NN/2F8OEGGmyFkFcJHKAIfAqMcIKiW7Gbvk//O27IEr4BpaqXIqqVeMo
 WUXy8jpHqE+eO7/Nof2Wdtq7zO5iq7puvnHjKBq3q4D+XQ9XPj0HY7bhoAKJ5TTQfRNhp9p
 yp4viTOfuHIy9mHlgJESQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:npTUmH/GVX4=:5D9q1T1bl9fyv+TyBzQAU+
 ZiitkRZYzVCQ3nsO34CA9gWtb6jNdFs+o70D0dKiiFS1FFw9FNVnZ4nCTbrn24yHv+wW6yJy5
 hGyhnZA+uSE265JUawOoJeupEDdd176i/SbHbbp+sXX7YYf2CnlDT9o7nhEJyhDlQJIWCMooz
 ckxIjDcvBmb7xEJDqsHKbTd8g6RxodBUIDt4megD2k576r0Ew14ua9B5W/USY8GEf9Z0jOwBM
 3SyBEeT2wIwdfptJigYbEyoM5Fhb7saueupsO7ctJ6oZFDASPqFdSHO95r9GMSzCJ8NjHxiIH
 wNRltuRzrOWRRq0P7ue58HdWNOLmOMm7xIAhTGvVsFvvi93CJoTImJCgA1nvgyngq+JnZJSg/
 HmSZCg7/d95me2LeltV1iBcoMuZ3qG9EX4Nw+r1Xvz/iTZjoh7mv3+MhP1lBznAgB3wJK/9YT
 dr37SikcxFcKN5X4VvrtPST+SsFiPLdARcnGfD8VKXFkyvmuVJZD48l+QGhzErXdwtPdFcteM
 hJ07hn4MJlgSzjNsUqTlRktzIlKZabnm9hm1bGBd7DiWvROmU0mrIKAohgIrQ/YuXoAGGp3IO
 0zc68nzoq9CgRaTCIiJGHMVxZKtyjwH7o5mSpBAgyKxNUHVYjwj3EvIuPVVdpZW0isK+BP8e/
 4L/vEpgSV6KTzRYHohFRxDMLH4/xcvldSK4V4ojzHNKCgSC/Po22hYft13f8Dr9OXJQKzBV2s
 INOfEjY0qBTJ0ntW0eonT59OZqtNvE/2R3own8+kqg9voxTQkkWXxroG6ScAD7HKltvdJPH8F
 AqCfj6KfYkOYuDfvUR//LR1K0jHeJWaHpwgG/2bhq3pm23NC6S2/8firTs7RLyiEUkM7o8S3/
 upaN/TsxdoTTr8Dqu0cVUkX2ZGns+tfxnSNIjXwVWCwc5280cdygy7ITk+GTvf0E+FTbgCyCW
 dE+jga4OrEww/0Bb0xxEkabxnAbr084XQ3XDVD2Mc1GcyXpTXZa7ZDdGjo20K03i9cR5zLQGt
 qU6vdaXTaCMr63M3DZj1kmJaxIi8liwSVkP6Y8V9Mb/M6d+3wIHGpR+t14xe8oxrN9siL9Dhf
 r3VtV7eMguF33rg+Ovi0MNN2b4oAVhoyU3EiL6slzkgTr5sNoJyn3TsNgb2cKKdfc+oRBLLVS
 inRnrC81nWDI6TKF1UGI+RwQj2h7hXNuH6HgfINnAD3EmCRE58uJHk1vx5ytgUMRB0kFCSUIQ
 95N0UoVTZ9pxXShp2gOs08QNR2etXuQKIrI4bFBWgn9lzTAnUyfE5uG3amCA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_043101_929208_6CDCFE1C 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Sun, 22 Sep 2019 13:23:54 +0200

Simplify this function implementation by using a known wrapper function.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/dma/owl-dma.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
index 90bbcef99ef8..023f951189a7 100644
--- a/drivers/dma/owl-dma.c
+++ b/drivers/dma/owl-dma.c
@@ -1045,18 +1045,13 @@ static int owl_dma_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct owl_dma *od;
-	struct resource *res;
 	int ret, i, nr_channels, nr_requests;

 	od = devm_kzalloc(&pdev->dev, sizeof(*od), GFP_KERNEL);
 	if (!od)
 		return -ENOMEM;

-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res)
-		return -EINVAL;
-
-	od->base = devm_ioremap_resource(&pdev->dev, res);
+	od->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(od->base))
 		return PTR_ERR(od->base);

--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
