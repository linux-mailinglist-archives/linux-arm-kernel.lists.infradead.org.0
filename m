Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FB711C0F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 00:54:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVeLJStOm6J2b1LTtkyJAJkhyv/8g/pJAD/0UMp7Fxc=; b=bMvjxLP/bDFh51
	KQgHPIjMe90AB6ChSedzRzaoaxewqiibm+QBQLErhDd071gqxU9pzWQ4XZfuKMntY+TGjSj9YjX3O
	S91lq/YTGytOqpEjDpKUOXd9usqMNx+vOGyVEX6H2mXrlrgn250JIF5xWHT1iOEcBA6yVCdOfTRvu
	sl1r9OrBu6l1YQs0baV77XsMoT6j8HLcevRJLkn3QAlmxUAg3xXw6Mq5QTYNGpxN3mJSidRchE9hw
	BbqVJwxNIvL4BvoMiWi4Zvd7+2qAgMaj+4BgGE1eeWuwCx89ZK1IFKNLkokcEvodbctPEbeE9hmEb
	dmpKGMk3JvRpJVpKfz0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifBoB-0001Z2-2C; Wed, 11 Dec 2019 23:54:19 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifBnF-0000sC-M9; Wed, 11 Dec 2019 23:53:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576108388;
 bh=QrCQqilrTouTgYj7yPQjXnTFJOK16++5KJ6q9dqCzuQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=OZLDxo+YhfcGWOq2ZjW1XGmkZRwtMEa9B9St7EgXLEOMeHEizbtlijhXFLk/N0qoz
 1+fJdbnjKSi2k+kVhlRJ+Ddd/mmBmYMibz10dF+1OBg6WKTPhoSbiod9KOofyA948D
 emoZkjekJmVExY4VLQIVrf0OqIDqpZSxTWz1g1NQ=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from localhost.localdomain ([89.204.139.166]) by smtp.web.de
 (mrweb101 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0MRl5x-1iGpH02iS1-00SxXf; Thu, 12 Dec 2019 00:53:07 +0100
From: Soeren Moch <smoch@web.de>
To: Kalle Valo <kvalo@codeaurora.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 1/9] brcmfmac: reset two D11 cores if chip has two D11 cores
Date: Thu, 12 Dec 2019 00:52:45 +0100
Message-Id: <20191211235253.2539-2-smoch@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Us4gcuk0RbKR4HQNOPkL/oiRL4tAdmkHERdAxq/8Wll6xa5unY6
 vc4ERbkOO1hBhlxdSovkzPZ9KF6ywGdKRjYa7y55CjUt/ifWRWTIps60cr3cl9ahlVyaxpL
 Nq2iiB7gOeo62Y4PROt4/1e7GCvb4gO+errOwi4IcUJX42eqY0n9VdPINUEI8dW7lXJf2ye
 Y8lk7+vzq15It0JcqoSFg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+88Ev/9dDg4=:z2IeWqdpeb4UiDzDXawSBY
 aGmsNDovtHG8mwxFuNhrq9OyZ/gUQOmAMlwyeiqOiyPVeKvbYpHS2WclK7O062I6pN8MQ9Sx1
 Lrk3EG8jTIo6Ba5x7E6hFNkE2JUhdwQ7Z1K6ymRWvLcUK3ANocVW7z3dP2ejwLfzA45hgoPi1
 F5Wokbc3wTCW/W8+HsaYOBz3Ik7EAtpcfFYqyqRrw/kCb/L9nI91b407JafIRdnt/duekI6sq
 X8mHk07N6xi3McZ/dWZUilbZtNjFx0/B7kVt5RqhTrci+V0fPZDqr8BJf9VjhzIDNFRW1PGYt
 b2HGNFBGluMKTldZNDT8phfSSIss1QfXdyMarIlZmMgXGvA/MLeQWfNQXlf6g5MFc5ve4TFnI
 QeAToxom+TMk/gj8D243yCeDGpIIdWvOvDqYhoJDlR+ibB8bpwy47rlVufYIB1yWm+iV7UlYZ
 RvcSS72+FN7QSNP4EkU0CKuSv9btbKC1tqWm2jgTeqWQAnQnCwX26MoPvjI9+vB/FFYclzVkM
 MksltDd3e6/MIHxNMPSVwHBomyucLipRt2jgMSgL8gUifILepUSLN9oDAUIudTOfMb3b1p2oM
 U5n8Z8Lh8ABCnFlb+6CG0miBqC2HrSTgvmaM2onU5MRHSCUopNuiyk83DdU9CCkgYT639e0O7
 L8XcjRvSa0TxsUu3h+0JdOu1BDpD4ZlckIvTXU+5UmEFCUokIeoRN4scySgqaINUOlAk5kB8+
 Q9BKn/9VgwWMfQYAwBdcsR/SpqdspfkCT7b5SarpkvQzHU3x7npAHgQZ2bIy37vf/d32lDufe
 dLPvVjb5ZhulNO5nTrWfe6jIvNdxBXCMR24ODnJ85EXh0RHJy1sV2j5zf8VXeh/2e7i34Gw4U
 2R4jE3mwPBIKKZp6mUa5dE1DVyCGE7Pw10cVbAe2a4c5vhd/I24f7w55RFChaNLGEhXG7J/Bq
 lRsI+1yABHbXTL28NG8zSLRboH9GN9gpfZreuzSZEPThPKv2QW9lzUs6gN3sNHYxdIs/rYpte
 nsCQ4rY5l9gAslr1HMDnnbPujEkpM3/bBS5aJ9TChVjVs/BNfDv6mCB5IJ2KCggfoIPRhQRFG
 uqCE/eToDktOZ1czy6n/wQyM3yTWFH5zu0gr54Gu5MHpHv4hx3A0M+uVM+9lzeLaHI9ore98M
 fDZU3r2s0muCJ7UC1rNn+e+zQ5ZQAPnzrQUADrdWJaJdtexNlcig2I+VuvRxnFLfTwFgXq1t9
 di3sCBWONCqTgyshjaj1kaT2cFCc/oDCh/9NYVQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_155322_017512_F97150C6 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: brcm80211-dev-list.pdl@broadcom.com,
 Arend van Spriel <arend.vanspriel@broadcom.com>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, linux-wireless@vger.kernel.org,
 Hante Meuleman <hante.meuleman@broadcom.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 Wright Feng <wright.feng@cypress.com>, brcm80211-dev-list@cypress.com,
 linux-arm-kernel@lists.infradead.org, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wright Feng <wright.feng@cypress.com>

