Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2598911BE00
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 21:34:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=D6pQUq1SpPBw1mSl4qhoDBacfCIKKEkcP0SoxCek4To=; b=GhI
	VKidBog79b6VFcaJTiATuUElMzmdq7VlyYOgQ2TH74+JFHaP9ijMWQ0ihtrTSwl2kZGtm9HmXaPKx
	xxxnjRO1Ox9G28Gfza1JqLA0Wyb3tnwKrY5BTBhLel238OkOtwjp9TmCAZd4/bm9byt3pebhVQGPZ
	5cRFxD5HvHpnzmLbzw9NpXwiWEQ0t5XGSsE/C9XKf1kvXMEeLXB0YaWO6Bu7Y5/XrK6bc0oUhDn8Z
	JIR0UwYmmocWu3cDZIZMQpWoogacK3zrZmf7iTNyiGLKOWcVE/jZE5AQkcZFmKBI3fmNYihdfHjsK
	8Xjg8el+yVRYedcgG0MYwgkiCJ7hSFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if8gv-0001ga-6e; Wed, 11 Dec 2019 20:34:37 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if8gl-0001g6-9i; Wed, 11 Dec 2019 20:34:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id p9so8685858wmc.2;
 Wed, 11 Dec 2019 12:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ay3f3rT2lIE/YLLclQUtZpfeBy9nlJ24/EEgRhfGiC0=;
 b=PF8au3HQR1eqluFaFL53LckQ0Bb8b63nBLP6nikHTHqJDuxe+HOW4KYt4zwoujaqN7
 4w2WsVnVazgnTClmMmFzNVeTUZjybaGKYCKUnNxQ6EZ3cVn6z2Wx022vhVpZWYhb20kr
 bemICY4xER1Fu4E7h5VldEUJT7GM6KwZG2sk5PmVmzk4FeKh0omelxjLQDQizS8eH+zW
 t1qdAHk2ucKD8l9QFqah8j30a5uH6fTtFMQsJIh0GCpDc2ZGPCL/xlCjMfXeVoC6b9Zx
 2BKcBDKVNAk+aPF8Ob+45EiTqTCoYM+ceBHhmlmA9aygTeTbg6j4XrsyRuX/WoU+v+sG
 XXEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ay3f3rT2lIE/YLLclQUtZpfeBy9nlJ24/EEgRhfGiC0=;
 b=RqsBBbTrS/5cVMC2itZJTf+jiQZ5jS2QhQkoOsTW3Kj5lyMZv/AYeEGzz5ueIIBDFp
 GOxRc/ymdYWKgP6JBKaUaM2IaTzdiCdYRAshl9KagDQedlEMH7scwlxXiDsIdcft4k/F
 Nz9OvzR0l3q0JSkB2gWvE+CR3ko16f63WSYDAZ+sUOKaOD82eRJrY8EKipApo7CouRub
 JjYL/CtHaZLkkNYjA7cGALaj+Mk47rOih9yNhnRqKfuwGdQfWIw8IOF7jH0GRgaO65l1
 OQtI1DHH6KhMfePc/hnNkCJxht53OzMCoEpYKfe2+fa8pjRtrfWQ78MBx9jv9ASp0rRZ
 G+xA==
X-Gm-Message-State: APjAAAXasTzX88L9JYyoalRqm9eH2hZ+32ch8d5Cbqzy6RNnQuNSDz6W
 Rvezw5e8OW9eAr8GJ/XjIio=
X-Google-Smtp-Source: APXvYqzhm9FQTbLSQdyxkyTBzlLdW76xtMpj86Wjh0eyAQfZbUY8wn2OHCfgKaSsdbWAdCAMLy04HQ==
X-Received: by 2002:a7b:ca4e:: with SMTP id m14mr1816757wml.120.1576096465412; 
 Wed, 11 Dec 2019 12:34:25 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id z6sm3661709wrw.36.2019.12.11.12.34.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Dec 2019 12:34:24 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] drm: rockchip: rk3066_hdmi: set edid fifo address
Date: Wed, 11 Dec 2019 21:34:17 +0100
Message-Id: <20191211203417.19448-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_123427_339172_33724A48 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: airlied@linux.ie, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nickey Yang <nickey.yang@rock-chips.com>

Fix edid reading error when edid's block > 2.

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index cdb401f42..945126948 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -640,6 +640,9 @@ static int rk3066_hdmi_i2c_write(struct rk3066_hdmi *hdmi, struct i2c_msg *msgs)
 	if (msgs->addr == DDC_ADDR)
 		hdmi->i2c->ddc_addr = msgs->buf[0];
 
+	/* Set edid fifo first address. */
+	hdmi_writeb(hdmi, HDMI_EDID_FIFO_ADDR, 0x00);
+
 	/* Set edid word address 0x00/0x80. */
 	hdmi_writeb(hdmi, HDMI_EDID_WORD_ADDR, hdmi->i2c->ddc_addr);
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
