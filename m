Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56391FE821
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:39:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OwK7SV9QtL9kEkMryXq+Svz8owYhYywz1wpK5wQaMLg=; b=qRQac62sqHt1UpCdiDRuxjy/yh
	vueHMk0uoGFAW48dO8L39yd3MQxTMUytE1+6iZ7qAaycou0be4+Rxrskow/4KWslTfdSPdItvb/r8
	U3ZXIMhSeDi0y/XsmcjX+5j1H2+ECPzEFG37VkJT9uV6I3ZRazl14vv10DMgwPZELLdnV0dDpbNNR
	jiUeagiTiUu5jYMRceHsxEdaz5NXT4PFlcahQUBnpW/r+MEuDHogAQ7cLKziUekfzDQTPwh+BPrLH
	9vMr5HtkW9JIoWEMh84LAsmhmMUNjB2PXjqzCDhmZSBYB675eEa6qfitvBWzZcjuUbff2PEdirbvo
	1VFgcPhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkF0-0003le-QL; Fri, 15 Nov 2019 22:38:58 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAR-0007Km-Da
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id s10so5638709plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=r1ouRyNa+k6U3bqzEPdoAfpCVsnWSnRUjkxZ+vQnSI0=;
 b=AkA2Dg+SrHTn4/EJ8QynEGN7oPoQ/Aw5fRHMyXpEW6Y6keS6gO6VdGp+FDJ81HaCck
 LfkmYzBp8QrNwaymjk9ee0qPdxlC88qX2CcJuOT+KoHhzb0ptMpflS2O2yk9g1xcwj+i
 OsUJI152IuEDboSfUp+G5xjZAwG1t7A0XU/A7qB4I1ptcuIK1x3v8NMEcAQoZZq4bi4E
 Be+sv3Xu57IO52n36rJiyMgg2w2e6EQhjAwLZeheDCHSoe140YiXAwaGdpXT8hHFrlti
 FWcDYu761P26xKgxM27ycYqxbciEuu1T6zlil6sWl1pcyhuIHyDlPl4vUH/r7fLTJUmm
 52MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=r1ouRyNa+k6U3bqzEPdoAfpCVsnWSnRUjkxZ+vQnSI0=;
 b=np/A5RSU5re7bim+W0XY0o2MVA8SWS/WIPH6T4yng+IQUVXKlExvy/G+GYNQgBkIyQ
 sQyfP/Lx7YTjvHz9BJKR3xYk0b/IgrO/moi4AJPMW4SbKOnk/J1+b+HL2hIlqrKD44eM
 rv4s9bsgmB018zlyGnNf2XE+7qS13YkoibVzZGARCKOtL3Um+CylO2Kz3AbSb38mRLJZ
 heqnXtw2giaq3p2JR+ziig6gM4oP3ZzIqj+D3tvC6RYqtx3PNNWfklVF//UQqH38/r34
 ixerqtVVQbEzO/QZgoX3vQFFbEITuJsEXzylvXSxKgwz5pq9k5QkM7CTy6bTaSmA4aTj
 p6MQ==
X-Gm-Message-State: APjAAAWvebpccDvvr+zhplR7jEZO5LAjR7rHc2NZWSMlbq4986WZvdqh
 4q2F/vqXkn2Z9d6GYx3aELlhTg==
X-Google-Smtp-Source: APXvYqxC58jH+YVSM8IOmV0kV1VyZBdQVm7yePJM+Y2/BxjPAGsb3xhTH2/dY5iUX2I2iGcgQm94xQ==
X-Received: by 2002:a17:90a:9705:: with SMTP id
 x5mr22110495pjo.37.1573857254692; 
 Fri, 15 Nov 2019 14:34:14 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:14 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 19/20] media: ov5640: fix framerate update
Date: Fri, 15 Nov 2019 15:33:55 -0700
Message-Id: <20191115223356.27675-19-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143415_647814_D98986AE 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hugues Fruchet <hugues.fruchet@st.com>

commit 0929983e49c81c1d413702cd9b83bb06c4a2555c upstream

Changing framerate right before streamon had no effect,
the new framerate value was taken into account only at
next streamon, fix this.

Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/media/i2c/ov5640.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/media/i2c/ov5640.c b/drivers/media/i2c/ov5640.c
index a3bbef682fb8..2023df14f828 100644
--- a/drivers/media/i2c/ov5640.c
+++ b/drivers/media/i2c/ov5640.c
@@ -2572,8 +2572,6 @@ static int ov5640_s_frame_interval(struct v4l2_subdev *sd,
 	if (frame_rate < 0)
 		frame_rate = OV5640_15_FPS;
 
-	sensor->current_fr = frame_rate;
-	sensor->frame_interval = fi->interval;
 	mode = ov5640_find_mode(sensor, frame_rate, mode->hact,
 				mode->vact, true);
 	if (!mode) {
@@ -2581,7 +2579,10 @@ static int ov5640_s_frame_interval(struct v4l2_subdev *sd,
 		goto out;
 	}
 
-	if (mode != sensor->current_mode) {
+	if (mode != sensor->current_mode ||
+	    frame_rate != sensor->current_fr) {
+		sensor->current_fr = frame_rate;
+		sensor->frame_interval = fi->interval;
 		sensor->current_mode = mode;
 		sensor->pending_mode_change = true;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
