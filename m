Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E48142BD2B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 04:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tas/VppZ0YOYCk89UHqVQEqq0BYsbGTi6lmeeiCL7GU=; b=A7QQRChfsIxohU
	uQKYOqOwgZz9K1aMRbaEtguucVGLumuwZZVYo9vAtliljGfojrJ7NDLnA6P4jqHVnwJjoUpPIp28z
	brwlyMg2o4fJ47sjKIjyNqntAuaoV/hlKGyW/2/rnfH7wDrjOV/WjW4lwBSkXmPucrenbojE5neU3
	dsVpisF+PisM1oRsCQ/SphEE37qMaW9C5FxWJ595aDALKu3//r6O0bLKkrk/mjN4cu/Voa8sH3ehi
	vH8dP4ANRdCXSzFvYaf4S7Ga4d4oDyLo5FF5CZEYhAwLIgSlq9wb6rz982aisLZ1a2JmRWgs6rmfw
	iMJIKaQTGD1TlNkUkGoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVRhz-0007qe-UC; Tue, 28 May 2019 02:19:23 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVRhr-0007p4-C3
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 02:19:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id q17so5625759pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 19:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ElrAVYgD/pSAQ+6wQeGjrI42nh6rZoHmZOAfKuzcT8A=;
 b=vIc21H9T5LGBgUwhAb/LkJd3XusoSLmb4Q14pPQ5a9BIlSGrc3P3Jjs+ShUFsvA7S1
 x2VL371PJR10mD2sZhvpZZ7chIBmKgAFze604Ij1JHj9P4mcwK5Id0v2/a3I/tMg4Bza
 xtGCQ3NNVBxsBoC1XQ9GG92hrSa3mIoVKhZyU7eq6WRCT0xuUtTkWZY+g1ycIyFW6QhO
 gMrYlsY/xrlAIbN9E/QLVvU3eCJaF+RAQmGIpH3fsdCr5GnImqUH89lMcEX5OxcrzoWi
 qw5iKfVVnbuZru0kuNoTLm8DsMm3F/eyPXVxU4VN8nCKr+kKFrqtEgFkXZ0Ee/OIHxeo
 vUzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ElrAVYgD/pSAQ+6wQeGjrI42nh6rZoHmZOAfKuzcT8A=;
 b=OZ18dKw37Xw6UsIQp2POhFLq1mONVx6jqjBt+IqLAXcnUb4DZdvsf4PcCtHyfq2wQ2
 zWCZ84EwOCrxT1rBMzHpb3OJPnkvRz8+18M/96q4yZF3E8Fu7/nsx1A0FtZNXpj+9y1L
 thFPhLtKu06fGApPhFqbLEIyah2nSL454CRIhZaI6tPR3Gn5EHCLtkZts4bwa/KYiPOM
 ggRdfsyECT4Ybvpncl0atfg0D+CcYc67PmgFAEXtc4Vt04mkgn9uPgpzrYk3EVeb5VuQ
 99iFmKx2VUerjmgbIoErNEBDJWaqqgEksivRV+wCl1H030lpkR3qyAZxCckoZcvsb1gN
 Vngw==
X-Gm-Message-State: APjAAAWX+H082IGBDrZ/FpNlANcUaS9hg2UreDvlp/dujSbS1TMQq53F
 iYRNRd67IdlckkYNF2Tkg40=
X-Google-Smtp-Source: APXvYqyJg8sXr+xQ9KqbTq8xkIhL3JBqyrbB/O7RzkwuyYMQNIFZxwzPKpJQsz1wMhFHwE8RQ7PWeA==
X-Received: by 2002:a17:90a:8586:: with SMTP id
 m6mr2256305pjn.129.1559009954183; 
 Mon, 27 May 2019 19:19:14 -0700 (PDT)
Received: from zhanggen-UX430UQ ([66.42.35.75])
 by smtp.gmail.com with ESMTPSA id b4sm12463484pfd.120.2019.05.27.19.19.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 19:19:13 -0700 (PDT)
Date: Tue, 28 May 2019 10:18:51 +0800
From: Gen Zhang <blackgod016574@gmail.com>
To: emilio@elopez.com.ar, mturquette@baylibre.com, sboyd@kernel.org,
 maxime.ripard@bootlin.com, wens@csie.org
Subject: [PATCH] clk-sunxi: fix a missing-check bug in sunxi_divs_clk_setup()
Message-ID: <20190528021851.GA14526@zhanggen-UX430UQ>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_191915_503409_04D848F7 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (blackgod016574[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (blackgod016574[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In sunxi_divs_clk_setup(), 'derived_name' is allocated by kstrndup().
It returns NULL when fails. 'derived_name' should be checked.

Signed-off-by: Gen Zhang <blackgod016574@gmail.com>
---
diff --git a/drivers/clk/sunxi/clk-sunxi.c b/drivers/clk/sunxi/clk-sunxi.c
index f5b1c00..830bfb7 100644
--- a/drivers/clk/sunxi/clk-sunxi.c
+++ b/drivers/clk/sunxi/clk-sunxi.c
@@ -989,6 +989,8 @@ static struct clk ** __init sunxi_divs_clk_setup(struct device_node *node,
 		if (endp) {
 			derived_name = kstrndup(clk_name, endp - clk_name,
 						GFP_KERNEL);
+			if (!derived_name)
+				return NULL;
 			factors.name = derived_name;
 		} else {
 			factors.name = clk_name;
---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
