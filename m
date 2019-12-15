Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB90911FA08
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XTrPzjfrSITGLVuD6bFAkofnk5k9dIfbV1e9uZ8uCOA=; b=KusG9makQQSzKuyDlXgkTy0/1N
	qNbdnI2znGryrGISazGqbDM3lr2bK1F9MJ9qCzvdg4+/5GzFmm04NHD8Z1TLhdBpgU413jjIk8tCP
	/emwAFIe/k1cnac+mjTDDmKE5lj8HTG8XSrNADPduVSDedrMFoPYyjHhDIIpXX+aeMuWc6ykFm/AY
	DTyAlkdlyXoGQff8WnxmRgzNBH38ajM+CvmTMIAk/MItSublChHqNZjYjs0pFGI8J4fWC2tYvXVkZ
	y1Z1SsVyZ/zWEkQUoEYpUGplEmA1XGOwX+BMKSkzs520xSX/iUCZpoSJcJpZw7Y4MGFWqTiI7hUXk
	gymbkXzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igY3u-0003u3-I7; Sun, 15 Dec 2019 17:52:10 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igY3H-0003V1-Jw; Sun, 15 Dec 2019 17:51:32 +0000
Received: by mail-pl1-x643.google.com with SMTP id az3so3442872plb.11;
 Sun, 15 Dec 2019 09:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LysDIRyUWjcACkzyZj03TqlWtvxOY9uGmk/396mKWhc=;
 b=NEyWXOSvcxEgMiU0sSL9uY/bFD35hforgyUqSOgXK50IABjB3O1mGxt+4tbptDT1yj
 CxmvnM0vh4yPihzrQE7TGoLaKgx01+pmVH1kwqrdgE5hb/t5rKm3YC3uWSTFFtL/LRBC
 giHhCLMg/coaFC+Ia+Dc/5MjAfToGyWZzhpcjfbaUourf44Bo7/4Z2Oynlzipd1+VTXI
 NyxEwEXknnTRwmYLO35Ys24C85+XKM+1OCbQfwch624nKKK60yY3rqU4Qp2sIC6Ny7GT
 5j//iQOVphr/0l7mVcVXyIXonorpV3qL5ToV+gxkoVM8Ho4JKUjToUixzPT+B6mfSOhU
 269w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LysDIRyUWjcACkzyZj03TqlWtvxOY9uGmk/396mKWhc=;
 b=e+PvsiE+VEIa42txv6ATOjoTcWRnGHw40Bu0Brl+BFktkGVK1OlOXmCt4PA1BGfNgI
 DTDM0j7SlgiDfRuswHKIaGG3is4+aR9js+LAYGtWhO8O4HOtMPblkxrsWHLxvNSY6Z6P
 4rXrrIqAY9vYY/Dk5RP3uL5FX5Gb50gahY1QDY0GOF4u+QxFC44AwZo0qF5KC00grlC+
 AV7xlpvUc4c2tizpwCFr+GU8V7Nb801OB/9VP0dH6jUQJqQKYrgGap/b8dR749hUtEME
 E4KBbOilTF4+/DYnoH3br1H1534QFzCkXug2yduVwO/j/xb1ro5NdfYZszCR+a/l0Tju
 I6Zg==
X-Gm-Message-State: APjAAAX9wJUzDwEw+m7ik3VRj7dWn4UMSdwsnpj36CUYRyrPCayCoC8V
 FWkfVtwDQz/XdAYZUS79oYU=
X-Google-Smtp-Source: APXvYqzmvIDLb1enKy35lMWmLNm4qJzVxGNdBEBQLoJbjT8Xb9jqha4asK/Aw4JMGO6idxiJbcFfiA==
X-Received: by 2002:a17:90a:a798:: with SMTP id
 f24mr13456417pjq.27.1576432291181; 
 Sun, 15 Dec 2019 09:51:31 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id h68sm20424981pfe.162.2019.12.15.09.51.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 09:51:30 -0800 (PST)
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
Subject: [PATCH 02/13] mmc: tmio: convert to devm_platform_ioremap_resource
Date: Sun, 15 Dec 2019 17:51:09 +0000
Message-Id: <20191215175120.3290-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191215175120.3290-1-tiny.windzz@gmail.com>
References: <20191215175120.3290-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_095131_654110_F86C19B9 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 drivers/mmc/host/tmio_mmc_core.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mmc/host/tmio_mmc_core.c b/drivers/mmc/host/tmio_mmc_core.c
index c4a1d49fbea4..365d518c6d7d 100644
--- a/drivers/mmc/host/tmio_mmc_core.c
+++ b/drivers/mmc/host/tmio_mmc_core.c
@@ -1109,12 +1109,10 @@ struct tmio_mmc_host *tmio_mmc_host_alloc(struct platform_device *pdev,
 {
 	struct tmio_mmc_host *host;
 	struct mmc_host *mmc;
-	struct resource *res;
 	void __iomem *ctl;
 	int ret;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	ctl = devm_ioremap_resource(&pdev->dev, res);
+	ctl = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(ctl))
 		return ERR_CAST(ctl);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
