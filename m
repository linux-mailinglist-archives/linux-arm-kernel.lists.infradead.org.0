Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEB21206F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 14:19:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MYA2McJPM/sf67nX4LCuyEQYtQeFYMOgpTdfjeAeaIs=; b=hx2VGdxMhh8JWy
	kM3QJUTSwOm/8pUdvpyAErX/83Qk7xDmxy7rSzBSNb0Yy7aXQ6Wqj3RtCs+n9u9NNusjH+RHTzTqr
	qFw1NA/FexsbKmXEHSvINitzCUSkF1X+zNr8m7QHhcZKUNKiWC76Xvuu8QH+/uvmNs0qIHx+3Jtqf
	XT+Bl9HbPaKdKetbpOWWQ7zgJF4a2v/dc5qzl4KbO/vkaUMEShePgSHbPDzhCEXSgMKBOzCpAu9Ur
	yMffNIPG5tlZzpHujfxSgWJryEs3OUgVDbHBR4m7y3cRp8zKWJ9LlK0j9i6vAmzlRcmgbceU7JiFo
	QhD4uxjzUU5pywuNGGJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqHk-0005Ft-6r; Mon, 16 Dec 2019 13:19:40 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqHc-0005FB-7c; Mon, 16 Dec 2019 13:19:33 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Myb8N-1hmQPH0w85-00yyN5; Mon, 16 Dec 2019 14:19:06 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Felix Fietkau <nbd@nbd.name>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] mt76: fix LED link time failure
Date: Mon, 16 Dec 2019 14:18:42 +0100
Message-Id: <20191216131902.3251040-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:FfIXsVXcNeBt8DM3/oD14gV9AaEg1kuMd8THyqz4/RSYXt8bzol
 VT4nBhvNIR65oxPVAJBoQCx0Mg5xsmZZG4yY3iGDfIiztAFr9RRwyuwPZKCC1hP2Ebc2X1g
 FX+vENnYZfUQsOedDzvoVbIxv6rRVM10x3+jQQ75bdj2i/k+bC7y4tgiHPKrg398sgXI1Hk
 CLe6qn9H88bpgLmlWv4pw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iAZnidCZDMU=:WDeq3eS82GM9y63nrZiRmo
 3JUG+UEbatz6cBmivM2B7+tBfsLXMZPjHyLnrYgr8AQyO4VWAWkAXvdINXftuV1yV9kOT2rJu
 rFD+Nb3NkNJP8T0W6aM3QVe+3hkwqidu4Qhbd7gcSGqEBJEJ1wEmoI5q3AWpjo4SVRh8BY/n8
 1+v+yWdQEGSsYoAMpz0Q1pIWrsWpqQH59RXvBqCkFqpBg55DuFUvLAKZEnScfkj0zIDN9Sgh9
 y8edPkXPZocBM/alaots63k5Bc2TPiRiRqRs+U63biMkj68b47s3D6euxclI+ZalStQg9kw+t
 ltbSCk2Y5gaZ0nKKOX9lNNTof0DsU+auYJNy6RLT9k0pOwQ4VA2fXM1jzReLUS0jM/krpArf8
 uWGrdBr2/oEAAhhmoD7+dtqG+po7AwkTWOJYCDELxbGHPkKCDKPL7nOScNrIVqIO9hJA3XFwx
 OwY458CCIgKVJrBZKeI4EqLCmBs0J33fFkJcFCHjT1OWO8EBfmbv4nij7kY56kIynKxQRLJi6
 EbqKgPjtXCx92W+gDjbgHclBHuonNeSJXn1wm1FG2xglOPqs3qH5324sYq6NlZeehhTGpudYM
 gyV9UmJ+mEXBCI2NyjMtMLnyfRn72odkyFt6/CC82Lz4MCI3EKl8sWGx1y8G9G41Vj2GPmPUN
 pNjMciMVw6LVfiIKdJFboThBK+H2qcvbEszQ69sDfbLW3KUmmjMRmksX3R5XlgWcO/1lWCQnk
 h7NruKmPzsF471JVvfDsgChsoHsHBMUZQN3WT7y3wNhZtPFNmNa7aQovOOtyklkh7XhJHfyaJ
 nFkOl56Fng8tuNQkCDI+XFmo/EQGsS8UfUm8JRGCi1clYe0Kv1fT8B8zoCvK+9Wy7uvds+1QB
 fTcUteDG3KZFdJlzhPOw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_051932_566101_720A6A98 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Stanislaw Gruszka <sgruszka@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mt76_led_cleanup() function is called unconditionally, which
leads to a link error when CONFIG_LEDS is a loadable module or
disabled but mt76 is built-in:

drivers/net/wireless/mediatek/mt76/mac80211.o: In function `mt76_unregister_device':
mac80211.c:(.text+0x2ac): undefined reference to `led_classdev_unregister'

Use the same trick that is guarding the registration, using an
IS_ENABLED() check for the CONFIG_MT76_LEDS symbol that indicates
whether LEDs can be used or not.

Fixes: 36f7e2b2bb1d ("mt76: do not use devm API for led classdev")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireless/mediatek/mt76/mac80211.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mac80211.c b/drivers/net/wireless/mediatek/mt76/mac80211.c
index b9f2a401041a..96018fd65779 100644
--- a/drivers/net/wireless/mediatek/mt76/mac80211.c
+++ b/drivers/net/wireless/mediatek/mt76/mac80211.c
@@ -378,7 +378,8 @@ void mt76_unregister_device(struct mt76_dev *dev)
 {
 	struct ieee80211_hw *hw = dev->hw;
 
-	mt76_led_cleanup(dev);
+	if (IS_ENABLED(CONFIG_MT76_LEDS))
+		mt76_led_cleanup(dev);
 	mt76_tx_status_check(dev, NULL, true);
 	ieee80211_unregister_hw(hw);
 }
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
