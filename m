Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2589710CB6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:13:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poPToG9A2wei78K2YVLblr2uceWJyiSUnJ9vY2Rf0iE=; b=VdjvkAQ57olA7I
	pFg9jnBG5zXbk5ZZ7xyMu9u/t1TRdp7S9DO0B8hb1FSvKovoRDQjcPoHX8E3CAHLXuT0+kxZVHbCY
	Umi6FEW0xK6adcw/rOX9+EbdWhl1+fiIDuSIc374uCn3FGXrtyTJQ6AdP8VtIJG4IqxSMeCwdFO4A
	lQwdCh2AHDBwAPbbw1D+Bi6bsv9vRnWgPXDxr3Ovsik/b8CTJt52FQft9yzdcbj/2rPnm/JS1Ncdo
	DzlIYsTxoG3MM7T/VPvAWa0hTKv3tJbqZGqMUQncOXrfquXHeN1jcjrRLOXlGzeYTZu0U/mGrK4M+
	g/DlBDt518mRlw6SGfYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLTr-0005ww-5p; Thu, 28 Nov 2019 15:13:19 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLTM-0005VY-5i
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:12:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=izqhGk+7dYtc0qSDmqSrNzca5ES+nhNiwDVQCjT9+7A=; b=g36Y0zXCl7vnUcl3ml3wiWqXn8
 xsXcWzvF1yWAgnRYpSeYQ0tCDzvCCmJzm02yC/n+NSxGrR8tWmVHO+njGokI34IpceAiQO5R51uSh
 CMjXjo0YRndMQADCw03NNYnRvF6++mXZFXYuIptrkyzh25BakSoze6gTG4iEnqxFqx2EMqitqKGiN
 XuTWdJcIZXaxheKrT2YfJJdsbFSIda9R9NFJgBgf799yk0IYjen7WIKfxVY0jDTEfRqjlLazYuFsQ
 pL5SSTbGZ/1uGO7t+MSNS/ILsH2XZpLYDQ90foyDizrHMw2aHYtJLBOkIDqYVKRU6TP0J5RNSMZh9
 Q6K3JELQ==;
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLFQ-00060k-Qx
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:26 +0000
Received: by mail-lf1-x143.google.com with SMTP id b20so20264649lfp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=izqhGk+7dYtc0qSDmqSrNzca5ES+nhNiwDVQCjT9+7A=;
 b=V2jSMZBN8uh/xpePhhzkN28hW1PU3ZPx3auFFgQEEIv24PnHG7WcUuT9Hr7TOse5Rk
 FIOhKMME0cB9iUKg1zBa4lJ8C9Vi0lSdcsXWunqNCSFJ9Nz0OrpeEQRglQhTBkE35R9e
 ejuls2cV8st5na9tOFkujKVk+QD9iuwF49KvM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=izqhGk+7dYtc0qSDmqSrNzca5ES+nhNiwDVQCjT9+7A=;
 b=ogQvdVZLbHvBF5GEb/eqEx7MYKs0AwiR0+cg6h3H9m6lxCJPyYTya+OfKO29makLJ+
 asugw4scmxRZXZv2JCM50F3mJKm3ED23quIV15u15MO9U4akhc1w5Irbif0chASCGvTd
 0cibTll6mMBEKLNwWc2EBjeF0hVVzwYi7gMg/pfYAIHoslQkgmj2cd3VYdnBROi0logR
 HGapZJvJvVJl9sGTqRTrnLKFp0+JE3mNnmQiKD7X8XnUfHjQuBhh/XIMZREyjcisw8vv
 begXVX4U9Ehc7YDx8a5BS9hW8A+JfHwbqNDUZXUlaj2TJRP9Ezx3bD+jE3Ag85w+NN5R
 jioA==
X-Gm-Message-State: APjAAAUfxD7u8/UQPW4l00ZH18iyqtuAJHeqLew8U9UwjmR6n3WrAIY2
 yvKNLxElwERiu2pja2sU1j2jmQ==
X-Google-Smtp-Source: APXvYqyw4gw+pnvDh4FxsHQgDketpaq7hQlReciEcvlLDb7UG2dgMuvgna7yNQjdHNDX/gN/j/K3IQ==
X-Received: by 2002:ac2:5a08:: with SMTP id q8mr32413398lfn.106.1574953074176; 
 Thu, 28 Nov 2019 06:57:54 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:53 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 37/49] soc: fsl: qe: make cpm_muram_free() ignore a
 negative offset
Date: Thu, 28 Nov 2019 15:55:42 +0100
Message-Id: <20191128145554.1297-38-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_145824_877407_1C749CE0 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This allows one to simplify callers since they can store a negative
value as a sentinel to indicate "this was never allocated" (or store
the -ENOMEM from an allocation failure) and then call cpm_muram_free()
unconditionally.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_common.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/soc/fsl/qe/qe_common.c b/drivers/soc/fsl/qe/qe_common.c
index 962835488f66..48c77bb92846 100644
--- a/drivers/soc/fsl/qe/qe_common.c
+++ b/drivers/soc/fsl/qe/qe_common.c
@@ -176,6 +176,9 @@ void cpm_muram_free(s32 offset)
 	int size;
 	struct muram_block *tmp;
 
+	if (offset < 0)
+		return;
+
 	size = 0;
 	spin_lock_irqsave(&cpm_muram_lock, flags);
 	list_for_each_entry(tmp, &muram_block_list, head) {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
