Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 029AB1D9F38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WbpS+nydNLeMHSyGURvkp+m7Hdotia6oSEJ7sp9J26A=; b=ouXN+p4dEme5qsEkQRNd3WvSBh
	rr3rFCuECpNjkvmhUzBQzGilF/EyjWp/gHXuIUM9vqEzvSWBuzCa16iP3JyIQdeit8Hzh4uBMC7L4
	0Gydut7GvoRoZIB/d2GbNK2YOasq7eS/a7TBhamTMXILfdNXiAec62BBeOuUAm+WJqe5HXDcCNW6q
	LZCtaeG/fOMCRDMz+xH+q41+dLYPGUKtsMkVeI9iUkYHnvJk3CpItUFqM4P90+btxIJLsuYJ57SHq
	+pJE5hb8OmdRGdrqaznPjUSNzcTNU3o3wl22LuPh4BNKh41ydz5iyjZIPZdqtTuug6loMkqzrIWIv
	SxbcVbEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6tL-0001EY-Au; Tue, 19 May 2020 18:23:03 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6s2-0000CM-VC; Tue, 19 May 2020 18:21:47 +0000
Received: by mail-pj1-x1042.google.com with SMTP id cx22so51101pjb.1;
 Tue, 19 May 2020 11:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=b52A7vD+RR088Jsg7MbGhWVJbszSlF+rCVUgMjj+kMs=;
 b=vWSz0BBOdzlZR3rjV4RVeNr/tSysik77xL++h89DZQuWbl/uK/LiTCvupqnojGgoWG
 523FmT5ugUWk8LxKFBale9tvHpL4kaz1mVkqFZR+szr6J0G7mrp5sIdFJryzMEzR/N7U
 ZOmTlh89BqpPuJ9CqdMtJvPp/E3ba5BcZrFJNUfR6/jE3j1bXQzaJ+I8YLU0WVBT8OZA
 Yl1wNF1GShuriWr4x4bc8AL54sAVUvnJ2QCiWwpXgPi/25+uJMYYnnXkJR+wtBbC9ISE
 Oqak0vA7BCVLpaoczJyD9bLmYI4bdtlPP8BBNuhIdOrSs2MTROi0pj9p+63HBpNLOTOo
 74aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=b52A7vD+RR088Jsg7MbGhWVJbszSlF+rCVUgMjj+kMs=;
 b=rFozMV+HMFrMJ2ipaXnUCHopTUFUB76Nzljg+5ePStrM+jjfc+2SiY20JjIFbbg+bH
 MwCknfWhXAOl0cqRyWcIITSrnWTUIqOq/BIJQM2Hv1Q7x0pupj33XH55FpPtsLoRrCNS
 wo94bhOh2amNyHPAaAqPd/MHljrtE4OCETk9LMBo/o3lDcIA06n1I8pe+CBlWGFpuHBn
 /n29RkPs9ez5VgSNS7BT1BtCFAndRD5SSX+KYLYHqJaSgV+6lFaDrZzm/L5Yo76/dCKI
 x10TXrKYuzoCQzf0ExE5kjtP/zQwgFMUfivILphzJ2Tg5Rn2RrIx740np2SPn00T6niI
 s4Nw==
X-Gm-Message-State: AOAM532UGFTVAsRpmb8E0EGpM9DsixW04npez9kQQiyQH2a/sKT0BDbQ
 4+Yd5wrXlMIaRLsOTa4A/18=
X-Google-Smtp-Source: ABdhPJws2U/VxXLXMna/NvEGpbIbjledu6ue4XKhF7XHouk2PIjlxarxjV0y9Pn0hcVd8HOR0tuCPw==
X-Received: by 2002:a17:902:a584:: with SMTP id
 az4mr707797plb.201.1589912501372; 
 Tue, 19 May 2020 11:21:41 -0700 (PDT)
Received: from localhost.localdomain ([223.235.145.232])
 by smtp.gmail.com with ESMTPSA id p2sm148399pgh.25.2020.05.19.11.21.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 11:21:40 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 sboyd@kernel.org
Subject: [PATCH v2 03/10] clk: actions: Add MMC clock-register reset bits
Date: Tue, 19 May 2020 23:49:21 +0530
Message-Id: <1589912368-480-4-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
References: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112143_014830_291B6167 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
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
Cc: linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds reset bits needed for MMC clock registers present
on Actions S700 SoC.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes from v1:
        * No change.
Changes from RFC:
        * No change.
---
 drivers/clk/actions/owl-s700.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/actions/owl-s700.c b/drivers/clk/actions/owl-s700.c
index a2f34d13fb54..cd60eca7727d 100644
--- a/drivers/clk/actions/owl-s700.c
+++ b/drivers/clk/actions/owl-s700.c
@@ -577,6 +577,9 @@ static const struct owl_reset_map s700_resets[] = {
 	[RESET_DSI]	= { CMU_DEVRST0, BIT(2) },
 	[RESET_CSI]	= { CMU_DEVRST0, BIT(13) },
 	[RESET_SI]	= { CMU_DEVRST0, BIT(14) },
+	[RESET_SD0]     = { CMU_DEVRST0, BIT(22) },
+	[RESET_SD1]     = { CMU_DEVRST0, BIT(23) },
+	[RESET_SD2]     = { CMU_DEVRST0, BIT(24) },
 	[RESET_I2C0]	= { CMU_DEVRST1, BIT(0) },
 	[RESET_I2C1]	= { CMU_DEVRST1, BIT(1) },
 	[RESET_I2C2]	= { CMU_DEVRST1, BIT(2) },
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
