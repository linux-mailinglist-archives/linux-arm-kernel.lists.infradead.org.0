Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C87D556E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 20:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6ia4ofJ2uATQZXzk5fvi29+O9YDbhEBr7uNfuUG3kao=; b=D3HqHzFp+rBLFc
	+uUeL1c9qEakTHALacPghPlNSvndoGCGt/RJm5HwLgHtJeMvnHeO2mu7p7C3y1q5Z79a2p7OLAWSO
	kTl/aADMitbvDFiX9Imemz3NpNbkkMiugZXmravhtz4Xqr3PMA1l1vccPtpLUIABLlj1vZtCVzu8n
	h+Cktt46AZagiObHiQhqZMfPJQoAbt42vMHNMIH4fEEG9jcqEOqVUQOmogCsEoga+hnv71t1U4xOo
	E2u4q4sMHCp9GZSubk+NscSMzl7V7S8tb96CwqJLLLW5u5ycDQjxWg/v26P1X59CoQXDXDUTU2jn+
	uUDjx3qwdzBz+RpNPreQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfq0o-0003gv-Nu; Tue, 25 Jun 2019 18:17:46 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfq0U-0003em-Ej; Tue, 25 Jun 2019 18:17:27 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so9294167pls.6;
 Tue, 25 Jun 2019 11:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ic2sos3p2ZO51dPXYEpE88vNYNF9xpgqADXaFZWGMEA=;
 b=BtjPMi1+Roch459MDj3Oht2eS9e6nKl1QAR6lmeAee2jCJb7iKVK8kfRlDB1ZsZziM
 /VOV/m5RebeHOGoZHds8M1Y33qn6ZZ9xz4GyP5ATCD6q8YYgLZilB9XC6as/8dZHZDax
 I9IZRxdLrghDjbaLK29OTAcGO3vZoSs6f06t5PsNRZ9RwXYQAPfMuE4mxturp8tMw0Ke
 EdLggZl0UQ472RYIaY7S5eVQbqLpCbL9sHOyHfoprpiV7wd4xHPZa90Jm2SBcl1H70LC
 +gMKHt1UnjDkrzDTco17QZJV90nn8SaNevFW2+5Gyy3PoYuYkWsK1AMr3OxKMRNn8frd
 ABtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ic2sos3p2ZO51dPXYEpE88vNYNF9xpgqADXaFZWGMEA=;
 b=fG2t6Ug5UIGe0xK1YSgMoSzinA+Yt8WrDukHQvAorFGCC4IcGDpGSNym7YZeaDgKU9
 YEAsKfkh3yNi24rFJ47EsP96jx/xZaakTJncsFh2RzyIn2EW3zpfmle0iCf9DxzCcXgV
 nyC8RO2XfiVguQd2SWNUp1zqQEcw5UF5ZUX9t+iDzA4zF24gPtSk65ef8pFUI1D31AcM
 vghVrgdm3zVURSeHnI1uiqa6GiemnCjWm6Gzrqa5pW9VLneMlDJp34Yt+bnd6vvAwefR
 u/qfvRakgXOocrOITp6d/JqrtRdchujbndonAesGCCUQHyt1fvwW4dqkqfr58caaVxF3
 Wt/g==
X-Gm-Message-State: APjAAAUCluNLNSsJ/e1OM5Nx+m+S6RlzqdhxLwvER9QutAf/dcKfkB3x
 tYqTKQXgT3A8VY3MznRPkzY=
X-Google-Smtp-Source: APXvYqzFgH6YNemAXMamssS24KzgeSF3SUtZouLUzp2jMdNUAptfS71nh+KiZb/gK5Cr/UGn9yaGjA==
X-Received: by 2002:a17:902:22:: with SMTP id 31mr40001pla.15.1561486645099;
 Tue, 25 Jun 2019 11:17:25 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:24 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 1/9] staging: vc04_services: Remove function
 vchiu_queue_is_full()
Date: Tue, 25 Jun 2019 23:47:01 +0530
Message-Id: <20190625181710.2267-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_111726_497418_12582721 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove unused function vchiu_queue_is_full.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_util.c   | 5 -----
 .../staging/vc04_services/interface/vchiq_arm/vchiq_util.h   | 1 -
 2 files changed, 6 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
index 8ee85c5e6f77..5e6d3035dc05 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
@@ -39,11 +39,6 @@ int vchiu_queue_is_empty(struct vchiu_queue *queue)
 	return queue->read == queue->write;
 }
 
-int vchiu_queue_is_full(struct vchiu_queue *queue)
-{
-	return queue->write == queue->read + queue->size;
-}
-
 void vchiu_queue_push(struct vchiu_queue *queue, struct vchiq_header *header)
 {
 	if (!queue->initialized)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
index ee1459468171..f03a4250de0d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
@@ -40,7 +40,6 @@ extern int  vchiu_queue_init(struct vchiu_queue *queue, int size);
 extern void vchiu_queue_delete(struct vchiu_queue *queue);
 
 extern int vchiu_queue_is_empty(struct vchiu_queue *queue);
-extern int vchiu_queue_is_full(struct vchiu_queue *queue);
 
 extern void vchiu_queue_push(struct vchiu_queue *queue,
 			     struct vchiq_header *header);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
