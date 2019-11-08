Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8170F4CC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:10:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phdG8dETw93i4+B4t+Nwup/3+7WSY4kHLgrDAv4zO2w=; b=K5HH1c3iwfFlVB
	SN5vcSGt3Vu3EpQEJ90HK1ccXJrNSZxjQpC3aYlwgwTkE+mcFkD4azwq3pJvkIFaKr+/AgLjhNuuS
	mHJ6B2/jGo1d2rPmQMJcv6AcSlxrhwG4FCfihyU+tH4+K+ye/aidcJ24fMvKDbZd/tyhSvbqtTdGV
	3cH2isf9VOJOMhj6H+UC4DXSFUtkvBfPpWpIqLCJu+9x/TpeuX8hJZc8tlcMxMea0qxsTZ+r3QfgY
	sGrUHMB76r4S2z4OyS7MTW4MDMNOedq9cP8soVrFJeVuSErSzwWHlrek8K/pGSNj9vAixV+0r6Sz1
	oi/cx/mjsUqw5oGgKv2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT42L-0005jP-Hx; Fri, 08 Nov 2019 13:10:49 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tt-0004fz-4q
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:08 +0000
Received: by mail-lj1-x244.google.com with SMTP id v8so6132686ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=skc4BB3FfJVhrMQufim0pPb5lTLStBal+/ZiI3PgHrk=;
 b=XkJAhXffjW6sLGidyoW6envOidVvdJ8BQkPq8vG0pGpA/4S0zQDW1cQiCFn6AbkNVu
 lKSJ/fyLaTVT9YpDlOYtgCF6M0vAak9InlnDdRLV8faRxFEFc/5zQeELf0teqgHziaP1
 mc28TbmJQsB2/p7ad853POos5LlDUzylHoJ/U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=skc4BB3FfJVhrMQufim0pPb5lTLStBal+/ZiI3PgHrk=;
 b=G2pjxagkfMbImTgtp2+kPwouCe7AYDpD3LIeSQVh4wxeU5Gj0iWIil1lHdLvFDIiRw
 3qo/cfRu63CaV5hN30jrK/ExdGXUfcR+3BMjEkjgoQ9zgwLcoOSXNOyQkXrcNvjvuw+0
 Z8stG4SQ3tZAHKPFC65vDcis9R60/WUe2RKXVB/jK/GbSUmf2BCQ96KauAvUstH3xOOA
 kpXW+BsjzXsiAn3eSHi2l8ob8ipv/4EwEUBpXP8S9v2YQ1k/PmFwoOPACi96W13C4da+
 /rPqplJchxMPZ5KincR/MJ2URzGt/loigviaejf8KwDPts+VfIqubzPb4VbNlLlMCvF5
 +cYg==
X-Gm-Message-State: APjAAAX1ZTlDTigyv09qtTKTzggR/CN+TSMxNCOjnbKX1wr5O5ruIqm1
 BAvijVArmcpIGDgasdalIt+9sA==
X-Google-Smtp-Source: APXvYqxbFlgCtl6tta2OpdTxU9LRwd/l2khasl25WtDrijVbgbWeE5FWCtL/GrDLKg+orNEgarZjCg==
X-Received: by 2002:a2e:558:: with SMTP id 85mr6765994ljf.67.1573218123603;
 Fri, 08 Nov 2019 05:02:03 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:03 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 28/47] serial: ucc_uart: explicitly include soc/fsl/cpm.h
Date: Fri,  8 Nov 2019 14:01:04 +0100
Message-Id: <20191108130123.6839-29-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050205_681696_E0CC77E1 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linux-serial@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver uses #defines from soc/fsl/cpm.h, so instead of relying on
some other header pulling that in, do that explicitly. This is
preparation for allowing this driver to build on ARM.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/tty/serial/ucc_uart.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tty/serial/ucc_uart.c b/drivers/tty/serial/ucc_uart.c
index a0555ae2b1ef..7e802616cba8 100644
--- a/drivers/tty/serial/ucc_uart.c
+++ b/drivers/tty/serial/ucc_uart.c
@@ -32,6 +32,7 @@
 #include <soc/fsl/qe/ucc_slow.h>
 
 #include <linux/firmware.h>
+#include <soc/fsl/cpm.h>
 #include <asm/reg.h>
 
 /*
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
