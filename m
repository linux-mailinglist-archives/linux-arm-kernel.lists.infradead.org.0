Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C741A5C63
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 05:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tn70l1cMgRIQcv8KN9/2zeB0IQoT2+D1CqceE+GLB8w=; b=rNzkHc+H/Nxw7D
	lM293M2T4EqlBvtzjRHfb4vZl5q73e2TBlbzBuvPNzw0YCeJEt6AMHhV38gx7ppyIZCFV1hRvo1M+
	2gYXqSbx7XufijWMxM93UKUqfrhAG50md9OuYrqY0WYMUSI95kvAk76ded+6FOMbWUkVxvtx7ouRA
	qyQVkstcclTPKXNb5dFrytkiWkXOSDr2UMOoXXQ6K1MY7Ad3se16fUN1rDf2ubSEkC55LtpxqBFje
	FurMa/hiYG2Dc5c84RcFUiyVUiC4wUkCksNJvbcYLT7B9hxPOgrFmmowHFKn2hC1f4MW1Qm905n8N
	uAoGI2HoSN7qttqPx+pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNTcv-0006e7-9D; Sun, 12 Apr 2020 03:49:45 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNTco-0006di-Sk
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 03:49:40 +0000
Received: by mail-pg1-x543.google.com with SMTP id n13so2930599pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Apr 2020 20:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AZDILVGrcKvmYChqNYehZ2onRDlNxnDquPgS6AG9YkA=;
 b=A42g95LqGNwYhESYqnGpreIG4EbnfwMkhHJSaQiGA575hBn/pQPQWgMYj0tw7iJFNj
 rN3AssDNxaB4zrqX0Dx6dZgALJ5CPwKGVnaACxGSk7OdopRaUn5y1EATMmvWSrH/t9Uu
 sVajcAdhvlVkgtP93uksvkAJX7WHNPCNpAZX4HJ2MZyn/GV61aY8oUhJMzYtu+YtzdsR
 YhiIaEcgpa2zwdEe00uHupW2c2aOL1AMMJ5FCXAdHzYAPik9ZClWgNqEjKTz9cdCDkW4
 VapuwljUPCa8x0v+nPFyY7MWhscbaCHQW3VsKmqAy3cjpznvKHab6lD8k1J2fOkIefbP
 GupA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AZDILVGrcKvmYChqNYehZ2onRDlNxnDquPgS6AG9YkA=;
 b=Ks9Dgww4kBQVQSPK5UC7dzCjboCS58E56Pbx2KkiBXSSChPMJAclG/eMy2WbMZlqk3
 iFWqQM2a2Sfu7iy/b1p2otyVcy2at/7/9WrqPABXxV8lRRvQszFtzmq4UOtEsupr6+gz
 4mwmDgpCIVWs6uNojghlF69TJagpSIEXrYDqMGtInVbryDgLeXwtH1azk9P/QU3YmWez
 Bv66rLGouK6jwel4nvuEKS7rbplWwpBW7QqF0KuXqRwXYbSuCKxHH13V00HowFodjIDA
 ic+ALjE3oTb3jt7eus84uPS9VKyZfk4ChGgsXgvUPPfed5QrXYVrO8p0KSkg8dn/wNCr
 bjSg==
X-Gm-Message-State: AGi0PuZbXKR/4nCXgKmfJPBX6AajYfFCOmTk0yqWn8tl/U0MlyKXy+TE
 71kxjBQjW4i2NM1mPqvRZwA=
X-Google-Smtp-Source: APiQypLO0t3hZTP5D7PcbbjFaFd4Pb6oPXH1Y5G0rR7sLuG1LsgDyAfFcEQ7c5W57vgyzeVogfVHXw==
X-Received: by 2002:a63:c44b:: with SMTP id m11mr11839604pgg.313.1586663375996; 
 Sat, 11 Apr 2020 20:49:35 -0700 (PDT)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id t7sm1841024pfh.143.2020.04.11.20.49.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Apr 2020 20:49:35 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Subject: [PATCH net] net: stmmac: Guard against txfifosz=0
Date: Sat, 11 Apr 2020 20:49:31 -0700
Message-Id: <20200412034931.9558-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_204938_951041_91B792F7 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 open list <linux-kernel@vger.kernel.org>, mripard@kernel.org,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>, Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, olteanv@gmail.com,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/STM32 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After commit bfcb813203e619a8960a819bf533ad2a108d8105 ("net: dsa:
configure the MTU for switch ports") my Lamobo R1 platform which uses
an allwinner,sun7i-a20-gmac compatible Ethernet MAC started to fail
by rejecting a MTU of 1536. The reason for that is that the DMA
capabilities are not readable on this version of the IP, and there is
also no 'tx-fifo-depth' property being provided in Device Tree. The
property is documented as optional, and is not provided.

The minimum MTU that the network device accepts is ETH_ZLEN - ETH_HLEN,
so rejecting the new MTU based on the txfifosz value unchecked seems a
bit too heavy handed here.

Fixes: eaf4fac47807 ("net: stmmac: Do not accept invalid MTU values")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index e6898fd5223f..9c63ba6f86a9 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3993,7 +3993,7 @@ static int stmmac_change_mtu(struct net_device *dev, int new_mtu)
 	new_mtu = STMMAC_ALIGN(new_mtu);
 
 	/* If condition true, FIFO is too small or MTU too large */
-	if ((txfifosz < new_mtu) || (new_mtu > BUF_SIZE_16KiB))
+	if ((txfifosz < new_mtu && txfifosz) || (new_mtu > BUF_SIZE_16KiB))
 		return -EINVAL;
 
 	dev->mtu = new_mtu;
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
