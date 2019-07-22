Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C86807050B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 18:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUTJIIbbu63XAk5V+lD3GrrwLy1knUISfGXfU0DSPjc=; b=d5t6PAbAJ+QK0/
	2g3iKOsjn8mST2c+CGauXLB60ffG7lRNo8fASxIVKbDl+qPiPkZaPk2No5NGUFoKNGKbd1E65OvAn
	Sq9VXRzv81xENWx9KLgfzAV2T7fNYfmK90/eyy9hJ2YVNWcqhB78VY40YZ19TMMBbLyxwM4JOHDux
	SrMRmLABauaVx8Azh1ULJPvZRe93jA4bpOMRWFggYReaxUMlR7+4JO74G0xPpq2aGYh+mi0NyXYtI
	RTXBK30NQjrgiO8ll+jQtYjQfsgOl4M7RSO0lO4U2LUEe1scCd6/xIm4fCNldhGFJsPpdGraK2adh
	X88qrDH56+6bi7lsuQbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpaqB-0000vQ-Dw; Mon, 22 Jul 2019 16:07:07 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpapV-0000hp-Mi
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 16:06:27 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6MG65b1016173; Mon, 22 Jul 2019 18:06:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=sRoYw+gjO4V6WYQIFcpRmA6lrUT15ghe8XN5XQ6WRiw=;
 b=ENmhN0C6R269ohYvCIwqgaPJaskoRN8XZL4LQkM79yJFsTwQpADo53fEnn+29fWz3J1g
 oKUilDC980iSXubGcBcUWfiWTPHWZ8DZ7d8LPJKY4/BxPv5X3YmzvHg6OMwtW4WGJT/f
 GTKVt/PU0FJwwZA3f75q4/1ZN49iErJ3kxI5gHkZp0tzqCYmeWFVp8qRDXwJUbOje/6D
 czNkGuUOPtKyvcgzlGfWp/REkArNZsbY4R+bBwB3Uw2LStsvsxK1uj2RnNzC9yUPHmnS
 DZeebg5mmVTLxHEv6wUaDSvBm583PwId0Iq4vhI2ugIyBQNgobrl3ErxIz6Hnbx3nexg MQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2ture1chdr-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 22 Jul 2019 18:06:05 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EDCE134;
 Mon, 22 Jul 2019 16:06:03 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BD08A52BD;
 Mon, 22 Jul 2019 16:06:03 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 22 Jul
 2019 18:06:03 +0200
Received: from localhost (10.201.23.16) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 22 Jul 2019 18:06:03
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <a.hajda@samsung.com>, <narmstrong@baylibre.com>,
 <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@siol.net>, <airlied@linux.ie>, <daniel@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <benjamin.gaignard@st.com>, <alexandre.torgue@st.com>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, <olivier.moysan@st.com>,
 <jsarha@ti.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>
Subject: [PATCH v2 1/3] drm/bridge: sii902x: fix missing reference to mclk
 clock
Date: Mon, 22 Jul 2019 18:05:58 +0200
Message-ID: <1563811560-29589-2-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563811560-29589-1-git-send-email-olivier.moysan@st.com>
References: <1563811560-29589-1-git-send-email-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-22_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_090626_033213_419BC509 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devm_clk_get call to retrieve reference to master clock.

Fixes: ff5781634c41 ("drm/bridge: sii902x: Implement HDMI audio support")

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Reviewed-by: Jyri Sarha <jsarha@ti.com>
Acked-by: Andrzej Hajda <a.hajda@samsung.com
---
 drivers/gpu/drm/bridge/sii902x.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/sii902x.c
index c2f97e5997a1..962931c20efe 100644
--- a/drivers/gpu/drm/bridge/sii902x.c
+++ b/drivers/gpu/drm/bridge/sii902x.c
@@ -751,6 +751,7 @@ static int sii902x_audio_codec_init(struct sii902x *sii902x,
 		sii902x->audio.i2s_fifo_sequence[i] |= audio_fifo_id[i] |
 			i2s_lane_id[lanes[i]] |	SII902X_TPI_I2S_FIFO_ENABLE;
 
+	sii902x->audio.mclk = devm_clk_get(dev, "mclk");
 	if (IS_ERR(sii902x->audio.mclk)) {
 		dev_err(dev, "%s: No clock (audio mclk) found: %ld\n",
 			__func__, PTR_ERR(sii902x->audio.mclk));
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