There are two D11 cores in RSDB chips like 4359. We have to reset two
D11 cores simutaneously before firmware download, or the firmware may
not be initialized correctly and cause "fw initialized failed" error.

Signed-off-by: Wright Feng <wright.feng@cypress.com>
Signed-off-by: Soeren Moch <smoch@web.de>
Reviewed-by: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
---
changes in v2:
- add missing s-o-b
- add review tag received for v1

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: Franky Lin <franky.lin@broadcom.com>
Cc: Hante Meuleman <hante.meuleman@broadcom.com>
Cc: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
Cc: Wright Feng <wright.feng@cypress.com>
Cc: linux-wireless@vger.kernel.org
Cc: brcm80211-dev-list.pdl@broadcom.com
Cc: brcm80211-dev-list@cypress.com
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 .../broadcom/brcm80211/brcmfmac/chip.c        | 50 +++++++++++++++++++
 .../broadcom/brcm80211/brcmfmac/chip.h        |  1 +
 .../broadcom/brcm80211/brcmfmac/pcie.c        |  2 +-
 3 files changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
index a795d781b4c5..0b5fbe5d8270 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
@@ -433,11 +433,25 @@ static void brcmf_chip_ai_resetcore(struct brcmf_core_priv *core, u32 prereset,
 {
 	struct brcmf_chip_priv *ci;
 	int count;
+	struct brcmf_core *d11core2 = NULL;
+	struct brcmf_core_priv *d11priv2 = NULL;

 	ci = core->chip;

+	/* special handle two D11 cores reset */
+	if (core->pub.id == BCMA_CORE_80211) {
+		d11core2 = brcmf_chip_get_d11core(&ci->pub, 1);
+		if (d11core2) {
+			brcmf_dbg(INFO, "found two d11 cores, reset both\n");
+			d11priv2 = container_of(d11core2,
+						struct brcmf_core_priv, pub);
+		}
+	}
+
 	/* must disable first to work for arbitrary current core state */
 	brcmf_chip_ai_coredisable(core, prereset, reset);
+	if (d11priv2)
+		brcmf_chip_ai_coredisable(d11priv2, prereset, reset);

 	count = 0;
 	while (ci->ops->read32(ci->ctx, core->wrapbase + BCMA_RESET_CTL) &
@@ -449,9 +463,30 @@ static void brcmf_chip_ai_resetcore(struct brcmf_core_priv *core, u32 prereset,
 		usleep_range(40, 60);
 	}

+	if (d11priv2) {
+		count = 0;
+		while (ci->ops->read32(ci->ctx,
+				       d11priv2->wrapbase + BCMA_RESET_CTL) &
+				       BCMA_RESET_CTL_RESET) {
+			ci->ops->write32(ci->ctx,
+					 d11priv2->wrapbase + BCMA_RESET_CTL,
+					 0);
+			count++;
+			if (count > 50)
+				break;
+			usleep_range(40, 60);
+		}
+	}
+
 	ci->ops->write32(ci->ctx, core->wrapbase + BCMA_IOCTL,
 			 postreset | BCMA_IOCTL_CLK);
 	ci->ops->read32(ci->ctx, core->wrapbase + BCMA_IOCTL);
+
+	if (d11priv2) {
+		ci->ops->write32(ci->ctx, d11priv2->wrapbase + BCMA_IOCTL,
+				 postreset | BCMA_IOCTL_CLK);
+		ci->ops->read32(ci->ctx, d11priv2->wrapbase + BCMA_IOCTL);
+	}
 }

 char *brcmf_chip_name(u32 id, u32 rev, char *buf, uint len)
@@ -1109,6 +1144,21 @@ void brcmf_chip_detach(struct brcmf_chip *pub)
 	kfree(chip);
 }

+struct brcmf_core *brcmf_chip_get_d11core(struct brcmf_chip *pub, u8 unit)
+{
+	struct brcmf_chip_priv *chip;
+	struct brcmf_core_priv *core;
+
+	chip = container_of(pub, struct brcmf_chip_priv, pub);
+	list_for_each_entry(core, &chip->cores, list) {
+		if (core->pub.id == BCMA_CORE_80211) {
+			if (unit-- == 0)
+				return &core->pub;
+		}
+	}
+	return NULL;
+}
+
 struct brcmf_core *brcmf_chip_get_core(struct brcmf_chip *pub, u16 coreid)
 {
 	struct brcmf_chip_priv *chip;
diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.h b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.h
index 7b00f6a59e89..8fa38658e727 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.h
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.h
@@ -74,6 +74,7 @@ struct brcmf_chip *brcmf_chip_attach(void *ctx,
 				     const struct brcmf_buscore_ops *ops);
 void brcmf_chip_detach(struct brcmf_chip *chip);
 struct brcmf_core *brcmf_chip_get_core(struct brcmf_chip *chip, u16 coreid);
+struct brcmf_core *brcmf_chip_get_d11core(struct brcmf_chip *pub, u8 unit);
 struct brcmf_core *brcmf_chip_get_chipcommon(struct brcmf_chip *chip);
 struct brcmf_core *brcmf_chip_get_pmu(struct brcmf_chip *pub);
 bool brcmf_chip_iscoreup(struct brcmf_core *core);
diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
index f64ce5074a55..7ac72804e285 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
@@ -78,7 +78,7 @@ static const struct brcmf_firmware_mapping brcmf_pcie_fwnames[] = {
 	BRCMF_FW_ENTRY(BRCM_CC_4371_CHIP_ID, 0xFFFFFFFF, 4371),
 };

-#define BRCMF_PCIE_FW_UP_TIMEOUT		2000 /* msec */
+#define BRCMF_PCIE_FW_UP_TIMEOUT		5000 /* msec */

 #define BRCMF_PCIE_REG_MAP_SIZE			(32 * 1024)

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
