Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3801D83FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpE18QyS366DmXux1nj3bYxH5Em4xnz/8iMXBOgONA8=; b=TpVejjVkCFyfHp
	e6FJPlzSv4IdxlQVfwP2q89Dr+F65iQAI83bCMSlKN9k1U184eacxFnjWPbkQR5chsVuPNOAXjorj
	WBk6hE62zOk609iBUVH0K+2LYGt/O7xvgAtPB56tjPYacNixjD/IO8P5McDRWOcdM3zne2XjV5vMN
	t2NU0+TNwuQyNLcvTmJ5/6DZSC+96BUgi4xPy21hnQVMig5I1hrBgciLaHqzCKt2qfHbA663HLyoR
	BxKcTB6C49aUbc54HwKsr6WA7b7I9xYf8LpIWVQhS6b2xy5OD7uC6KpDGCd7d4pYHpxUCZ/F9Xh2V
	AyQf1yVaBZEnC9RXyLyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakCD-00021x-NN; Mon, 18 May 2020 18:09:01 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6R-0003Pz-0A
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:03:04 +0000
Received: by mail-pl1-x643.google.com with SMTP id s20so4543694plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FoVRWcy/XNi4B/r5P2FDvOZUmVOjksYJfgQMSWpzBRM=;
 b=xsx8AoVsLHOYJKfK/062oNs3Aao9eR/Fg/VHsKjUZ382yNan4FyFhoF/fJZzQ5JpEs
 wfpy2Z9kOJ+ghkpgOfM3GxC/vuwSWmlhtbydN1rOclFMHJS94t1g7A/CcWv68s6ZCTOT
 EKyfn74YvrUBk6PoeYRnZ+tqvKZgblvIAWWbewI6XlOy7k/DxCdzKCpxNVGBJHnIBciN
 etVj0pA+hm6T9Imdqvi3Wv2WLtcBN3U4Mz080NXAPUtcOeCdy2peD+wb6EcrKpw66EBV
 0ahHDqO795Je8sUD2CBv0Ws78+kBMv8qz9bg22M3ZjPQHiXz++mwPPGU4qD9vaGWUuIY
 /0ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FoVRWcy/XNi4B/r5P2FDvOZUmVOjksYJfgQMSWpzBRM=;
 b=QDsZ3alqNTDE1k/mFsT2afJ8+QYn2hSokM33pwJ+1GrtFo/gTNFERxleC1pIDF73Av
 v0heMDyJ2+fY+XTfMLReDoUkd/9Y74RHsDLSio8Gcj6maYcFPgbOJvdvsqfO0PrUG8P9
 gsqU2Ps42iWEVImiwQ+syvnAgSHwSQNmvIrCnVhoIN/vtDd8MNcBOaHjwGhHX3a7a437
 vza61+LS3O65uK33sYirQ+zVwKX5CA2tCLcS4P65N405pQ3USHXr9xFiLbO8zUaEwM09
 iLASbqTsKIU3ifh3BBNhTAOicuWkdqkOoSW8yaIq0mnYoSSA8xdzHnr0lrwGa+eCuUTu
 SSog==
X-Gm-Message-State: AOAM531hgi9QZCHBqXWXAZTRX0Ka++GE6IpZqV971U12Zt2LOsLjyvib
 SBu7dlNlRmfmKxsl/3n/XJXyektXl0U=
X-Google-Smtp-Source: ABdhPJz+dMzKPW2+sd77DhdV6OySI3saGSpbB+lE5thmPMr3NoyggeO75URGrYcnt776k7WLHOspNA==
X-Received: by 2002:a17:90a:2009:: with SMTP id n9mr550946pjc.81.1589824978857; 
 Mon, 18 May 2020 11:02:58 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:58 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 15/23] coresight: etm4x: Add support for Neoverse N1 ETM
Date: Mon, 18 May 2020 12:02:34 -0600
Message-Id: <20200518180242.7916-16-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110303_054865_AA447545 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anurag Koul <anurag.koul@arm.com>

Add PID for Arm Neoverse N1 ETM to the list of supported/known ETMs.

Signed-off-by: Anurag Koul <anurag.koul@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 0b2c7c7efacb..7443a2e4528d 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1541,6 +1541,7 @@ static const struct amba_id etm4_ids[] = {
 	CS_AMBA_ID(0x000bb95a),			/* Cortex-A72 */
 	CS_AMBA_ID(0x000bb959),			/* Cortex-A73 */
 	CS_AMBA_UCI_ID(0x000bb9da, uci_id_etm4),/* Cortex-A35 */
+	CS_AMBA_UCI_ID(0x000bbd0c, uci_id_etm4),/* Neoverse N1 */
 	CS_AMBA_UCI_ID(0x000f0205, uci_id_etm4),/* Qualcomm Kryo */
 	CS_AMBA_UCI_ID(0x000f0211, uci_id_etm4),/* Qualcomm Kryo */
 	CS_AMBA_UCI_ID(0x000bb802, uci_id_etm4),/* Qualcomm Kryo 385 Cortex-A55 */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
