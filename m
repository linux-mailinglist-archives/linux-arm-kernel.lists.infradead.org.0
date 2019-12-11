Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0165B11C0F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 00:54:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1WTHblXjC38KjytusMXaD1Hw6N1M6SKrB6VOM3Dz208=; b=L+KIHHVD0TeHTe
	W/EdOuTItIkrEADsADRzFXRj0MwtCO1DUnbR5I/NeJSvYwJn+poi4qJr/JdUX6iLhX9MX4zaZ0x9f
	EN9w2PUfZdsSGioj8yS+czW7jo5/CESKFU1qDBPrea3cYYnca0XVBdiSpcaHMkMJBeNociqFiETlq
	EU76l/j/o9x4XAdkeRrox24i6dCqJmTCLgf3YLBSfQUqZac7TzQEi2mgHwz0mAVyXJJv6IFd0/JQ0
	cEyeQOTb8cwU8DG3PluxertnO8XmrbIn4BPNC3cvIm64XAysESmhbGa22A15LDIRsdzWo9KwGvtJY
	yPj/89nDZIErzc/Vr7Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifBoQ-0001n9-O1; Wed, 11 Dec 2019 23:54:34 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifBnF-0000sJ-Dt; Wed, 11 Dec 2019 23:53:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576108395;
 bh=bqrfzn03Wk5A81+Bxtr6JafRDf0LDppSY0FopstiOWU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=LrNnwQUqQrR0y8v6QbdwFWGQreRkC4UnLS5vcVMOJWqrggruA85WPRuDtsut44XCJ
 yEqnecDjdVWTJLbeEBdKSRro6bhl4HlystbX32DXbG0J+16xNcdgo0pzXbUjQ/Rumx
 VmqU5cVabbZFYa0qgNLQtUwVMzEIAshhpw5rpgtU=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from localhost.localdomain ([89.204.139.166]) by smtp.web.de
 (mrweb101 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0M6E6g-1hmhaz0h0k-00yBkG; Thu, 12 Dec 2019 00:53:15 +0100
From: Soeren Moch <smoch@web.de>
To: Kalle Valo <kvalo@codeaurora.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 6/9] brcmfmac: add RSDB condition when setting interface
 combinations
