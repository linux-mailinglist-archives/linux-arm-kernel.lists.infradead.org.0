Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784CB98DB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 10:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8dh7oIHYc0UBjQy2biG/txLrm4wJrUlEmYoNgmch6iI=; b=eGsip1+6cD0/Kr
	pacd9GMtEkNN0XGwmiF4BdSd7ATE0hqaJfftIIb21Z5sE4mUy2IIrXKh/pMBsHQA2AjqRkHCv4w3F
	1cdoRMv9eBLXdgCBYtgIzB9W94x2WS4YIAvJCjbp9kPgKboI5F3GVEXWPZDaxjyADljY531KlmIgR
	fI8F0P7+2EGD7j8fFF9qcWSGuosTdTGFyeGC7XAe1+SlaWlRqNLUr0xwhIikSmiMV3p2LJfOA3EIN
	IGe+Kje3yVzySPNAXpVfWqdMrigsg8fetDysgmw/fDIG6lZZowwnLRtZNYJxYpq0/W3y+dn/s7Zz1
	tZQJJYGHDLcaAb6epX3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iVb-0001Np-Ae; Thu, 22 Aug 2019 08:31:51 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iV9-0001C0-P4; Thu, 22 Aug 2019 08:31:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1566462653;
 bh=V2oxVsfA63HZbkOHiKbPZqYr5GwzDNExLaZhzvgEfgw=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=qxSuMxZM2ohqeHBVoVrmnQxgjtl6M0pzi6mdnKdrRzbPUdFIHDQ9XtmI2jRDYSt6+
 7kcxZ9Gbvod8uzqK3rZqm8Ug7tAwbEZSnI7CFiIhAao3WJ4Tskn54/h8UrgGAz8UvR
 mJm6bNtwIfMGvQkz1/4tfvZL+UbnNC+iGMx7wNVQ=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.49.181.43]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MMW5u-1hsScV098A-008HZR; Thu, 22
 Aug 2019 10:30:53 +0200
To: linux-wireless@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, ath10k@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>, Felix Fietkau <nbd@nbd.name>,
 Kalle Valo <kvalo@codeaurora.org>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Roy Luo <royluo@google.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Solomon Peachy <pizza@shaftnet.org>,
 Stanislaw Gruszka <sgruszka@redhat.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: =?UTF-8?Q?=5bPATCH=5d_net/wireless=3a_Delete_unnecessary_checks_bef?=
 =?UTF-8?B?b3JlIHRoZSBtYWNybyBjYWxsIOKAnGRldl9rZnJlZV9za2LigJ0=?=
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <ea6c6fef-9868-196b-d914-23faf12d7f5c@web.de>
Date: Thu, 22 Aug 2019 10:30:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:f05h5vMx92DtiQMHqZOmFyHPvr0ONXfaFvs2KSZ9VuA5vAz/43u
 PUJVcdKdGTVKDILkMT8TU/jAFxwXWbgVlkbCa+Dq3kEweMGmFIwaSPkoUHbM+uqchnd71fg
 WThV9VymEUwWOGN1gFZo/qDcGU0nYtYbzHC6T+vtx+EjTjDehhOHXHSBvCF8XWHLS3D+LwD
 +vxaer3Gdmk/eQsEGGQCQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YUyk3sN4sdg=:AQXcTUqZJlU6CBXbSp0Tpu
 CcdZWx7vNs+Y+mWA/xOmTOD1/0pUqIWhUowp6mINhZM6fI1wBYP2TVv9wnHERdzJHG1vPRzec
 nooGcUix8j6IzUU1h29tFEGc0tMgfnF5foZYYmttXtZuzIfawG/rzHcoNF4v1kgDUWavfVxvw
 Cb++sghR9wDEwEbCP5Bcihqylt/P+LAO6RbBHX6w/2HF9FKLqlf6MJiVH94SEP+r8+sPqlXbz
 Bb6i73kqyf7O/rBVtDcjIh9s/kDq9t6gSOQ3sp7IjkQrIHLuJybGBtlfl6qxS5ZXZoSdNBlGi
 qUSW9R59pKXPzeYzAAxgxaVciAdD+q14g1ljKFW5Gxhp+JMhAZhp1tDYd751FHVJ1qD13nXRk
 mk7Cs+VqoqIsFz6o32SG5o3oES7fXZFvRtSFzoO82Bt82xJtwpqWVMPLU39ZAPWNdgWr8SXuU
 y1tNaduIVLlQA6dtjmEr6CIvVSkqzfUp6Y5eiSTgBXmv/RqeUltKoDqUpIEQmVObiij7J6yoE
 BtwpFISiyg0HDeqOXAS3TBsNflgk91vAUebiam6gHM7TB7SXtX8Zkx7CGfZZ5wjcCxhEJMhkt
 3GtUiF6hvTwcRI2kRFn9UlYvwEtfgNAokc9Egh2naw6rJnYgchpGWnlS1C1pXvrtcIT1Qyzvl
 l+6265MLbBXZOz8tP1AJiKw273gv0xHEZQVyde/EW9Vho7NlulDR5gGldN9DV6g2pvKUTEdtI
 VoC/VlvzH6XMikjSpwLMGiYGQN0tyPQtSEqtVCiIQWHtNWK/vVVT1Fy8UAGSW7dM4NyVMrFnv
 dgNgrz/HsDozYUIqyJfau1JMlrz/6q23Ro2Hfa9bdTS4SOlOAc75wuvvEwAqknyks84gHdSsn
 iPmiM7tjJnIWIun+ijDBEm9uxUcZbQRrI3U5y8+wJ6hxX1UgV/a435NTLmDmRJzhkpmb9fjeB
 jlaAJ7TKOC3Mz+SCrMGM0q1dWw3Rc7iRP3AqdcREkZ2oBv9adv5kVn8mRQm6HsjDSjkwqKrCh
 FXBq/+Mq0VaSk72hsBhmYfrvIitr9sRTeBPxuz8mxxj7luoEbhgmNUSfrtVRrxa3H4d94SDKw
 8re4Wg/7d2BnLOhPhdCuroYcu6NEPXZUB8LfC+9jQAlv8Noj7qaAfl0qWyghnBkM5iIDiPPgv
 DH8g4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_013124_331591_43190CAB 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.4 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Thu, 22 Aug 2019 10:20:10 +0200

