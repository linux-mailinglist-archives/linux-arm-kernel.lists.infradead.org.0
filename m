Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF231506FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 14:21:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dNIM2nHoRn4wFPHjZq5TjAZocoziyxOUl8+5AgLUOxk=; b=YocVdd0fbG8wtf
	awmmbebH2sw2v4RMmKrPeK/fMN3XImpGHiAMBkrUl8rDrpQERzkDnzuyqDY6CENgWI/UlYVsApLth
	KPKiFNggaMKfMJyWOy0qxLVd2ZLPvbFaNt4PGvbNFShlyls7rsYfLklhXm4sewrXAZOXKvCAB88xw
	y2oS7e00k0TDrSZTmDYEiHPRxbmxrWCSnx+mnHl24SjXgM+ORyQxDqwRpilPD4XZg5YTHfTveyZDh
	OZ1rjJooP4yZZ/7naUZF+GIBnWEEj9XXMJHuit6WjcP7ahC4QqwtevAnb4tt5Ru5jIXTtcELObyxV
	29WTkvVwL3+52rZuBDqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iybfL-0007cA-Qu; Mon, 03 Feb 2020 13:21:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iybfB-0007bK-Dk
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 13:21:20 +0000
Received: by mail-wr1-x442.google.com with SMTP id u6so4816727wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 05:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wi18qa0MrlL/7K66WwSCllXqfZXEgraYZcR91lSYDNE=;
 b=bp8+Uco/w5cV6S55A/YKo5bqO7+Pr/oxNg0Z6oluQH68KFgb2DyxJH1EwAdG4K/oCA
 RgZ8wCPi+pDA22I3GDZ+m/tglWqftq6a2mbvb0dmPxDZIl6MlarANf/SciK/eh01HGNg
 zH7H9/rPxFUMrbqchrYmegcJnZL0vNEEiNesSql4aYUXj1ljvecw397nIZH3qASJWysu
 NXQvoUfF9qP9WQYbBDslrIyaU0HYyFNfUUoReu2ao0QXNWUrFGMOZCSRMEg09zjRiJLw
 3AxNeaITML3GClFIA311nFdYiGnKiC2ehyUigKDabL9y7VQ+GrENKIYocO2ZosgQRBZ3
 Yd3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wi18qa0MrlL/7K66WwSCllXqfZXEgraYZcR91lSYDNE=;
 b=EgRbw4I84YB0P+lUyQCIHtcGs3InnCi7JLfRkKROh0VPXjrzGqyGiRC33C1ct5HYY9
 k2EF5jQyCKuuYv8RqwN/PJnWQfVT7nlcOBjZ7p0xK6fPTT9vNWo97IhbNCRUm+HqLz0Q
 uBM4V5emzxNE6btutK9/rvdh0qM4FCvlLOFEcQ89ubzZHVXeJqhIXncoAAu5H9Q593O+
 c2UO1UE+BbIR6P/uvlRPrkVuMU9lQ79pJDpW2HF3WJDJoQOl9QY3Hkh5p+pcms/7ZCui
 vSoY6F+ogFberc5hejypRYG3Wa3POsxi/nMOo0wPI8eD4APRb0dZIZlBo7MeRxEo2x2V
 M2+Q==
X-Gm-Message-State: APjAAAXOYPpk1hEaBr5g3BMu2Dz7/NVIuF/uqcF5UGb13AphwLXPy7oh
 WR5shH0B/9CqJCfDT8JQCtnZxA==
X-Google-Smtp-Source: APXvYqzSJpvUoeMx6zIu+JC/mHzWGsTSVjVo4y40fmiz9jSCiVrpzfukntQzLAl4MzTE3YGEZljuuA==
X-Received: by 2002:adf:f1cb:: with SMTP id z11mr15054437wro.375.1580736075590; 
 Mon, 03 Feb 2020 05:21:15 -0800 (PST)
Received: from localhost.localdomain ([2.27.35.227])
 by smtp.gmail.com with ESMTPSA id z133sm24623094wmb.7.2020.02.03.05.21.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 05:21:15 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH 1/1] media: si470x-i2c: Move free() past last use of 'radio'
Date: Mon,  3 Feb 2020 13:21:30 +0000
Message-Id: <20200203132130.12748-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_052117_467018_E9C2E1C1 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A pointer to 'struct si470x_device' is currently used after free:

  drivers/media/radio/si470x/radio-si470x-i2c.c:462:25-30: ERROR: reference
    preceded by free on line 460

Shift the call to free() down past its final use.

NB: Not sending to Mainline, since the problem does not exist there.

Cc: <stable@vger.kernel.org> # v3.18+
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@lip6.fr>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/media/radio/si470x/radio-si470x-i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/radio/si470x/radio-si470x-i2c.c b/drivers/media/radio/si470x/radio-si470x-i2c.c
index ae7540b765e1d..aa12fd2663895 100644
--- a/drivers/media/radio/si470x/radio-si470x-i2c.c
+++ b/drivers/media/radio/si470x/radio-si470x-i2c.c
@@ -483,10 +483,10 @@ static int si470x_i2c_remove(struct i2c_client *client)
 
 	free_irq(client->irq, radio);
 	video_unregister_device(&radio->videodev);
-	kfree(radio);
 
 	v4l2_ctrl_handler_free(&radio->hdl);
 	v4l2_device_unregister(&radio->v4l2_dev);
+	kfree(radio);
 	return 0;
 }
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
