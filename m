Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E949D1CC63
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 18:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bJgQvjqHZOE8/EN55e+dVG0Ob14bflvA/l3efsIPh+g=; b=oYu
	rPabMXjATtmi5YZI45E6lZ3ZPPonkFNQakAV5yoaLDnth9sntWkZN8tVBFVbkUCtrG0iQfTN+EVGD
	bAlzHpDAX/rWvTW6EwYkgOUTEThRkpNSiAiwhyxLnQif/ZSfFsN0iijxWqCWm5iAGhugOvS7Uwxtx
	azcQF4baKHryyN49fe0qJJyI5Dfh1UAaMyhhTG/u/oale5WzjdwyEUL6D9+ufJ9Qn0yvaUYmxF+L4
	VlmozP3oTkr7CmN5rJoypPXE9ZOsGw6iVLzcl8gmA2+ea5U39+6tbZEgaSb5LQh+cTA04hMGiuU82
	ftsbFOn+TTTf9pbb1A8pvUPnTZJBxEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZsk-0000Ol-3z; Tue, 14 May 2019 16:02:22 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZsd-0000OC-F8; Tue, 14 May 2019 16:02:16 +0000
Received: by mail-ot1-x344.google.com with SMTP id r7so11250928otn.6;
 Tue, 14 May 2019 09:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=fSlgTFf8KtNta0rz8mLnXIN4jROdf8xysWOhaMNIqEU=;
 b=L9fBlpGqioNOmCkpRrttVJlWrp0wN+k9YLzpMu3TCyxWwKwuMOSUIxOcQoirY8iWBn
 viwTYQJ/CEYk91rd87TzX91kvczkZ/gVat7F1NLQdS7yC9JLlHMb4g15VavvKWeRzTiU
 aPPZc/OQtewTBuA4NmxgyV8U45sViu1PJD6egI+K1mOD77SlGApQ14wz3se/bbBZtvxT
 GTLp+pc1O1mcvhyqRhtSBUzjkJ1RUGl/5nKLRflIpGfRvMqVNmh1n3wd4BVU0COJyw1l
 R2f7JjTS2SRmbMrQmE3YINq/uKjmt3odgA2Sh9JCE+T/Qa2zF/TOczLow0J1feB2aMjq
 5/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fSlgTFf8KtNta0rz8mLnXIN4jROdf8xysWOhaMNIqEU=;
 b=mnLm7dI31UchP++xOnnGjGabD3oKXuyNmt0iDSHl8ijlg4JocuK2mq2NLMYQEDQuf8
 Kv4UO58eohUNHc+0TuSIKjTaRswzG6ADxEQBo91DvsYTD5PIH+5F/ZFATlsp0IKvsJx/
 R5nt/suhffpfmG9njAEe6Kg6diAuKDU+scT7HJj/qtGl47RKda558DGHCaw4JjUugt5l
 kWGU4o3SmzD4QIMng8fGh5sidXdBmWCGncCWSRn3jFVVatSNilAxmuKCa/mTBurnRT2e
 blNDZtS+FBobPtipgN8s8aaOJcAk2fQ5mx/9XLYCC78T3o03S5x8rLkSo//1xuCsy2o3
 zeag==
X-Gm-Message-State: APjAAAWyIN3MV8nXY0F9F5WLOKWAAt/qjHuGkHIomN/ysv++22atWPHn
 Rk7Xm/4+2t+Q82Px1b2uTm4=
X-Google-Smtp-Source: APXvYqwss0BQEuHxOP2EKdRXu7b8gJYo7DvkW8SNjwnJuhVOSUneVcogIiRmPHKex4Qqqzc22fHN7A==
X-Received: by 2002:a05:6830:1097:: with SMTP id
 y23mr188736oto.108.1557849733699; 
 Tue, 14 May 2019 09:02:13 -0700 (PDT)
Received: from madhuleo ([2605:6000:1023:606d:fc47:9acf:eddd:8a77])
 by smtp.gmail.com with ESMTPSA id m20sm6498783otq.30.2019.05.14.09.02.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 09:02:12 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: eric@anholt.net, stefan.wahren@i2se.com, gregkh@linuxfoundation.org,
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: vc04_services: Fix kernel type 'u32' over 'uint32_t'
Date: Tue, 14 May 2019 11:02:07 -0500
Message-Id: <20190514160207.11573-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_090215_509899_E11E48D3 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (madhumithabiw[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the warning issued by checkpatch
Prefer kernel type 'u32' over 'uint32_t'

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index d1c57edbe2b8..90793c9f9a0f 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -309,7 +309,7 @@ struct mmal_msg_port_parameter_set {
 	u32 port_handle;      /* port */
 	u32 id;     /* Parameter ID  */
 	u32 size;      /* Parameter size */
-	uint32_t value[MMAL_WORKER_PORT_PARAMETER_SPACE];
+	u32 value[MMAL_WORKER_PORT_PARAMETER_SPACE];
 };
 
 struct mmal_msg_port_parameter_set_reply {
@@ -331,7 +331,7 @@ struct mmal_msg_port_parameter_get_reply {
 	u32 status;           /* Status of mmal_port_parameter_get call */
 	u32 id;     /* Parameter ID  */
 	u32 size;      /* Parameter size */
-	uint32_t value[MMAL_WORKER_PORT_PARAMETER_SPACE];
+	u32 value[MMAL_WORKER_PORT_PARAMETER_SPACE];
 };
 
 /* event messages */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
