Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AD6162A0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:08:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R9QE2bUmbWsVT6O/dGvZ0jkaKX9JIHEqC7x57Tarj+8=; b=ZXksqU/lOvimLT
	HBDXkwcsv+dbpezXlwLKROzBrU9VEqpjJc+QLkYvwTmZTsPgTBOH6XNxQOW8tHriVGtfaq/gFVsMv
	3TpeBEdjPrPJyOF5o7yo1lEmEu+huBl4lAi+slgQ93mXVSqonpwUvVTCGy6cBOl7BdFCONfItEpZ1
	bYMPl9fwD26OvacNoBrkNzzPnR47tDcMxS9d4zzFfMNmvedTOHtB8ov5PPzVZa9syrVrp9TrzU6hh
	TgBL7VpZye7aHKZCib12gsz5YvrPP7gPr+0LVsx2zlUZjoiP0aNPVf5G2JBHcvjv+0rofA/ULqwrv
	SfFU2ZDLi1MBOPMw18ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j45Pm-0000Wh-PV; Tue, 18 Feb 2020 16:08:02 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j45Pa-0000Tw-HP
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 16:07:56 +0000
Received: by mail-pj1-x1041.google.com with SMTP id q39so1191743pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 08:07:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=6IJPCaTEcBb2m8XkY4aRmJfNArzRhDFzGrCWNLyN7Ic=;
 b=nNQYMPFNJpNoZxtqF2phDv1wjXg0AOZ/bl4BaeHLoULkitFcLFvO3rs4v3tmN7E108
 tDWdJm31m3moyA169gHYrLc/puw5pYrowXS7G6CHHU23HSnEuG4+oX57a7ItNS9dBthQ
 FH63MQBYEqz4zkoxEXkPInytkpJrdBCRH6oERlUbX3RvNVqi+F8nI39WXY1X2aJjPcJK
 o0qLDJNkEtjRUJD3cwrd2M6y0rzsIRMkuBPaWdfRLaWiPyJgky/uEhnouXIPZWJsihld
 F1Gim6pg0v5ed3RKxw86kVFL0I9AHP/84LExdk5/9NVFpulFphpKCcEYKx8Z+lp7wxpS
 0wug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=6IJPCaTEcBb2m8XkY4aRmJfNArzRhDFzGrCWNLyN7Ic=;
 b=CL7dgCcr7PJW//LARC6DNYMSEC1ScYnPWDhRdbTXmXfuyMZ///diEosX9eawYUoNHa
 tUe5mWipGjaAEQigFLYCJ1Gi3v2Wj6HtNMlksxthyYxREOl0xr70UV/MUMb3iKq8G6Cl
 Nvlw6j+xwII4+dBqyOQ90nMqV+d+6o6WBGdoge8rNdxJ5JmYVunTDnMBCcMweqqOrHuC
 hlsUvi5bc+v+SpC6XQ8gskHtSZ9JQilRYvqM/BWsE8auDEun/y+V5MbVxHBYT2BPdSYe
 4e0FtY4UKv6C1TBhp0CcwoMpcip7MAiD9j5b9tPXobMqZTkaoLRZo3kmikbVYcBRUAtR
 graw==
X-Gm-Message-State: APjAAAXJN2gmblvTe7xdjH2LXZK2gvfruT+QWvN14pFj9aLqBrrnz1Ps
 W/8iKGgUBjYYFJjHqSspcFI9Vw==
X-Google-Smtp-Source: APXvYqy8JRIuOTKUkj1s0uIaQjKYrPfy6Q91GTwrh/k+Pt+nzWjZ0HbG7DxYrRNO5RCTUzT9wAwWBw==
X-Received: by 2002:a17:902:b583:: with SMTP id
 a3mr21124343pls.180.1582042056382; 
 Tue, 18 Feb 2020 08:07:36 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.176])
 by smtp.gmail.com with ESMTPSA id g9sm4773300pfm.150.2020.02.18.08.07.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Feb 2020 08:07:35 -0800 (PST)
Date: Tue, 18 Feb 2020 21:37:28 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: bcm2835-camera: call function instead of macro
Message-ID: <20200218160727.GA17010@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_080750_584632_B802B904 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix checkpatch.pl warning of 'macro argument reuse' in bcm2835-camera.h
by removing the macro and calling the function, written in macro in
bcm2835-camera.h, directly in bcm2835-camera.c

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 .../bcm2835-camera/bcm2835-camera.c           | 28 +++++++++++++++----
 .../bcm2835-camera/bcm2835-camera.h           | 10 -------
 2 files changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 1ef31a984741..19b3ba80d0e7 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -919,9 +919,17 @@ static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
 	else
 		f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 	f->fmt.pix.priv = 0;
-
-	v4l2_dump_pix_format(1, bcm2835_v4l2_debug, &dev->v4l2_dev, &f->fmt.pix,
-			     __func__);
+	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+		 "%s: w %u h %u field %u pfmt 0x%x bpl %u sz_img %u colorspace 0x%x priv %u\n",
+		  __func__,
+		 (&f->fmt.pix)->width,
+		 (&f->fmt.pix)->height,
+		 (&f->fmt.pix)->field,
+		 (&f->fmt.pix)->pixelformat,
+		 (&f->fmt.pix)->bytesperline,
+		 (&f->fmt.pix)->sizeimage,
+		 (&f->fmt.pix)->colorspace,
+		 (&f->fmt.pix)->priv);
 	return 0;
 }
 
@@ -995,9 +1003,17 @@ static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 		 "Now %dx%d format %08X\n",
 		f->fmt.pix.width, f->fmt.pix.height, f->fmt.pix.pixelformat);
-
-	v4l2_dump_pix_format(1, bcm2835_v4l2_debug, &dev->v4l2_dev, &f->fmt.pix,
-			     __func__);
+	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+		 "%s: w %u h %u field %u pfmt 0x%x bpl %u sz_img %u colorspace 0x%x priv %u\n",
+		 __func__,
+		 (&f->fmt.pix)->width,
+		 (&f->fmt.pix)->height,
+		 (&f->fmt.pix)->field,
+		 (&f->fmt.pix)->pixelformat,
+		 (&f->fmt.pix)->bytesperline,
+		 (&f->fmt.pix)->sizeimage,
+		 (&f->fmt.pix)->colorspace,
+		 (&f->fmt.pix)->priv);
 	return 0;
 }
 
diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
index b5fce38de038..2e3e1954e3ce 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
@@ -121,16 +121,6 @@ int set_framerate_params(struct bm2835_mmal_dev *dev);
 
 /* Debug helpers */
 
-#define v4l2_dump_pix_format(level, debug, dev, pix_fmt, desc)	\
-{	\
-	v4l2_dbg(level, debug, dev,	\
-"%s: w %u h %u field %u pfmt 0x%x bpl %u sz_img %u colorspace 0x%x priv %u\n", \
-		desc,	\
-		(pix_fmt)->width, (pix_fmt)->height, (pix_fmt)->field,	\
-		(pix_fmt)->pixelformat, (pix_fmt)->bytesperline,	\
-		(pix_fmt)->sizeimage, (pix_fmt)->colorspace, (pix_fmt)->priv); \
-}
-
 #define v4l2_dump_win_format(level, debug, dev, win_fmt, desc)	\
 {	\
 	v4l2_dbg(level, debug, dev,	\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
