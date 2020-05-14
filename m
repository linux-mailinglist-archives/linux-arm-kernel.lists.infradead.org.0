Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F511D3630
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W5g9lJZWpJ/xGDeKhnSuFidNwCwIXOHDKlYz2IHl8E4=; b=szFH5DPMsH1bR9JX8y37V6TsZd
	A0Ij/TtSFcU3T986meNeopduKecw4xw83DrHAwYMqHBa7d8w7k8pOrVJX6ftKAxZIee01UMfvWRsT
	I+WT5wLnOgbLQsIsF3bdZ1CLXgA70rtTe5WLuz+HfY1wcwIw+brOqNDO3Ob4Rd7Mb+WgLWBMbBgaD
	uI5umsxRNfsitcP+/eC+zINdkJ7QNKBZD7cxlJGhlMmGHAviLOrGsJyfeeD008dEwM9e9BCZWXd/z
	GYdYP/Z4ntjHuj4jiW7uNSkQO8WCw7AM7/6VutVGG2dUWItnVf01NY/XNrR412YZJ0Uw5zOX928Gk
	yequknYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGUx-00061d-T2; Thu, 14 May 2020 16:14:15 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGT0-0004OR-UD; Thu, 14 May 2020 16:12:16 +0000
Received: by mail-pj1-x1030.google.com with SMTP id a5so12734115pjh.2;
 Thu, 14 May 2020 09:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nf2fUh4L0xvb2gBsE6dqAlNe1Fn7n9Y6ufB37FLzpcs=;
 b=bCpA9Den6BRXP6DtJeKNE+xIPbA7NjvVBhI1cxHv25mwT6y/E4hqujy+oLv6uoFaxr
 dQeApqnC6ZTze3DEiCXMH2krcO0pOE9zZf6gsc174k8WX/O+bxvf0fDjVHqWVBRywKYJ
 wIo7JQGecv2bop3W91Gr/viQRaUE96Cthcgl8t/0XlCH/ghYTq4n9g3LmabrtVO3bFnD
 IyGH4yLOk1Phu597psLCI0blmYRhltWZlkoEOlV8OAvvQAntHrkYF7ccOCdAfSSI0vCh
 V8KLJ5f399PNQdesRpJF8RhqgZS2tOBcfxEk/Rk1RdjroP4bPotYbOOhjAVGjQc49Hd4
 E4CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nf2fUh4L0xvb2gBsE6dqAlNe1Fn7n9Y6ufB37FLzpcs=;
 b=c9tUrN2IfIvCd6NYOzAz4iWZMi8LsGDNi9bzHpQ7cAKCbFqjRvlA05Ta8/c2RYw3nC
 /Gx00MONI54+keX4VTF0LWTBCxL7UGWGkoXav+TiBDEELtsG/UWWyLoiWVip0RGfnTYk
 lyOTP0K99PW3oKF/rhHPe1UhqDJ30/hbOwtdTjyJeKEZWgmc1R+Eh/zYG32ZTnqcLyRH
 r/tA5r2FLsxcQqBcDvNwSMMsJ+1usUhwkWVssPYDrS5f5U9/qLtg+Ome9DVWnLnkfBMC
 iDcQiZxCaI9F5Z1p+FKe6YBKiH//lPtrzOpyzQam2ddGC+wfYvleDP55im/2Qm3KBuM4
 XoGA==
X-Gm-Message-State: AGi0PuaNlyAsgNj+aZfGwQsblrtWi3jxLTJ06hBMiW2VcTjIYVYmzDWv
 DfMAQNsqm91lxV8teMu3J8k=
X-Google-Smtp-Source: APiQypIbw0aDPscUlDaeGJmUDx8BKosvpgvswBPyfcGiXK06S3xVDQfhzXazzdb43RYmuGX1crGV2A==
X-Received: by 2002:a17:90a:6403:: with SMTP id
 g3mr36897703pjj.99.1589472733793; 
 Thu, 14 May 2020 09:12:13 -0700 (PDT)
Received: from localhost.localdomain ([106.215.24.137])
 by smtp.gmail.com with ESMTPSA id t5sm2331755pgp.80.2020.05.14.09.12.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 May 2020 09:12:13 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v1 7/9] dt-bindings: reset: s700: Add binding constants for mmc
Date: Thu, 14 May 2020 21:40:55 +0530
Message-Id: <1589472657-3930-8-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_091215_008767_50540D12 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1030 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds device tree binding reset constants for mmc controller
present on Actions S700 Soc.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since RFC:
	* added Rob's acked-by tag
---
 include/dt-bindings/reset/actions,s700-reset.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/reset/actions,s700-reset.h b/include/dt-bindings/reset/actions,s700-reset.h
index 5e3b16b8ef53..a3118de6d7aa 100644
--- a/include/dt-bindings/reset/actions,s700-reset.h
+++ b/include/dt-bindings/reset/actions,s700-reset.h
@@ -30,5 +30,8 @@
 #define RESET_UART4				20
 #define RESET_UART5				21
 #define RESET_UART6				22
+#define RESET_SD0				23
+#define RESET_SD1				24
+#define RESET_SD2				25
 
 #endif /* __DT_BINDINGS_ACTIONS_S700_RESET_H */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
