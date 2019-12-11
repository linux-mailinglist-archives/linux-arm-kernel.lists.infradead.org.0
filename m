Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 623B611C0DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 00:53:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aOygE1e0iG/KRvEZ8fh+dDiQ5VmxAYjNNw0wrFJpCIo=; b=V9S5NZUCUyKPEf
	QToTPg4QLacr6YDtAXyF1AxrgBzTvX5IgsfcaeVDb0PnIFIrw6Z2A7KV65De8gzsBIIHHipDqJhGo
	kl9+4nJt/wujIwTV4M9YDusPvslbPRbKKlYDdykw3XeR4w+fQ3+VZALLon5pnPU/nLA1UccdoyH4g
	dK1sxV3kjWXfh6il1bq7thgg4ZKrHrGFHKoJtKXtCOprAmCjXlXTw4cMBOuK1zTsJhxg8WK8MvLju
	8s4a4WVy3cmJ7tijKU9mdf/bX0Au2tlSHoiYKpbl740Vwvs18OsixK0Zxz0HB7SgCuKxQeXN6alxK
	AkTaH7XgjN+OAMpRdxqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifBnV-0000vC-OD; Wed, 11 Dec 2019 23:53:37 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifBnF-0000sB-9C; Wed, 11 Dec 2019 23:53:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576108386;
 bh=SHwEKS5HfPBsQhvwUPeNKlfOw3SLEczu2hmisG7j3I0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=aIqzyFzwBvAIkbawHJWO72Fzh/mqzDnJ47gjo+yrZ0emK3xg0COqzKQvdofPbG6W1
 d7UTORKsKVPB8mlcfk9JMtDGKMUW+dFPP6LlKDo6mwJFdQ55GLNRf73sIIj++11RuN
 PlgBQIehl0VmRhZV/cTxU5lHqFlyVkQsgnPN7mnU=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from localhost.localdomain ([89.204.139.166]) by smtp.web.de
 (mrweb101 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0LhNjo-1hshso0mnI-00mXj0; Thu, 12 Dec 2019 00:53:06 +0100
From: Soeren Moch <smoch@web.de>
To: Kalle Valo <kvalo@codeaurora.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
Date: Thu, 12 Dec 2019 00:52:44 +0100
Message-Id: <20191211235253.2539-1-smoch@web.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:wlune+MBVxnnPbtH/WJuKIHVW5Kt4Bh3x2TSi6jf84eE1oZeOVU
 dmIZckdKvEOp6T4MOEtvJQgRx77JwjPoOcGEySs5ql5yqY1cwslVBk26J6vh1rviiwMAuad
 k1NAwnKUmVgu/TQ6URsFElTL0U9+2DgdvYs6zDvLSawYziqCa9ESz6goH4pbemoW/JI1hWJ
 z0wb2ZsezZhRj/yGPwUfQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5h+qvYh+xgc=:yPWTesPFkaFZunR1Eod+lF
 2qKdRZ6DCppLTdhLkqMCYqcFmh8UYXKNnRvrmKane6YZKwhFfqgEOFl/wkxwBd6/7wBoIqRGy
 M5W26qWzPxoBqkP1917hy1u72p+UuZdttRBNGM2iV/+xPXJ7XxnSQycad14nt73x6LMKLapY7
 SdsLP60IVD7h6kuu2E4pEXaI1kByLxetc3+DUaVkkYA8grZLbAp7faZZbFKO1TVIzS5aUAxeY
 eFgmLd4U4re5UZLqyd9YgKHj5x5KISZl8Me2v5CB9dvUeYmpHU5/YDkpdDUpThQ4CoeuzS+5g
 UMWMcGM1g7uNZd1t5QtF7nqf40zxtEukWAaPj4v2sUNAja7dryceVeaFddB9THb6/jx8rvDCv
 DWu/9wXZFD877mjmALV3pAWCH793Yf4DBwlSdszpRTiJC8IysS1FIA8NPLfhpD01VKk480Hc6
 M1XB/ydwHTCHMUOZeVHBNQ93h+9XBCkyri+v3ciXp09Z7h42XFiwkqZ874Iva0xa7Qr+o2w4k
 iYOweRTYoSsnKn8CaguvO+qrguwzvSm9ltwA9fyFctTLQv4yBW8WHBxVwPoZBky0qjGWwZDHB
 kACE+SY9SyxUUL+2Lc7SHZB3uenG7XO1A+8U/LGLdvT0O2NTw5J2coJNUONG2KLEwVjaCCy2Q
 +pBQbiKvDiKhUGfv6nUTtkbr9Xn9rfiI5yU7FadQKcnCpKudCGGqFcE4WzkGHLS0+RshMKfhi
 60qRJZKqUe3/iQzBamiZmg8b4dpXKgil74k/F9tJcNTrLFbMh5sI6lBu0PHP5Pq5mUKR0i/nM
 f2/T/YeZmT9cmtduo6fhV719mFpRLw63HL2VLYsXT1nYkDFKa3aL/UF8gUETQWazXe0SqYEgv
 1ojGnYZs7WH6VEwQRtDMMcOCxOk+lxKU8EI/TaazwCfDYtUl6W8ecsTta9ZHlNCnyITs2O55O
 C/34cfSS94RetB76ivOVnf/QPCDOHC15FSjuMjHfL4QyjsaQH2ntkqh91NsAb1rM0aiQ8zYzO
 h+n05fHcVMzuByU/O94zRRwLjgHKjvD1PbNT4e5WWazigCvn1NBbA1yOkOkhknZ7QDJR0dNYF
 nYckdKT5YEsrgvE+3Wl5fb9II3K9SLV45+YjpNHQR6/WltwL8ceJ2ZGHXPQO6tmg6Sn7ZOIyD
 Hcu79rZlBnFVFLxRz1X6kWQbSkBool9oS21KSLY1AT637q30RFrPBmZUwe5Bc7+xMnZfPMAlz
 grHTBdSenszURSwg2PPqMcX8zA22rNMMdZ/RAzA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_155321_657528_E502F29D 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
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
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the BCM4359 chipset with SDIO interface and RSDB support
to the brcmfmac wireless network driver in patches 1-7.

Enhance devicetree of the RockPro64 arm64/rockchip board to use an
AP6359SA based wifi/bt combo module with this chipset in patches 8-9.


Chung-Hsien Hsu (1):
  brcmfmac: set F2 blocksize and watermark for 4359

Soeren Moch (5):
  brcmfmac: fix rambase for 4359/9
  brcmfmac: make errors when setting roaming parameters non-fatal
  brcmfmac: add support for BCM4359 SDIO chipset
  arm64: dts: rockchip: RockPro64: enable wifi module at sdio0
  arm64: dts: rockchip: RockPro64: hook up bluetooth at uart0

Wright Feng (3):
  brcmfmac: reset two D11 cores if chip has two D11 cores
  brcmfmac: add RSDB condition when setting interface combinations
  brcmfmac: not set mbss in vif if firmware does not support MBSS

 .../boot/dts/rockchip/rk3399-rockpro64.dts    | 50 +++++++++++---
 .../broadcom/brcm80211/brcmfmac/bcmsdh.c      |  8 ++-
 .../broadcom/brcm80211/brcmfmac/cfg80211.c    | 68 +++++++++++++++----
 .../broadcom/brcm80211/brcmfmac/chip.c        | 54 ++++++++++++++-
 .../broadcom/brcm80211/brcmfmac/chip.h        |  1 +
 .../broadcom/brcm80211/brcmfmac/pcie.c        |  2 +-
 .../broadcom/brcm80211/brcmfmac/sdio.c        | 17 +++++
 include/linux/mmc/sdio_ids.h                  |  2 +
 8 files changed, 176 insertions(+), 26 deletions(-)

---
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-wireless@vger.kernel.org
Cc: brcm80211-dev-list.pdl@broadcom.com
Cc: brcm80211-dev-list@cypress.com
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
