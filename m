Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AA31274F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 06:14:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rIJwzKZ2I0mJopdOYCTWfLux4az+k6jqhLjx/38nkbc=; b=Ftc
	TU/DgLJRFjbr8KPLnv/cjfW2Mu7sAPqvYHZGYrfmydR8KfvLZ+k2JUs4WxdPjRB9n/DIEZxfEFDRw
	biVKOz6RV3gbNyWoMDnKHUXu5hibCX804jJQK9SupTSUwJDdj/yMTxzG4ROLEDfKL/mNBdEZX93MG
	WCHzAqJwqW0iTRhILBmkNGTFeJkfZCrfvp3b17tQ++GFaqPjQ4Dj+KaaDBHISZKaet6pzqR3nRBBt
	itaQ0clwICbiOlkX4CMz6RnosPow9eCCw0WRU7xCs6NHnIvNxb8qgIyhefP43IxEpb0vckWts07tt
	iWhQx/HsPs8foBtlyCRx9GLHQ6cSMKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiAbw-0003Jz-SZ; Fri, 20 Dec 2019 05:14:00 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiAbn-0003JC-ON
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 05:13:54 +0000
Received: by mail-pf1-x441.google.com with SMTP id p14so4552116pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 21:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hyderabad.bits-pilani.ac.in; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=AN2HMEtlZTloepEi5WkVWopj4fyZSohv3ayMSlIeay4=;
 b=I37Cxop3XVLom5KaUjtRT9nkiC3GmgyAAzNglVIapUz6MdJhlDwYh21m/P3IqS+4rE
 iSPINhKy9V3y8EL7JU/eNypehC+3SkBUzQiB5mIQ9Iis+wTH8oh9kQ3YkYXDfE6/sPMn
 FiOF1HYBfjiUtYMY7Xe8d127uBPBTCK57TE2o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AN2HMEtlZTloepEi5WkVWopj4fyZSohv3ayMSlIeay4=;
 b=mFR1BrWkUEKqc6qtqqARknONrCe4tuJGlMN1xg55M2GaGmoqWfd2vg2lYhn0sBdCLN
 xKKpBOaySGJp7WG8AhLg0ZHXoyfcwVhXGhhW6QgxSJYNm8yWU4qutChfVRLLk9iysnHx
 saev6rTWVbTUtlohnQzVqI1jp9gAY+vN7JN/gYVlC7Qpi8SjJJgMg1+zecekAP/FeXeZ
 WeZbQ7Ga6Bns+hE2lnUGJyU5k1DVYI9XR3syDXa4dVRZTLt6Z3PrgS8pGhmBS3WywNbT
 Zy6sHIHo9p39RdfDM16qCxTcX5DRrijzvbUpQyp2D2cSJ0XQBOyGMZxmg8gpBfqQUYfI
 znJg==
X-Gm-Message-State: APjAAAXDaXmYOXFXr5Z6jS9pkSsFePaORREt378ad2Di+zrAhY0n7Fe0
 8R2dWASXYEqVleGYL1lk+Bi3Hw==
X-Google-Smtp-Source: APXvYqyFC7v9pOL0HKiSr0GhKQ8OZP5IbpItcaRPoMZU59n7C9qkC0YYaTU1HZuHWXyxOQNOHwUSrA==
X-Received: by 2002:aa7:81cc:: with SMTP id c12mr14012804pfn.143.1576818830384; 
 Thu, 19 Dec 2019 21:13:50 -0800 (PST)
Received: from localhost.localdomain ([106.210.66.249])
 by smtp.googlemail.com with ESMTPSA id r37sm7409264pjb.7.2019.12.19.21.13.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 21:13:49 -0800 (PST)
From: Simran Sandhu <f20171454@hyderabad.bits-pilani.ac.in>
To: nsaenzjulienne@suse.de
Subject: [PATCH 4/4] Staging: vc04_services: Fix checkpatch.pl error
Date: Fri, 20 Dec 2019 10:44:14 +0530
Message-Id: <20191220051414.6484-1-f20171454@hyderabad.bits-pilani.ac.in>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_211352_881674_BFA605D6 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com, sbranden@broadcom.com,
 tiwai@suse.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net, rjui@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CHECKPATH ERROR: Alignment should match open parenthesis was fixed by entroducing tabs and spaces on the location
drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c:349

Signed-off-by: Simran Sandhu <f20171454@hyderabad.bits-pilani.ac.in>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
index 33485184a98a..c3ce6796abce 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
@@ -346,7 +346,7 @@ int snd_bcm2835_new_pcm(struct bcm2835_chip *chip, const char *name,
 			&snd_bcm2835_playback_ops);
 
 	snd_pcm_set_managed_buffer_all(pcm, SNDRV_DMA_TYPE_DEV,
-		chip->card->dev, 128 * 1024, 128 * 1024);
+				       chip->card->dev, 128 * 1024, 128 * 1024);
 
 	if (spdif)
 		chip->pcm_spdif = pcm;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
