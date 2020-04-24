Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2BF1B7A9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:50:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1aR5eFjLhjfJMG3G78ZZ2AmiXOHCxBts3Af03ED4Rc=; b=HHIsiw3SfMicOB
	9k/TcbCBhZkwqDo5alxxNBjzTHST8tNy6YlWONyN+pVgkAbOlxJ2+o4KhzZ+OGtSDjxCR9bJxtFYH
	bd6qjm5lIabttVCuso7BPXVmRdnmhuO69tXrdzCz9p1HB7jT0Lx6NAbe2UcBppnfD7Fe3NKH+k6Ie
	gkgmE4znQ169y1oSbRP7wwsJ5Hz+8nB3TIFnD6OuUxXRubqcIDmz1jToABOUts+7oZR+cIu9yZ6rJ
	Fa/iCf12IL8Q4eEvLii8qVgYHbWSKwunQ14TVqG+nRZhiHM1auXgCDBM+I95B9uUwxfhggJTRa8mI
	1MVmWWZQx7YQwGe8yPCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0bI-0002KH-9N; Fri, 24 Apr 2020 15:50:48 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0NW-0008HB-2t; Fri, 24 Apr 2020 15:36:35 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id B2F4F143F;
 Fri, 24 Apr 2020 11:36:32 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=vQCG19Ii3NUG8
 qgHnGg4pvS2ow7VxpnXBTmaUCIAX5w=; b=pjcOJvXCgG1SCU4sKxqq7g/YBTTfA
 3gGm+4ti6EEqF7ORYaU/fWNw6gEORKzdnK1J7ySyNY5gkIc2a66QuhFrjfkkoji2
 UTF37qbJhdAeTn3fbx+ZRIlKzM/UQhblTNY85i5BGJQpy0mZqx4nzEJd9yceCuKa
 J+Ujz4lGjjTjQrnmj/fAgomAnwKkFiU5cP+QC4bNhMPHzLnqzs6W9E/prYK6bPt2
 hFSMAH+H2knpVa8Wm/gRcv9tZvxv4RCyqYSGyhZuyfiGKm+gmjH6z/uehv5Z6Z6v
 87HHxxeMj990BPMlIFOdIzO1/AYyCuqKE4CRAv4HwguBTyWjcXrMvUvNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=vQCG19Ii3NUG8qgHnGg4pvS2ow7VxpnXBTmaUCIAX5w=; b=eDyDPsy4
 fdNPu+BKDpnpin9bvV8hrMsZ5sDl7LnOD9yNkRGWjFcB61E3MjLsWdxBhuS0tIXp
 i8qaQemi1DOr12kvV4W7kiCY6aJge+ReIdlVQfvJnMYcdJmjg5aroYeXgeM29N7z
 ipkYz0dn57ASZ7i/c/2m1Ar8zKvNfFHcwjorMlKGlRZaSlUu+qoPSQGzVmB+w/p4
 AaUJAfEmjrinIXhVq4YjJkTvcEJw7VMyPzOraQH2KvM9XyZFu30uMrawXCCGw4nW
 AIWL9eC3G8OnQTtEc5wJYeWxhfDceuAPFaUq0bLsiNUtSlhDIlVE9tDbK7uipPi/
 rBHuwkLeiykQeg==
X-ME-Sender: <xms:gAejXnMjEWecvYTrEukGSXzYkJCIEQHha1ND12PgGdpV_sVSO0Pf-Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeegvdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:gAejXoSykkMaXrW0Y5JgT5nm7XiTTB5XwLGsP-Yub9Z3AtZymFoTqg>
 <xmx:gAejXsQPFY2lPeH6ecX_dZl42Tup-PDa4OspT5VGwQwlkOTUPtWojA>
 <xmx:gAejXpBvzt20AAXG0sWQmUP1En2dOaiynI5G4ECxeq2mOFFx5vgyug>
 <xmx:gAejXoDarQ1pWEV25w-ONHmcZeXKmu-wgUqPAUuVW_lih0JVB7Imb9qGFB8>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id EF2383280068;
 Fri, 24 Apr 2020 11:36:31 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 50/91] drm/vc4: crtc: Use local chan variable
Date: Fri, 24 Apr 2020 17:34:31 +0200
Message-Id: <02cdaf45d556fdde750856aa75d0b214f61edb0c.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083634_233234_9BE2A992 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The vc4_crtc_handle_page_flip already has a local variable holding the
value of vc4_crtc->channel, so let's use it instead.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index e6d8f7656dd3..3a15d711ff55 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -815,7 +815,7 @@ static void vc4_crtc_handle_page_flip(struct vc4_crtc *vc4_crtc)
 		 * the CRTC and encoder already reconfigured, leading to
 		 * underruns. This can be seen when reconfiguring the CRTC.
 		 */
-		vc4_hvs_unmask_underrun(dev, vc4_crtc->channel);
+		vc4_hvs_unmask_underrun(dev, chan);
 	}
 	spin_unlock_irqrestore(&dev->event_lock, flags);
 }
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
