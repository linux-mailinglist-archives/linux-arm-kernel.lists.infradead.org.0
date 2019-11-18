Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3F71003C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/Io1TDculi07pDWANG8XU8ejupy4YkvFX+vjUyFZBE=; b=Ek/UK5hQtjNKa+
	CijZMPjgoUQH0d1gJdMtky2nu2aN2sSrrnYTt8JJAzNxlvqxCqSPBBTd7j5oll5r8DQvisyUEPrRK
	JrSAUYRHQokhAycTDAdV+oicBy6ja0rf1g5+S8/lSyyMqmxCLkmDuNTDRWXpdqzklWLDWVAQL9pDg
	2NBg1GkqeUdYbBA/QIfGWJt+U0TbCBTdEb9LO68DGVyWEOJ/tg1RUqJuTqXh9ESuM6U73V77oatQ6
	lI+7EqAL/YJ9loQVngHqH37Cjpl5uFvDTtvx6JS11QmaPzf/im0OeZDLBtx5yk6xx+9GNJU2XvS4v
	jSZ+Nl9QwQuqOXyHF9Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWf8M-0000uC-CK; Mon, 18 Nov 2019 11:23:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf80-0000rf-ME
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:23:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id a15so18979377wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7uK8xEnPEigQ7dFIza6M7Wg35/gDKz/RHXvPNwcggqY=;
 b=ESHufM9rLwzeit6o3y1ifl1OvkypH74ieT9VS8b/loPYq5KFebFx5IHeajLey5njlA
 nUzu4nF8OqS1t+fYCyJ8MX/TbSfZw1FjLIURt2XAPydF1iNrZaszqm/kzaXRlHKUTWxx
 vecOqxle748O6UlRJPOFIZsmf9MDaD2KpObhM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7uK8xEnPEigQ7dFIza6M7Wg35/gDKz/RHXvPNwcggqY=;
 b=tOOccupmE0srlKRo8uezy9phdA5qwmIVXdNqINHNCIeaOYytGN54hMxUdqEryohrhe
 QfaCxcpdxFcVAHqsH/yUDThqdUsqL01Bilh+o6dTI+iFdk67N4jeS0vIG3Vb7Bcl+3Ki
 UWRkKBxqftuLMph2iynqSCH2X19fIrn/s5Gw40IPeND9A+gIFDvgoels6sunbMFUIntz
 z3R/nRHWWBaJjTXmtJHDtQg+YphGT5ZJpjm8j9lSn4AoDCSQtroewr/idZIl6UP5xkjS
 c1Jxf1c2MksRv1YifDuuhpvDIdI2sL12smVAUwe/Rc3YGcOBoFw4DtEyNtyufzi4lEOs
 xdww==
X-Gm-Message-State: APjAAAXr3MCcwDGvS43nmJZWTlneoqdUgjPDWEyajpoPUe8j0f3JwPM/
 F8XfUy5lEikr2WLbE5+3gjbLuUTKVH2ZTA==
X-Google-Smtp-Source: APXvYqy2NodHoijv8VFlHCy2XgCL4gzpCEIpCfwwztX4l52WX/0x4yS/GCAFF8twhFiSv7d91UMYIw==
X-Received: by 2002:a5d:62cd:: with SMTP id o13mr20473299wrv.367.1574076211060; 
 Mon, 18 Nov 2019 03:23:31 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.23.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:23:30 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 01/48] soc: fsl: qe: remove space-before-tab
Date: Mon, 18 Nov 2019 12:22:37 +0100
Message-Id: <20191118112324.22725-2-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032332_736749_5F95A28E 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 417df7e19281..2a0e6e642776 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -378,8 +378,8 @@ static int qe_sdma_init(void)
 	}
 
 	out_be32(&sdma->sdebcr, (u32) sdma_buf_offset & QE_SDEBCR_BA_MASK);
- 	out_be32(&sdma->sdmr, (QE_SDMR_GLB_1_MSK |
- 					(0x1 << QE_SDMR_CEN_SHIFT)));
+	out_be32(&sdma->sdmr, (QE_SDMR_GLB_1_MSK |
+		 (0x1 << QE_SDMR_CEN_SHIFT)));
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
