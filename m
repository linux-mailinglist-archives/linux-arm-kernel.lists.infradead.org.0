Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03C3D83F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rHkozSvpJqwNcfgPOZRrDSfdnKI619xxHDg98BKkpX4=; b=QLHickOF5BlkW3ibKE1qDiRsZT
	y5+Z3ZDLlRNiV15RbJlIyBHEhmU9ebmF8N8EQP9sc6ePMRmRzebuJIva9M8H2eidtCjQzPLCR90OL
	+efQ0t0Nyh/kOZD5mKUkdiWC+ayfGU/M+DYTOYcahojjTDR0dB0JQELOlVSzuZ8cmr9A0Mm62GgtA
	JZhh+927IOOFWV2CO7zOdElWdXkPK+kIsPE72Dkp+4t8kUDintyk/x6Xo4+bLZj1arJS7qsECL2sH
	ChL9akDWVOQ9b78UwixqFK/dsbYgZaSb/wTYYtShDoTOSBWkdQAIAVRF2fUDgMXvdRfNj9VyRg53e
	dHfEueRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVab-00046J-9G; Tue, 15 Oct 2019 22:46:49 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVZt-0003ln-HZ
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:46:07 +0000
Received: by mail-pl1-x643.google.com with SMTP id s17so10276585plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yhQWkXWNjNV9NCfLVkim7P+oXzCiBgFKHaj7Vfld3h0=;
 b=ebfL4NmRapRbv0ZmBKsvHFy1Qxvx9pIptJa62c02p3z9zOp4ABftnfHv4cWWRncyo8
 NmYzoq3cLdSf8tyZYsq9OQyIzOt3TZ0YPYsHlo2qVJSQ8P8M0yxMzG8Y4Og4kk4EahHp
 NQZKCiWSERfeFfNTH+PnCGfLuPbbNuYkAXG0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yhQWkXWNjNV9NCfLVkim7P+oXzCiBgFKHaj7Vfld3h0=;
 b=tGHMIj9DpGB5TJ9gCxMhonE0DmHzSzyHSy+PzUxuFOEtKMotMKdnheqJ5I3QXDOEuF
 NqGymWjOdjdAmhvnoKhWPRpjIHIUGreLMDsC6ehYOPTrkRXjgvlT78l2FrJaHoMGrSAt
 wxLGsXsvMs+k3Ccc4i2B15zm0EEpQ3GpfBnASDyccMvqltVpYpve70nlw65H6tLwsGBB
 JHYI49ec/Iw1e1wnwDsV608czdDGQwVBZd/PUaHE5KEtHHdZey8KGzCbLaR+kVTP/NMF
 GQ07rNn67RN7cojoSHnE/Oy1fnp9SIAnQ64ysOdiXGG/kCcwWcu4/IIsBNKzdAGJwVEe
 G2DQ==
X-Gm-Message-State: APjAAAVs3Rr3qmVyFeLzmGe3PsXncDJ2tdT6rZNbf86eXNmt2cvzp6D1
 xI9O0qO5Bnn7AaqEh8vZaVrs0g==
X-Google-Smtp-Source: APXvYqw7geQepjqZ2rTQCvplr5kCOtyuTtSaqnfAbFOW5tJtaaxxEaA3a/JQfnhfUpkFGETbQ2F2VQ==
X-Received: by 2002:a17:902:8bc4:: with SMTP id
 r4mr36236446plo.341.1571179564523; 
 Tue, 15 Oct 2019 15:46:04 -0700 (PDT)
Received: from lbrmn-mmayer.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id e127sm23019837pfe.37.2019.10.15.15.46.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:46:04 -0700 (PDT)
From: Markus Mayer <mmayer@broadcom.com>
To: Brian Norris <computersforpeace@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>
Subject: [PATCH 2/8] memory: brcmstb: dpfe: initialize priv->dev
Date: Tue, 15 Oct 2019 15:45:07 -0700
Message-Id: <20191015224513.16969-3-mmayer@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015224513.16969-1-mmayer@broadcom.com>
References: <20191015224513.16969-1-mmayer@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154605_592286_1EFB7585 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
 ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Markus Mayer <mmayer@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing initialization of priv->dev. It is only used in an
emergency error message that is very unlikely to ever occur, which is
how this has remained unnoticed.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/memory/brcmstb_dpfe.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/memory/brcmstb_dpfe.c b/drivers/memory/brcmstb_dpfe.c
index 0c4c01d2bf48..2ef3e365c1b5 100644
--- a/drivers/memory/brcmstb_dpfe.c
+++ b/drivers/memory/brcmstb_dpfe.c
@@ -817,6 +817,8 @@ static int brcmstb_dpfe_probe(struct platform_device *pdev)
 	if (!priv)
 		return -ENOMEM;
 
+	priv->dev = dev;
+
 	mutex_init(&priv->lock);
 	platform_set_drvdata(pdev, priv);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
