Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D62EB9EE5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 18:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WsqA/3QUYf3CjDAEqa/GBshEkKkQpuivcaVJY38kCs4=; b=RbD1FjD4UQAta2
	ZrrmMN5jhuWUsShH617WsfjLC0IfcbuCMUbvCbytQ6Ibung5V0zpXueDMVLqW+fxmAKN4b5ONmOFF
	Hos1D8KrnYMXzLm6H9QfIoFzhwbt1hcDm+ymV0FqB5YsYHM/m3eSVB92NnmeG+Upd3yI0kQBZpQCT
	rXdMTW4REIjUgpYMAEAhpsXXuIzp7PTdhC06DFKmnZlv77GJ2+bO3h2KMqbDfT1oAt2lbnMT0v7uz
	H/3XwB2kgg+0P58eaESa7GALs5Hj2T71EftpIHIKsTTBnJTpTePTtvnBU5qE8Kc1pQa0Xn3n0KaLI
	vK79eHBewjWe5W77WEWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBiXw-0005y2-DL; Sat, 21 Sep 2019 16:47:44 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBiXX-0005xi-Ms
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Sep 2019 16:47:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1569084401;
 bh=VUVk13mdIUuMlRF55b+yf9VzEN/rt7FIag9gQ7yHvvQ=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=a7a+cked8wXeIf3EPnXl7PvX4eEeRHzUb6L1srpbb7MlvpLINB02aK4DwQHarnvuB
 UyNVj/05felNEjC9/2z23aOMVoVRi1QR5SZAA+uplssDaHeU4xP4jLTu3aStBt/09p
 EzBk1uxjkjzrvxjmeT03Do7QXarQwrZPdncGHfac=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.64.44]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MHowb-1iD6Vg1oQ1-003hfK; Sat, 21
 Sep 2019 18:46:41 +0200
To: linux-edac@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Andrew Jeffery <andrew@aj.id.au>,
 Borislav Petkov <bp@alien8.de>, James Morse <james.morse@arm.com>,
 Joel Stanley <joel@jms.id.au>, Robert Richter <rrichter@marvell.com>,
 Stefan Schaeckeler <sschaeck@cisco.com>, Tony Luck <tony.luck@intel.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] EDAC: Aspeed: Use devm_platform_ioremap_resource() in
 aspeed_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <baabb9e9-a1b2-3a04-9fb6-aa632de5f722@web.de>
Date: Sat, 21 Sep 2019 18:46:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:gq8XlCdUOHM8oIbnPHW7UAQIq6Z5GsKadnkCt5VEwli0lbxdNOF
 LIEuJRSDw9nn014aM1FIr+hnU/EJ1QAKjxQpIjtmKrvezGfZiXoDqhy8MsYX4y8gMXPbpr7
 2iseSo6skajlINOGRWd9slaRrg5HfQBKDa5IJB+MoWn/YKa9V8/3ERs8WoDFMQIPx4aYGFY
 jt/c+YYhfT34FpG8ceg0g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QD/ph56ifWQ=:/g/6NYAoFeNETfJu6fX7VS
 yn7MsENZLO5jL/NPUXnYL49deoepaWh1gAnlH7bfAfWhjdXhTzlxlT6LeHZN4Gvcv+FGJNqIh
 cBbErHIvZRio1nj661HYY8qumbm6DxIk/D78rAPQVwqG7AnXQTS+n/2G17Wwbrt/FzBJFCGMe
 rmWNGon4D6St8JoTWKZN1gVhOjXhhf1RvtGJy3+g/LkF0k0f80+Earfc+zUAe271eqlbx81+/
 xO0XTHBVJvP0akZ5bpvhUCmLfg758MKNzybwWoq6BelHJqM5Kk7FL5t1QYbsnC+5GGvW/obt0
 0/axzCrdf8h1uJyvS4LA5743Nmr6CG4YhJLU2pTjyPthFIEBmRhyUvl83WNqDpXt9y45XTDxq
 REbrOo2xUHgEt0tJLnNTraDVth7we3apsvVWXpLHRKJ4Dl3y8UsY0eRbC6Ymz50hMpUywS0Cu
 0flG2jjub/fgacbn/bSDTEH/Xmq70wSYwGsnMkpFeSc14/J0WUxCJDIDbSb483Lio8mI6Nwny
 M8E8Y+aEmByNN0XGvSl6XLN/2FnvVZdxbJj0pgymi60TpQ53NAYw64PDCOmCT4bqiNjvUrale
 2mdF6Wr2viDdQdjWVhyCribam/x8aVF7f6UKg9zHACE3gyAY4IVBu/gnWfUpG5wG26JqHGmJz
 MW6bwlKZ79A6Uh39J+qPIleohoIPUjVhaUgWvyyGVCODtBpDnKF3to5Rrix5crd0A6EgfNu4U
 UzqeM8Gu8xc0nF0/YX5+lhiGVSVAXmwePtNW0o/Lpkul93GvSSS8FbzhayMr4I3oszHLqex/b
 LeRd9FXoqGXP10AcJsRgAC9hjZa994yo5+rqlPdQvopZtbC/9xwV9gyoS1oTNQA2YmKzKy4uN
 o6kAoL0VM6jxCSzi+hk6s9StbOyvATxvHuqbYIc/N6tRvXClElZ0km/KbCj1BC4uRwXg5Cs9b
 RCMCVnRWullrMulBboLB0dnQ6VvRWQXZrH3AtW79MJE4reyYfypt02h0UWGoKv7gLORQos1K8
 626gvwTYRI2D9A/TIp6OYznRexUDCgcCCKMOz8sWjU/MJpu9gA9FUH8dcgQRYq6DNl9G8MloK
 NOD2Wjlsz9cZ8+l7KPSvaK/B+s/ra1EFDQKHZ47k65r1pnGRK+qPjyVtTzDmLPfhQltcQCYbA
 Jh8Cr9S0FACTfdZ9Ivhna1bXV4GpLjogzQX0BtgztHAUvTDS3L4ivVFdLGFarWEDmsd0bEUHz
 IJOAKR8uvOIMe1DC5xISRdkJVnX9ZMuxkqRy826yvPuO5mMl5NGEdk6SdQRM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_094720_042018_CC2C050A 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Date: Sat, 21 Sep 2019 18:32:46 +0200

Simplify this function implementation by using a known wrapper function.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/edac/aspeed_edac.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/edac/aspeed_edac.c b/drivers/edac/aspeed_edac.c
index 5634437bb39d..09a9e3de9595 100644
--- a/drivers/edac/aspeed_edac.c
+++ b/drivers/edac/aspeed_edac.c
@@ -281,16 +281,11 @@ static int aspeed_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct edac_mc_layer layers[2];
 	struct mem_ctl_info *mci;
-	struct resource *res;
 	void __iomem *regs;
 	u32 reg04;
 	int rc;

-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res)
-		return -ENOENT;
-
-	regs = devm_ioremap_resource(dev, res);
+	regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(regs))
 		return PTR_ERR(regs);

--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
