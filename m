Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E39541DE46B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 12:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5mWDDqMH6ITzmpANTqRL26Qtku99PcQNSubuT3Q6ZuI=; b=Njg
	XZImquEo1igtwcuge41aZkK3H/ZdoHRT82mukp/HJRwzYcqTPxypN7FEFe0h5GeHGeZK1ePKiQ7et
	L2Ky2iYejnXD7C9HgQ+rLk9pLKoAisTXanuNTWrpD97q/P6JC1fDa3MZ1jfuqCHqh2Qw33Rcu9Co2
	p0PMrNg0LOe8SDzKbZ49smkp/bT/qRQ1E7ahihyT9S3U9WGf/bqccF8JyAGkM2YceCLeJCi4fBL0q
	hT6eMlH9pqf6XfNGj7Yh776V7TulDldkFeTQEl+2hYm9CtRafGdkfrNCcKU1Qb0+HhaJL+zho5pVC
	DDm71wSZDw2MC4XgdbbLexjjYOWD+zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc4vS-0005nf-65; Fri, 22 May 2020 10:29:14 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc4oA-0004y3-1P
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 10:21:45 +0000
Received: by mail-ej1-x643.google.com with SMTP id l21so12393877eji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 03:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=POPglGew/cq7Fh3lzWt5jzw//XiaJ0U+eE6M/nZ46PE=;
 b=HXkbxbAPPaOIi1vBFvOH0rF0y8ltpzsJ/lBiWigcsLc9jSNJndrYz3imJ+LSJL6TPj
 6BjbTD11XqeL9eI1U6RSrVx814wygYKfxwjGuoUB3N7Lo+eNl/Lv0LVa9VrkldxGt46P
 SADCzcTA0SWD0LdfbkzfEhpJijvRD4NnXeTUEl2wy1e5D6jscDDPunPCAycUv49S1SYU
 57PS86PXDUMDBOiTv0qn8ZBm3sVXP4tHMxm169LpNK3REJjw5G7jUFhmjV1BHVCuYYHk
 t4zPhz/c2OxgU3Gh5anI8kpNd5q2kVrJ11h1ROko9U+eknJRsORi3W0cVbGT1Ig2sJLK
 9v0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=POPglGew/cq7Fh3lzWt5jzw//XiaJ0U+eE6M/nZ46PE=;
 b=jwW9Wdb9VN8kz6lvayQqGN3uuweCLaMOhL7OScUZgAy3bq8dW2QJ2JzwcWB5tNEfWV
 HDXix+zAw2lHrmM0RBBlUpX8PfmPc5klsgZ4LsUsYP5Q/yEAJ93SanP9mo0e7mMszYpo
 7b7f/ROXps/aEA+aHhtjln8zJVEYBHARXoY3sgNwx0Gf9veFXOvlnla/D18wsvyroYr8
 HTIjPqjvo27ePuIGq7v/frJrjs+UJF/8LLdy+e43Gk0U5TQBFPSTTtXoc3bRopQdLvyO
 nxATEVVvLr01FRW6pykuxW8G4zDs4amdDGAHh7ItyF8ec8NmSwCFakKVnSeD89NFDSwG
 Tsxw==
X-Gm-Message-State: AOAM531K5wTAqasfUOd44WMhCHk65ONrqWrd6Pq90m/KAiOHLIfn8zI9
 2TF5Z4VksEfEIID5QKF6Rh8yuaAYnB73Ng==
X-Google-Smtp-Source: ABdhPJxusO2sj7i9AzZa/+pdI1I/q3pAWDlBSWuq0T4Sjds7K6f87kmGOQXdGisF58+e3ee9GgKRkA==
X-Received: by 2002:a17:906:278e:: with SMTP id
 j14mr7264295ejc.270.1590142898982; 
 Fri, 22 May 2020 03:21:38 -0700 (PDT)
Received: from localhost.localdomain (212-5-158-12.ip.btc-net.bg.
 [212.5.158.12])
 by smtp.gmail.com with ESMTPSA id z14sm7472532ejd.37.2020.05.22.03.21.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 03:21:38 -0700 (PDT)
From: Stanimir Varbanov <stanimir.varbanov@linaro.org>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Subject: [PATCH] arm64: defconfig: Enable SDM845 video clock controller
Date: Fri, 22 May 2020 13:21:09 +0300
Message-Id: <20200522102109.3607-1-stanimir.varbanov@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_032142_101978_1645AF8E 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [212.5.158.12 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Anson Huang <Anson.Huang@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>, Li Yang <leoyang.li@nxp.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the build of sdm845 video clock controller by default.

Signed-off-by: Stanimir Varbanov <stanimir.varbanov@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 03d0189f7d68..4eb7e35d2d7d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -806,6 +806,7 @@ CONFIG_MSM_GCC_8998=y
 CONFIG_QCS_GCC_404=y
 CONFIG_SDM_GCC_845=y
 CONFIG_SDM_GPUCC_845=y
+CONFIG_SDM_VIDEOCC_845=y
 CONFIG_SDM_DISPCC_845=y
 CONFIG_SM_GCC_8150=y
 CONFIG_QCOM_HFPLL=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
