Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B06F2F3969
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 21:17:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OalmPAtq0MjRl/2pOhm6M3+6Whv2/O0+HDeWHmPPIHg=; b=MzPEG7gad3PHKs
	fqTBidhgwUOGSBdlHWBGsX+2z/dqO9x04uPxSEaCqdF1sI2ZvvBw/qRS41iR5G6GQPF3HJUO2V1j4
	cZRFl0zX82tswaN16pJ7Ek0o/e0aIb2L8H/4oQqpTkkvvlsM/LBvIOf9EnckzbEJg56SVBdg7/5iV
	/Z3vqqaCTYhgsD543dMlvZKMaANhHhH3B6FmRt50WkZd4EvglQlQxTbiqZOEep9BD8JV0ZJddEboh
	J+I22TpJHZZS0p6c80w88AVJS5hS0NrvBKOoMMJh5wml4okdLhMYDYexJeaKLgJbyEe89ZuKdBLYP
	ocYOHBrtL9tEkf1MIzJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSoE0-0006cf-Pc; Thu, 07 Nov 2019 20:17:48 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSoDN-0006A2-Lm
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 20:17:11 +0000
Received: by mail-wr1-x444.google.com with SMTP id p4so4532683wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 12:17:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XNzt41YFZXyjsZpmoGDLsT4RfyC5Nwv0mUPlwLSX3bc=;
 b=UFalviU5DBTJfeFlbgiXyKOOr8N39C5EfK0S6coDUDS4tX8kAJ82CKlLG4/oQ5o0Oe
 A4uD60QFotjVwh/qG0AQiBXrmKKUC+gzfywVxe2cD9w8p+emBNbjkwhjc61BM8yX/jfG
 KsuqDzqfQxw1iuBgreTOxGEqCrhyWycHR/MPWh6qrv5do8cE4PJF5GovN8kTmraQL7sm
 IlD6Eoun/OExoYx4vk8PzmVZa/pQEdKLfaPXp+Lgpcpoi6pkOy8ZSST+2UT+DcqxA47l
 hRw5Vv1itAUzv//y28UozrXF4yxXGwHiGOVr1ltN4KIrrHVJNAL7xyUY/Vczkdh8FJ5J
 VPpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XNzt41YFZXyjsZpmoGDLsT4RfyC5Nwv0mUPlwLSX3bc=;
 b=uF2w1H/zFif1O7m6UAqH8I0iBBna0To7A2JxfECXORUSh02+FyYXlSjvUBn3xsZAN/
 XD/gqMW5+ey3NXcevK02fckVDQ6ZdyV89Xy65ebzhzio3G59j3vJ1KZD/yR5Cv/oc0ff
 q8CVa7Lpo8DeaZupoTI6KtlRJfX7/O4ozP77HrgHMadkvM0Ih8w8gaedZ+f8Be/PJBhp
 sv0+GAT3niXqtc/iNBUx9AbFbxjzZF1Y6B3Ey16pSmClzl5gfCMRW5XQAtjPnpv+9pAM
 8AzexPMbhL8KTERLYdwLz0crw8nDnJL7cuwQbbhHRzB88aCJ0fS+qZZwY20WerVqvGGx
 y6dA==
X-Gm-Message-State: APjAAAU/5LtXGoOiafM0PRQur+croiiC7QBXVb9IXPD1T+Gsaedfek9O
 jfzxeOiZrqIZXsRhW9+oNWxEYA==
X-Google-Smtp-Source: APXvYqxVUNWlPOOt3bFH9N90uImbfbh5nOhmdyu9PeF7oFMBWFpxonLriEOHbnLlemth0Zl314fKDA==
X-Received: by 2002:a5d:6b0e:: with SMTP id v14mr4691904wrw.280.1573157828385; 
 Thu, 07 Nov 2019 12:17:08 -0800 (PST)
Received: from localhost.localdomain ([95.147.198.88])
 by smtp.gmail.com with ESMTPSA id d11sm3215162wrn.28.2019.11.07.12.17.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 12:17:07 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@google.com
Subject: [PATCH 03/10] mac80211: mesh: fix RCU warning
Date: Thu,  7 Nov 2019 20:16:55 +0000
Message-Id: <20191107201702.27023-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191107201702.27023-1-lee.jones@linaro.org>
References: <20191107201702.27023-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_121709_707657_920460EA 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Johannes Berg <johannes.berg@intel.com>,
 linux-kernel@vger.kernel.org, Thomas Pedersen <thomas@eero.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thomas Pedersen <thomas@eero.com>

[ Upstream commit 551842446ed695641a00782cd118cbb064a416a1 ]

ifmsh->csa is an RCU-protected pointer. The writer context
in ieee80211_mesh_finish_csa() is already mutually
exclusive with wdev->sdata.mtx, but the RCU checker did
not know this. Use rcu_dereference_protected() to avoid a
warning.

fixes the following warning:

[   12.519089] =============================
[   12.520042] WARNING: suspicious RCU usage
[   12.520652] 5.1.0-rc7-wt+ #16 Tainted: G        W
[   12.521409] -----------------------------
[   12.521972] net/mac80211/mesh.c:1223 suspicious rcu_dereference_check() usage!
[   12.522928] other info that might help us debug this:
[   12.523984] rcu_scheduler_active = 2, debug_locks = 1
[   12.524855] 5 locks held by kworker/u8:2/152:
[   12.525438]  #0: 00000000057be08c ((wq_completion)phy0){+.+.}, at: process_one_work+0x1a2/0x620
[   12.526607]  #1: 0000000059c6b07a ((work_completion)(&sdata->csa_finalize_work)){+.+.}, at: process_one_work+0x1a2/0x620
[   12.528001]  #2: 00000000f184ba7d (&wdev->mtx){+.+.}, at: ieee80211_csa_finalize_work+0x2f/0x90
[   12.529116]  #3: 00000000831a1f54 (&local->mtx){+.+.}, at: ieee80211_csa_finalize_work+0x47/0x90
[   12.530233]  #4: 00000000fd06f988 (&local->chanctx_mtx){+.+.}, at: ieee80211_csa_finalize_work+0x51/0x90

Signed-off-by: Thomas Pedersen <thomas@eero.com>
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Change-Id: I19313f756382b0078683036d50c6645dd8ab2bee
---
 net/mac80211/mesh.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/net/mac80211/mesh.c b/net/mac80211/mesh.c
index a70c970a743a..06189c952291 100644
--- a/net/mac80211/mesh.c
+++ b/net/mac80211/mesh.c
@@ -1062,7 +1062,8 @@ int ieee80211_mesh_finish_csa(struct ieee80211_sub_if_data *sdata)
 	ifmsh->chsw_ttl = 0;
 
 	/* Remove the CSA and MCSP elements from the beacon */
-	tmp_csa_settings = rcu_dereference(ifmsh->csa);
+	tmp_csa_settings = rcu_dereference_protected(ifmsh->csa,
+					    lockdep_is_held(&sdata->wdev.mtx));
 	RCU_INIT_POINTER(ifmsh->csa, NULL);
 	if (tmp_csa_settings)
 		kfree_rcu(tmp_csa_settings, rcu_head);
@@ -1084,6 +1085,8 @@ int ieee80211_mesh_csa_beacon(struct ieee80211_sub_if_data *sdata,
 	struct mesh_csa_settings *tmp_csa_settings;
 	int ret = 0;
 
+	lockdep_assert_held(&sdata->wdev.mtx);
+
 	tmp_csa_settings = kmalloc(sizeof(*tmp_csa_settings),
 				   GFP_ATOMIC);
 	if (!tmp_csa_settings)
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
