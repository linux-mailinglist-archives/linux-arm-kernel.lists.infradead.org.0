Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7838B2B6D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qOlaRaj7lFk2NC7QeF03PVkcWpP5MNhC70VyboJRD6M=; b=qZEsuZ1fqGCN8i
	ZRq6pKcE7qpW7fQuA2JQfOJTr/Tklnqmatuvx04rHIm2AgoGSxsF+xVlGH/y8m7TsgO+J4bSqXjm3
	pMPaqd//sx6pRrBObSffAgKh6AmJD8id29JluUO8LqEvBkK0jBYK203oV0LRMZQVnHYonyy7NS4iQ
	DzTzzJqZJotsP8puhOtzBrRQsnUIG+QKNU48Ba5BuRkVXyxBV+sefGaqq17GKIm45NpOyAvJo75dr
	vW5tNwiqehdQ1iNE1WdXY7FIvbgVj5XVTN1kqWaZ7KYFlmRxvpUEQewrZleIEDYE06bxXgO22xlm/
	SGapNQGi+bRdAAdayjpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFxW-0001Zx-SB; Mon, 27 May 2019 13:46:38 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFxP-0001YA-5l
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:46:32 +0000
Received: by mail-wr1-x42d.google.com with SMTP id l2so17005916wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=T+BMa4gsX2SpWHDg4/WOwzhZkAoB1v5cWmwKV6NHcXY=;
 b=TbUpcoEaxaQNRfmwXB5IYi1gLT7Tc9zBU8dLzJyt0i8tLNngRrgCtRvcHGpKwd7ARZ
 FDIaVuSHqjDOLFg/TZiIFvE9X/yN2dWV9Vd0qOQRV2tLMSzsKsYgEWg3WmE/v1ad22Yx
 vPgoELfiDmw9bRNTNNqliE+fL1lojg2lMXjqpzujRu7QdrGf2SwVwOhmdwuMLv3ZWz8F
 lA0LefZkxQQl5irzBK2ehVX0ndAxrkiAisDKIKEqpknyY1JQUVUxmixTL1wUJYe5Fr3J
 TJ895UzXCmaWTLBZ74pnJ2I7rvKt3C2JIV6w/MwLoaCaw1c+UUEZlpKSrnnjh1NvNgzW
 ZwuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=T+BMa4gsX2SpWHDg4/WOwzhZkAoB1v5cWmwKV6NHcXY=;
 b=NrGEhRtwa0xDKlP6Mo8Tr+GEvLbMDxDOd9G1rBHguSwCngnpI2g19DwFcOo05Mnxno
 5kfMZr53Izp+307smSA6rmIH7VHFyGUnb8XFoJP0OBzvpX5ifJp23nU28A+tJKx6KOPH
 tYGWGBeV6pAFjsB9IAZ1wrqKwdiGUo4PaLxeEqMFshhztffg4/FgSZoOr1+noBrVGbgm
 WyO262ov3S3JYlyr88g0u4sqm8xG0aaIqNvWchC8GetxxzyhE1QQ8uBAIwoFTl9pyuGx
 /88Id3xQI79B/jBhVgQXUN+R7DazDAXBdkoN/m2LhqUK9fCuaMYLADW3Qp5k7vjMymEr
 UaYQ==
X-Gm-Message-State: APjAAAXTwTb2fOnwCOrfGgjmLvC0cGMSdyaelMR1VJkCrBYE6tepD6+3
 Og+HySWfqzrd/WaMWeJUBwmKUg==
X-Google-Smtp-Source: APXvYqxzp/JP29DMv8kL+YY1dvcjW0NVluckIAgiIJ4N5qzyrZ9PpUdQqTEssjjJsKvceApH/B81gw==
X-Received: by 2002:a5d:644e:: with SMTP id d14mr52019475wrw.42.1558964789627; 
 Mon, 27 May 2019 06:46:29 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id w2sm4611311wru.16.2019.05.27.06.46.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:46:29 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: davem@davemloft.net
Subject: [PATCH net-next 0/2] net: stmmac: dwmac-meson: update with SPDX
 Licence identifier
Date: Mon, 27 May 2019 15:46:21 +0200
Message-Id: <20190527134623.5673-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_064631_211716_7B71D118 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the SPDX Licence identifier for the Amlogic Meson6 and Meson8 dwmac
glue drivers.

Neil Armstrong (2):
  net: stmmac: dwmac-meson: update with SPDX Licence identifier
  net: stmmac: dwmac-meson8b: update with SPDX Licence identifier

 drivers/net/ethernet/stmicro/stmmac/dwmac-meson.c   | 8 +-------
 drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c | 8 +-------
 2 files changed, 2 insertions(+), 14 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
