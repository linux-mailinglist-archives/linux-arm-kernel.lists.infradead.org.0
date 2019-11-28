Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C164C10CB1C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:00:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mpvA3V0T787y/jnpyU3XmSPGYIB1hvSYKGPQiWF0dA=; b=CUF86L2DFaZ7V5
	UpMHYrHjw3SFVDNna8XODXC1CrUu23DbIwNIWUm7J3AMoKDRBYllPFtADveOtHn+aPTsMRn5UPTh0
	Dze2+BYsSvb2ZA86KCr0ybMinhn03cp1Yh8v5UGwgsplMFv4ASjUaUa6Jj5/6tWQbei03f3v1g/mj
	ymCCNq46bYXC9SnapnaVtGrUfn2VZdQo7aNTpmvOg7QkpMxQEyjJsQWdQpbqvWfnMyTZzZ/6w/Vx+
	tx8lzFfSZl/EHrR16GxL9pnKCtG9Wl1TPohpOmt8v5/jUHHHC5FUHh+19qLbw5ubPCM2QMYz4gZF1
	I0dMTNLKy0lN17A475+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLHW-0002wt-Vo; Thu, 28 Nov 2019 15:00:35 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEJ-0000fF-Tb
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:35 +0000
Received: by mail-lf1-x142.google.com with SMTP id y5so7551481lfy.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mcPtC9aaHvQVHiMDeuHeO5Xd/IlCVhW66bWYCmG15ow=;
 b=EmkDyXuqAdU0mDbWeNds+sBE9QLEmfHaO5I4B4TTXCJ9nRxpp5C+xuDFdZRQxt7wq2
 AAF6YpMlfKCAZKeLvo6uLKsU7IKJhjEFyvK1PKAnNcZ1JPXmzW6AQ7+M5NqvWw4qYv/l
 x2IqPboiEsuPFc8Yr+/a4hs0i7+HayMlTcKoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mcPtC9aaHvQVHiMDeuHeO5Xd/IlCVhW66bWYCmG15ow=;
 b=Ngb6KfGt9v9ER/Fy+u3QjLhohnBK4LhEcuQfn+oLriy0SnSoN63+yQwN0/FsG4TcTg
 pd88eHyXtkCPRFVrzwp2tF8OJyUrK9+YAGaPIOmSA7IrSVIJ+Pc2KyEp6NYtHlsD5FId
 Lo9emPDgCxMXxYtuv8ctEh1OO1mTsTzCJ3jbGNY7VwlmmN56dTFreCiOKoBq+lEEVnEF
 NpwzE/cY4TNig2Z4TfN6gbwTniKbA+d3w1C/ap0LLSwgGphLj+sGmk8YLW8YP0Nhm/4R
 A+FEK5A+4CbcpGXGXKsm/D5JMpaBlWnyyrit8vBTg5qqw8mgSmkWmBeL6LBaM2C1jrBh
 URKA==
X-Gm-Message-State: APjAAAUTnCet6+w9/mNammZ5z/g/Xlw4NhV517KCvhjMT3+ySVnok5qf
 vtjFbSCiqjUEz9qVliFn5Ah4yP8Iu+ArMeii
X-Google-Smtp-Source: APXvYqySVaYODKYk+svlcgwOVHhmUKL1Q2Wk/1XqF1/sAAQz/dRwqwnYV2cQVtTbY6URwH9ffRGCHg==
X-Received: by 2002:a19:22cc:: with SMTP id
 i195mr32346136lfi.148.1574953033803; 
 Thu, 28 Nov 2019 06:57:13 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:13 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 07/49] soc: fsl: qe: qe.c: guard use of pvr_version_is()
 with CONFIG_PPC32
Date: Thu, 28 Nov 2019 15:55:12 +0100
Message-Id: <20191128145554.1297-8-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065715_996821_29D136FF 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit e5c5c8d23fef (soc/fsl/qe: only apply QE_General4 workaround on
affected SoCs) introduced use of pvr_version_is(), saying

    The QE_General4 workaround is only valid for the MPC832x and MPC836x
    SoCs. The other SoCs that embed a QUICC engine are not affected by this
    hardware bug and thus can use the computed divisors (this was
    successfully tested on the T1040).

I'm reading the above as saying that the errata does not apply to the
ARM-based SOCs with QUICC engine. In any case, use of pvr_version_is()
must be guarded by CONFIG_PPC32 before we can remove the PPC32
dependency from CONFIG_QUICC_ENGINE, so introduce qe_general4_errata()
to keep the necessary #ifdeffery localized to a trivial helper.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 85737e6f5b62..1d8aa62c7ddf 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -197,6 +197,14 @@ EXPORT_SYMBOL(qe_get_brg_clk);
 #define PVR_VER_836x	0x8083
 #define PVR_VER_832x	0x8084
 
+static bool qe_general4_errata(void)
+{
+#ifdef CONFIG_PPC32
+	return pvr_version_is(PVR_VER_836x) || pvr_version_is(PVR_VER_832x);
+#endif
+	return false;
+}
+
 /* Program the BRG to the given sampling rate and multiplier
  *
  * @brg: the BRG, QE_BRG1 - QE_BRG16
@@ -223,7 +231,7 @@ int qe_setbrg(enum qe_clock brg, unsigned int rate, unsigned int multiplier)
 	/* Errata QE_General4, which affects some MPC832x and MPC836x SOCs, says
 	   that the BRG divisor must be even if you're not using divide-by-16
 	   mode. */
-	if (pvr_version_is(PVR_VER_836x) || pvr_version_is(PVR_VER_832x))
+	if (qe_general4_errata())
 		if (!div16 && (divisor & 1) && (divisor > 3))
 			divisor++;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
