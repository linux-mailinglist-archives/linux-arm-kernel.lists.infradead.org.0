Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8321EA90C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WX4ifxenzrwFD4Ru9f6T272BtJLEiAiJ4K/bW7hBO+s=; b=LSmt/6DeCrtG9N
	qSo/deRXpD3R+kvrBffuAH1bNC+sFPor/Ts7dUkPkod8g/7UnV+pEnUWsIIsxXCmv/s2hl4XvrPWc
	BeTpyg7+LhAffqbhJnpfcoPH1Jy1Pg/BAjmlDPgkHoW+iuMq1h0SoZBqfAghcbzKSowx+X0YTMt0A
	HOIyYwSSAsuxJrA9YzqnBHn2asJJId5/zF2aU9sCwFWuBqcfSrYjYxNfuTTqnB2foLrhiDFaWZlXT
	7fHD/zvEKRYmiBCR4wTSmDVjvBg+QvfAyJLUxNtN2QhRquZ9cJevso+EqdkBo7jRqeiti/G/QqYja
	WzmaRixGkpywubEJaSEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfohf-0006qz-Fz; Mon, 01 Jun 2020 17:58:27 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfofQ-0004du-OF
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:56:10 +0000
Received: by mail-pj1-x1041.google.com with SMTP id nm22so147262pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 10:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=89+h/plDTY4mDzCs1rYHBGU3MZW5Lf4AJft/Geveaac=;
 b=UJW1vl1f7dpO7gbFKlkA2zgpME8H2E23tNzkiGS91xT++xLFPjRvKMz/e7Fk6+RiEZ
 SZ/u7rWEuTf5R3lmi0b3QFLZFAPKNAk7QXHlk+frMOiFY3rCKSGekRtMnNnXBlCifqtP
 NDmXSKfTtFPGKM2RnN5jwWvCVdKJHG6QuX2wubSS+lZ1QSDbwpgqa1dlTDoRi7YoU9Eo
 /HJMIhJ+m7oDHSnT9WXZb8NfUvTw8JncNjwxf3jr5Gb4RNaGBAihbRDEFwfQ3/zvtgmM
 wtKgJUJkaxxQk1MX+XnoMHlfFlNc1yadikx5AC9P4nzS9lTncTJpR8CWq3KMEvdz9wmg
 5SYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=89+h/plDTY4mDzCs1rYHBGU3MZW5Lf4AJft/Geveaac=;
 b=fCVCN3sH3TVjf8rADALgTiw0JnuNBauoFx9Z3qLdpBGvBQ5wlCfHFsIV0O/8qqe9Tq
 eRu3kKgHZjrSuQNmaMhRYcl//N165iNiYl/V5XKdmgCZ2HNiFdNViHMT8tUvbMOyTgk8
 OQpJBwiCbBNvek0an4kuLzB8xbiEluSzyqKQ9mJM6/57idn373KANc1QmYWqtCpPMQ6g
 AM5FC/ptZC6Vo+ioi/pFkZkNPaIZn6vwBHY6LCyBMD8hvzuoUNczcENKEmWr8WYH6ZeA
 B5YxNZm1eixP1DyQRKdmjQxCRLMYiSnD7RjYnRXWeLeOs2Yungp6uP8gop55DShwNI3E
 mJrA==
X-Gm-Message-State: AOAM533ja6AcI2PtFmqGjRzKtY/B72cQK8Vae1xmf61h6fVw8Ef19Ig5
 OxorvWczzZUNRLOGobhqBv4v8Q==
X-Google-Smtp-Source: ABdhPJypHYDsLPAIbS0JYVfQMOvatKvrrQns1EzAP3MAD0yNOfhUMy3DV32cG6rH3piOQuj4WeHadw==
X-Received: by 2002:a17:90b:693:: with SMTP id
 m19mr590592pjz.125.1591034167244; 
 Mon, 01 Jun 2020 10:56:07 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p7sm64771pfq.184.2020.06.01.10.56.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 10:56:06 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v4 10/11] remoteproc: stm32: Introduce new attach() operation
Date: Mon,  1 Jun 2020 11:55:51 -0600
Message-Id: <20200601175552.22286-11-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601175552.22286-1-mathieu.poirier@linaro.org>
References: <20200601175552.22286-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_105608_812002_A98730F5 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: loic.pallardy@st.com, arnaud.pouliquen@st.com,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce new attach function to be used when attaching to a
remote processor.

Mainly based on the work published by Arnaud Pouliquen [1].

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/remoteproc/stm32_rproc.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 7c8789164af7..77a20a638e0c 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -459,6 +459,13 @@ static int stm32_rproc_start(struct rproc *rproc)
 	return stm32_rproc_set_hold_boot(rproc, true);
 }
 
+static int stm32_rproc_attach(struct rproc *rproc)
+{
+	stm32_rproc_add_coredump_trace(rproc);
+
+	return stm32_rproc_set_hold_boot(rproc, true);
+}
+
 static int stm32_rproc_stop(struct rproc *rproc)
 {
 	struct stm32_rproc *ddata = rproc->priv;
@@ -524,6 +531,7 @@ static void stm32_rproc_kick(struct rproc *rproc, int vqid)
 static struct rproc_ops st_rproc_ops = {
 	.start		= stm32_rproc_start,
 	.stop		= stm32_rproc_stop,
+	.attach		= stm32_rproc_attach,
 	.kick		= stm32_rproc_kick,
 	.load		= rproc_elf_load_segments,
 	.parse_fw	= stm32_rproc_parse_fw,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
