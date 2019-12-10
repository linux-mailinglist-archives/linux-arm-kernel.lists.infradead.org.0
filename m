Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67781119459
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:16:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iER0njJPRFyZVCpb8/whSw22vDA3a+MQx2o2jC6SXU4=; b=KZi2Eo940KKye0
	XZ2jjRp3NsR7z7VNGjDWHoCfvlUAGPQGPT+JbkEnDThVniIukcZAoDUf8oKgDRVIP+P5FVCQ+5P3r
	HTNcU+oJ4i41tzjVVmkRuTe9Tumw/vmYUoWxMy49JkWV4S33N8HwgbRozBKv4XcJ3RWDkO+kQUxKL
	+6BmNg4+xc7NMVAREtzIpvSnIQF2WlVZ3BjySsi3z+PLuc2ia5NTWXVE42nY1PPdYVAalkxNnh3gR
	WHmBdFfODnDhKX37g5+sGLSEf0zuQTh/qPcvVOPZE4zUytt94CDY7qimAs6U7Uha5iBJ+/88T0hME
	cuzLNT2ecImZPh9ruLUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemrT-0001yv-S4; Tue, 10 Dec 2019 21:16:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemow-0007DY-M5; Tue, 10 Dec 2019 21:13:30 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2110214AF;
 Tue, 10 Dec 2019 21:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012405;
 bh=qLpA8Hj/Bemhj0QN8KheWl81yCIKzadDZCnWM+wT4+o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YWTPuRBRL9oqkiZsne/R6P40FbVQJsAhf44cR38Ypa/s9F6PzUnC+jmbnIp0ExGjU
 YjU/YQFBwb5zWE5P3e6Uj7bs1w6zrftrePRgAGUhEs2vwV0R5b5WTptKTwNqXJRPFo
 khOH5MrfjQ686J8ltzFHiEPiOO3HGTT285+1tRzE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 324/350] mt76: fix possible out-of-bound access in
 mt7615_fill_txs/mt7603_fill_txs
Date: Tue, 10 Dec 2019 16:07:09 -0500
Message-Id: <20191210210735.9077-285-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_131326_845415_7BAAF185 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lorenzo Bianconi <lorenzo@kernel.org>

[ Upstream commit e8b970c8e367e85fab9b8ac4f36080e5d653c38e ]

Fix possible out-of-bound access of status rates array in
mt7615_fill_txs/mt7603_fill_txs routines

Fixes: c5211e997eca ("mt76: mt7603: rework and fix tx status reporting")
Fixes: 4af81f02b49c ("mt76: mt7615: sync with mt7603 rate control changes")
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Felix Fietkau <nbd@nbd.name>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7603/mac.c | 4 +++-
 drivers/net/wireless/mediatek/mt76/mt7615/mac.c | 4 +++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/mac.c b/drivers/net/wireless/mediatek/mt76/mt7603/mac.c
index c328192307c48..ff3f3d98b6252 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/mac.c
@@ -1032,8 +1032,10 @@ mt7603_fill_txs(struct mt7603_dev *dev, struct mt7603_sta *sta,
 		if (idx && (cur_rate->idx != info->status.rates[i].idx ||
 			    cur_rate->flags != info->status.rates[i].flags)) {
 			i++;
-			if (i == ARRAY_SIZE(info->status.rates))
+			if (i == ARRAY_SIZE(info->status.rates)) {
+				i--;
 				break;
+			}
 
 			info->status.rates[i] = *cur_rate;
 			info->status.rates[i].count = 0;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
index e07ce2c100133..111e38ff954a2 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
@@ -914,8 +914,10 @@ static bool mt7615_fill_txs(struct mt7615_dev *dev, struct mt7615_sta *sta,
 		if (idx && (cur_rate->idx != info->status.rates[i].idx ||
 			    cur_rate->flags != info->status.rates[i].flags)) {
 			i++;
-			if (i == ARRAY_SIZE(info->status.rates))
+			if (i == ARRAY_SIZE(info->status.rates)) {
+				i--;
 				break;
+			}
 
 			info->status.rates[i] = *cur_rate;
 			info->status.rates[i].count = 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
