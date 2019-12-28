Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8E012BEE2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 21:30:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P85EqyyjZZemi48yoqJ0WQaVHcMRq2N53q4mEG+hy40=; b=MavYY9MSOlpRtbPCnBF4NNm7wG
	MWeMC+E0NjLAiM+Ck4A7/FX4Tp8yYRWSQryGS1+XsMQ2fPg+6YU+nDQYOabOTNcFfYGnTWPfD9Cb+
	XBJF2W2DGn/mPMjS341ShqVo7Kv93AKeyBXIOs6wL/nCY5uiqBfz0O2Z2LulMQMdwDMLCzIdqu6sM
	dQsuPsXiJDB2z7e0SwG26G3ixatIjz8J0JYXWYY9DDVE1/jhFW5xUWBszo99SEJ9X2doS0iNqZFID
	+xaU+1JP6fZ8YPAAMcs9OycSkmnzCmWFXG/VtXdKMnnzJ6nxJJ+KkPWOQuy7vSfHd+OsZMdAfxgDC
	7k8cPopQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilIiv-0005T6-8U; Sat, 28 Dec 2019 20:30:09 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilIhi-0004X3-13
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 20:28:55 +0000
Received: by mail-pl1-x642.google.com with SMTP id bd4so13105657plb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 12:28:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KOo3X0X88vmmzo/eTEi6Meu4cmZqVttPr6kyKScWgTk=;
 b=Av9foxReTwVBkrERfdI7jObfw7XU7uwXaEfaCXIqfLHdVEXqrCSYJ39gOZKjlp2kes
 0xFAmV9nUD99y/X+MHgPFTebv83wZASZYC7z1eBXvo4wftRBJPOECX12nkf2h0LN/jQc
 QNd7ypLlyARjjLmKnVPpnzk9FUDoq6IRH5r5Pu/+DV35NkLCfa35cq6oEtkARtRKH1pI
 UmMV7yiR6GAqqAnteEQLEErxIMlqV7ysoaokTvMUMgm9/vg1IrI6PKjq/OjkztjUHf8E
 C5ej8G1xJ/lzDUgd63jscyelh8JhuB9rPoHnZGODxNPlZRIo0pSfVW8Iq2QQZ9UJZEEW
 W10w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KOo3X0X88vmmzo/eTEi6Meu4cmZqVttPr6kyKScWgTk=;
 b=XzSCHLpMB1InLnL4DJ18InEqIk4ktBAhpLuHfq+rM+D1B5yH9JSWU+HS9V3lyp7O8I
 9vQ22GIEW1uhjkafUuthVcDKcxiN35gzd3Ca7hSaLOCZ2wUIB5DcaePVr3TH7S+yYn1k
 j5gjPI4iig7+E5GgH8bQdS44Y510f6OwVbjMxWjUwL3ET1q7Mh/nLssoTc4ojzAtY3Fc
 mRXelHg0wlDertbrKeHKOPjvKBe6xxgytRF/gnzeaTZR/6nybDKOe4iS1q9R/f5Z8/Ua
 RjYLZ+PvuIWWWlBsKoCEznXygwUOl7SiuvubJ1voUyeyNpXtEMc06BR9YQuBZh8akZqr
 VWvw==
X-Gm-Message-State: APjAAAVoFeE9J3W2xLzOsfGFaqjiabNviHnZkAIoIwi1gejhzV9T34wN
 eq8k1i6LqNKqsnFoJDjVj6A+mA==
X-Google-Smtp-Source: APXvYqy26/nSwCXwDQ5FV/Q/JeyaQxDibPHagpFbTwkrpyLRDOjoMJfa0xhhgtqgIqdL3EaJKpEQIQ==
X-Received: by 2002:a17:90a:b392:: with SMTP id
 e18mr35842386pjr.118.1577564931719; 
 Sat, 28 Dec 2019 12:28:51 -0800 (PST)
Received: from virtualhost-PowerEdge-R810.synapse.com ([195.238.92.107])
 by smtp.gmail.com with ESMTPSA id i68sm46771169pfe.173.2019.12.28.12.28.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 12:28:51 -0800 (PST)
From: roman.stratiienko@globallogic.com
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jernej.skrabec@siol.net
Subject: [RFC 4/4] drm/sun4i: Update mixer's internal registers after
 initialization
Date: Sat, 28 Dec 2019 22:28:18 +0200
Message-Id: <20191228202818.69908-5-roman.stratiienko@globallogic.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228202818.69908-1-roman.stratiienko@globallogic.com>
References: <20191228202818.69908-1-roman.stratiienko@globallogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_122854_156500_9EBE0EB6 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Roman Stratiienko <roman.stratiienko@globallogic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Roman Stratiienko <roman.stratiienko@globallogic.com>

At system start blink of u-boot ghost framebuffer can be observed.
Fix it.

Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index da84fccf7784..b906b8cc464e 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -588,6 +588,9 @@ static int sun8i_mixer_bind(struct device *dev, struct device *master,
 	regmap_update_bits(mixer->engine.regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
 			   SUN8I_MIXER_BLEND_PIPE_CTL_EN_MSK, 0);
 
+	regmap_write(mixer->engine.regs, SUN8I_MIXER_GLOBAL_DBUFF,
+		     SUN8I_MIXER_GLOBAL_DBUFF_ENABLE);
+
 	return 0;
 
 err_disable_bus_clk:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
