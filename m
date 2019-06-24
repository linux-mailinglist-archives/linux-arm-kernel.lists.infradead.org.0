Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C14D50F28
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:52:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	References:Date:Subject:To:From:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=OBN6c8VyAH8L5UYrADoIAsIX4e0L2iRGRibCebbVqjg=; b=hAWNyrTkiLWSzI
	eZbn0J7DA3AflNPejUc12sncdEj0tLmdswodCGZIwtUodWGdHHCt5GO3f2VBTCPJiah5yEM3CDWs/
	ACijN5xba6uXt11MnXXUp4s3UQNSAoVK/rLQGarzQsPwLDWymzsOo1ZGoooHEKdETjzcnTXH9Uh7V
	YSwuFw4R6Y9fgxNqmuhE9/xOQvONXzdVR8rLEhkZPuLY+IkaS1sOZkTeKBcEfsFQMZTxzH9aE3/gW
	QSOFuiJLmvgR9VKYCu7L+iXWgF4B2jVTXEJfIPAKPxpkxo3Vz3eCXUKB6oyQDuDHn/QF/GvOCbxH5
	qX/8GgJ5J2dtAeL0TAkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQKP-0003XB-Ku; Mon, 24 Jun 2019 14:52:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQHZ-0008TW-8X
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:49:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id f17so13695558wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:references:reply-to:message-id:mime-version;
 bh=qICt3tvrDEjsshgOgeqB9NCEtKIKhDes2GEOtGUCIpo=;
 b=mnrc7AJREizTtyko4LB8qv6Cg5B7WxC4INlkHs9Ks4iSd2+apictmURS40KuI0t5Tn
 IB2Vnf/t+LVnP+tv1JvqK0FMsszntab9bsBVDhaq6iH/5dr9u7y6ngMLni2/8v8/KD3I
 1RNcMErB5MGZrpdrKROpddh54ZDHRNg8rOMycQTJexvvjS09bSP+7duvAXFZuxYnmwGn
 Wpgf31NfM9CwuosNa95m1z+0d2TNHFTO5beH//s/fat/KCaC+gG8C9eFd8v7zvt8OC3u
 asoDvcItzT1/rBmW1y+Ab6G7mIjNAxdR7PXNNpiCVmsN1jFfPqU98sGJajv6Icl+rVEt
 2jCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:references:reply-to
 :message-id:mime-version;
 bh=qICt3tvrDEjsshgOgeqB9NCEtKIKhDes2GEOtGUCIpo=;
 b=e2OkFnMdatixrv1BWoKXvuW2yDHHs8a2/UE01e5pO8Um+Sgg2OnGlA5E5TdH+l5VQ3
 Hk+sUTmKjPi/Mjlc+k2/5URLC/5DCaoNxwAhZDfh8o9YroK/dxsScgidApes++HAQUan
 4fzn+oBECSd5By/VZtZLFcotQx2B4QFBIAr72+Ws02ecLdlm5zsPNZLhiYNaXVIYm/o3
 /XSAirAbmTOi0dxODlg6M9UuantwDBKrvry0rjN/0XS0cx3amCCxzo8AqeI6XoKnEy+/
 Zr/cAFCrNEMqcVyDoggjC0uARARffdu+E/+3RbBtw1mj2g+MRbVMKw6SEGZtnBwsfn/j
 oyHA==
X-Gm-Message-State: APjAAAU/5z9npXIXDw8Yw05yZplZVVFe5bCgZkXtT8vLsk2F+yj7dxfw
 SpicwTEY29d6Uxy2K9lLhlgdHw==
X-Google-Smtp-Source: APXvYqyo+n4FXVEBememSCgVf3nyfXvEm0+s6OodWbZ0mTPQMuiNLuOddy70bQx8iLDOUizpxuJGKg==
X-Received: by 2002:a1c:cc0d:: with SMTP id h13mr15799778wmb.119.1561387759831; 
 Mon, 24 Jun 2019 07:49:19 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t63sm11204083wmt.6.2019.06.24.07.49.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 07:49:19 -0700 (PDT)
From: Julien Masson <jmasson@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 9/9] drm: meson: venc: set the correct macrovision max
 amplitude value
Date: Mon, 24 Jun 2019 16:49:12 +0200
References: <86zhm782g5.fsf@baylibre.com>
Message-ID: <86mui782dt.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_074921_445450_4AAFF13C 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: 86zhm782g5.fsf@baylibre.com
Cc: Julien Masson <jmasson@baylibre.com>, linux-amlogic@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the register description of ENCI_MACV_MAX_AMP, the
macrovision max amplitude value should be:
- hdmi 480i => 0xb
- hdmi 576i => 0x7

The max value is 0x7ff (10 bits).

Signed-off-by: Julien Masson <jmasson@baylibre.com>
---
 drivers/gpu/drm/meson/meson_venc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_venc.c b/drivers/gpu/drm/meson/meson_venc.c
index 2835133ab676..acad16ff7371 100644
--- a/drivers/gpu/drm/meson/meson_venc.c
+++ b/drivers/gpu/drm/meson/meson_venc.c
@@ -192,7 +192,7 @@ union meson_hdmi_venc_mode meson_hdmi_enci_mode_480i = {
 		.hso_end = 129,
 		.vso_even = 3,
 		.vso_odd = 260,
-		.macv_max_amp = 0x810b,
+		.macv_max_amp = 0xb,
 		.video_prog_mode = 0xf0,
 		.video_mode = 0x8,
 		.sch_adjust = 0x20,
@@ -212,7 +212,7 @@ union meson_hdmi_venc_mode meson_hdmi_enci_mode_576i = {
 		.hso_end = 129,
 		.vso_even = 3,
 		.vso_odd = 260,
-		.macv_max_amp = 8107,
+		.macv_max_amp = 0x7,
 		.video_prog_mode = 0xff,
 		.video_mode = 0x13,
 		.sch_adjust = 0x28,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
