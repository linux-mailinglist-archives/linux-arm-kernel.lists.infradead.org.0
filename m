Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3CBBA2A9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 14:37:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8TY/RnPrabpNg40ag44zo6CbCblK8vuG4gN2IPZvzuk=; b=ugfn0/ZPrYXELl
	6VHyfAxR7D1wI+0yNaSn7Sl6XXo9xBk68d47KqjYMGnjSqWV6RV6KtDsImRp5d2wZsNdwAa30yFTe
	c6tmMa6PAIgEwoCn3hvBMtXlupa7RPduP5e1eFv8lc57MRQfXI3zxOjPTQg1hSgA9rw5R6+09Q+1Y
	uqWZCBkvf0LUSxviWrhSq/e6WjIP3juws4IOEy9OIU+uN2unbfNEfKhISJiQrsUwfjRQm8V0F4dwi
	6CR/43YLQ97GWXipR3reMkX6Kem8t3/V+blY2HmEBBNxV6tdKLPlwGvYfvqcnGhi2LyIhfpECOaIi
	e5BdPK9SY3utplvPQnpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC17Z-0001Dc-9M; Sun, 22 Sep 2019 12:37:45 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC17R-0001DE-2P
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 12:37:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1569155843;
 bh=ZoL9rSRGY/hMR5+RyJQUdt0h2EOtukOtB+LPCYWzxKg=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=awYcnYuntF244h8HPK1yiYcZ20b3UVlusPYc7qekqUfjgxjTqQwt06n23g2JEi7R2
 cD7M/sSKGT948+AzQMWyaLw1SGkMEETpmkk+ZGkeMP/BjCppJGM9XYKRP7LFlezlCs
 NO4a+6PXp79tFiLbZ0UryRQ+EfoGHfloqTQLEFBc=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.8.78]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MMEzJ-1iHFmg1Ej7-0080pg; Sun, 22
 Sep 2019 14:37:23 +0200
