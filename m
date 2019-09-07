Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A37DAC64D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 13:23:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ljVRLA9vjZbPGzd3hLy/RDggDPYPfx2v5T8HijOucJM=; b=coksEEKi2c/F1P
	8DmoCbozwp9tV3IFT5QNMFwH+421xyOBUZ72HjK3esoN5G7iZTP3B7t7+IQ1xNtkkZPHkiMVUTK1p
	0hSLsrr3mjIFiJM69kVwiSK568OQNv8SZUSk9Pn41pOKc6kzdMbZhNrexijyqs1AKPeOWUoeCug5V
	mfF427BfVD3PRYcAGztM8Ludql+7ELfsK/ecbnwHR/nMCm2fwKXOv3P25J5W3NXgmtbMRrl/ieRe0
	JrKmrVKuuhYj9uN50XkqFRLT9RQdTwPvEOMdKcaScIaQlcz4QFt9D1E+B4KjUyCIw/KYdMqjusexZ
	DMqfSLtcrY9660ClI4Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Yob-0008Er-6b; Sat, 07 Sep 2019 11:23:37 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6YoV-0008EW-03
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 11:23:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1567855404;
 bh=OeWlcpalDQjrfwI6M+xwT1McNzIZ+jJtAaTvHonzDrA=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=kd4hk2eeVBJJzYD4wChh+VB3LfXyg78RI/AKif/o5WxiW0USwBuF6PuC3yid3x6JR
 OwKdAm/Im912eeOBfAiIZY+nQX728atY/Q9C7KkMTirnKzusCIBBg8M66nutfZkt4k
 n5f9O5BTTzUUC2tpXzNNIS0JwkjFb/1Sgfv+KBfg=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.243.16.142]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MVLj0-1hebpK2gG6-00Yfka; Sat, 07
 Sep 2019 13:23:24 +0200
To: linux-arm-kernel@lists.infradead.org, Liam Girdwood
 <lgirdwood@gmail.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Mark Brown <broonie@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] regulator: vexpress: Use PTR_ERR_OR_ZERO() in
 vexpress_regulator_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <1123a2ab-48f9-f41f-cabb-9b45310cb77e@web.de>
Date: Sat, 7 Sep 2019 13:23:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:ZMEw6cUa6AZoS9zgK+mtTZnQzj1H3X2Ly4A+90A6QurN9wPrvkg
 K03O7UJAjEGyYZJn/C8yeqigsX66+ZwN6kUEdIxk6DlGqSWIiPQGh+LNUdX1xNwRaagyhGg
 DVy64zt4jnQEJ2ayLtgZFwdhZqWvMZUMtgFpxMHG6k4wZd+tOXgvWeB6q8Xj37iXo9iMB9Q
 j55RT7i4476fhB4mskOjg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:v35Wp4ofvpY=:b8XWymEJqHKenzerBa2lJz
 63FRsvzOtJ7Rl3oBlO5SJp5biHGAjozV3SY0k0e1wBpmdqhdKT27E3DDpql3ulKnYfZTpoTfI
 EiyRnfa/5+YUtE0aL/FYR6DKDrSwuZnGVljntx182ytKOMQE66AhM+qjiJBc2kDxXLuLDuFvZ
 wXKj3UP8HeqwsTMYzNDeVMkezjpEb4DTFreAO9I9cgzKF9OHYRGV8rHnQ0849IvrtBa+b9OfN
 P3YZak86bJoCgIkYlvlCxyeuOTKRS4juU9tteBQP4paSpy3XItFItX1vLJjLXVrGr1nSo9oDF
 MRIcgFFmxkWtSwub8FCeW9qs3YJ7HqZ9giWMGD0jTJ2wLLHbPLm/g8mXu6Vv2vVoHyTdbRhZK
 PFa8+fwF1sLQfvL6nKV4bCqNR+Qr1VIhQnrpxYhEMpHlOn4Fh5UK90k4sdLdlK98WZglpARdg
 mDXEkvCIywuvWSDdGLST5Mx+KdITve8mkbvuiBSEDEACX7eOF1jQUQoEekAcX1NGgVey0gjG7
 97qDKTihe4t+l6dKvZOvq/Kh2bSdhbnE0564e0fA4JwB/WB/KClfcqeHm0x7zy4DhuFk8RuSd
 783/ujgy0OSPXbB4Y74siLLbkpdlsWsM7qlopkhL3LnVKkttwrSgcrFRyUfwhYGpq+bQn7sy9
 VKHUYnl6JINmDEoTvPCPxkWrRL2++8smkGdsJhFOrHRMMvjPiafr+YpxIJIEnQJPALxZdVk/O
 bDdfywsNnq6ZlksQCYwkQHIs0011EywCJS+Dk8JMkJM/p8C5tkcNy0EgfKXM+hRnYSdGTQ+c0
 3cPpDPLYMfLDY6tyD5nNJjpRh7YQdHMx3gNkTyeEpX9gY0v8XcqgNBwWJCJ5mzU92BoACYpLP
 x0oeMAYECzKtgZLC8Rb3wnevd+jUyB4OEtKtgihhpHVnWmgNEZywbSM+Rrnbr4Jb1R98FMRaW
 /ZuWL4JXGFx1Lwm9Nsv/Zr4LBppxP6hru4ik4I98OKoXj7Yc0zy0faG2ImC5su5E1zABGVSsq
 0PNZ6rkttQ1V+QcOuauqeS1Q+ArU4SCGFXLlddB/WADTAk/zdwT0Xr7W3EFLmRWfM64gOyPwW
 L68h6OprbQTmZzerE99uEuQvlIPxSxJuPG/LoXM0cYj8UEsT7XdGL9CWTGl6uCCsuRqx+hRrP
 ygkBLH85Biqdaw58+JTZmXROxPWP7No4FE+fC73zmg7LjVRnpudRWjfPljTUs4BQIM3PIWDgC
 OlgTYgOgCgFVOnIG9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_042331_375534_ADA8724E 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Sat, 7 Sep 2019 13:07:22 +0200

Simplify this function implementation by using a known function.

Generated by: scripts/coccinelle/api/ptr_ret.cocci

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/regulator/vexpress-regulator.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/regulator/vexpress-regulator.c b/drivers/regulator/vexpress-regulator.c
index 1235f46e633e..5d39663efcaa 100644
--- a/drivers/regulator/vexpress-regulator.c
+++ b/drivers/regulator/vexpress-regulator.c
@@ -75,10 +75,7 @@ static int vexpress_regulator_probe(struct platform_device *pdev)
 	config.of_node = pdev->dev.of_node;

 	rdev = devm_regulator_register(&pdev->dev, desc, &config);
-	if (IS_ERR(rdev))
-		return PTR_ERR(rdev);
-
-	return 0;
+	return PTR_ERR_OR_ZERO(rdev);
 }

 static const struct of_device_id vexpress_regulator_of_match[] = {
--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
