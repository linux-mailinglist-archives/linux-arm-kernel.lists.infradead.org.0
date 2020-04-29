Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5521BEC44
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 00:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pegMls4QePqd7kA/24M/Ml6uasGRaBMYwKW2DWi5ZuI=; b=OTVtk6mf7J7brL
	wF1ob99Aa0sDTnaufmX5AVhHpt89yukYNG5XsrTlDBydMCBv9EO25WSeg9a1oxezMsIRa0bqwVjd8
	VDagPi1x0r1NLmlOYIGeDWRrXU8nLvsDFkbaQdIxryV8e820T51E9uAVaDRtwYKUXkdeqlNibBQrY
	LV6fzHa28bhq5xR++Tp3JFdVRS7R+BYBFX7Lmep86SCHxT3tN466FMFrFfWusN3XW+0Lqd7m+R543
	5pZRUBrurhyiIhaTGqqdqM80xbxHQ8Gg5uZD5dl3mF18LtyFF0bmtEaD3eah+6MCyE/LPGh288hpw
	HnAaR0fgUS62qjMWqY1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTvev-0005fq-0C; Wed, 29 Apr 2020 22:58:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTvel-0005dP-MN
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 22:58:20 +0000
Received: by mail-wm1-x342.google.com with SMTP id k12so3835951wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 15:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+6NoQf2USPmT+yFI6PS5hYdeh8psj2plU0uHwMJplJ0=;
 b=fFidUgCC73KVNdch60JMuZhxViVXpLNnJAOIU2feWxEMPT14V+N2CPhFq2CldYnFJ7
 c17sXOUwn56vhC1P/BpLJM1hzkdhMMr36N0aSHRhm9Ye2X45iJsCMCxIFbTrsntApZI6
 4vVo+WU5byJNskqvQWMCrjNsDoCOVf20afWjK9XH6ponxdSFRUyz1Ddc3//r92EdMhHY
 8seWzhiaCZbfOug4hIgIrgp1GlazlLcFVIUkCaxQ9bRprld4IrP60aloJ/KDkGZ8DTnT
 cQtUx9D+nXEBqfI2afdpRzCjlStSJXS94Ep4r2skd70jOcNuaRh16Q2UKoPJkRITTckM
 39Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+6NoQf2USPmT+yFI6PS5hYdeh8psj2plU0uHwMJplJ0=;
 b=Njd3oJk1S4O63GaWkozHQvt9/K4z37SGxgbbocSuBFwNRF84Yh71iNbTsIp+UjvMHx
 N5h2dOiHDWH9VXZkQXb9mDqmMYehXOfu6G1RUXnsILQIvhkchjfk84XM8VFgoWoysOoq
 bCYfc8NNHTzz/8wBPawzXKdk/LVVUtaONzSFqMF3RdbBQFPBj0Re2eyVGse6cTK7xEmt
 /lf4cD3wiw3HcxnlA4IAKQumUROi+vfQ+GGaNvH+ZdKmENiVhoHlcIqDQAR/3fRMpw9G
 TfzpC+8FIOD7sg/kOPzHzZThX15OBpFvodXWSN1K29U7udbTfjxK1+QAOAovdhYwPthT
 JH5g==
X-Gm-Message-State: AGi0Pub0HKru4Fv9gYmryfKRdKle5xkGGMl9jBapPrB1lcQYZF+EXoc8
 sCGaVcwUgszHg//CY5LZ4glchN7O0DY9
X-Google-Smtp-Source: APiQypJ+E68ZHvFA2HcEqegr44lcSdfb9XbNTbnuT4Q4Qx7od9MMtBaOvj/ujJN0U6kPVrl2qIqpFw==
X-Received: by 2002:a7b:c44d:: with SMTP id l13mr170481wmi.72.1588201095735;
 Wed, 29 Apr 2020 15:58:15 -0700 (PDT)
Received: from ninjahost.lan (host-2-102-14-195.as13285.net. [2.102.14.195])
 by smtp.gmail.com with ESMTPSA id 91sm1247675wra.37.2020.04.29.15.58.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 15:58:15 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] cxgb4: Add missing annotation for service_ofldq()
Date: Wed, 29 Apr 2020 23:57:22 +0100
Message-Id: <20200429225723.31258-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429225723.31258-1-jbi.octave@gmail.com>
References: <0/2>
 <20200429225723.31258-1-jbi.octave@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_155819_733440_B969C01F 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbi.octave[at]gmail.com]
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
Cc: netdev@vger.kernel.org, Vishal Kulkarni <vishal@chelsio.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sparse reports a warning at service_ofldq()

warning: context imbalance in service_ofldq() - unexpected unlock

The root cause is the missing annotation at service_ofldq()

Add the missing __must_hold(&q->sendq.lock) annotation

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/net/ethernet/chelsio/cxgb4/sge.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/chelsio/cxgb4/sge.c b/drivers/net/ethernet/chelsio/cxgb4/sge.c
index 97cda501e7e8..5da8eb6eb9b3 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/sge.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/sge.c
@@ -2702,6 +2702,7 @@ static void ofldtxq_stop(struct sge_uld_txq *q, struct fw_wr_hdr *wr)
  *	is ever running at a time ...
  */
 static void service_ofldq(struct sge_uld_txq *q)
+	__must_hold(&q->sendq.lock)
 {
 	u64 *pos, *before, *end;
 	int credits;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
