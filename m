Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5BD1EB9C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 12:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7WmZOAKl/THmuTrc+axnQ9L7LKgTbfOSABduyiYZmqE=; b=Uh8
	iu8K0y0orHzRrOMcxx97V3Sb+AHP1s2ff6ijj4IvzFzwtS/9fsnIhboRv02IJ1RdzKeHdsjXdHyIs
	VCcUhp5treLRXA5tOplnln2mlKyMH6/54VcDMwC0kyU4dMKUCb5Y7WYe03xoqvS3XWb19QnITxFeh
	YxEmIzADS1xBgj7JyBkNy54RjaSgAXhqbc5m/1GZzrESVNKcbdlDnducsJlIPRpQJfogh5bL7KvfW
	9sMwOoEWzBptEAlr7kCzzqE4UppO8aOeOSh92A6DoJkwBLusgnGxgr1TUji81pNF4AD6YFGUxaPmL
	6UBCVI/Bh16NRPrvrhU6oIoCeT5wQuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg4PH-0005Px-CP; Tue, 02 Jun 2020 10:44:31 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg4PB-0005Pd-DP
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 10:44:26 +0000
Received: by mail-pj1-x1044.google.com with SMTP id d6so1259109pjs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 03:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=H05OVuwlBgrwjdIL249fOEZc54JAKac/tUGyHC08gQs=;
 b=Qv3Td0OKHbhrSjgPbGqNpIAKA6svKHpglY3/U1gOS8lKHtAGsEwtP7zDxMfz/TZiUL
 M6OrU7sdrP4rDUevsQ3bL8Nkj716L5v2mEMoTDF5LFU68rMRxh/q3rSyVZdLd+REmzpW
 oKqIIZ053AkrJwYi/CU67ypkZ7/GMlS3AGKybC0chI/z2EXothcEPyAPIKmkc3VcS3GG
 pxNrJkD7Je35YPJVyJPNN890Ud8VuF36LpGAyecDCYY7p4vwiz1gc9/yAV+EXB6Uehia
 eD8fuA9xFMaGdu5M9kmb2nb2M0Vt7nUxxHXKnWX9NyWu+oiLqbfJDwhR87ezKXjT0WTR
 9fOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=H05OVuwlBgrwjdIL249fOEZc54JAKac/tUGyHC08gQs=;
 b=JXsAt4LCR8X0ikPhriv6gm6zlWdBr2tsWKd0T1zdh6hTanJnny6fiFIc409kb9dO/Q
 sO7wL4/K7yZt4bkHXcGgCRB1DeZl+9XL2xYKRiRhmW1QLGwIdVhBUKjNSB5YQTLct2t1
 RksZVMFmFsDk5hYcDcmbc0bXscekhjW9VfFFY7Sr+9k48158bqPtSmB7fsk8UVWjPNZW
 7LFWL6CwZ4aF36eTjG89B8eUrrXGwus+FvUKCHVeFMNayKI+3w1vSmjeZhGO7T/4s386
 GQjnxDNvLgKSGwATJqmwNBJUO6s8vkUXRxxX70dtWM1UnfsifxnG7lwt+wHGnrUH0MpO
 FevA==
X-Gm-Message-State: AOAM531oTxC81Wtk1/sJwu4lHC8JkZjTzuZxxtmsFTyrMOP/V/ZmkTKU
 OlK36nDKtGM4rn1CSdZCdL0=
X-Google-Smtp-Source: ABdhPJzXuYCZSWZu64djI+B3rB1TLa7slAy257nEGuURgXUsCEyR63VaznbGh9DGgkKX8FEtRDW1vA==
X-Received: by 2002:a17:902:8204:: with SMTP id
 x4mr11259413pln.153.1591094663735; 
 Tue, 02 Jun 2020 03:44:23 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:189:c86a:7149:74ab:b584:ecf8])
 by smtp.gmail.com with ESMTPSA id s98sm153046pjb.33.2020.06.02.03.44.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 03:44:23 -0700 (PDT)
From: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] net: stmmac: Drop condition with no effect
Date: Tue,  2 Jun 2020 16:14:04 +0530
Message-Id: <20200602104405.28851-1-aishwaryarj100@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_034425_468985_56826389 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aishwaryarj100[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aishwaryarj100[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aishwaryarj100@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As the "else if" and "else" branch body are identical the
condition has no effect. So removing "else if" condition.

Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index bcda49dcf619..f59813a0405c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -229,8 +229,6 @@ static int stmmac_mtl_setup(struct platform_device *pdev,
 		plat->tx_sched_algorithm = MTL_TX_ALGORITHM_WFQ;
 	else if (of_property_read_bool(tx_node, "snps,tx-sched-dwrr"))
 		plat->tx_sched_algorithm = MTL_TX_ALGORITHM_DWRR;
-	else if (of_property_read_bool(tx_node, "snps,tx-sched-sp"))
-		plat->tx_sched_algorithm = MTL_TX_ALGORITHM_SP;
 	else
 		plat->tx_sched_algorithm = MTL_TX_ALGORITHM_SP;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
