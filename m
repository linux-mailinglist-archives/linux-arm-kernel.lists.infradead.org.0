Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA3111C101
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 00:55:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/SkBdDY6voeCkP0YANJcdGipe2QJ6djEH7DCWvka2Y=; b=ADdF2DcGeh5FAo
	UxPCSmA9XfKPRF+rRP+vBQQ9k18UusoRa8GF3828Xcwfpv/BzERa+NlIofX8XBOJG4d4V8OnxsqnU
	klH7BGPWampV5DkWV4BL3+T1x7vOr05oH2fkXfSKQlcwNfIyDgnYLS/WxXYSbgKFSwjEwb6KaDmpK
	bwg6pT6xFz62XStftPlB8UWF3rjDUltS/YMsmOuv6xWQ7VBSLsVAqduzpvsA7zLTww5DHwoR9umK0
	8jVlhwKh3HDLgvscVczZLliHkV/4v1LXYKo90xO6fN6lnoFK2ne+0Qf2Zehdn/aXJv/Q/nKWxGnLD
	KKFqShG3SesBD3btYTVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifBpO-0003ur-Tu; Wed, 11 Dec 2019 23:55:34 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifBnI-0000sL-3m; Wed, 11 Dec 2019 23:53:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576108392;
 bh=UNWwBy4HvMp8NS5BHLEVj6k8eNrJ1QW+53Ygqx3ikyQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=fC+reDFWWXrCC1oVsGw4DQ2cGfkh72ux9rGAVkcaHPaAqvApQhggsnIfFOGYk32jb
 6EBEjgep0F9A+dEEHivoHe44RLKCJ+3fsNEZeNO0CLe+pnvi3zalkX/PDYrUan0NZG
 uuwRvwgNSI8U/goq1XXnv0LUBDjbA5OpR7WhU9Zk=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from localhost.localdomain ([89.204.139.166]) by smtp.web.de
 (mrweb101 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0MNcV4-1idZEQ0uXy-007BYG; Thu, 12 Dec 2019 00:53:12 +0100
From: Soeren Moch <smoch@web.de>
To: Kalle Valo <kvalo@codeaurora.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 4/9] brcmfmac: make errors when setting roaming parameters
 non-fatal
