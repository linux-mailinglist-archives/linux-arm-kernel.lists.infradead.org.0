Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 177B711C103
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 00:55:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AI3LFiM8DeCvLFJSGPgGMKZqNpDYQ7auQ7PiM+Ca6YA=; b=D71+wSIy233NBY
	fASLZDU4npZiP2CUaO5GuuDjOMqIwqSnzumcxf1ZBMRock7jQvNkNTOy9ANRSOG/C09qRrPdfu/fO
	LdsyI4rJ2QtPB7GIJATn4vFqM89aL6kTJwkwTQxY1vmREyWE9VifHwtVWeXiegwlBvzD3yNWC1MWE
	dxSnSPcg137+bsumuzHMUmu/cI0AbJ91omwc+tyCqZZtLfYDIs3B+tsIuBIeI3Ix0VtIZCIjfz8C2
	onkPCMmFeWlK60Ff6+j1CBVJ22cuRvEq056h8/5gB31wQRzN0WbnvgOwBkXxIg9PNawq3kNaFfQUe
	x8huw7uJ9ULsD5liVtWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifBpl-0004HK-8d; Wed, 11 Dec 2019 23:55:57 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifBnI-0000sM-3p; Wed, 11 Dec 2019 23:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576108394;
 bh=UIfQ1uEbBM7aRcsCELoWupsxNBU1uTnrfPC1GXuP4k0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=k+FurcGv4TqMLZ609jRprB6gFKo66ccff7+ww9DBPhQA3+MY2E9cemTMAeF/mQc/D
 W6mrMnD79QAA2/sbWWE2G2YVn6SF27stpEQioQHz7idLthLgPOqFKLURomtcw4zBW6
 A0dwfZFmfTDMlWbvEf+eQ+ZgKgNxW2vyvlTXLj8o=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from localhost.localdomain ([89.204.139.166]) by smtp.web.de
 (mrweb101 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0LopiJ-1i3xMg2sFn-00gnU9; Thu, 12 Dec 2019 00:53:13 +0100
From: Soeren Moch <smoch@web.de>
To: Kalle Valo <kvalo@codeaurora.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 5/9] brcmfmac: add support for BCM4359 SDIO chipset
Date: Thu, 12 Dec 2019 00:52:49 +0100
Message-Id: <20191211235253.2539-6-smoch@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:fbFLsfS9zJn7W1W+geLYLgL2xgrwq0iSOy4xXpjyJpvWZaUoD4E
 Y0N/HgtLWYoCW//RMA1C56H/2QGtRXUt7FI3e+QfgKv7AbY7WZfIYaL0vqoEDdrNw1A7fou
 Bda7+OfEDfs76gdEzVQB+VO+mAGdy7KGqTxlpNipT/MSTqPXjhnbcFMvToySJY3i9bvbqSG
 zaec0MLD5YciT9kes7SPg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QcQIpKAkuMw=:9dXi2isuR2bE8ZA7lkpXK3
 JHnpknUmYgsJHS5jpFZlGrfzeS79/ygdKCK4CMI6KkJ+cVRcXPzAUWkAB9l3jho2xXKh28c1x
 2la10ALczojxXFDuCCWb6G02C5ESFJzE02HTX6oTcZnhVabr7HU96rtlUN6spKEZ9Bd7My17/
 RRZ7KSsMH9JlQ80JiNuKsD/tLHHTwi5PzmmrcUfmv9yTWf2/ZBE8J20R2S7YOBu6xecdLVR2Y
 IA17+ZWAzHh/GkSAmMHPiBInLGgT2yx1UvbY0MOFTC7RserBpyOBRle8UPkdaqNy88G3M/7aZ
 oGtNIxEQ4t9lRgFZNZHI0S2yPi+CJHroCCxriCTfwj1QIlLaNhXDVWjLqARRywmd8y1r2B+Lv
 cmWYt+sGIETyVYvpMZdyHY/fw8R5KB4QhcaCe3iQCDO7rxU+XEuDQMZiqkMD4z+pPygugXB8Y
 ulCRhlEO0rqXz7FmPUll2EB2WOLRSc6UM/D8Hlv7enz7jA/Pdaf7C+rK4dbygEYmeJ/ccjvbc
 RfsTH4pxCBAdm7K4MPdyMbiDXQwJLFt9fQokHZC/54Ie8ksTJBkFRpAUp4lXmnOYgtVQ1DJk2
 HXmMuxF14xwckRovEh1YrUooaKUKZxP9euxJndIiOj6mIiO7A1kay3hTsw3iHIJXbokxFamWm
 MPLyy0lWyGeaRaceNUnEhJRx6MKPHg0dagULvbAW5U2i+I6I5weUdMgrl7khiQoGUtuh+FQQf
 nPJ+YDQXQqJsCY/uJxA57bCiWSMdcpJP+SzhHnMEA31M1pHw3R+wY0RQ+N4a+4JRxS+JX5Gkj
 i77aPu5fIUgq44nCPD0yAdlz0ynMseQ2+TXC/YcxvBuFuVXIxG1PYaLmgsf3UHapxiFtJxQ0t
 xDOdJsSgozVtIoGS+hbAFeDBEHIXbbwMfoQ5lxaSdhw1pl1aCtHMO/4tywzCB96nrpcsz/y+S
 o44ZdGQOPgQvu5D8ynByIHNb6wsTTFUoHLPm5oLV54KoWXgD7R3ZVZynCwJsPMd8E3oHfMgI7
 0ziSq7RMTogMHgJSJfUOEJPJJscLHXoNWBAb79IyhFi6gxNAf072nSSDJJC/pd1NPCabwiL3g
 E9gtYKllSBhDz6qQdMn1S7pTrXincYqaWcTS8efzUSMV6aG/Djcza10dAmR7ulFD9cqj4qtF4
 1Ud9C6FJxZYLebDfwFMc+hCGGyZJel9btqgRw27Pej+UBZ5LR5DOPU8kHhD3U01yDQmOMUdV1
 RSQtIOcuYrpDFvTyIO46ZygLtElFl8ANvmhoupA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_155324_468924_6B6C9432 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
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

