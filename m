Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8F4175864
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:32:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=okyCPE5eal1NTfFjpiWVNQ6eybCHcwoMNjNvrVgW3WI=; b=jOkLcpbaJ9gt/q/RqKGf1thhRN
	3SSleTEiI1cMpvUnulHV1tmkxOIrP0Pqkd6mJyYtcaKMpUD3GNWsLbVHtEiCMBvBLesn7DefPw/z/
	y7RBcfXDu9wJPNgJCekEwxh/du0qFoZ133yGu3YtLHfTMQwgKLYicBflMVf0itOWRJfFHZh3v21Ps
	eTNpgz/AEajfgdB6/bEfYas7WEy0IHlyXCojGFrAyB2VDsVRftLGCa9sU8I+yik2MEFxN/B49Z5SY
	jDngRaJeXHvZuYumvhZj8Q6UEcjJBubONH5I6J4wTAGS1ih7zv2fbuzS2LPNGRB/sWA9OqwJHXoqH
	bOFzWm1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8iNJ-0002cG-N9; Mon, 02 Mar 2020 10:32:37 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8iNB-0002ab-S1
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:32:31 +0000
Received: by mail-lf1-x142.google.com with SMTP id p5so1210450lfc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 02:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QnYXcIKWVcVSniTvImIOUV2GKYnwwg6k3OeoObFRdpM=;
 b=Ri8EY8zjK8JQBlTwBx2lPNX4EJyj2l0TFRRuH965V0Dj13z0lqud6RgyZnmchIT3mL
 i4kB/cPt3Qs+Pzey02cSv5WkFTPpkId23mXl9MEIu1B9ODeukat2DB7Yu9lxNaddFEFi
 jVOuf5L3ZPXefhjqnIRG2EuOmKGw3QWf3vm21KVXQVnh9zbMTBiG9nti2Z4eVtfMW/pk
 s/mUUQY3Aku49cOy/dx8baIcHtONli0joOFAowL3ySG9fe+VcmXaUCRDdH0sFNf2ecBp
 flyGcYDnGwRG1mKJV0Nj6Wmzbk6VrIAnx0Ke2rBlhUGVg2QKtsQmsMQlKLAs0rV5UZMW
 b2Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QnYXcIKWVcVSniTvImIOUV2GKYnwwg6k3OeoObFRdpM=;
 b=cgTvQVZSzsMe48A59DFOy65cmBoak/SOni6xsSndBvimrPoHLpHOmm7MEc11tv03sl
 s+4GrBOI/Pw8NVDH4MrOi1jh66QKeeLvsHzq/KkwTdlORHD4yynUg4iSDjQNIiQE1tJ4
 4yWzDXUbQJG/9cuxvx2a7GX/Ul15Ua1ql09dhgX4Marpy1h2cvSRUp9JBJWaUovW2TQ7
 coFWoyjObeH36fIf7dVzmPRP8vxCv69AG8DQhsjuUE0RVAoPwB/RNAmWpsOS7mH5+scb
 0BSeO4pYFVDIhxO5VIn1rca/zjNuEo/7nxsUaSIyQVGvf/dQf6PuGRQedQSOEmkqhTKL
 Pksw==
X-Gm-Message-State: ANhLgQ2wJvQAWcwfFMsAk+PQVxryxD9qqJx9sELy1aRFABOV3SZ499mq
 is0RKe0r2aqPTpJ1/zRpv+rR2KpD
X-Google-Smtp-Source: ADFU+vum+gRzgYNjn0fs2L8U2Ud019xJc9t09+jbn5reMOsLMhPUU7XhcnXXsDSa0U8EPiu3o1eJHA==
X-Received: by 2002:a19:48cf:: with SMTP id v198mr10081652lfa.68.1583145147101; 
 Mon, 02 Mar 2020 02:32:27 -0800 (PST)
Received: from localhost.localdomain ([149.255.131.2])
 by smtp.gmail.com with ESMTPSA id n21sm3895328lfh.2.2020.03.02.02.32.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 02:32:26 -0800 (PST)
From: Roman Stratiienko <r.stratiienko@gmail.com>
To: jernej.skrabec@siol.net,
	mripard@kernel.org,
	wens@csie.org
Subject: .[PATCH v4 0/4] drm/sun4i: Improve alpha processing
Date: Mon,  2 Mar 2020 12:31:34 +0200
Message-Id: <20200302103138.17916-1-r.stratiienko@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <.>
References: <.>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_023229_935746_A93980B8 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [r.stratiienko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Patches 1-2 already reviewed and ready to be applied.

Patch 4 is RFC and require more testing on real hardware.

[PATCH v4 1/4] drm/sun4i: Add alpha property for sun8i UI layer
[PATCH v4 2/4] drm/sun4i: Add alpha property for sun8i and sun50i VI
[PATCH v4 3/4] drm/sun4i: Add support for premulti/coverage blending
[PATCH v4 4/4] RFC: drm/sun4i: Process alpha channel of most bottom layer

 drivers/gpu/drm/sun4i/sun8i_mixer.h    |  2 +
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 50 ++++++++++++++++
 drivers/gpu/drm/sun4i/sun8i_ui_layer.h | 10 ++++
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 72 +++++++++++++++++++++---
 drivers/gpu/drm/sun4i/sun8i_vi_layer.h | 16 ++++++
 5 files changed, 142 insertions(+), 8 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