To: dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dan Williams <dan.j.williams@intel.com>, Jun Nie <jun.nie@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, kernel-janitors@vger.kernel.org
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] dmaengine: zx: Use devm_platform_ioremap_resource() in
 zx_dma_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 mQINBFg2+xABEADBJW2hoUoFXVFWTeKbqqif8VjszdMkriilx90WB5c0ddWQX14h6w5bT/A8
 +v43YoGpDNyhgA0w9CEhuwfZrE91GocMtjLO67TAc2i2nxMc/FJRDI0OemO4VJ9RwID6ltwt
 mpVJgXGKkNJ1ey+QOXouzlErVvE2fRh+KXXN1Q7fSmTJlAW9XJYHS3BDHb0uRpymRSX3O+E2
 lA87C7R8qAigPDZi6Z7UmwIA83ZMKXQ5stA0lhPyYgQcM7fh7V4ZYhnR0I5/qkUoxKpqaYLp
 YHBczVP+Zx/zHOM0KQphOMbU7X3c1pmMruoe6ti9uZzqZSLsF+NKXFEPBS665tQr66HJvZvY
 GMDlntZFAZ6xQvCC1r3MGoxEC1tuEa24vPCC9RZ9wk2sY5Csbva0WwYv3WKRZZBv8eIhGMxs
 rcpeGShRFyZ/0BYO53wZAPV1pEhGLLxd8eLN/nEWjJE0ejakPC1H/mt5F+yQBJAzz9JzbToU
 5jKLu0SugNI18MspJut8AiA1M44CIWrNHXvWsQ+nnBKHDHHYZu7MoXlOmB32ndsfPthR3GSv
 jN7YD4Ad724H8fhRijmC1+RpuSce7w2JLj5cYj4MlccmNb8YUxsE8brY2WkXQYS8Ivse39MX
 BE66MQN0r5DQ6oqgoJ4gHIVBUv/ZwgcmUNS5gQkNCFA0dWXznQARAQABtCZNYXJrdXMgRWxm
 cmluZyA8TWFya3VzLkVsZnJpbmdAd2ViLmRlPokCVAQTAQgAPhYhBHDP0hzibeXjwQ/ITuU9
 Figxg9azBQJYNvsQAhsjBQkJZgGABQsJCAcCBhUICQoLAgQWAgMBAh4BAheAAAoJEOU9Figx
 g9azcyMP/iVihZkZ4VyH3/wlV3nRiXvSreqg+pGPI3c8J6DjP9zvz7QHN35zWM++1yNek7Ar
 OVXwuKBo18ASlYzZPTFJZwQQdkZSV+atwIzG3US50ZZ4p7VyUuDuQQVVqFlaf6qZOkwHSnk+
 CeGxlDz1POSHY17VbJG2CzPuqMfgBtqIU1dODFLpFq4oIAwEOG6fxRa59qbsTLXxyw+PzRaR
 LIjVOit28raM83Efk07JKow8URb4u1n7k9RGAcnsM5/WMLRbDYjWTx0lJ2WO9zYwPgRykhn2
 sOyJVXk9xVESGTwEPbTtfHM+4x0n0gC6GzfTMvwvZ9G6xoM0S4/+lgbaaa9t5tT/PrsvJiob
 kfqDrPbmSwr2G5mHnSM9M7B+w8odjmQFOwAjfcxoVIHxC4Cl/GAAKsX3KNKTspCHR0Yag78w
 i8duH/eEd4tB8twcqCi3aCgWoIrhjNS0myusmuA89kAWFFW5z26qNCOefovCx8drdMXQfMYv
 g5lRk821ZCNBosfRUvcMXoY6lTwHLIDrEfkJQtjxfdTlWQdwr0mM5ye7vd83AManSQwutgpI
 q+wE8CNY2VN9xAlE7OhcmWXlnAw3MJLW863SXdGlnkA3N+U4BoKQSIToGuXARQ14IMNvfeKX
 NphLPpUUnUNdfxAHu/S3tPTc/E/oePbHo794dnEm57LuuQINBFg2+xABEADZg/T+4o5qj4cw
 nd0G5pFy7ACxk28mSrLuva9tyzqPgRZ2bdPiwNXJUvBg1es2u81urekeUvGvnERB/TKekp25
 4wU3I2lEhIXj5NVdLc6eU5czZQs4YEZbu1U5iqhhZmKhlLrhLlZv2whLOXRlLwi4jAzXIZAu
 76mT813jbczl2dwxFxcT8XRzk9+dwzNTdOg75683uinMgskiiul+dzd6sumdOhRZR7YBT+xC
 wzfykOgBKnzfFscMwKR0iuHNB+VdEnZw80XGZi4N1ku81DHxmo2HG3icg7CwO1ih2jx8ik0r
 riIyMhJrTXgR1hF6kQnX7p2mXe6K0s8tQFK0ZZmYpZuGYYsV05OvU8yqrRVL/GYvy4Xgplm3
 DuMuC7/A9/BfmxZVEPAS1gW6QQ8vSO4zf60zREKoSNYeiv+tURM2KOEj8tCMZN3k3sNASfoG
 fMvTvOjT0yzMbJsI1jwLwy5uA2JVdSLoWzBD8awZ2X/eCU9YDZeGuWmxzIHvkuMj8FfX8cK/
 2m437UA877eqmcgiEy/3B7XeHUipOL83gjfq4ETzVmxVswkVvZvR6j2blQVr+MhCZPq83Ota
 xNB7QptPxJuNRZ49gtT6uQkyGI+2daXqkj/Mot5tKxNKtM1Vbr/3b+AEMA7qLz7QjhgGJcie
 qp4b0gELjY1Oe9dBAXMiDwARAQABiQI8BBgBCAAmFiEEcM/SHOJt5ePBD8hO5T0WKDGD1rMF
 Alg2+xACGwwFCQlmAYAACgkQ5T0WKDGD1rOYSw/+P6fYSZjTJDAl9XNfXRjRRyJSfaw6N1pA
 Ahuu0MIa3djFRuFCrAHUaaFZf5V2iW5xhGnrhDwE1Ksf7tlstSne/G0a+Ef7vhUyeTn6U/0m
 +/BrsCsBUXhqeNuraGUtaleatQijXfuemUwgB+mE3B0SobE601XLo6MYIhPh8MG32MKO5kOY
 hB5jzyor7WoN3ETVNQoGgMzPVWIRElwpcXr+yGoTLAOpG7nkAUBBj9n9TPpSdt/npfok9ZfL
 /Q+ranrxb2Cy4tvOPxeVfR58XveX85ICrW9VHPVq9sJf/a24bMm6+qEg1V/G7u/AM3fM8U2m
 tdrTqOrfxklZ7beppGKzC1/WLrcr072vrdiN0icyOHQlfWmaPv0pUnW3AwtiMYngT96BevfA
 qlwaymjPTvH+cTXScnbydfOQW8220JQwykUe+sHRZfAF5TS2YCkQvsyf7vIpSqo/ttDk4+xc
 Z/wsLiWTgKlih2QYULvW61XU+mWsK8+ZlYUrRMpkauN4CJ5yTpvp+Orcz5KixHQmc5tbkLWf
 x0n1QFc1xxJhbzN+r9djSGGN/5IBDfUqSANC8cWzHpWaHmSuU3JSAMB/N+yQjIad2ztTckZY
 pwT6oxng29LzZspTYUEzMz3wK2jQHw+U66qBFk8whA7B2uAU1QdGyPgahLYSOa4XAEGb6wbI FEE=
