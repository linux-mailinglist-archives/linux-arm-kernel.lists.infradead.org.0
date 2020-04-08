Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 857EA1A241E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 16:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLRTsvaWD/Mn3mS874q2UnefBqUhN4M+wjAkF9QE8eI=; b=FbY3b4cnd2ZdMw
	YrB5B4hLuGwcAhdG1Ul6NEygA+o/tC3JqFfTLAne4TYw4SByKEU54k+u2mQJ34QG62fVFSuyW+8X7
	D9r4yqib02kbuoSTocLL9LYCZOX0gp8OLJsQQYX00fbidMbQMr0MBIgwWrybhxKORYaS+S9vFx1w0
	RNnJtumM+CCWiBLMPW1He4aiyafqy0A34wVQGoUmN/oEOlrP6BG9djPgRnJfqsC1JONKvJkUvAUOu
	pCwDQ3XcK2ooCUc6R6xm8MaL44KUHvEMm7mURMOqA/bhzV3vSVicJ1rartqGxLgtyytP+BxqSmPP6
	u+GXyVvmwfxZQN5w56cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMBkk-0003dk-FM; Wed, 08 Apr 2020 14:32:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMBjJ-0001s0-E9
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 14:31:04 +0000
Received: by mail-wr1-x442.google.com with SMTP id v5so8019923wrp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 07:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xX9cl4CH1nYfDC9Fl1wNJAbL90tz1WTwrpphigm4+/8=;
 b=dokhZuGHn3YLgiexL6ojGAsBDvbpi37YlNqt+fqT9Zr4t+OFx4BO+otEbEobC1U1eg
 poM7omWb/sG+xbWI+TBJz10buBRVHGn/KPn7vUbmvv4QzDftiwX7Qm2w5kCmWmLeoKHw
 mqIy3bhvoQxLTKo0FAq+lDRiAjcShG4CFQb7gaAtbvThT8l5vupBNgUilcAvb78SNpCi
 ZI4jkg3avkm0WhjyKV/QkC2jMSbgcTo5oCh0ZPdIW825XOv7g2jsuksv/uf7I0HrtuCH
 w9pHuhTEIaXWCIQXSn7aikv4LLimat8TrYCSV2WBB5p2W5zYZfOcFpHIAnuSBvmsw3sE
 JHYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xX9cl4CH1nYfDC9Fl1wNJAbL90tz1WTwrpphigm4+/8=;
 b=LpfnFWq6GWcy0bInOywudel+MjIw3VZ0uJ2EoOuDCH95aOMEUWbnkqSBIfG65QuN0p
 g94gAztnIb55hBqI8lN2rVSi6uwdzl54SFrPdJrQXUj92NznXzR1CQOb/Z9vcb/iiXoh
 NZBj1zlLP/9EHdOho7q5Zk1cjixPW48zkKTKhBdJpMAnX6P/Xbb/uOHlng5zsKOqnfdw
 UjJTPeXnFGIPAi9nUEfzUinN0L0qPlXLIAx7Dmo93nZn3YnNnpRlYQvgAbWzmtuB2Z0w
 irq31rv/TnCAW47JkdJzkprXOforQikxZ9FffnVXHKeljnJjxMakFzvTk3bpBdvhWg+R
 CVCA==
X-Gm-Message-State: AGi0PubUjPyZNow2POiervsAk4ZTAOLR1g2ooHsLPjrtVROqcT7+K2uN
 JdMDeWFtcy1xxzI2VtxnzYM=
X-Google-Smtp-Source: APiQypJcxfSQPdgfzVfTtaoDkE3q1F0w92nKE2PFtLR0RsytN1eenLMrY+ja3hE88v1MuuHborgwkQ==
X-Received: by 2002:adf:9022:: with SMTP id h31mr8520524wrh.223.1586356259396; 
 Wed, 08 Apr 2020 07:30:59 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id a10sm36268828wrm.87.2020.04.08.07.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 07:30:58 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [PATCH v2 4/5] arm64: defconfig: ARCH_R8A7795: follow changed config
 symbol name
Date: Wed,  8 Apr 2020 16:30:39 +0200
Message-Id: <20200408143040.57458-5-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200408143040.57458-1-max.krummenacher@toradex.com>
References: <20200408143040.57458-1-max.krummenacher@toradex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_073101_511167_E020F8F6 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [max.oss.09[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Anson Huang <Anson.Huang@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Completes commit b925adfceb52 ("soc: renesas: Add ARCH_R8A7795[01] for
existing R-Car H3") and commit 361c5dbb446e ("arm64: dts: renesas:
Remove use of ARCH_R8A7795").

CONFIG_ARCH_R8A7795 was split in CONFIG_ARCH_R8A77950 and
CONFIG_ARCH_R8A77951.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

---

Changes in v2: None

 arch/arm64/configs/defconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index ac0dd3dbbbfb6..4a361734cfc71 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -849,7 +849,8 @@ CONFIG_QCOM_APR=m
 CONFIG_ARCH_R8A774A1=y
 CONFIG_ARCH_R8A774B1=y
 CONFIG_ARCH_R8A774C0=y
-CONFIG_ARCH_R8A7795=y
+CONFIG_ARCH_R8A77950=y
+CONFIG_ARCH_R8A77951=y
 CONFIG_ARCH_R8A77960=y
 CONFIG_ARCH_R8A77961=y
 CONFIG_ARCH_R8A77965=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
