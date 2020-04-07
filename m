Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 451001A0C0C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 12:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8ZbHM6vIq2ZJNFLr+GSDkXVyRldSIwo5iqeNMnbrQU=; b=JOwJCpOHqJNakS
	bod4lnwIMcZ+DA7kaRu6q0/sWwu1KOtUg5fZOPBtLS5b1rgzA9V/cKLIsbkWNPphTuECGV4b88OJ3
	rmo3MjmFky2tTpCxn5Txy8WAgXU0tckwpwya4EG5s5vH7IMxnpN8vwiSq1kAKnVT4tgzdibGB49+p
	VPRJo+8J+jcKzvki+K3chIZFgOo4kbEbBEaDnrcQNfgF6yu+LN2XiIr0dohlqb1mYrz6hQ6TFdTlR
	HAg5iR3176dLvCI9vALLmR7Mef5IOcvcB+RSarHBa+ltUw8ow57RwSenCs0S+J6AJFsF1JhjpDhWu
	APVsXQBCkmhzAmDjuegw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLlbr-0006pD-Gs; Tue, 07 Apr 2020 10:37:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLlb7-0006EO-HY
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 10:36:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id w10so3298154wrm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 03:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ol+vaCJYJOmb17xQ0UGT+1HdKXAsk3yj2s/uWUmOiBs=;
 b=P8ntfIrzx7XCkvwrKYcQ2SFWvNNUMcR0yVny70SYCfEYYkh3uIZICwOYbT0IZAtmDS
 vIXxJgPS08LBuoNOlTx9ZxzVQgvZ9sRVHYzqHNzQkWYnq8U1dR4xsnnk92Ihdv/mC7b1
 FokX4LcFfBbWxXIeV+fRm72GjZh+Y5YUhA8etckXplszoVEL6XLGexmEUaAhTCMXs8uh
 CkjznhoyaNlQPjoz5EHjjiteARj5o0yzvigTPX5roMYiFjLY9yXlJpwWjg0szsYTbJo6
 /cjNieLchRC5jJumDkT86Str8t8J/ax2AS5ZcWRaMHWOuSh03KPS3tKNElNSK7YDBgMZ
 zrGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ol+vaCJYJOmb17xQ0UGT+1HdKXAsk3yj2s/uWUmOiBs=;
 b=d9MRcO6oa6yauoCDxLwND3suH18AawqJoM67YADtzlcTgjWX8wPR4KhLHFof73gqT8
 w8KbOw8DIJhaTln3HiXFbCgUFIwM3AQp/4fAf6MqzvOSigHKqjji2VcTRLxCeHJMt+70
 LaeDsivnGnqvaAMJF7ji7RuzeW0RK5+yiLieKUile/QEqueNJDec84ZOU0ljES+c8mu9
 4CY+dXBJlxzFa8Q6qhRMuBeOaPX8g85d/z95p/uNC23GvcCUnU3aSGVG2UGlDdhQ6gJ1
 5l50stPAj+UNk8eLB/Gfi0y1GJWwyMTP1kGWPtlkWs60K7u0/4JAPzQgurfW+5L3rKnO
 auiQ==
X-Gm-Message-State: AGi0PuaQhwUsWOhVuU22PecJuSeQoCXk8nx33KNrIkxGGN2HvvOis87B
 7OCjOBYm4K+7VoKaQYIS090=
X-Google-Smtp-Source: APiQypIeZi8S0XuxSx9RZsD0A1xI/nmNPgHIHvzHTmy2n2WZAOlRPEd69ICfvzXVEFNtF/MOb76x5A==
X-Received: by 2002:a5d:4d12:: with SMTP id z18mr2100522wrt.67.1586255807938; 
 Tue, 07 Apr 2020 03:36:47 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id c17sm25016722wrp.28.2020.04.07.03.36.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 03:36:47 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [PATCH 3/4] arm64: defconfig: ARCH_R8A7795: follow changed config
 symbol name
Date: Tue,  7 Apr 2020 12:35:36 +0200
Message-Id: <20200407103537.4138-4-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200407103537.4138-1-max.krummenacher@toradex.com>
References: <20200407103537.4138-1-max.krummenacher@toradex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_033649_581312_AC37D525 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [max.oss.09[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Will Deacon <will@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
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

---

 arch/arm64/configs/defconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7e2690b449328..d43bd18bedf1e 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -848,7 +848,8 @@ CONFIG_QCOM_APR=m
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
