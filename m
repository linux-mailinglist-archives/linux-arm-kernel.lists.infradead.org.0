Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B168F238D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TS5PJMgpHq9PCUcDbLc4DMtYSyTsisiWZLT1UdhoraY=; b=o5bTUh92xR2KZt
	vMWjdRdokh25fnR3MQSPD00cH2Lwb9J8VqN9VYy3xPTi5TpEK3afC62rNMJvivzUCuuvwTJ5F0/yN
	eBpHRTz/XXiUInUN4xqYdsqgO8fASjHc/WnmVcmb0EcJNoj1aX+bXVmF9iRxPA5kWDdnfF89EIS6o
	jy64DupzI9moYfeyNybYICufb12uViImGAnhRFXN8RL6XP1PFMuACPqnUyi7PjUvzfB2ucHORInjh
	r0Un0AievwdBZpuKFZiXFRDjSLQPG1cWj1Gsn4n04w9CboACngHHqisN+4dlZGa2XfuRfcWvbjVUy
	UyN3U6RbRZdZoUtxjHGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSijz-0003tm-Mq; Mon, 20 May 2019 13:54:11 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSijr-0003sS-DQ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:54:04 +0000
Received: by mail-io1-xd41.google.com with SMTP id b3so11031561iob.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qLnbwDX9nYp0llQixdztrdIhtIxceeBj4sRkANMpAsM=;
 b=GjImSPDJy8ShaSr+Kmu8fSik802cD/opDqpkNym+Rodro2w5D8/smsz5ZmejQAI+3y
 rsMqynEsw+xD73XJE5d+sP0np/oEVRcnrXkMM30Bicl9+VFtXV9SuzefGaTp0w4dWx2d
 gi5l9+EIC4mBj33w5DZLCU64lejWFarf0dO7qDS6jpd6go9WsencnubQbU03VtsuVQGB
 Wi/mc7Rfz9MNa5VQGnlpXL+mSKXz08kZGb2y304tqMZ88wLNA/kRxIWRufMs4aVFw1eg
 THnozwMZuhU1xKj5vFnIDhkCPEcKJuuwv5I1KzcdIDa2FRbX69m2+OO9aXrAu/pemwyP
 obCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qLnbwDX9nYp0llQixdztrdIhtIxceeBj4sRkANMpAsM=;
 b=N5+9FDXv1tXAz1vdtgYXCtURzxbtxwaHhuBBSqdXTYAXA5GpbDkT731WTkZmFxOo1o
 n5yizX9OqsnVIZCc6+36VnnCmmBEoozCJF7ElTvVqtXKdSaYsvCvmBsfIdlLve6hR6gy
 Gxel9s6h52CTu43qgJEZu+Usi1da6HG5YF/fYycfVIdYbdfbxKev0qs9iX3H38Yx1TQ+
 nZqWUubcKCjpua/DZN8LtQDItSEHwL8NRpGVvGkianzNXfJpjB5oxzxfSN5XLFwu0Ljg
 hcw4I3QhElcw5EvgBrR6IopCjlI/Locy3onUGLGParUqJSi1Aleg1b1dSJSyDL6QtZXI
 kiTw==
X-Gm-Message-State: APjAAAUDM+de9rgxeAie/yh6/eb6B0IFumNCxWSgRC6Khbj6LM3owivH
 ZyR7+zxIwoeZ5/q3NWfiyfdlGw==
X-Google-Smtp-Source: APXvYqzqoaiVRHeh1u5raWwifMwfTaaj0AJU7hX2u6GIaGAJpAwDTwJ/wtrswXd4pH9nAZw7EOEz5A==
X-Received: by 2002:a6b:f305:: with SMTP id m5mr40986039ioh.271.1558360441814; 
 Mon, 20 May 2019 06:54:01 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id n17sm6581185ioa.0.2019.05.20.06.54.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 06:54:01 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: arnd@arndb.de, subashab@codeaurora.org, david.brown@linaro.org,
 agross@kernel.org, davem@davemloft.net
Subject: [PATCH 1/8] net: qualcomm: rmnet: fix struct rmnet_map_header
Date: Mon, 20 May 2019 08:53:47 -0500
Message-Id: <20190520135354.18628-2-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520135354.18628-1-elder@linaro.org>
References: <20190520135354.18628-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_065403_520342_3CF1C1DF 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: syadagir@codeaurora.org, ejcaruso@google.com, netdev@vger.kernel.org,
 ilias.apalodimas@linaro.org, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The C bit-fields in the first byte of the rmnet_map_header structure
are defined in the wrong order.  The first byte should be formatted
this way:
                 +------- reserved_bit
                 | +----- cd_bit
                 | |
                 v v
    +-----------+-+-+
    |  pad_len  |R|C|
    +-----------+-+-+
     7 6 5 4 3 2 1 0  <-- bit position

But the C bit-fields that define the first byte are defined this way:
    u8 pad_len:6;
    u8 reserved_bit:1;
    u8 cd_bit:1;

And although this isn't portable, I can state that when I build it
the result puts the bit-fields in the wrong location (e.g., the
cd_bit is in bit position 7, when it should be position 0).

Fix this by reordering the definitions of these struct members.
Upcoming patches will reimplement these definitions portably.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
index 884f1f52dcc2..b1ae9499c0b2 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
@@ -40,9 +40,9 @@ enum rmnet_map_commands {
 };
 
 struct rmnet_map_header {
-	u8  pad_len:6;
-	u8  reserved_bit:1;
 	u8  cd_bit:1;
+	u8  reserved_bit:1;
+	u8  pad_len:6;
 	u8  mux_id;
 	__be16 pkt_len;
 }  __aligned(1);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
