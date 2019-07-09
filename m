Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAC263B4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:42:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tFT9XXEg6YvYm3Bj/96okDBP/mRMoMs8flIQOGhTm5E=; b=AJkTYyR/7NHv2H
	kG7lxScF/Su+HwCCq71yVOaFQvc//4plTRXf50lxdkgqd3Fp8oIE+ZC3u03G9591uRZmWRIhntgDC
	J4NuL7kyzEUexQIQsCHle5YEgFTx4ruRLO/M5iAr7uala6JkygsgLpve6zhOFaT1ty7GjYZCGYqcT
	LXquNek7V+zD2NpjPWfMXbE7ShkiuzrpHDF+94mwl1AMNk4/6VEzU7j+fvvlYnrNXz/7IplyED+ST
	xAQxEpBFLuvXSO/0k8z6TckYY2s/dK4UF39+NwHx/O/B+IckswjUaz1Tf1ZcA3tm+HxQUxW/+gzv3
	KrVfiK1esq0EiARaIwQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkv4r-0004Yb-MH; Tue, 09 Jul 2019 18:42:57 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkv4f-0004XL-1V
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:42:48 +0000
Received: by mail-pl1-x644.google.com with SMTP id m9so6856626pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 11:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=YK8HnDW92D+ZcMeXZwEcU33SpTDrdHnDF8vDLTjwf5s=;
 b=kkB6qwlK4xX9daXzHcc9L1T4Mj6a6SO0VEC7YbpN2qEwk4FwZzherF440LW3iui/mu
 +kvX9cDmbK1vGjcozntltdcAVEjFRLjTc9XBKFRe1g2OCrklnm7Tvjp8Ncui4OsyOfGM
 +QqRYrmKTK/1esiT4f/+eVsQx5PoOj5zN+LgHQZ46SFk0W8MQRLd7R+HKaSFWYGnQ722
 XqleeeB3+8k5oSkgBONyzr7wRKwcphnvvgA++3vYtbbA20mDhQ9+J4AuGDLUYthlmlbX
 Ts48nyFv+28GaPMs5J9m24qpLGdsGlmwT2f8AYaLpwm4qCL8t8qruG7yQYD2FWJMwFc4
 Rk9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=YK8HnDW92D+ZcMeXZwEcU33SpTDrdHnDF8vDLTjwf5s=;
 b=DDFFsAu/sOptHVyF0zqrqERIw8LP8VTgxWYcTXY4uF6tLtnFy1zEd1/qWOUzbDma/2
 uYIOw7D3EuoIk2DV6MOHyBg9tLB6K/7oIrwiANei4/dCWSHub9OzDA3S4G6xW1UKUJBP
 Ib1btE8tM4GgSIcKfK0WexpCmfZxziLNW8Pdldl75L1GSqRIPSoKina3sbnW3Cs2aOOq
 sVaUVwcJ1FvCxN7ERsrL7ky2PzOz9EBQFe8e9hRib6V08HVTVQRgA03VOeJZfEhbcYkk
 CJDj3C5WvPoBaqKME0hghlQIt4HVMBCEJHH3WNyzJ4nz2q2RoyBhEfyvbyM5GzXc1WRe
 cE7g==
X-Gm-Message-State: APjAAAWNd0rV0NzAWeE9dUrI8lQJ/DnGwt9I5DOIa8UniA72y5aPOuh9
 9zkDcLWyPS3lWXFGk31zGwc=
X-Google-Smtp-Source: APXvYqxpoGHClqBhZvSk6c0AeV7usiTYaC08tEej11WUV8nOUh0tPg53DkAkDAcCGle8Vk2SkZT8JA==
X-Received: by 2002:a17:902:f095:: with SMTP id
 go21mr34549642plb.58.1562697763289; 
 Tue, 09 Jul 2019 11:42:43 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id l44sm3051428pje.29.2019.07.09.11.42.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 11:42:42 -0700 (PDT)
Date: Wed, 10 Jul 2019 00:12:37 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] sound: soc: bcm: cygnus-pcm: Unneeded variable: "ret".
Message-ID: <20190709184236.GA7873@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_114245_104739_15A29551 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hariprasad.kelam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch fixes below issues reported by coccicheck

sound/soc/bcm/cygnus-pcm.c:642:5-8: Unneeded variable: "ret". Return "0"
on line 650
sound/soc/bcm/cygnus-pcm.c:671:5-8: Unneeded variable: "ret". Return "0"
on line 696

We cannot change return type of these functions as they are callback
functions of snd_pcm_ops

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 sound/soc/bcm/cygnus-pcm.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/sound/soc/bcm/cygnus-pcm.c b/sound/soc/bcm/cygnus-pcm.c
index 123ecf5..8966b02 100644
--- a/sound/soc/bcm/cygnus-pcm.c
+++ b/sound/soc/bcm/cygnus-pcm.c
@@ -639,7 +639,6 @@ static int cygnus_pcm_hw_params(struct snd_pcm_substream *substream,
 	struct snd_soc_pcm_runtime *rtd = substream->private_data;
 	struct snd_pcm_runtime *runtime = substream->runtime;
 	struct cygnus_aio_port *aio;
-	int ret = 0;
 
 	aio = cygnus_dai_get_dma_data(substream);
 	dev_dbg(rtd->cpu_dai->dev, "%s  port %d\n", __func__, aio->portnum);
@@ -647,7 +646,7 @@ static int cygnus_pcm_hw_params(struct snd_pcm_substream *substream,
 	snd_pcm_set_runtime_buffer(substream, &substream->dma_buffer);
 	runtime->dma_bytes = params_buffer_bytes(params);
 
-	return ret;
+	return 0;
 }
 
 static int cygnus_pcm_hw_free(struct snd_pcm_substream *substream)
@@ -668,7 +667,6 @@ static int cygnus_pcm_prepare(struct snd_pcm_substream *substream)
 	struct snd_pcm_runtime *runtime = substream->runtime;
 	struct cygnus_aio_port *aio;
 	unsigned long bufsize, periodsize;
-	int ret = 0;
 	bool is_play;
 	u32 start;
 	struct ringbuf_regs *p_rbuf = NULL;
@@ -693,7 +691,7 @@ static int cygnus_pcm_prepare(struct snd_pcm_substream *substream)
 	ringbuf_set_initial(aio->cygaud->audio, p_rbuf, is_play, start,
 				periodsize, bufsize);
 
-	return ret;
+	return 0;
 }
 
 static snd_pcm_uframes_t cygnus_pcm_pointer(struct snd_pcm_substream *substream)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
