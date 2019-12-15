Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D449511FA2E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:56:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pdKLtKngbcOnYDWACkXMJYnaviA2JMOIxcl0OTpyjoA=; b=Gqw7OfRPit2b5ms7zmzBLU9cKh
	h45ivweBwnlb19voB9fitaN2iXvlO9sK+m2RY3sNlyPKA+FroyhU4IiSTMIGZdS9cBjoK6RSAwJ2l
	b4h6bjczwlKfYWmSnGiBNg/Edt02avLFVvNVCWRotV3AKnULIFpvJVUFZfOca94rYZ2WbpZLILgrJ
	xU9hHjTneG3h57xVLHx7lgqiKaLiPf8Znek5rdha1ytv7hSGkBwz5uRc9Pid52wSzsdXQpA00tiQ2
	thuT0w0hQQdl7LhsnHBvFGgsNKFfQAcL1whXkusJ2QnhFm5Yj7KJocJO2iH8+QHUtU/CMZUHkeG/w
	lIGai/YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igY7k-0008S5-7q; Sun, 15 Dec 2019 17:56:08 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igY3b-0003p0-N5; Sun, 15 Dec 2019 17:51:56 +0000
Received: by mail-pg1-x541.google.com with SMTP id s64so2322966pgb.9;
 Sun, 15 Dec 2019 09:51:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JtOW+QPlUjdDS6TdBpSLjjaJL3b4V2DiQFsJEo2gjJA=;
 b=TDW2vMxn40YMaoX+ioc+kFuwF0B5ob/A2CzICAPtb+qqwCs2/f86cDNY8GUpSPbLln
 Hlo06+FCU6SOZq1/jo2ypmsAz1kxZQNuth6jJbt2oCV0LD5k1RF98BGMYORMcoQWEi32
 DsyXmvip+22q618Yyx6PTaVobtsOUACZVWl1Hu4UU4SjTlgbBYW2kfmvA8+NyChEznJY
 bLHGtt3S6OOvFEKXq2gfsHzRd5IqFFnkGurymO6w5udnrxokay7YnkmiVi5KyYyZX9tI
 bdWt2j+oo+IR7Bl4IuHG4Btis2Hz0o09xIkeJi6Awngc1D4VJM4OzVkjHOyPNrPZPjfs
 6xGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JtOW+QPlUjdDS6TdBpSLjjaJL3b4V2DiQFsJEo2gjJA=;
 b=ubL8CNbHyfTMwQuGlfklif3Bt55FMB12l4a49gMGiK6oLqohHEhKurFi+84lxEN4Nw
 J1LRzKDSVEatLQqjeW0FbA4hFixK1nexcJXu1oh4SDYlaiMOoVMPvSuv3JBNHhebt0dm
 cCgOmMALK2R5RcJyKNRY+I+9U7QApA/m/pF5uec4ZrRV8vbLAuSr+DE8JP1iJbw/Nugh
 l7rJ6TEXhRygW3kmPCAy8Z2ZhFpfQeJ1WFFeFEBKq4zxwZ6fyIKL1gVxgZlJeoK3/UOB
 Z/1L7fMtkLt1Jt/0U4GFqjxRYy9rRHENu9wBkmqMY0DZVJtCeF3742249Jgc++6YQ/nr
 zOoQ==
X-Gm-Message-State: APjAAAVrLjzQgETbDiQVUWWHo4NNOGtlw2Hi0zGkdJ3VfN6LiD6oCS5x
 mwkryvRJr6QInQATokltH+c=
X-Google-Smtp-Source: APXvYqxnu+iNgVmWSpd7t0baxtWXCgIAvh8wDpoGpNjO6fT2yXWyu/IonFOvxs5K2771DvIxbC2lQw==
X-Received: by 2002:a05:6a00:de:: with SMTP id
 e30mr11358233pfj.243.1576432310186; 
 Sun, 15 Dec 2019 09:51:50 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id g8sm19007763pfh.43.2019.12.15.09.51.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 09:51:49 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: manuel.lauss@gmail.com, ulf.hansson@linaro.org, khilman@baylibre.com,
 chaotian.jing@mediatek.com, matthias.bgg@gmail.com, nico@fluxnic.net,
 adrian.hunter@intel.com, agross@kernel.org, bjorn.andersson@linaro.org,
 ben-linux@fluff.org, jh80.chung@samsung.com, vireshk@kernel.org,
 mripard@kernel.org, wens@csie.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, kstewart@linuxfoundation.org,
 yamada.masahiro@socionext.com, tglx@linutronix.de, allison@lohutok.net,
 yoshihiro.shimoda.uh@renesas.com, geert+renesas@glider.be,
 linus.walleij@linaro.org
Subject: [PATCH 12/13] mmc: mtk-sd: convert to devm_platform_ioremap_resource
Date: Sun, 15 Dec 2019 17:51:19 +0000
Message-Id: <20191215175120.3290-12-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191215175120.3290-1-tiny.windzz@gmail.com>
References: <20191215175120.3290-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_095151_981426_B0AC4021 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-arm-msm@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/mmc/host/mtk-sd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
index 010fe29a4888..7726dcf48f2c 100644
--- a/drivers/mmc/host/mtk-sd.c
+++ b/drivers/mmc/host/mtk-sd.c
@@ -2194,8 +2194,7 @@ static int msdc_drv_probe(struct platform_device *pdev)
 	if (ret)
 		goto host_free;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	host->base = devm_ioremap_resource(&pdev->dev, res);
+	host->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(host->base)) {
 		ret = PTR_ERR(host->base);
 		goto host_free;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