The dev_kfree_skb() function performs also input parameter validation.
Thus the test around the shown calls is not needed.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/net/wireless/ath/ath10k/wmi.c               | 4 +---
 drivers/net/wireless/intel/iwlegacy/3945-mac.c      | 8 ++------
 drivers/net/wireless/intel/iwlegacy/common.c        | 8 ++------
 drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c | 5 +----
 drivers/net/wireless/st/cw1200/scan.c               | 3 +--
 5 files changed, 7 insertions(+), 21 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/wmi.c b/drivers/net/wireless/ath/ath10k/wmi.c
index 4f707c6394bb..d384293429b4 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.c
+++ b/drivers/net/wireless/ath/ath10k/wmi.c
@@ -9440,7 +9440,5 @@ void ath10k_wmi_detach(struct ath10k *ar)
 	}

 	cancel_work_sync(&ar->svc_rdy_work);
-
-	if (ar->svc_rdy_skb)
-		dev_kfree_skb(ar->svc_rdy_skb);
+	dev_kfree_skb(ar->svc_rdy_skb);
 }
diff --git a/drivers/net/wireless/intel/iwlegacy/3945-mac.c b/drivers/net/wireless/intel/iwlegacy/3945-mac.c
index b82da75a9ae3..4b3b166f6f2a 100644
--- a/drivers/net/wireless/intel/iwlegacy/3945-mac.c
+++ b/drivers/net/wireless/intel/iwlegacy/3945-mac.c
@@ -2302,9 +2302,7 @@ __il3945_down(struct il_priv *il)
 	il3945_hw_txq_ctx_free(il);
 exit:
 	memset(&il->card_alive, 0, sizeof(struct il_alive_resp));
-
-	if (il->beacon_skb)
-		dev_kfree_skb(il->beacon_skb);
+	dev_kfree_skb(il->beacon_skb);
 	il->beacon_skb = NULL;

 	/* clear out any free frames */
@@ -3847,9 +3845,7 @@ il3945_pci_remove(struct pci_dev *pdev)
 	il_free_channel_map(il);
 	il_free_geos(il);
 	kfree(il->scan_cmd);
-	if (il->beacon_skb)
-		dev_kfree_skb(il->beacon_skb);
-
+	dev_kfree_skb(il->beacon_skb);
 	ieee80211_free_hw(il->hw);
 }

diff --git a/drivers/net/wireless/intel/iwlegacy/common.c b/drivers/net/wireless/intel/iwlegacy/common.c
index 73f7bbf742bc..4e7e64f46ea8 100644
--- a/drivers/net/wireless/intel/iwlegacy/common.c
+++ b/drivers/net/wireless/intel/iwlegacy/common.c
@@ -5182,8 +5182,7 @@ il_mac_reset_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
 	memset(&il->current_ht_config, 0, sizeof(struct il_ht_config));

 	/* new association get rid of ibss beacon skb */
-	if (il->beacon_skb)
-		dev_kfree_skb(il->beacon_skb);
+	dev_kfree_skb(il->beacon_skb);
 	il->beacon_skb = NULL;
 	il->timestamp = 0;

@@ -5302,10 +5301,7 @@ il_beacon_update(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
 	}

 	spin_lock_irqsave(&il->lock, flags);
-
-	if (il->beacon_skb)
-		dev_kfree_skb(il->beacon_skb);
-
+	dev_kfree_skb(il->beacon_skb);
 	il->beacon_skb = skb;

 	timestamp = ((struct ieee80211_mgmt *)skb->data)->u.beacon.timestamp;
diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c b/drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c
index d61c686e08de..d6487cd67cca 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c
+++ b/drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c
@@ -88,10 +88,7 @@ int mt76x02_mac_set_beacon(struct mt76x02_dev *dev, u8 vif_idx,
 	for (i = 0; i < ARRAY_SIZE(dev->beacons); i++) {
 		if (vif_idx == i) {
 			force_update = !!dev->beacons[i] ^ !!skb;
-
-			if (dev->beacons[i])
-				dev_kfree_skb(dev->beacons[i]);
-
+			dev_kfree_skb(dev->beacons[i]);
 			dev->beacons[i] = skb;
 			__mt76x02_mac_set_beacon(dev, bcn_idx, skb);
 		} else if (force_update && dev->beacons[i]) {
diff --git a/drivers/net/wireless/st/cw1200/scan.c b/drivers/net/wireless/st/cw1200/scan.c
index c46b044b7f7b..988581cc134b 100644
--- a/drivers/net/wireless/st/cw1200/scan.c
+++ b/drivers/net/wireless/st/cw1200/scan.c
@@ -120,8 +120,7 @@ int cw1200_hw_scan(struct ieee80211_hw *hw,
 		++priv->scan.n_ssids;
 	}

-	if (frame.skb)
-		dev_kfree_skb(frame.skb);
+	dev_kfree_skb(frame.skb);
 	mutex_unlock(&priv->conf_mutex);
 	queue_work(priv->workqueue, &priv->scan.work);
 	return 0;
--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
