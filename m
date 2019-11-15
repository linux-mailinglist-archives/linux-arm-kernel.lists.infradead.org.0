Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A054FE81E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:38:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SG61icjPQp7y09v9LQZwRuBnGa56nV0RUj/bnvy3PUk=; b=M5hyZ0vJGcpPRXp60nllZtEZYF
	VjbfJzH4pAtczRfzpJHOY0KsWZWoYuY/gtv5wqB5wVwh6ywpVaIHbPXZTTOSNwwm6ZMIacuhC5P5Z
	GfRgsXEpmVo4cx8ly2FFnk7DGgn20AGr7stMCfYpVzr0+c/0kDyEKlGn+0USUICszCS1YvkpHOIR8
	Y4vC2Ibn8/PSn8/veAwskmN9p+ECzWwBvJGBE8TQB/QmU0VLBuj4WUv67quj0cNwqqesI1sByLxsM
	QUQ9Nm89WJBwLQ90HP0Bkr8Eq50MgRzn4xA8tBgT/+Osb8bNHGK0/Hgm5FEoyQhiFtEMvtu8CTx+s
	Hm2tEwUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkEg-0003ZB-21; Fri, 15 Nov 2019 22:38:38 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAO-0007HI-NH
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:14 +0000
Received: by mail-pf1-x442.google.com with SMTP id x28so7341412pfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0FzUVopNzASq04/LVv5rKzD9cgfLq5ObIrBYoMo9qvk=;
 b=lUnyeeCJ4IPMz/XNH2z+dyXgbsLnZDQySzkmpacsxLxrXVqQl5YYPtMDCr/HHxKjVR
 hU7Y+LuaiVCYaAjIOQjWN7XE8ySh88tskiNLwFDvEcME9WjRgKWKI31q/MYW4ijhkG95
 iB/cXtsbnEgCUngeVPLDAl6BX33rNqrbYi6fcdGtnxKTNTBQFt/aemX3uKRsgXeS0agk
 m5dsnfapvZLJb77v9GDsdm0umUO3c/oDvqDF0UXRKla1EvNzWUNN+FQGF9bj+EE7X21B
 IdzvJlAJMLMIe18u6ncmei3dFZe6zL8vc2bVx70r1wV15uwQTsYgUDsMuE3R/50EMWIJ
 uu2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0FzUVopNzASq04/LVv5rKzD9cgfLq5ObIrBYoMo9qvk=;
 b=KVxf9msngpelbOS5qixyIihNOxlqLomwn1O7EoReZmZJFy3UuLAvNqDP8rzAgTL8je
 bi9vNjYl51enlQc4mR/jGD675dFymw/CQ1hZXbokCiToBzyMSCtzoDO4i2cxf8iYmq6E
 qdLY3n6Ll6n39ZWAF4ishgReIupCyhmvzbCS6h5Q+fBPsnvyega6evQN4qV5b1v4454S
 hh12s//pWgOzelsJktKSwcRItsy9khqBPfK4thKSRaqgHiNCwUiGgJOGYOQsmxemYTiY
 GYFbmiBGWlYOdtA1wQ0s1uwTyOqZEYAD4yj3KZNJLp6B9O7Z53LNvNbGZImB8J7s3hiA
 SFZw==
X-Gm-Message-State: APjAAAUL/XdzONSeWdboThpRJ8PcsbWYFdleKnuM53+HEaQyDtYCNE8q
 5LL+xmcuM5P8Jzox8AxefhTPxA==
X-Google-Smtp-Source: APXvYqwIfu18fK0DfDJ9UvpBvk2czYs+yHL1APaCSoHaNFjaDFHmk39inhfdV0r/CZWJE79UEyL9tw==
X-Received: by 2002:aa7:843d:: with SMTP id q29mr20193053pfn.156.1573857251386; 
 Fri, 15 Nov 2019 14:34:11 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:10 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 16/20] ASoC: stm32: i2s: fix 16 bit format
 support
Date: Fri, 15 Nov 2019 15:33:52 -0700
Message-Id: <20191115223356.27675-16-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143412_795297_F5E2541A 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

From: Olivier Moysan <olivier.moysan@st.com>

commit 0c4c68d6fa1bae74d450e50823c24fcc3cd0b171 upstream

I2S supports 16 bits data in 32 channel length.
However the expected driver behavior, is to
set channel length to 16 bits when data format is 16 bits.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 sound/soc/stm/stm32_i2s.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/stm/stm32_i2s.c b/sound/soc/stm/stm32_i2s.c
index 449bb7049a28..004d83091505 100644
--- a/sound/soc/stm/stm32_i2s.c
+++ b/sound/soc/stm/stm32_i2s.c
@@ -501,7 +501,7 @@ static int stm32_i2s_configure(struct snd_soc_dai *cpu_dai,
 	switch (format) {
 	case 16:
 		cfgr = I2S_CGFR_DATLEN_SET(I2S_I2SMOD_DATLEN_16);
-		cfgr_mask = I2S_CGFR_DATLEN_MASK;
+		cfgr_mask = I2S_CGFR_DATLEN_MASK | I2S_CGFR_CHLEN;
 		break;
 	case 32:
 		cfgr = I2S_CGFR_DATLEN_SET(I2S_I2SMOD_DATLEN_32) |
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
