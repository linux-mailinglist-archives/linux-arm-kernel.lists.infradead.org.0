Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96588230FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tpjcW5LU8fvwg0LMIR0SFR1Qqna7uh8Ww6kJ/ZSAzHo=; b=k7tNSPNM5U4n2NQHAx+3oJkSFK
	zqX+JxRsWxNEd5XnMXCjphfBJxMSbCYmLt7SkryuOuj+G3SAYKhYMCaKLElEw9XNcTWw23GLHokgt
	JMaG+4IqOON+iGwTo9k0lTrZiwUS7kwYPH+50kTJvLEVUI9QRRX2KKUL5DS0GFto4vncFJskXkddL
	Te+CMvYTlItUDVWzWeOqF9y8LHxS2Wp5NjN7BdZBPzv/VsV2jsg0dJ137u/HwSVG2BjEdwM4L+jEQ
	5Mdy/Ia5hlJpor1WPFj+yRoDto48BsVcf9xO+Mu9OeeqODQhbVmFwPq+7MbmR3uyRxX4JQFcAMLbu
	L/tSsABQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfHf-0003sE-Vr; Mon, 20 May 2019 10:12:43 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSfHP-0003gn-Pi
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 10:12:29 +0000
Received: by mail-pl1-x641.google.com with SMTP id x15so6497979pln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 03:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=va9J4UW4i6NFUGtzfpaY8tfEC/B62lw3LIia2oCGJ4I=;
 b=CqYTASlzHxuj19VEkiNYFaWBgj/+AcONyfvUgSBiBiQDowtzgjclMCFW17Cx6Liwr/
 yTHpl33VMY+PK1nwAw97ptE/aov9Ny5Gd9CDUPr0BmI6OPlfMVCa88nBG0nfPFrWKmc5
 4xJmj6AY4t13zS/X2WSYUqFnK48emMw1jtHxivKXmKM0FLP1o78D9881x/AX5Y5H4trs
 BR7RWlDcGDLZXJQywZ1nZaZE1slyONTDCdLubvEOiOJ43/lPQo5uRKtVdbjKNxgEFBYR
 psxab5AHlmJ1Xmw4MdgUFX5yEcnCO4VWW9lbwf2QlwniZg7uBKRAoLg1DUSzr20QZmNr
 5xsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=va9J4UW4i6NFUGtzfpaY8tfEC/B62lw3LIia2oCGJ4I=;
 b=dryhfG3dS5Q+++0eTlDbVAj/NR31RpvJNtHRqXJRELNyuoUYdLZ0bXr/0DmyuBpEk9
 EMFFQzKGy/DL+OByykdQZjlUivwHSZZ5dc0lKuznNEnZwbXhVsMzmfWa2xkv4tlgg8Dq
 9vctLu0v33nW1fXnXhkICDZBdGBVPz/FrO9QXabsK35ifkMmojXcogLUx9quqG3U3aXS
 /0PYarM4elLpxCajfl8nGLwjPLSs3gDeqS4h0VL6l4Y8jZ1Xn4J1SoD9lxmRS1Qc9WcI
 rEfHXp7UgaMYuitr5ix3vNwBzxtlhefSonwatmgeFr/Euy5MMQwXP8aLu0ASDXF5s2h2
 idcg==
X-Gm-Message-State: APjAAAUEaue+vIUZsSMTZIBvfvg7N+MaG3cHfGrcyWyqow0GO2iYOSJZ
 yYaHIcgeSEKEH4kw9DC+a2LnYw==
X-Google-Smtp-Source: APXvYqy8HueQjfTYyMBchyG+3yVOgHldG2Viyebm4bLNlkUI6Z3Kj5vcojNZbJJuuIgiyzD8yg/meg==
X-Received: by 2002:a17:902:f212:: with SMTP id
 gn18mr12999942plb.106.1558347147096; 
 Mon, 20 May 2019 03:12:27 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id b3sm30098127pfr.146.2019.05.20.03.12.23
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 03:12:26 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH 1/9] mmc: sdhci-sprd: Check the enable clock's return value
 correctly
Date: Mon, 20 May 2019 18:11:54 +0800
Message-Id: <7e4d922ba5aff5241b0186e9480a98b14693b28d.1558346019.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_031227_833895_BE3E5954 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, vincent.guittot@linaro.org,
 baolin.wang@linaro.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Missed to check the enable clock's return value, fix it.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/mmc/host/sdhci-sprd.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
index 9a822e2..e741491 100644
--- a/drivers/mmc/host/sdhci-sprd.c
+++ b/drivers/mmc/host/sdhci-sprd.c
@@ -368,7 +368,7 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
 	if (ret)
 		goto pltfm_free;
 
-	clk_prepare_enable(sprd_host->clk_enable);
+	ret = clk_prepare_enable(sprd_host->clk_enable);
 	if (ret)
 		goto clk_disable;
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