Date: Thu, 12 Dec 2019 00:52:50 +0100
Message-Id: <20191211235253.2539-7-smoch@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:sObgus2FDRoa5HGMYXoHjJ8dLBCTgL7OufE2JZLV/N7PtqNDME2
 YuQXbzzDjKtPnQsO7f8f9MzJSbdmoMqCb/6c4H24QSLEbLJ8AUwZUsdhGOh3NKpytNJMIhG
 hXxgebyZByKXqYQJn7hWvI2FVd66BOnDCk39Fi8sBq+VoW4dZHw85R6jVOnpy5jpfvCvUlo
 Tx1C7zBeV/t96cuCIyhhA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:l+RZ/qB1OXc=:NPKGOTlEvEQpnntq6ydHAz
 fHl0SEXZuE6K9NBqv4Lht5uPB32IkQoru8VRv4/YD+JhRqRzu+tcMxC2gZ5IB67lWwyUdySCm
 uBnJwQR+zq8SQmwMwXiVtWbbYaPtxcQ0OPwiJgkN35EtVWAdo18b1j2o3Y6eiXAgb+yTDfEO4
 QPc4Xh7ZV7/Ozn0gxYjPVXPBRJV+m5jNdO0gT+LKNmb/axMJrSIBvPmuqB+IXexqXIFAxwPhO
 DdJ49akvIGJuQq/h7m3KcOo0bUrki08Pi9KFUo6INuqAEup9RxYJZjrRH4K5fZ18kZOuiIfx7
 Jtjz0ht7DMIP7XJ0gbAdp+aFbgq9mieu/1OzKTp4r15FJLEwXbY+x+VFvN7YuMruvhAlgDN/f
 uydFFv0xu0FTYf0XcqEWIsTOrwK18uAoRBDUb36QwOqZJq3+XAFsCuy6P9Y6IWqnGE4lHlav+
 4yBD7vYaRJWj1eNLqmi8QqSLSaYQ+kNKY40IK+eiTiyjwCumX2WEdTlTpPsvD3REp6CyYJgHt
 wVKBHcBh0uGmpU+PjdLDvaLjeXLSS9NTMXZHTmywifF9gbLon8IKH2GfjUjbfpio0uItVKhOp
 +qKdcNo33fS1f+dpD7kGF0KSy1XTMgfbblzY4yDs4twfxdRxU5RWo0kGPsdf4NxT3XV7gZWMD
 76dZ6dQ0cQxRxmWS6Ebl6SXx/kNq2ih0ox1/gK6awP7WmV5bZP4XwMiRmvVLtwsKtv4BuvMWv
 0JfZf0gFBagGgAEVGPPd0nlodPWZ8OlHGbxBThsTUdS51d265/UdnYQkKigcGBPY3JnBxDis3
 UwLBb5gwrG+zDOOdAAwxZuS7qdnmFlUniQXAFFOf+/JTYJ4X8WdMX1JxCLMzSEhxlWCKELgLK
 4zcMN76iTCWG/YWMnUtvX7w4zL1r/adcNOG4vs4TTum2DsZEkwEWP3bB/b6TyaNGzQhIWwSUN
 yiQrAwsPKj06psAXb7PTg2pinbvSX3REtejpZkkJZJRtYE75gKujsDDaEkaUtXYeSH7LzBSK0
 S9XH6EFM0BNYJ3o8DS7HpcYPyi5Lt8TBZ5V70l/aHBAIHVCfvN9gqXoQQt+7nLCq68jMwQpDC
 r0JrD16e3CTTvuHUKgb4rtUf2H3PGBDRcU/BrKAV4gZPgXqqjS93FL5H7bBWm7EZOGa/K34Uk
 4B+zsViWMt89PTi2nQ0qlYivNwmqGEkMQivWWOSNzkk5qg+vpBFP7lxMoMi8XdZ+Qu3oa1zNw
 tPGbo/eu0kB/3JzBN69//WDdupLb2MjoLAududA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_155321_768318_FA4EC9ED 
X-CRM114-Status: UNSURE (   9.54  )
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

With firmware RSDB feature
1. The maximum support interface is four.
2. The maximum difference channel is two.
3. The maximum interfaces of {station/p2p client/AP} are two.
4. The maximum interface of p2p device is one.

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
 .../broadcom/brcm80211/brcmfmac/cfg80211.c    | 54 ++++++++++++++++---
 1 file changed, 46 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
