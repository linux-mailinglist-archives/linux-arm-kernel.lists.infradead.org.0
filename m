Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBED7BA83
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 09:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nez8ayNFASGgAmng715kuHwc1/rktIRfLJDvzlbreWc=; b=Xdeel3rZWYG8XoxGLPo6HwRDwu
	kKRJVyxtlkYxJ2nWA4/aEuxByi2boWjKBYgspEJ2A8WvRB6Cb+lpHMj/7LklLHMUECn0i2NzFXsu2
	FwvDVkSfPo+c4E1lZXjT0PIoP9X0hcUqSaV7IvYSYGT9lAigZ2x7sWnfK2zOmgVZk6lHnjwKdVTDb
	JuLKz/GGMvtYpRGmi9V/T+QdGnVjCaq27Bmm05YvP93QyCRZ/Q3n8DfcGQrnsqW498kN8lLSRSUWT
	LlyPWog4833QSq3kMjjkDcc437dB9JmVazqwhnTpGsbdKXUi6ZHFB3h9yWfmXmwyo/qYnMDks2mWH
	QqTgnFWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsiqd-0005Lp-6v; Wed, 31 Jul 2019 07:16:31 +0000
Received: from [2001:470:0:1f2::b869:4820] (helo=olimex.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsipO-0004ty-AZ
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 07:15:16 +0000
Received: from localhost.localdomain ([94.155.250.134])
 by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 31 Jul 2019 00:15:12 -0700
From: Stefan Mavrodiev <stefan@olimex.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC
 support), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 1/1] nvmem: sunxi_sid: fix A64 SID controller support
Date: Wed, 31 Jul 2019 10:14:47 +0300
Message-Id: <20190731071447.9019-2-stefan@olimex.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190731071447.9019-1-stefan@olimex.com>
References: <20190731071447.9019-1-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_001514_362549_589C1FD8 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.2 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_FAIL          SPF: HELO does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=helo; id=olimex.com;
 ip=2001%3A470%3A0%3A1f2%3A%3Ab869%3A4820; r=bombadil.infradead.org]
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;
 id=stefan%40olimex.com; ip=2001%3A470%3A0%3A1f2%3A%3Ab869%3A4820;
 r=bombadil.infradead.org]
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: linux-sunxi@googlegroups.com, Stefan Mavrodiev <stefan@olimex.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Like in H3, A64 SID controller doesn't return correct data
when using direct access. It appears that on A64, SID needs
8 bytes of word_size.

Workaround is to enable read by registers.

Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
---
 drivers/nvmem/sunxi_sid.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvmem/sunxi_sid.c b/drivers/nvmem/sunxi_sid.c
index a079a80ddf2c..e26ef1bbf198 100644
--- a/drivers/nvmem/sunxi_sid.c
+++ b/drivers/nvmem/sunxi_sid.c
@@ -186,6 +186,7 @@ static const struct sunxi_sid_cfg sun8i_h3_cfg = {
 static const struct sunxi_sid_cfg sun50i_a64_cfg = {
 	.value_offset = 0x200,
 	.size = 0x100,
+	.need_register_readout = true,
 };
 
 static const struct sunxi_sid_cfg sun50i_h6_cfg = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
