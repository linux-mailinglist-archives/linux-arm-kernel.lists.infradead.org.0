Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F82F1A2D63
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 03:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=988lFjqVyDIZo+IbHOlhB+RBoNjeFjHLoWSxwnmZyiE=; b=aMFjhFJXqZK6Tn
	7RmhpfkNTM9nM1BSlte4A0oK8J2ztkwbh2i4tr7RNokstJwAtG57xBkaMl7WGomrQpK66kBAPbuEj
	tGlY0GbtbluKLu2mvRivsEdZ1prDp10VFeJ8fHiMSnoYxokHcCqcHOHfMJHndTS7eyZzwsmiGlelJ
	OCDfePC+NpSpDtPc+U66nQg19Frr95uyNNYXlOXxlxqCFhRum6TgWqJwt7v5HZkKx2NSmcaAwshPB
	6ajQeYNuHg4FgNpQyZF3oiNEimi7PRAVIuiMfjSpHUpF0VG4Iulw8REUZLbPpWlmxYQcUr4mxg7ny
	tuVj2Kae6imF+ON27xNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMMB3-0002nt-DR; Thu, 09 Apr 2020 01:40:21 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMMAZ-0002gc-3Z
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 01:39:52 +0000
Received: by mail-il1-f195.google.com with SMTP id t10so3579962iln.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 18:39:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ewtCInM8nEmpSAWUn/DBqIFeJ4ym9ptgX8O4ZJLIHVQ=;
 b=RCL8Pn/xbx+8EmDyZYGFjufZKlgYR6mBBuLzJH1oM+odTnJbDDZ/XSn/yCBHWkIVP7
 LZf9WskR1d1FakNdzEKBhPbgpR6FV1jB1W5K59agIT9duFoiiHBODCXTSg/b8GaNtv0r
 qTloBmfcv4Ox/yZ1h5Yjr+URpw1v+mlh98J09F5moGm8YTNa4fAPM0KHqJNK15c/dPD+
 +qJnqjhT86aLMhAbfJVQWKglQLp6re8wqNk85xZcEtD6r0pZG4znu8ue3G+0KEnwyHog
 3G0YqiyS03FpZpYNFMHGT5dkn1S+XrEBfMD+s1hjzq/LwNr67/p9U3WkZ5ccCRjZsIKp
 LYMA==
X-Gm-Message-State: AGi0Pubzs0WteGLkvUUimmsPOi/DJ0TDit5mAcTzOmN2i1+NI6KVS3Sx
 aUyR3l2lvm9kmB4NHdlrvg==
X-Google-Smtp-Source: APiQypKR0YMwJyuExe/Sh5V0CyqboiDCKQmvfWo8ABSu6tyJC6F2R56d50RjeC+lCnc7SS28BjaYYw==
X-Received: by 2002:a92:c00c:: with SMTP id q12mr10752599ild.125.1586396390238; 
 Wed, 08 Apr 2020 18:39:50 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.248])
 by smtp.googlemail.com with ESMTPSA id b5sm2353026ilf.23.2020.04.08.18.39.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 18:39:49 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Eric Anholt <eric@anholt.net>
Subject: [PATCH 1/3] drm: pl111: Fix module autoloading
Date: Wed,  8 Apr 2020 19:39:45 -0600
Message-Id: <20200409013947.12667-2-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200409013947.12667-1-robh@kernel.org>
References: <20200409013947.12667-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_183951_140653_3AC66041 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a missing MODULE_DEVICE_TABLE entry to fix module autoloading.

Cc: Eric Anholt <eric@anholt.net>
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/gpu/drm/pl111/pl111_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/pl111/pl111_drv.c b/drivers/gpu/drm/pl111/pl111_drv.c
index aa8aa8d9e405..7f405b1374c2 100644
--- a/drivers/gpu/drm/pl111/pl111_drv.c
+++ b/drivers/gpu/drm/pl111/pl111_drv.c
@@ -444,6 +444,7 @@ static const struct amba_id pl111_id_table[] = {
 	},
 	{0, 0},
 };
+MODULE_DEVICE_TABLE(amba, pl111_id_table);
 
 static struct amba_driver pl111_amba_driver __maybe_unused = {
 	.drv = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