index 0cf13cea1dbe..9d9dc9195e9e 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
@@ -6520,6 +6520,9 @@ brcmf_txrx_stypes[NUM_NL80211_IFTYPES] = {
  *	#STA <= 1, #AP <= 1, channels = 1, 2 total
  *	#AP <= 4, matching BI, channels = 1, 4 total
  *
+ * no p2p and rsdb:
+ *	#STA <= 2, #AP <= 2, channels = 2, 4 total
+ *
  * p2p, no mchan, and mbss:
  *
  *	#STA <= 1, #P2P-DEV <= 1, #{P2P-CL, P2P-GO} <= 1, channels = 1, 3 total
@@ -6531,6 +6534,10 @@ brcmf_txrx_stypes[NUM_NL80211_IFTYPES] = {
  *	#STA <= 1, #P2P-DEV <= 1, #{P2P-CL, P2P-GO} <= 1, channels = 2, 3 total
  *	#STA <= 1, #P2P-DEV <= 1, #AP <= 1, #P2P-CL <= 1, channels = 1, 4 total
  *	#AP <= 4, matching BI, channels = 1, 4 total
+ *
+ * p2p, rsdb, and no mbss:
+ *	#STA <= 2, #P2P-DEV <= 1, #{P2P-CL, P2P-GO} <= 2, AP <= 2,
+ *	 channels = 2, 4 total
  */
 static int brcmf_setup_ifmodes(struct wiphy *wiphy, struct brcmf_if *ifp)
 {
@@ -6538,13 +6545,14 @@ static int brcmf_setup_ifmodes(struct wiphy *wiphy, struct brcmf_if *ifp)
 	struct ieee80211_iface_limit *c0_limits = NULL;
 	struct ieee80211_iface_limit *p2p_limits = NULL;
 	struct ieee80211_iface_limit *mbss_limits = NULL;
-	bool mbss, p2p;
+	bool mbss, p2p, rsdb;
 	int i, c, n_combos;

 	mbss = brcmf_feat_is_enabled(ifp, BRCMF_FEAT_MBSS);
 	p2p = brcmf_feat_is_enabled(ifp, BRCMF_FEAT_P2P);
+	rsdb = brcmf_feat_is_enabled(ifp, BRCMF_FEAT_RSDB);

-	n_combos = 1 + !!p2p + !!mbss;
+	n_combos = 1 + !!(p2p && !rsdb) + !!mbss;
 	combo = kcalloc(n_combos, sizeof(*combo), GFP_KERNEL);
 	if (!combo)
 		goto err;
@@ -6555,16 +6563,36 @@ static int brcmf_setup_ifmodes(struct wiphy *wiphy, struct brcmf_if *ifp)

 	c = 0;
 	i = 0;
-	c0_limits = kcalloc(p2p ? 3 : 2, sizeof(*c0_limits), GFP_KERNEL);
+	if (p2p && rsdb)
+		c0_limits = kcalloc(4, sizeof(*c0_limits), GFP_KERNEL);
+	else if (p2p)
+		c0_limits = kcalloc(3, sizeof(*c0_limits), GFP_KERNEL);
+	else
+		c0_limits = kcalloc(2, sizeof(*c0_limits), GFP_KERNEL);
 	if (!c0_limits)
 		goto err;
-	c0_limits[i].max = 1;
-	c0_limits[i++].types = BIT(NL80211_IFTYPE_STATION);
-	if (p2p) {
+	if (p2p && rsdb) {
+		combo[c].num_different_channels = 2;
+		wiphy->interface_modes |= BIT(NL80211_IFTYPE_P2P_CLIENT) |
+					  BIT(NL80211_IFTYPE_P2P_GO) |
+					  BIT(NL80211_IFTYPE_P2P_DEVICE);
+		c0_limits[i].max = 2;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_STATION);
+		c0_limits[i].max = 1;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_P2P_DEVICE);
+		c0_limits[i].max = 2;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_P2P_CLIENT) |
+				       BIT(NL80211_IFTYPE_P2P_GO);
+		c0_limits[i].max = 2;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_AP);
+		combo[c].max_interfaces = 5;
+	} else if (p2p) {
 		if (brcmf_feat_is_enabled(ifp, BRCMF_FEAT_MCHAN))
 			combo[c].num_different_channels = 2;
 		else
 			combo[c].num_different_channels = 1;
+		c0_limits[i].max = 1;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_STATION);
 		wiphy->interface_modes |= BIT(NL80211_IFTYPE_P2P_CLIENT) |
 					  BIT(NL80211_IFTYPE_P2P_GO) |
 					  BIT(NL80211_IFTYPE_P2P_DEVICE);
@@ -6573,16 +6601,26 @@ static int brcmf_setup_ifmodes(struct wiphy *wiphy, struct brcmf_if *ifp)
 		c0_limits[i].max = 1;
 		c0_limits[i++].types = BIT(NL80211_IFTYPE_P2P_CLIENT) |
 				       BIT(NL80211_IFTYPE_P2P_GO);
+		combo[c].max_interfaces = i;
+	} else if (rsdb) {
+		combo[c].num_different_channels = 2;
+		c0_limits[i].max = 2;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_STATION);
+		c0_limits[i].max = 2;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_AP);
+		combo[c].max_interfaces = 3;
 	} else {
 		combo[c].num_different_channels = 1;
 		c0_limits[i].max = 1;
+		c0_limits[i++].types = BIT(NL80211_IFTYPE_STATION);
+		c0_limits[i].max = 1;
 		c0_limits[i++].types = BIT(NL80211_IFTYPE_AP);
+		combo[c].max_interfaces = i;
 	}
-	combo[c].max_interfaces = i;
 	combo[c].n_limits = i;
 	combo[c].limits = c0_limits;

-	if (p2p) {
+	if (p2p && !rsdb) {
 		c++;
 		i = 0;
 		p2p_limits = kcalloc(4, sizeof(*p2p_limits), GFP_KERNEL);
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
