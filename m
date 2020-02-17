Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 662E216088A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:17:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWtO78WYUylmIcOUEajg9KAnVGPwQ/aT1USrmZEZ7v8=; b=VQRQsd06nqFsrZ
	mTzoXaMYEvvJXGhbeNpf5z6Xs9Z0pKALnQ/z87u4kD5qwTwkObNVEnNARXYHVrQ+MtXERvWUCwbzB
	90cbexx2BfisHVBa2TaNA2amNIcPyoIKYmhYNvAQDlVhaqhoiz5/tyS/9c/Zthfde8sXaJBwAM1G/
	OuoOrKQ9PZL95xCWCE3WrLdsjbhSgLKjk9xfW9sN1S32gVGqJ4hzLpVi6EhobYTVjDMBCoX38e3pn
	E0mzI1lCd7l2iAbEXs2zablmrUvVsr2ZqpZ54Ov+xHsYnneiisrcfesRuQj7pSiY1SMpChNuddpQP
	niAjNNIGd3LAobTJQZYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3WuX-0002tY-Dg; Mon, 17 Feb 2020 03:17:29 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3WuB-0002iJ-80
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:17:08 +0000
Received: by mail-pg1-x54a.google.com with SMTP id h14so7141399pgd.15
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 19:17:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=WyY8AR/W9Xhoq+FoZI+JwslnVAFfNuC6P4tiCJpqlNM=;
 b=XM+8y09NmdcBqI5tENuyJPgoZPkNcFlWhBEVm/VyNB+qqCVUPFfySf1XAX9fcSBAQN
 eoRDs7U0lYvGlwNkmFXyFzeq6BdniLjOJdL8ITVb/+H3yghkqT+ZlpKBIGI884IyFMKE
 W+qoM4sYK9ncnSBM1vyoFvhdPR3Y+wXyKIsptwL6L4IBBER1s29g3hi9t7du2SiwtH9a
 ihemetgpwqoBtq8J7DqYEER4KfPtAMXdRYwRUdSF3OwK5AHiXTqky3ZK0LAlUctdGYFs
 xmKWCss+5sKWOwC/dkSf/EEGUoIDUZOJFRfZNiJ+iincRUpl9wM1x5EGjizutSP0ABkC
 De8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=WyY8AR/W9Xhoq+FoZI+JwslnVAFfNuC6P4tiCJpqlNM=;
 b=Std9h29wQS1Qz2DxRWgXiH3vjihlz69lZLXHivqUYPdzzHIh+TjsSjo/GibBEcCvo0
 E2sGEb3qhOKSNQmKFTNRE0JD61rs0PDaxCDinnvQ3s6JKb9QBg97C7NmgZOmYFT8RUQF
 ZNAB3W9jRqwdimSOSA98GS1xxx0Sz5FC0pyjOQRBf5bIgVOWLJ7jSiME25Le/eHADDsn
 v4og+dVc3u1VQ5vnRNuqh0WD2A0atFqGe1H+RrzzN16RzUbQta7sCVn73VnJ5peGge+O
 4OvuxsOX6SS/rwOhno4zbADK1BMMm3sImzYiUMWFKdVzXC6+NFKW/tMAD4Zlrxw5lAJN
 A/aQ==
X-Gm-Message-State: APjAAAVv92918D8oMyldDUIsf4PsyhoDQENKG0VeGCNYlhARzARC2pyT
 GpBzytru2A8CWxktMGI0kbHqbnHLBtaN
X-Google-Smtp-Source: APXvYqyaA0c4C3Cy5dT8KODvRZRHXgVJd5DJOU44ArgLhO1/lknUXh2t3cF80g4vSNUWgNRWhTevS8xJmETl
X-Received: by 2002:a63:ac46:: with SMTP id z6mr13808575pgn.301.1581909425929; 
 Sun, 16 Feb 2020 19:17:05 -0800 (PST)
Date: Mon, 17 Feb 2020 11:16:52 +0800
In-Reply-To: <20200217031653.52345-1-tzungbi@google.com>
Message-Id: <20200217105513.1.Icc323daaf71ad02f191fd8d91136b01b61eca5e3@changeid>
Mime-Version: 1.0
References: <20200217031653.52345-1-tzungbi@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v2 1/2] ASoC: hdmi-codec: set plugged_cb to NULL when
 component removing
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_191707_283268_17647845 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: alsa-devel@alsa-project.org, cychiang@google.com, tzungbi@google.com,
 dri-devel@lists.freedesktop.org, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, p.zabel@pengutronix.de,
 matthias.bgg@gmail.com, dgreid@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sets plugged_cb to NULL when component removing to notify its consumers
: no further plugged status report is required.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 sound/soc/codecs/hdmi-codec.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/sound/soc/codecs/hdmi-codec.c b/sound/soc/codecs/hdmi-codec.c
index 444cc4e3374e..f005751da2cc 100644
--- a/sound/soc/codecs/hdmi-codec.c
+++ b/sound/soc/codecs/hdmi-codec.c
@@ -779,7 +779,17 @@ static int hdmi_of_xlate_dai_id(struct snd_soc_component *component,
 	return ret;
 }
 
+static void hdmi_remove(struct snd_soc_component *component)
+{
+	struct hdmi_codec_priv *hcp = snd_soc_component_get_drvdata(component);
+
+	if (hcp->hcd.ops->hook_plugged_cb)
+		hcp->hcd.ops->hook_plugged_cb(component->dev->parent,
+					      hcp->hcd.data, NULL, NULL);
+}
+
 static const struct snd_soc_component_driver hdmi_driver = {
+	.remove			= hdmi_remove,
 	.dapm_widgets		= hdmi_widgets,
 	.num_dapm_widgets	= ARRAY_SIZE(hdmi_widgets),
 	.of_xlate_dai_id	= hdmi_of_xlate_dai_id,
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
