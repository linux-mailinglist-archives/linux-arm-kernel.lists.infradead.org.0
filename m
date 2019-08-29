Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA610A280B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Kr1sWXtmg3zLHHdg/HDj6tfISDXx6fa61jakNnOZis8=; b=hiOyAjcEropNnqX/VsYTkojlXk
	ENsCWj3mtArAEa/hhs0CtEarl+bzExIlBcA0ipJl3/FbQUxKXGN+k62W2YrHVli7e4NKhbGLYhN8S
	Bqfs5qseQlBB93g9Z2p7sSr+/SoWnBZrnAIRL/D/VOXqf1jRLZJB1jzVbG++F3FwpoebSqIpOdGvl
	bERofPpgwHA+Bhs8cgseqRASWCPVKu8AkD3h+CWl1mMQc/3Pw8tDCPoNvtwTfpqtRh+yhxLrAcTFt
	HPcrqpw0hYG40eh3GrZwgXW/1HGzDJHyH1qYcGqSo1F+NWD7Gx+W9WZrJFy+xyBMyfACgbYSxIxu3
	3NGDVmVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R5T-0007u7-3w; Thu, 29 Aug 2019 20:32:07 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2N-0003ox-5S
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:57 +0000
Received: by mail-pl1-x643.google.com with SMTP id o3so2103218plb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=m79oRnRrEr4qP8mVMU/76dpiarnntehXpScT0RVwif0=;
 b=Taa04c2VVm1QUnj+0gP+YRVeG4PBUTpzKpjZUNVPWhjceX8wBxp/R/XZjwGo6Q+oRB
 9NwdkGftTaAuSVz2wz4/0hfXjOkUmCVItSsqXKHnpvJREvnq/cZfOvgRB2Hg91w2vAkR
 guSjY3y1skyEFN2/WLDPPvLnJThATjR20sgE4J8Eh9Y1lc8GulexOWquWyKHDvSrAq+W
 xPQV4eJ2CC+84VRAkkRNT9Cp6d+oHlcEmzGTSR5rmMZR4qx8PBDYeL5BbVPriUGlobrr
 Y/Pl5d7l5n6B4cQjJ4TqPAfewtve+Uw5h5CNnYaN5837I/uKYuhrIqaps9nq6yiz8eP8
 cMrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=m79oRnRrEr4qP8mVMU/76dpiarnntehXpScT0RVwif0=;
 b=n6MnMLSDtyOfhfGU713mzTb4dz6Z6U/Ffa5ap2f7ZLNELrCEw0p2CwMXU0a/qb5wpz
 iMS72IEVskxErSd+vyPOCuMVcr+SCdgcr/sx1+acQtqe4UZNgQiCn9Mg4EEua7rCERpf
 UklhSCiLcy5nMBXbeA9Md8DqmRbq8rnFcpUZZ7EUTxpZyBpwRyDMJzKNNtXOiywkwegx
 YLz9JpbbmOmRWmA+YjvqFrrXAFofnKoGCVyW7qC3Qg+l28hj14liwVPCbwJJnVHwriRP
 ilZ3w+VKlJHscaiHH2dezsf67Vx3IH3imA50bVQBvPSZFsdNk1oJ3AKnTTag1CGTfb72
 FIlA==
X-Gm-Message-State: APjAAAUWAUV+7XQd992rMjq1Y6HC+Qr/1XUYvc10fSOmVl3xR80LdBtc
 FWIrgge/kbkkpjv+EK3hHMjzQ1mZ084=
X-Google-Smtp-Source: APXvYqwll5nTXFWczC0ZvzmJjKVimClwUqzosGWa5wWBhaihnhgLNeeNmId/FHQJ6QFY1HrDWh5Qpg==
X-Received: by 2002:a17:902:6bc7:: with SMTP id
 m7mr12172902plt.60.1567110534704; 
 Thu, 29 Aug 2019 13:28:54 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:54 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 12/17] coresight: etm4x: improve clarity of etm4_os_unlock
 comment
Date: Thu, 29 Aug 2019 14:28:37 -0600
Message-Id: <20190829202842.580-13-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132855_408705_FB50FF4C 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Murray <andrew.murray@arm.com>

To improve clarity, let's update the comment for etm4_os_unlock
to use the name of the register as per the ETM architecture
specification.

The existing comment is also misleading as it suggests any value
written to TRCOSLAR unlocks the trace registers, however it must
be '0' - let's also correct this.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 615bdbf7c9b7..a128b5063f46 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -48,7 +48,7 @@ static enum cpuhp_state hp_online;
 
 static void etm4_os_unlock(struct etmv4_drvdata *drvdata)
 {
-	/* Writing any value to ETMOSLAR unlocks the trace registers */
+	/* Writing 0 to TRCOSLAR unlocks the trace registers */
 	writel_relaxed(0x0, drvdata->base + TRCOSLAR);
 	drvdata->os_unlock = true;
 	isb();
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