Date: Thu, 12 Dec 2019 00:52:48 +0100
Message-Id: <20191211235253.2539-5-smoch@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:iWY6io2UQ6RIkm2j/nioDi8y8IvMaEyrFJN80SKzmn5lD3C51Hk
 h3/+agnrE46TIzUUZIsWNSG7+jxo/QOQNpX56dWjEcTw05Yp4UChy+Ww/3ueKnCCJ59PoZ5
 tpmmXvLM1lnsJnGCnIzDOkWqJc6SlNH4eAwRxCh7GQEMLIlOvB2HQMc4gcfS5RhSBBlLfIK
 5+/LmDbh3Gx55YpFdC45Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pNccthOUpKw=:z9QcLBPdXM4E7dbreh5KhI
 LbeK3P1yhdftZzuhI+R0FUJFoGiC4b6ano7oqYIsLK/N2nEj6o6crBfkW1A0kW4MzGvnEkkGO
 T4/Yj7rQh0lwFjY+PAHk11lU7gWKYy3dzF9ykEzUfYFPCWCLlFGsxlT1P7Qptk12Qp46FhixQ
 vQtI4x1hJB+scZ+MlFV/T1Eq26ClwCRwd2/FNm125HU+fNFXw39nDEtrEqZiARo5wMEwwYz/M
 3Z9bhcOEIftDTWukSx0LqRymqCjT14szC29OgLXyZqjNAopuF1aD1w0ArLlVpRJzrXWrjTJr/
 QAygyLWbky6ZFgyi8oiqzquFk67bVFjQn/qjswICugFTVrJGmTXUKxtPZ4OnNcWMy8tm75OLP
 z/cYpvtRR64hXUJT7Zii9IKPW8GxxwOnEf7mTJU76JTiUTHbhKPezaF2ykto81DU6Vuc9L0j9
 UyudOga5QCRSlCtyDXQTK2UWSFSC+fgRYA43fkhrdKukQIFM2Dr9f4SiuK3/x7vrS+OWi1T5f
 sW7nA8fSrOrjynGIBPd68jPqGxlpUULc47flahXzMVRPM+frWVoYjDz94MT5fRO9xbvuN9HxB
 guWKwE8k7m3dAUiFx3Y5qD2I0dULfY+WsTtedJk1d6QLAs7ie42tUVeQ0PB7+QLqu5cTftePA
 NQsl28wrGYf0XsJbsrmMxRKvc/rvLOXG/lGm0i2NZu07XRfBpinmjnUrZULzaP8mrNhurml+6
 EGv9SJZYfsvvYfSW9q671TjElYEld5L3IJlK7cQqfYdFWBKVbxfXqM+HTvU9yKAS6XFYC7QWx
 ck6BnF8QaZW9rL63mQ4qmOFqcU7jNLQ2Hmpu6cibJAakOBJVZNTYbQAVMK5K67MUz/6XcaxdB
 mIABZMCdTkF8CV9QJIp1ZHahsRIvYhonr1LhVWLRgE5f1UGO6WfLY04NkoanJIq9FwWQwE7VO
 JPMibERe+SINR2JjvQ+X2rr0xCjeWL990Z91mGxswVqExzYVmCvi0DZEfXHN7axO0PLRcNx5D
 NoGw4gxFqB4fcx4P0BcERfC5Lis0/fixa2MuA8RIQsXP7S8JReCrHqT7jLH+5FHDW5PnYsZQ+
 122BqIJ6oQuH0V8FHCqZg5cN47nQahH+zmj8WvL6tS530j81e0dCqIJZ3GP3m3iINXeHwonFZ
 hHMSM8QtDpTSGMwvSMlfczDxG13IzN4ystrcIrQGXACqC5eA8wJ4qr3UsiRxYorMxm5B5VMA3
 a2scy3jluKvcVFP3w9UQ8co1zL8aS82pC9JqSSg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_155324_461062_4AEE1661 
X-CRM114-Status: UNSURE (   8.47  )
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

4359 dongles do not support setting roaming parameters (error -52).
Do not fail the 80211 configuration in this case.

Signed-off-by: Soeren Moch <smoch@web.de>
Acked-by: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
---
changes in v2:
- add ack tag received for v1

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
 .../wireless/broadcom/brcm80211/brcmfmac/cfg80211.c    | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
index 5598bbd09b62..0cf13cea1dbe 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
@@ -6012,19 +6012,17 @@ static s32 brcmf_dongle_roam(struct brcmf_if *ifp)
 	roamtrigger[1] = cpu_to_le32(BRCM_BAND_ALL);
 	err = brcmf_fil_cmd_data_set(ifp, BRCMF_C_SET_ROAM_TRIGGER,
 				     (void *)roamtrigger, sizeof(roamtrigger));
-	if (err) {
+	if (err)
 		bphy_err(drvr, "WLC_SET_ROAM_TRIGGER error (%d)\n", err);
-		goto roam_setup_done;
-	}

 	roam_delta[0] = cpu_to_le32(WL_ROAM_DELTA);
 	roam_delta[1] = cpu_to_le32(BRCM_BAND_ALL);
 	err = brcmf_fil_cmd_data_set(ifp, BRCMF_C_SET_ROAM_DELTA,
 				     (void *)roam_delta, sizeof(roam_delta));
-	if (err) {
+	if (err)
 		bphy_err(drvr, "WLC_SET_ROAM_DELTA error (%d)\n", err);
-		goto roam_setup_done;
-	}
+
+	return 0;

 roam_setup_done:
 	return err;
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
