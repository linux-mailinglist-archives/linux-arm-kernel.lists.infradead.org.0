Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FC71049F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 06:19:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/JT9ofiqWCzgydLZfz5RJfZWK7DB8Hix7k9H7x5C9FA=; b=QhfdNBJVmneNAW
	H9cWcn/VAx4C/MNQTSlm3j1pF2d5pgpI0lOvKCdxABNLRTWNPSC4qWox8U+Zz0yB0Ote0tHn9+8tZ
	8DGXU8N9aQUYgq+hrZHby60JrnL/X7T4p1dg5Vqx9MJIIIFyUY6obSEf6HYErwxg3DtCZWW4CVmTK
	fr2JYdB77soQLFjpTuunrhHR9o1bY2oUqUA3EkSMUPLFTr5N7xaxn/LKd6viWEF+jdHfhc0sKSQz/
	8PAl5rYGXnBNH+dapg+WZCciQKbmOqTZrQHXj0eE4JzsoOYS4AGhCNsQaAeRpTs5A9rp4/NEbvg8k
	l/pFM/KhTs8OMK/sqHKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXes7-0002R3-6y; Thu, 21 Nov 2019 05:19:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXery-0002Qk-8B
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 05:19:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id o9so1010068plk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 21:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BP+YRgXDrbxknnuJZDiMBQ3l5O7L3vl0ZiZlzwoYlV0=;
 b=fxdYhHV0LUH9R62QAoOEowim3igSTk6HMwwYDG5p4L7U8vVsd717M6HKMLE73bzoa4
 PawdROfLCcWX1JDaDLaVmTxPxO/Z8BKwjykgzdzqDGUtOyxP5F3idNhJv38tgB7Fr//P
 aIwGDANpWpsofSultmN359Gpgr9Jh9f9+4FlZewqbagudaFVkYW3DTUkdG/RvvMS7bWv
 IP2bW86MN3Q9V2u6fsZIbW/VUSx4AqbBJNE/x0rKbv0uDKST+OFwxvU61U7xAuaC9Mai
 /ZjEHtQ0K2mZNRrTysNYzl+OWPRA7PH8ivUXH1HclngiWNVt4QUnsMbvqmXQzP3nlos+
 Z8vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=BP+YRgXDrbxknnuJZDiMBQ3l5O7L3vl0ZiZlzwoYlV0=;
 b=SGCxtTc3ZQg6FZ9w94dYLlJaAdyjB4obGuDpjeJ+H0sOAjVNhQcH+KZDKm8LbfMQsC
 LJNXvt5H3tV4YpRPlYs4U2L2WNtTqcGLZKGUAh84s9C8nA0MCp05wuFC5v1xywsHpegm
 nCCh5Wp3Jy8AZt5xEv/UxpD74YCnBgKsL3/LionZV/Ax4e8OcZ4ppoUaQ33Sr0GBPM+I
 /g2strMrBvGZihKYn1ZamLTF7naSQYGpAPjJK3JrY0sDmrpXVYOqA5rQ+3SQHgU0eEiK
 mW0VIGD7uIiJjg1fGjDAHOfk4vKNs8oph1byJjGV74g01uQ/1efQyAkKsV/UKY/tRh6/
 mTOA==
X-Gm-Message-State: APjAAAVCdhRu5OA1HOA01XYElknxJa9AxjztwdVHn5hPaEBIfvWej70B
 /UF8ISOMqGIZACoMvDgetNQ=
X-Google-Smtp-Source: APXvYqyH1p+7hp3aLMytTjLJO0SS9t6/ATrY/cnkeBf8H3G0u47vfkEWkfcmPeY/HuMYs1PKroWjqQ==
X-Received: by 2002:a17:902:9a05:: with SMTP id
 v5mr6892465plp.212.1574313545309; 
 Wed, 20 Nov 2019 21:19:05 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id r5sm1269267pfh.179.2019.11.20.21.19.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 21:19:04 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: soc@kernel.org,
	arm@kernel.org
Subject: [PATCH] soc: aspeed: Fix snoop_file_poll()'s return type
Date: Thu, 21 Nov 2019 15:48:51 +1030
Message-Id: <20191121051851.268726-1-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_211906_315440_5E318BC7 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>

snoop_file_poll() is defined as returning 'unsigned int' but the
.poll method is declared as returning '__poll_t', a bitwise type.

Fix this by using the proper return type and using the EPOLL
constants instead of the POLL ones, as required for __poll_t.

Fixes: 3772e5da4454 ("drivers/misc: Aspeed LPC snoop output using misc chardev")
Signed-off-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Reviewed-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
Hi ARM maintainers, can you please queue this one up for 5.5?

 drivers/soc/aspeed/aspeed-lpc-snoop.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/aspeed/aspeed-lpc-snoop.c b/drivers/soc/aspeed/aspeed-lpc-snoop.c
index 48f7ac238861..f3d8d53ab84d 100644
--- a/drivers/soc/aspeed/aspeed-lpc-snoop.c
+++ b/drivers/soc/aspeed/aspeed-lpc-snoop.c
@@ -97,13 +97,13 @@ static ssize_t snoop_file_read(struct file *file, char __user *buffer,
 	return ret ? ret : copied;
 }
 
-static unsigned int snoop_file_poll(struct file *file,
+static __poll_t snoop_file_poll(struct file *file,
 				    struct poll_table_struct *pt)
 {
 	struct aspeed_lpc_snoop_channel *chan = snoop_file_to_chan(file);
 
 	poll_wait(file, &chan->wq, pt);
-	return !kfifo_is_empty(&chan->fifo) ? POLLIN : 0;
+	return !kfifo_is_empty(&chan->fifo) ? EPOLLIN : 0;
 }
 
 static const struct file_operations snoop_fops = {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
