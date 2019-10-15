Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5073D6FD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 09:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sOR/95KT8n4e0e9dSLMXbVpEuqr7L7RZa4v/unkdjVU=; b=h/ZX/3GrTbYHWDvYB/NH3Kuwua
	tLR7/MhksZaWt2ZFRalkJwhezYZxy8JetCnQgQXWRMMc3xxjbCTe46Qf6nBrR/TzKYc2DQqEnqc6f
	LXYUfo3y9UmxskJVa3cg68js6/z6P+hXGIj0TpkSgnjNhe7h1SI4tjdXxAGCkq5B/PBOtncBrCj5R
	emgRHrPhHqY6he5uEURdwvhwrn7/CJg0eWCXm+hHgXiX7AxklmgwqJYp+EYycMDR+a0skByHDZZUQ
	A/nbATvmSQCfNBrLQ5Gs24+neosUABSCa5N1RGTNa22IEtrZ+Yy+WvAvgwihpwfQOOw9jcMnN0Tm4
	bU+fOpcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKGoX-0002qk-2M; Tue, 15 Oct 2019 07:00:13 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKGo1-0002gd-29
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 06:59:42 +0000
Received: by mail-pf1-x444.google.com with SMTP id q21so11817991pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 23:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=s8ax0pNsjS34NQgcw7z1oLLF7sOclh4TjvoGbZiiLB8=;
 b=LqiY4+eTQkVeBC1lMPF7YYxbluIbw9VUU8JZtS9m6oR7ctp0sCqy0oj4hTdQIc/l15
 4DKDY8XL6sekA8doxm7hTPg4AYK71o2L3A+NMbrt5Pj3intEUQQqTlIub45xUtEBQHHY
 uD4GaZUTARVLXiFJ2UuOxQ+Qalc/tgumAzfr1ixW/QDNGrfDlhnouuNdzqQQA78tRker
 NJhTGUVomZcZO0b1u18SHLHzElT0gFfFT5bFTusN5tdKNIcWQzVZ+SPUAJYdPIe4kOwX
 TK42n/0c8B70Kd735fQhYiGw/4K/tVRxsZFiYCozdTENJ+8gZ76uk2nf4TNCdtBx/UY7
 2uHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=s8ax0pNsjS34NQgcw7z1oLLF7sOclh4TjvoGbZiiLB8=;
 b=unELTHBTS/pzC5h8mki+CwIJGsKIiVsASg8++9+BOHzljaJ/M2+51JYCmetgjrd9gf
 zB4elWiHGSGA3pGSPankhjroIrYgL66D1TJdbYjQf9LaV5NH6rJbcK1WEnaaxlAkgydo
 KQxe7FJn8TnuBo2RLaNVNcXkklsldu7SOqFKrPaU0fpBzWI0OejJltZ8ChvU3Xp4C8b9
 stzi1X5mNBZ+cuW6hNOI/OHkoTSgG4nbYJhi3TtrN1jVmoppYTP7g1inHG3cJwurKcXS
 bIJfdYodqLxaqRCTp5Oz4LnSHQVVaq8tGrFLm5TrR2P4n+3w0XCW9gJHaXdcnk4tKT1i
 tFbw==
X-Gm-Message-State: APjAAAUKBJOVl2yslhAV4CGlY5AbzVPk4L/RPbLYdkzOjwsRB5KjO4cV
 ierEb0UtqeLjKacUCydf6Ne9bw==
X-Google-Smtp-Source: APXvYqyVrARJeunnXPSfERMIsMVbKXz1zoefqYCxcoqCdlJ+Flg5NAbVu6m+pTIqUmhkYPT5g+KCtw==
X-Received: by 2002:a62:6411:: with SMTP id y17mr37212371pfb.24.1571122780487; 
 Mon, 14 Oct 2019 23:59:40 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id i16sm17952646pfa.184.2019.10.14.23.59.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 23:59:39 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 2/4] ASoC: pcm3168a: The codec does not support
 S32_LE
Date: Tue, 15 Oct 2019 00:59:35 -0600
Message-Id: <20191015065937.23169-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015065937.23169-1-mathieu.poirier@linaro.org>
References: <20191015065937.23169-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_235941_101400_21457ECD 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peter Ujfalusi <peter.ujfalusi@ti.com>

commit 7b2db65b59c30d58c129d3c8b2101feca686155a upstream

24 bits is supported in all modes and 16 bit only when the codec is slave
and the DAI is set to RIGHT_J.

Remove the unsupported sample format.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Link: https://lore.kernel.org/r/20190919071652.31724-1-peter.ujfalusi@ti.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 sound/soc/codecs/pcm3168a.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/soc/codecs/pcm3168a.c b/sound/soc/codecs/pcm3168a.c
index e3de1ff3b6c2..439e40245bb0 100644
--- a/sound/soc/codecs/pcm3168a.c
+++ b/sound/soc/codecs/pcm3168a.c
@@ -24,8 +24,7 @@
 
 #define PCM3168A_FORMATS (SNDRV_PCM_FMTBIT_S16_LE | \
 			 SNDRV_PCM_FMTBIT_S24_3LE | \
-			 SNDRV_PCM_FMTBIT_S24_LE | \
-			 SNDRV_PCM_FMTBIT_S32_LE)
+			 SNDRV_PCM_FMTBIT_S24_LE)
 
 #define PCM3168A_FMT_I2S		0x0
 #define PCM3168A_FMT_LEFT_J		0x1
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
