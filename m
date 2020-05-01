Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B25C1C1A7C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 18:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sj8ZaLkYmkENDX7j9ELL0CyuRYddv/3c9YQo9fU+cAI=; b=LwVZHYWihTm5+d
	GO+gumXkpAcaraLPqK1A7rG/GBMPj1UeKB8ot+Jq8t14MziaSdAt3UKAizxwFugqXD6Wo6UQJz3Fh
	WwJuVYu4QdxOXLPF2V5prVpfE/PXkenzusyUBR098qnYaXUA/Af7Zxh3IUnNBP7OmKlN2EjTD8iGE
	faUlF3V109TiODYa0meLAAwwMKcho8z6jSV7CX4aGCikEMWIO4o2RIIEf2eb330PIX12fSU6blvYl
	n0uu2zizmHwt8ZpdowF9ePQRdrc44MU3/2/6VMGWp+ocT+afH7+YErJ0jrHbD5GoyVuDj+0IQ17nb
	FbOqC0BfTdeNOW1fr9sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYOj-0006jq-OD; Fri, 01 May 2020 16:20:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYOP-0005hC-Cw
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 16:20:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id k1so12073038wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 09:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xq8gwi8GSwXFvqdFVywCJSsl3feyfQ65SGiht+YKk6g=;
 b=zPXHbASQoqBg1Npt8Xzk7yRKEqfpEuY7QvZ+IoFuU4VN/odUmoWdUy5Cz+U0MfOaUE
 57aux5SMXGvxyPCXn3FSARElWT+5U9lNI1PMOCJX0oo4LSTISVLw2MZRMW4jBqWHv0Sx
 dhW/SEMp6ZuFzgQylGhx130zFM6abaEh8V1S4P6yRYVSF+hZ+ISSsIQ2RMBq2Y52OKoS
 3+RDkp8idiO+IIly+5sfufjOAbwnEws+Yi7YnShsQnspUoqTJPyue8zgSFlnL3SZWYhO
 0Qajiy6bhRZWH8taWBHjSmvNkavetqo2dN1E33rugXfXENcPkXkYW8jaJaIacQagbf/g
 etPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xq8gwi8GSwXFvqdFVywCJSsl3feyfQ65SGiht+YKk6g=;
 b=qNDXdesuwfUqymY+FRafnXCm6dnQwZZr3Z6BLqkiWYDB5J/przaJtjJp8Hb2wq90vq
 cN6z6EFjR6EPG4X4v60RXyU8ljtTQAodLSvh9x3vSbUjgxcC+4GUxSW15YpU28DUfXGa
 dnwsEaRGMwkyWEYi6Bf5WvKVokiA7R4j5UQh2sVSqXy9INOVunvGhxbwa8/jLHMos682
 hAjSZTz66d5zSBKA1Jl8k9ptzt7nXYIysh4sIzlCpKIQMnlBJRpap3kUGGLoU6cxsgR6
 xlO9cqOy/YAQN5B+GE8Zipl5QZKzcVgzNTbHzs8wSqFEpNH8Ns7FVqqpURJHG8yRhtfR
 EgBQ==
X-Gm-Message-State: AGi0PubDstQECSBXU1jCFYZp/tj2OulbRDAtlG3prZ3uK6geZ7PvBcpm
 6leaDjuIMRTeBZ/OWdAH9wLCcw==
X-Google-Smtp-Source: APiQypJdqqAmA5NZRljQci8YaPRabwage+tSbfJLtETNB78EkLvJaFcS7Q763kbrV3j/xjoej9nRRg==
X-Received: by 2002:a5d:60ca:: with SMTP id x10mr4812672wrt.407.1588349998229; 
 Fri, 01 May 2020 09:19:58 -0700 (PDT)
Received: from wychelm.lan
 (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net. [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id h2sm5644313wro.9.2020.05.01.09.19.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 09:19:57 -0700 (PDT)
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: cacheflush: Fix KGDB trap detection
Date: Fri,  1 May 2020 17:19:38 +0100
Message-Id: <20200501161938.2949443-1-daniel.thompson@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_092001_470579_75324F37 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>, patches@linaro.org,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Jason Wessel <jason.wessel@windriver.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

flush_icache_range() contains a bodge to avoid issuing IPIs when the kgdb
trap handler is running because issuing IPIs is unsafe (and unnecessary)
in this exection context. However the current test is flawed: it both
over-matches (could skip the IPI when the kgdb trap is not running) and
under-matches (does not skip the IPI for all kgdb cache operations).

Fix by replacing the ad-hoc check with the proper kgdb macro. This also
allows us to drop the #ifdef wrapper.

Fixes: 3b8c9f1cdfc5 ("arm64: IPI each CPU after invalidating the I-cache for kernel mappings")
Signed-off-by: Daniel Thompson <daniel.thompson@linaro.org>
---
 arch/arm64/include/asm/cacheflush.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/cacheflush.h b/arch/arm64/include/asm/cacheflush.h
index e6cca3d4acf7..ce50c1f1f1ea 100644
--- a/arch/arm64/include/asm/cacheflush.h
+++ b/arch/arm64/include/asm/cacheflush.h
@@ -79,7 +79,7 @@ static inline void flush_icache_range(unsigned long start, unsigned long end)
 	 * IPI all online CPUs so that they undergo a context synchronization
 	 * event and are forced to refetch the new instructions.
 	 */
-#ifdef CONFIG_KGDB
+
 	/*
 	 * KGDB performs cache maintenance with interrupts disabled, so we
 	 * will deadlock trying to IPI the secondary CPUs. In theory, we can
@@ -89,9 +89,9 @@ static inline void flush_icache_range(unsigned long start, unsigned long end)
 	 * the patching operation, so we don't need extra IPIs here anyway.
 	 * In which case, add a KGDB-specific bodge and return early.
 	 */
-	if (kgdb_connected && irqs_disabled())
+	if (in_dbg_master())
 		return;
-#endif
+
 	kick_all_cpus_sync();
 }


base-commit: 6a8b55ed4056ea5559ebe4f6a4b247f627870d4c
--
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
