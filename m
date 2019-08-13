Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C548B458
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 11:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ip1fjWh47g0i9m2MDiEUHMyHaNxsccHqbkr+LIF8DRg=; b=d3aibGk9nC3pzN
	7v1UPWGz/WsA5H9bgeCQ2cnUn9cFfn6xwLp+1nmz+RAtNadK8LAE59sCOW2doks+/jC4UP9v9nNM/
	L8yN4QIs8h4yO0I8erh4GtGK17eGJCSieJkmXnCHnPgwTP+EycZbIAXdkGLPqd+CNwXRyiDklDtBa
	kHeHkOaaD49GEkIVsR+Ms5bwoRODbFu4yENSvQSEgkqHjkIbU9sc9gq06Bi1sYWKZHw5/Tex+Oy8t
	Yj1zHwLhMewiH+ILd6ujtXM4Ny2Nsq/gVOPFSDGtEhBkkIo32rJ+bMUNEGwPf2aVlNgWGfJTUo0xX
	h7DxWKSiwx7soLTulLOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTGO-0005Rn-5z; Tue, 13 Aug 2019 09:38:44 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTGA-0005RR-4v
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 09:38:31 +0000
Received: by mail-pf1-x441.google.com with SMTP id v12so3494823pfn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 02:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RaD6A+K4/8jdvOIsXluiNkAgL7M1+kFjGExIzAUXUW8=;
 b=P9qJfWwQxPZfidskchVBFJ6nzdSG06wa9bYO4Ka8Z3FpbaIb/pOM0nWavs1Rp0cmwE
 avzBz1VE8gXB7z8yFrZriS82QzSv0+jDDzi0wloLQEWVaq4cFhu7k0W3SFCupnzo7Awb
 ok5s05HaN62VYRuFe331qpIqNLxTOiLF3gKl4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RaD6A+K4/8jdvOIsXluiNkAgL7M1+kFjGExIzAUXUW8=;
 b=UqKWOWaigVhBIp5a/t4KGZlERiU9D5XTrS98d5vehCikjBT/sMWsHjgiipu+WeGBIp
 BhEQRfH4+FcL9sc27bLz5Pn6VkqQtdpE6zLsrTOf4OUfbfkj3ZFWRJO+6EdQUMazk7h2
 AetAP86O8ouVnksl+C3BGPB1Dj3M2OvJXP47dBP8t4lKUHkO9YYyUVQ4JrSx4yNpuaQe
 b7IiY35g+VSp267c9e7XAkwyGRTvhM9VyHkZfseOGEkrwfqM+9E+qnOLODNLwXbPap02
 JBKCFUQuUiMfjLjSIFhQvO2ML81pEheDW+WiVQCYM7iXMbAz5vU9P9YawhEaqEbK14Dv
 bESQ==
X-Gm-Message-State: APjAAAWiQ8nZR51oqNjTQhy3tXzdINzxgwSnz/N476Sf5K7wMSuEEO3G
 BBAjpTjIurtcENezdHCRFM+qGjrNn1QmIQ==
X-Google-Smtp-Source: APXvYqy+sJLrmolDFV0o4Mz+fxfscm7CXTjw8yiXTupKIB8qVuUNk3Kz27oocXNCPBU7aDi5xwq5dA==
X-Received: by 2002:a17:90a:be06:: with SMTP id
 a6mr1383491pjs.92.1565689108872; 
 Tue, 13 Aug 2019 02:38:28 -0700 (PDT)
Received: from fshao-glinux.tpe.corp.google.com
 ([2401:fa00:1:10:c4f0:9345:d0e8:a355])
 by smtp.gmail.com with ESMTPSA id d2sm993283pjs.21.2019.08.13.02.38.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 02:38:28 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] Input: cros_ec_keyb: Add back missing mask for event_type
Date: Tue, 13 Aug 2019 17:38:21 +0800
Message-Id: <20190813093821.74158-1-fshao@chromium.org>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_023830_216523_01BAFFD2 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Brian Norris <briannorris@chromium.org>, Fei Shao <fshao@chromium.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Ting Shen <phoenixshen@chromium.org>, Guenter Roeck <groeck@chromium.org>,
 linux-input@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Benson Leung <bleung@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the previous patch we didn't mask out event_type in case statement,
so switches are always picked instead of buttons, which results in
ChromeOS devices misbehaving when power button is pressed.
This patch adds back the missing mask.

Fixes: d096aa3eb604 ("Input: cros_ec_keyb: mask out extra flags in event_type")
Signed-off-by: Fei Shao <fshao@chromium.org>
---
 drivers/input/keyboard/cros_ec_keyb.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/input/keyboard/cros_ec_keyb.c b/drivers/input/keyboard/cros_ec_keyb.c
index 38cb6d82d8fe..bef7bee6f05e 100644
--- a/drivers/input/keyboard/cros_ec_keyb.c
+++ b/drivers/input/keyboard/cros_ec_keyb.c
@@ -226,6 +226,8 @@ static int cros_ec_keyb_work(struct notifier_block *nb,
 {
 	struct cros_ec_keyb *ckdev = container_of(nb, struct cros_ec_keyb,
 						  notifier);
+	uint8_t mkbp_event_type = ckdev->ec->event_data.event_type &
+				  EC_MKBP_EVENT_TYPE_MASK;
 	u32 val;
 	unsigned int ev_type;

@@ -237,7 +239,7 @@ static int cros_ec_keyb_work(struct notifier_block *nb,
 	if (queued_during_suspend && !device_may_wakeup(ckdev->dev))
 		return NOTIFY_OK;

-	switch (ckdev->ec->event_data.event_type & EC_MKBP_EVENT_TYPE_MASK) {
+	switch (mkbp_event_type) {
 	case EC_MKBP_EVENT_KEY_MATRIX:
 		pm_wakeup_event(ckdev->dev, 0);

@@ -264,7 +266,7 @@ static int cros_ec_keyb_work(struct notifier_block *nb,
 	case EC_MKBP_EVENT_SWITCH:
 		pm_wakeup_event(ckdev->dev, 0);

-		if (ckdev->ec->event_data.event_type == EC_MKBP_EVENT_BUTTON) {
+		if (mkbp_event_type == EC_MKBP_EVENT_BUTTON) {
 			val = get_unaligned_le32(
 					&ckdev->ec->event_data.data.buttons);
 			ev_type = EV_KEY;
--
2.23.0.rc1.153.gdeed80330f-goog

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
