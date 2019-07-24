Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6677316F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 16:18:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xoWTQC5116rrj0LIeWFK+n0e546OR9Sn1wok6q76fTU=; b=nMpkw9/xmD+/bhyNkvuG82NhtF
	+kAxI2sM5tcOSavHmAJ3BtaN04li8+mhcZ5D5ASrd+clhhRtjWs+wUkl3rKuv/3tQ8arOn8D57ze6
	s/RtNco6qMjhiGKTar84UFtAh+Z3UnywrmDZFvYQDS6J1a665gdWP0SQ+Uezj1mgD8iELhPi9fktT
	O31poxSi+tdvoidKvQYvCdL42jlpL/BO1/yjzIgTNm9cQy43gVqOUHS1Jw1pC26kCogfydoSSQWM2
	aLJQnxz5UWGtr8hQlfpZFuPyWncfQukyWSCIztVefBS1sHHaAWG9NAEc/KEYdqcjv60sP+Sx+bDJR
	p0rHclJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqI5l-0006og-1i; Wed, 24 Jul 2019 14:18:05 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqI5c-0006oJ-1Z; Wed, 24 Jul 2019 14:17:57 +0000
Received: by mail-io1-xd42.google.com with SMTP id h6so3365645iom.7;
 Wed, 24 Jul 2019 07:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pl9nO+hunkGocGh4P+3+7RACb7n3AOCHKdRk3PRyj78=;
 b=d+XNfrK6cC2Wn6gvabfhUWgJIeVpcGO/Uu6+pC4RCQJKyw8+NBSwGR+cTC1MJoLo9U
 4Bvz3/JgJ93WJZHfxWtpb2r4Os/qZFoXxSYw3p6B+r0VnCJ5SjW7ijFZh9F9rIxVWChe
 1YId1MFsU/1UthPqnat5tRtc6PS+q3PhlR2GoZC8hu/oMgMA8+5rwLD9B9YLZHqe1zrk
 KEZfQasCdQdlIbaNNOXHSkTc3gPNsVq5Kc1MDosgLPKRBrKNBcHAEUwZIHHh/7gkQNg1
 Ap20T3173w8lr1Au0OGiB7k0bVRE+A91zvqCi0Pm3+tsgrshgEtOcxHtklEsIWDwxsaV
 BSuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pl9nO+hunkGocGh4P+3+7RACb7n3AOCHKdRk3PRyj78=;
 b=EoK46mry/kQtBLWA8YweL9d7UttemctMJUZsN+Mvy8hUJY/1Omg7hoBgqzCQJmNqsA
 CJUMEAjYfQOuN8Yi4TU7zPn2Oja7cepBFwxGjFrRmjDhRB1CltX6x0TBfFXlS28O2wM2
 Q+LVqp6O5Gxq4UstebGaZA0bMlneEjmCAmOf/skDG7QAF1G3DUA1SY85zRwxWz/bgO2a
 VarBeLzHUjPmYIpETm/J8zBpqhC0BN5acmhoO5VhmUPSvyu8cyXbseI1Y3slQT65podM
 /5cTjM9lrHPovAAerwgNHTQ320y67kr0hxPiKvT/RNzn0SP3YG9LALKAXguLLTPgNCC+
 YIHA==
X-Gm-Message-State: APjAAAVHhoJ6soSa7766KLyqVlLhoizHY5pcR4ogqzXi9pjiVXDlgD+2
 kqShvttCXYBWvBaMqw+lh5E=
X-Google-Smtp-Source: APXvYqz9OF+x2WTGlu/HH4W5NyZIEwxfrCRlfhLTUcbrr1zQuVHHj1E9ruPCRHw4aSTh73+cpex+cg==
X-Received: by 2002:a02:6016:: with SMTP id i22mr60556184jac.56.1563977874678; 
 Wed, 24 Jul 2019 07:17:54 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id p25sm37377171iol.48.2019.07.24.07.17.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 07:17:53 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: kvalo@codeaurora.org
Subject: [PATCH] mt7601u: null check the allocation
Date: Wed, 24 Jul 2019 09:17:36 -0500
Message-Id: <20190724141736.29994-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <87d0i00z4t.fsf@kamboji.qca.qualcomm.com>
References: <87d0i00z4t.fsf@kamboji.qca.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_071756_083693_107F716E 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: secalert@redhat.com, Jakub Kicinski <kubakici@wp.pl>,
 linux-wireless@vger.kernel.org, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 emamd001@umn.edu, linux-mediatek@lists.infradead.org, smccaman@umn.edu,
 Matthias Brugger <matthias.bgg@gmail.com>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_kzalloc may fail and return NULL. So the null check is needed.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/net/wireless/mediatek/mt7601u/init.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/wireless/mediatek/mt7601u/init.c b/drivers/net/wireless/mediatek/mt7601u/init.c
index 9bfac9f1d47f..cada48800928 100644
--- a/drivers/net/wireless/mediatek/mt7601u/init.c
+++ b/drivers/net/wireless/mediatek/mt7601u/init.c
@@ -557,6 +557,9 @@ mt76_init_sband_2g(struct mt7601u_dev *dev)
 {
 	dev->sband_2g = devm_kzalloc(dev->dev, sizeof(*dev->sband_2g),
 				     GFP_KERNEL);
+	if (!dev->sband_2g)
+		return -ENOMEM;
+
 	dev->hw->wiphy->bands[NL80211_BAND_2GHZ] = dev->sband_2g;
 
 	WARN_ON(dev->ee->reg.start - 1 + dev->ee->reg.num >
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