BCM4359 is a 2x2 802.11 abgn+ac Dual-Band HT80 combo chip and it
supports Real Simultaneous Dual Band feature.

Based on a similar patch by: Wright Feng <wright.feng@cypress.com>

Signed-off-by: Soeren Moch <smoch@web.de>
---
changes in v2:
- add SDIO_DEVICE_ID_CYPRESS_89359 as requested
  by Chi-Hsien Lin <chi-hsien.lin@cypress.com>

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
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c | 2 ++
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c   | 1 +
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c   | 2 ++
 include/linux/mmc/sdio_ids.h                              | 2 ++
 4 files changed, 7 insertions(+)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
index 68baf0189305..f4c53ab46058 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
@@ -973,8 +973,10 @@ static const struct sdio_device_id brcmf_sdmmc_ids[] = {
 	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_43455),
 	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4354),
 	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4356),
+	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4359),
 	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_4373),
 	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_43012),
+	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_89359),
 	{ /* end: all zeroes */ }
 };
 MODULE_DEVICE_TABLE(sdio, brcmf_sdmmc_ids);
diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
index baf72e3984fc..282d0bc14e8e 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
@@ -1408,6 +1408,7 @@ bool brcmf_chip_sr_capable(struct brcmf_chip *pub)
 		addr = CORE_CC_REG(base, sr_control0);
 		reg = chip->ops->read32(chip->ctx, addr);
 		return (reg & CC_SR_CTL0_ENABLE_MASK) != 0;
+	case BRCM_CC_4359_CHIP_ID:
 	case CY_CC_43012_CHIP_ID:
 		addr = CORE_CC_REG(pmu->base, retention_ctl);
 		reg = chip->ops->read32(chip->ctx, addr);
diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index 21e535072f3f..c4012ed58b9c 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -616,6 +616,7 @@ BRCMF_FW_DEF(43455, "brcmfmac43455-sdio");
 BRCMF_FW_DEF(43456, "brcmfmac43456-sdio");
 BRCMF_FW_DEF(4354, "brcmfmac4354-sdio");
 BRCMF_FW_DEF(4356, "brcmfmac4356-sdio");
+BRCMF_FW_DEF(4359, "brcmfmac4359-sdio");
 BRCMF_FW_DEF(4373, "brcmfmac4373-sdio");
 BRCMF_FW_DEF(43012, "brcmfmac43012-sdio");

@@ -638,6 +639,7 @@ static const struct brcmf_firmware_mapping brcmf_sdio_fwnames[] = {
 	BRCMF_FW_ENTRY(BRCM_CC_4345_CHIP_ID, 0xFFFFFDC0, 43455),
 	BRCMF_FW_ENTRY(BRCM_CC_4354_CHIP_ID, 0xFFFFFFFF, 4354),
 	BRCMF_FW_ENTRY(BRCM_CC_4356_CHIP_ID, 0xFFFFFFFF, 4356),
+	BRCMF_FW_ENTRY(BRCM_CC_4359_CHIP_ID, 0xFFFFFFFF, 4359),
 	BRCMF_FW_ENTRY(CY_CC_4373_CHIP_ID, 0xFFFFFFFF, 4373),
 	BRCMF_FW_ENTRY(CY_CC_43012_CHIP_ID, 0xFFFFFFFF, 43012)
 };
diff --git a/include/linux/mmc/sdio_ids.h b/include/linux/mmc/sdio_ids.h
index 08b25c02b5a1..2e9a6e4634eb 100644
--- a/include/linux/mmc/sdio_ids.h
+++ b/include/linux/mmc/sdio_ids.h
@@ -41,8 +41,10 @@
 #define SDIO_DEVICE_ID_BROADCOM_43455		0xa9bf
 #define SDIO_DEVICE_ID_BROADCOM_4354		0x4354
 #define SDIO_DEVICE_ID_BROADCOM_4356		0x4356
+#define SDIO_DEVICE_ID_BROADCOM_4359		0x4359
 #define SDIO_DEVICE_ID_CYPRESS_4373		0x4373
 #define SDIO_DEVICE_ID_CYPRESS_43012		43012
+#define SDIO_DEVICE_ID_CYPRESS_89359		0x4355

 #define SDIO_VENDOR_ID_INTEL			0x0089
 #define SDIO_DEVICE_ID_INTEL_IWMC3200WIMAX	0x1402
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
