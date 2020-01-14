Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141D813ABA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:01:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMZugspbEhsVtxeElJjJuT/hPbs+vLeh9tQnxMt4dKI=; b=Yupkvjz0evsqIY
	AxwKa0U5Dcw4tVqgAWH1ZYcR7WlLpf1Bq3pGc99WBeWS80IoZXlcEsdDScJ0sdTVYWZjEkrnYfHrB
	ycLxszTuNnu5VM9kvlfAj8HGxqSl1FFwO41HKIkU0micAxtldCHhcSMlB2vUrsFyFCp3MavW9i46d
	/xNFzpTurKzDqM29ktxbTDRfhWRr+O4wjIio/YevGdvd06xzx8eWFyiJylMAViJgY+T1dlaGNOudH
	JImrZ5PLl1VvjaLSvGALyYQqPKqHq8BbFbnbYEYYLO/6KbknY6MEJNR/9QJi0RjQ3Cza6fxk7zjL5
	1pxZ5Zqxjdv0HfiyUg0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMkR-000122-5m; Tue, 14 Jan 2020 14:00:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMjb-0007Yy-EU
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:00:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id j42so12229369wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 05:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vXhhnXKXoxYSpa1+LXBS7VNs2uspXwnX5jIhIQmwFrM=;
 b=vf0d1GFbo08+NG6G7zxZJeTZMiLIJ81itsHNzneSbCkxlMw9PSK/5EefhFcFVz9UQt
 opn2DFmB99e8fxSV8zDeioxOunCEPA1JwLFUV1JZ7tohx4yS9VeIx8szZELtTSaUVi8e
 MpWVfqUzXzlqC8OzVcKJK0ejjOuekOA7kfio69OKQHzwuuBCoSSJilnH5swyZxmwDZJF
 tN3p1UTmeFTOKAHtBkIz5KeyE9Q4FZuzTOg9R23HG9C9cgjdnkGH0O/sF2p6DB0IkmgJ
 U5ZD/0/mbzXaXbqd6FkEoMNCPZqXCdUeNLQe5nz7k+II0heYxnrX1j0mMKgnkq6aGLYT
 cx4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vXhhnXKXoxYSpa1+LXBS7VNs2uspXwnX5jIhIQmwFrM=;
 b=iRrIgLt+ChKtNZrXmZWhgjSfbWlgup2RRT/cwSIFNfb5k9Mv/h4Rlso0OEc7gHz+uK
 kwqySKzjlAHKI4kDkISGb2TWnS2OIWVGD6ldM/dfGa3SeT2JOo4eaOXvRJX6BZUJLJ5A
 rTK7jzRvGq3eoBFplFxgw3HP2DwATVMLm5+OY4LTC97JVC7sSOTKNsNT+AkirYUTDk35
 9RjZuqLU0PRa8ys/EuC77B8hi9y11i1q6PT0xAHc1UytF1QcM7c7tuPHR+v373z5e9Al
 B5aIWAl/zLxHCrEuM4E+1vHag00woPByQ6/FzlkSzn/y1L8InaIf5wHt/bihAfu2cArA
 GyPw==
X-Gm-Message-State: APjAAAVEhKMD/LWoh6y8anpX968CMzYkwktsv63aSOCyi/p/UbC9tuw+
 GvwjYkLOmzgKIRgIfc2mD/ntkZts
X-Google-Smtp-Source: APXvYqzIL5QDAbPSLYL8aOpzAthE16eu5faMIOdeePz7IfOOcLviaBT2dTkTsFRl6NklQxS0c9Fjhw==
X-Received: by 2002:a5d:6703:: with SMTP id o3mr26238015wru.235.1579010392992; 
 Tue, 14 Jan 2020 05:59:52 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 4sm17854448wmg.22.2020.01.14.05.59.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 05:59:52 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: alexandre.torgue@st.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 mcoquelin.stm32@gmail.com, mripard@kernel.org, wens@csie.org,
 iuliana.prodan@nxp.com, horia.geanta@nxp.com, aymen.sghaier@nxp.com
Subject: [PATCH RFC 02/10] crypto: sun8i-ce: increase task list size
Date: Tue, 14 Jan 2020 14:59:28 +0100
Message-Id: <20200114135936.32422-3-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
References: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_055955_480630_54D9E094 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CE can handle more than 1 task at once, so this patch increase the size of
the task list up to 8.
For the moment I did not see more gain beyong this value.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 4 ++--
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h      | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
index f72346a44e69..e8bf7bf31061 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
@@ -321,7 +321,7 @@ static void sun8i_ce_free_chanlist(struct sun8i_ce_dev *ce, int i)
 	while (i >= 0) {
 		crypto_engine_exit(ce->chanlist[i].engine);
 		if (ce->chanlist[i].tl)
-			dma_free_coherent(ce->dev, sizeof(struct ce_task),
+			dma_free_coherent(ce->dev, sizeof(struct ce_task) * MAXTASK,
 					  ce->chanlist[i].tl,
 					  ce->chanlist[i].t_phy);
 		i--;
@@ -356,7 +356,7 @@ static int sun8i_ce_allocate_chanlist(struct sun8i_ce_dev *ce)
 			goto error_engine;
 		}
 		ce->chanlist[i].tl = dma_alloc_coherent(ce->dev,
-							sizeof(struct ce_task),
+							sizeof(struct ce_task) * MAXTASK,
 							&ce->chanlist[i].t_phy,
 							GFP_KERNEL);
 		if (!ce->chanlist[i].tl) {
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
index 49507ef2ec63..049b3175d755 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
@@ -73,6 +73,7 @@
 #define CE_MAX_CLOCKS 3
 
 #define MAXFLOW 4
+#define MAXTASK 8
 
 /*
  * struct ce_clock - Describe clocks used by sun8i-ce
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
