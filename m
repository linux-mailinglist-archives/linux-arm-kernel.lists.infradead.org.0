Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A889FE829
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:39:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9E3uVTMO8rLIizqoLxu7t4Z6cKQA0DLv0+raRIMju3k=; b=lUBnwZeo9K55EtWwqr4LaSQo2H
	6YleEh3VF+Qnm9qvsiNxJdB0DeUX0PUlAprZD8AX4hZloia46Q+ErNVjHM/W3W2vkLnxUfvKxAHTX
	WBlUeMui1sb64MI1obnq2yqD1uXqnJqKVwObnKbbtlQoJAquUWa7fSyluiDGlmx2N391UDOUBOrTu
	eClU3K5MqVv6o7M70fu5ZlQCbxfod5RO4wUQNVlPVW9QbV7FtzZDyFbjeUgrmrqlFzgR1iBfSdeIz
	IZ8uhMIprdyRfMk4y/i+Oj3Q9JVJcSrcaqlbQWNtjrWmRgQhEo6pkcDtxCWygR+UJaITNh7quVPkp
	w7PNGbJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkFo-0004YP-JL; Fri, 15 Nov 2019 22:39:48 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAR-0007K8-4U
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:17 +0000
Received: by mail-pl1-x641.google.com with SMTP id w7so5613856plz.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=i5dPEh9y2ib6oOQnoQa1Apmmo+YJMTHG/tlqLO0haxk=;
 b=kW+Yur0Hl2oWdZbkaM/sYlnrLMZqd7UJF+2HEJzbhpeG0T9E+DGIbgyiCtM6Rn8cwG
 3TfxjWu0cq0O0Mq8seZ6SifvTMca6kTZcA5Q5IHZ+Vr7wi40pgdbQubrrP3lA716dYDT
 QQ/hQ5oOCbIRfgmybqfrg2P8aBTK/8ir+9wnrhdvqU1LZfpySWWHgCvwVa7p6SqVvpQM
 gD8BjoQhLQquamPA0i/EkkyiRTOOctidxeHXr7MaccD44rSjUXB4WVaBQMqEeDQCoqGs
 A9kZyWu0cxRQ65f0H1+XxOfxGa349XPFVe1fz4McNJfopYkmqTQPeOF1J9eREE1Pb3EO
 jrUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=i5dPEh9y2ib6oOQnoQa1Apmmo+YJMTHG/tlqLO0haxk=;
 b=HbMjBys2Lw0y877dlsTnRwq554yvvvOc3kmZxtZi3k5a0mOrSTfsL88F7FwxY4UNOq
 gdMy80HRD+CrHzdZUVf6FLWSDM903XmHCIuzc4D0M1710L9Qg5Szj+kuhEYYPxuHSfjK
 ZQWuG64z3c3w06iOAsud7+Cx9SHaErR4bvydaCSyH9wKE9QFIctAHUmeN8+3wFWKHBu9
 wEXDGBKcDPmDWowdNjMAH7vftIQWzgw6A7BIyiDpEwTRfKO5yNBeXBceb4SPJxADFXRy
 s0FpG8T5wJcsykJdTE5iBrQkR4/q2b6aWWMWDogzLdukMNwrvaeuSoaq4OYQHolUnoru
 ndJA==
X-Gm-Message-State: APjAAAWq5WGluCPCBO1o66pl5ZH+s3CRc52xkNfPkCr2ZqgJkol/aGUr
 77aDlRg7e5wtfDj6s/p6M0oryQ==
X-Google-Smtp-Source: APXvYqwHAc5twB501dJRqUfTBvKugpgHSSdUWAlfaFJMgzAPYdC8/2k7gHvhI3UOPNKl6RREJeuPVw==
X-Received: by 2002:a17:90a:252d:: with SMTP id
 j42mr23137114pje.131.1573857253840; 
 Fri, 15 Nov 2019 14:34:13 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:13 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 18/20] ASoC: stm32: sai: add missing put_device()
Date: Fri, 15 Nov 2019 15:33:54 -0700
Message-Id: <20191115223356.27675-18-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143415_436157_32BC4F39 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wen Yang <yellowriver2010@hotmail.com>

commit 1c3816a194870e7a6622345dab7fb56c7d708613 upstream

The of_find_device_by_node() takes a reference to the underlying device
structure, we should release that reference.

Fixes: 7dd0d835582f ("ASoC: stm32: sai: simplify sync modes management")
Signed-off-by: Wen Yang <yellowriver2010@hotmail.com>
Acked-by: Olivier Moysan <olivier.moysan@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 sound/soc/stm/stm32_sai.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/sound/soc/stm/stm32_sai.c b/sound/soc/stm/stm32_sai.c
index f22654253c43..540c4a00405c 100644
--- a/sound/soc/stm/stm32_sai.c
+++ b/sound/soc/stm/stm32_sai.c
@@ -112,16 +112,21 @@ static int stm32_sai_set_sync(struct stm32_sai_data *sai_client,
 	if (!sai_provider) {
 		dev_err(&sai_client->pdev->dev,
 			"SAI sync provider data not found\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto out_put_dev;
 	}
 
 	/* Configure sync client */
 	ret = stm32_sai_sync_conf_client(sai_client, synci);
 	if (ret < 0)
-		return ret;
+		goto out_put_dev;
 
 	/* Configure sync provider */
-	return stm32_sai_sync_conf_provider(sai_provider, synco);
+	ret = stm32_sai_sync_conf_provider(sai_provider, synco);
+
+out_put_dev:
+	put_device(&pdev->dev);
+	return ret;
 }
 
 static int stm32_sai_probe(struct platform_device *pdev)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
