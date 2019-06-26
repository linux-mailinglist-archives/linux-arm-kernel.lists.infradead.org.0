Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D562456555
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnyiuUbaswgh9mf5z8ylLkcpKMnOMv0Ug6C6NfoETgc=; b=Wd3q2mxysfM+tD
	zMCLFt1hxjv4K57jPMBo1FHKN7mmhyFRFsRcFsGwQzS/nCHLBipjM1K2Y6EoohQXONOUmOJHl1bzE
	R4b5SFWUY8g2NUJwZtpGNsvqfom3eakAoxHq/NHHmnJIqQEcUQ+kYvX1FbGGxmeQggaM35KDKy42o
	zWSBa8RAD8+5eMJuyxWuG3N1NAcbvnvbfA00UB8C39cQ1rLdD6GzGFuzNJBJw6IubjgLNErAAyvdS
	Zcnb1yHgYpC4v2tdXZt3gQiheXRRsa1+HitkYzpCSonivFgF72fe2T75PXdFuzzEkO9Hnnq4Fzw70
	aCtJM+LMkSW/TFU/K9DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3vW-0003vr-Q7; Wed, 26 Jun 2019 09:09:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3t4-0002ZP-LL
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:06:44 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so1813568wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 02:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0YLGRK88mV5vZE4LqM30CD7m71X58sUA87fhljEjqxY=;
 b=OI251nwwamcbJiqoK+UB/Xvd/6flu0o1NsCNHXMNnGjCJucGdtYeU2BAOR5pxbDyIf
 3pcHb7SWZ7lgPOjn1NIwpQYiA7oY+GdaCy6w/RtniLVSjwqYJ5cEFwjlahGpDEOakzRp
 HojdXsl4mFeJdV8ZNlbA6T0vu90xrCXQbrOlfVFNH4oBIt7JPA9v1saJYXvJx+/PtD2E
 MC0CU7+d0AYzSPCQ1tTqW5c8DYy437GAzhZxBp4YLmEvRW9MPhLqvd1wbk6SvPNkE/Eh
 6GEhofow4tZR9QuXfCR3+WMeVfmXi2KdOOKX3T/LxYMsFKsELkXaDRSxvQIm3Bm66Esk
 MM0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0YLGRK88mV5vZE4LqM30CD7m71X58sUA87fhljEjqxY=;
 b=C2pwRnX00udrasxaJ1nMSW34klW8i+RCx+v+nsqHIqHa/bTqHg7eOT67xbqCajpaxh
 yYubA1X7R/bL5AB+Yevb5tPqaeL3Oicj5IDNboijeyC7llP6yiKAoHT/xGHGIHAmRElN
 O8KlutCYgcXpRk2KU/kMmZUT2Hshn21u3IeaghZOiYv96TWyzKnDfJS5josBVEyFtmTy
 zbLFYv5efdl4TTBRXTgBhsWFdf84Oslvl2p+I+oJsLe3caELwd/1vDuMC4bHEWQwznGy
 pwHjUYzZ+P+YD3FNkJ6GM32IHJQAhKrFXxGgsesrrx+pcRYFcF70X1ZBQ0j1Fo/Kvvb9
 YeuA==
X-Gm-Message-State: APjAAAXbWfAVUA10rCw8iEY9SHJPi85TELBk3MBGKmjB3KRHIozpBc7J
 eWR1g9s5/5tCTI5+4hiCN2cpZQ==
X-Google-Smtp-Source: APXvYqz3vdyXnAtP1SpNLPKWrEQyz94x72h+b+vO8Fr71mlivyvfBRlVQGi5Jlk1VZVxT9rHkUqXTA==
X-Received: by 2002:a5d:518c:: with SMTP id k12mr2735671wrv.322.1561540001249; 
 Wed, 26 Jun 2019 02:06:41 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o6sm1925797wmc.46.2019.06.26.02.06.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 02:06:40 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v2 04/14] clk: meson: eeclk: add setup callback
Date: Wed, 26 Jun 2019 11:06:22 +0200
Message-Id: <20190626090632.7540-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190626090632.7540-1-narmstrong@baylibre.com>
References: <20190626090632.7540-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_020642_800503_FF9B311E 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a setup() callback in the eeclk structure, to call an optional
call() function at end of eeclk probe to setup clocks.

It's used for the G12A clock controller to setup the CPU clock notifiers.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/meson-eeclk.c | 6 ++++++
 drivers/clk/meson/meson-eeclk.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/clk/meson/meson-eeclk.c b/drivers/clk/meson/meson-eeclk.c
index 6ba2094be257..81fd2abcd173 100644
--- a/drivers/clk/meson/meson-eeclk.c
+++ b/drivers/clk/meson/meson-eeclk.c
@@ -61,6 +61,12 @@ int meson_eeclkc_probe(struct platform_device *pdev)
 		}
 	}
 
+	if (data->setup) {
+		ret = data->setup(pdev);
+		if (ret)
+			return ret;
+	}
+
 	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
 					   data->hw_onecell_data);
 }
diff --git a/drivers/clk/meson/meson-eeclk.h b/drivers/clk/meson/meson-eeclk.h
index 9ab5d6fa7ccb..7fdf424f71a6 100644
--- a/drivers/clk/meson/meson-eeclk.h
+++ b/drivers/clk/meson/meson-eeclk.h
@@ -20,6 +20,7 @@ struct meson_eeclkc_data {
 	const struct reg_sequence	*init_regs;
 	unsigned int			init_count;
 	struct clk_hw_onecell_data	*hw_onecell_data;
+	int				(*setup)(struct platform_device *pdev);
 };
 
 int meson_eeclkc_probe(struct platform_device *pdev);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