Message-ID: <85de79fa-1ca5-a1e5-0296-9e8a2066f134@web.de>
Date: Sun, 22 Sep 2019 14:37:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:LOEoO3e1HjDq2nqUHuxvqMDK/yYBX6Gy7vCJgGLOF5eZQqZ7WZC
 tpZZ/1BrkoqC4rDc8oB9h7LGQk4Xn8WE+xH1QB0JAc2elmhjcI7DQBc8dMCfbGfiq3LSDST
 1ike6eJUP7xbwDBJw5eSnkM1SG9uHHKdYATFC8kQjdJ+/J+PK6v/VuBbzanUiVp78O9QQ4x
 +++7PliC8atxMbqhWAoMA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YFGd7ygc9dM=:B9Ui2zdMXQaZPy/wrce6xK
 f22ZfLDXG50YlIeVA+6XQd46HMfu/B94JtwC5DoqlGFeFamGDojoZ0WCFd2w6cTZ8aw6hg+1r
 KKa97UfeJCWk6vi9dl6lNpAqh1osMoT56psvn+9I3hMIc7eW2IIokfsEZb3SbswBZYEfdZ+SY
 jvlc2ArA1YqpmmvsQp1Zj9CNLTXwue9Q9wKFxszpZ5p0HgN+BRinh9AIJCe94qLRJ6sypEUfn
 KJ9ppCmjAUcwKFj+DwQBNEHaABM9Tq1hWFbinc9W6S/QGT0f8byOJ9AFj6OwZvFNOykhPnl2N
 g7u41CTxlKtqAfnxFDi7mYvsEPtIQ+5WMocDoIJ0lgBVjM1HQgoxjzMBmFB0skSMsVXVJreCJ
 JTmuHDhrGGk8bmaiQ9/7qY8GjOim0AvumSC/NUS6DjNgClu0OS9ovwGZKqUwZWnfqMOFeEBpn
 ya3TsTY6th/r9/ZRLe3YuPHsNndmH3Y5Dt4J/zDxw7QkwcDUP+5RxFJcM1JX/7YFGL3DmKwYv
 hti0jKjn0wLqfC4sE3dEnUat3ESctlfXCg70mXcX/X3WZePQDKq54BIsPfucw35/zPFU1yJXz
 tO+vb7c+xcIvvwfKkCr/D92lOGS2M3pSHiTpmPjZz4uKOjKhJOs1PCXnB+70DiQMpmmJbaj2O
 zGWjmmAqF2lkWwrNYXZp+JWcJV3SIAouUB+Dpvq6Ojp7rbVGvW8jlcUfmY5xzTOsm+diBBk0d
 LndMLvmCw5gfO2QeMkieEsh1qZ+MZ1IuSj8Hulx+de0cAGHpbcBZCn7UJ1a3uVN47B2NMtmnN
 CGZmTXXYcMVUt6C+RhUmR5NPuKE7zNpyoZUjLrFrPNvg3eKl26Nh8xKpkpuEFyxvcGFXh9BYw
 f/C+EG5pg7ipYnZ4Z1dx14iI+AMUc1attF1RkRuVUYIRhypJqofU9TMCvXwlJk5xaDLjtgD1R
 MBleTNKYgMW46gBRDvjtUHRx5sPPibq9HS4XrewzwVoW7BRSdxoMgqFLeiLM3hiT/WhM6ODTi
 D2tc5iMrh0BzBNoSlL7ONtfuuBFG2QrpFhh8hvgawsrdl9i9fdHge3xNLvjJSIpUM7wJ0bM7C
 Qe1rO4t3D4LX284zNOf9NFUX2XMivbzfXo9UhAhKX+h2X5j3oshp1HCDhDhh+HBV55I4ZnlS0
 2TQ+bgiSB5v6D08y7v5JaTUpplJEBjFToBqKMuCsFqLRWwVxyjLmFxwQm5/TQsqJq09YuH0Z3
 JmOlY1qxzUUpBFN5xZ67fTeUPCWjkAe4bWYOwbpQUB5LJwA++XbQVtjSoy/g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_053737_451341_053A568C 
X-CRM114-Status: UNSURE (   9.31  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Sun, 22 Sep 2019 14:32:12 +0200

Simplify this function implementation by using a known wrapper function.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/dma/zx_dma.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/dma/zx_dma.c b/drivers/dma/zx_dma.c
index 9f4436f7c914..6b457e683e70 100644
--- a/drivers/dma/zx_dma.c
+++ b/drivers/dma/zx_dma.c
@@ -754,18 +754,13 @@ static struct dma_chan *zx_of_dma_simple_xlate(struct of_phandle_args *dma_spec,
 static int zx_dma_probe(struct platform_device *op)
 {
 	struct zx_dma_dev *d;
-	struct resource *iores;
 	int i, ret = 0;

-	iores = platform_get_resource(op, IORESOURCE_MEM, 0);
-	if (!iores)
-		return -EINVAL;
-
 	d = devm_kzalloc(&op->dev, sizeof(*d), GFP_KERNEL);
 	if (!d)
 		return -ENOMEM;

-	d->base = devm_ioremap_resource(&op->dev, iores);
+	d->base = devm_platform_ioremap_resource(op, 0);
 	if (IS_ERR(d->base))
 		return PTR_ERR(d->base);

--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
