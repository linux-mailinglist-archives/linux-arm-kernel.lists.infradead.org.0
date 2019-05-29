Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803362DA8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:26:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=laoXD2qoDwu/lSb7pp/CR+boNuCwNsoqsJ2BTlG/gT0=; b=YPt76jMFXwj7hz
	WuEBOZF0XgDmYKkwgzlztlxyeJh+NZ/O7IzjP6PZTo33QjhQNSn4n97VY4N0mYbPOSLWENYoOTJsQ
	Jet4utgBZl2XB+WQvq9BvEwc5Es+SVmTzAdYbKvvS3mnCa/kt7MfcAjBUTU/NbihQBxU6Z8fO3wSV
	idDmRH5B6jVw0zr87o879unqTfQN8BG1iJ9wauW85RAmvW7YwOzgyZMM8QAMv65ZtQzf6rJoB8lye
	qIDZVfiBOnWAs/nC+UCLANmjvrUwbVZ3naL180HeHiilo5nh3y7Y7o8nLWwebKAVx5m8Rgpsb6YFx
	atT4nXHFHCB3vx1v/DHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvnD-0008VA-5u; Wed, 29 May 2019 10:26:47 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvn5-0008UG-5h
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:26:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id v11so1115014pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 03:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xJTL67gH9xPtYyMqvCkT0yEzd1FL39jXNF6HUA35ERA=;
 b=XZmEt/OOIdZyii8nBgo1yRd792hZgheTgotTZYs35weSjW2UgrlscLr8K8uZVXdqPC
 wjMTLrFRr7dFI+eNNyHZ3W50dHgdjhSbXuqOsmzCTHKob+R4NLkva0/xHzQFut5G1vB3
 /Xa+6mwNyPTx7T0mE0amSv+SQqf+IlzMIifJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xJTL67gH9xPtYyMqvCkT0yEzd1FL39jXNF6HUA35ERA=;
 b=Lq6RFx1aLsth5ZLeRFRzWFFiWre43Ll2gBSmmaKPZsFYXl/ky8oMfEGy31j5iF7PkU
 NfqDobIykJGyRRFaVWBmBorsa7Lj3IQR1Ns40MLBPH+FWmG05SPEt6Wx0xH2IDVEf6eg
 faLhPIqhS0gk/yA/qfTni/B+l7U+weAe08xfnQ3BwRjczfHiFJQlGWv0zOQjzYjd0D8S
 Onq0dtfk7vTgEDWLVR8leLKluNPL5p80WFoyWQD5Yw6gtlkKODGVyE1amFQ5eVeGKgGr
 64XxRyBvdlTrg7UdRUssczcr+qeSiSCDpuHljTz3cIFZZEVHaklB4Gm1gdr77eTQSuPc
 zBpw==
X-Gm-Message-State: APjAAAVAZjBMY7egCORw2tb35pAxKzjJkMnlH1+I6HfbERRHuReGeys+
 oQof0YmBvwMk7rvTNcDZGGvPoXieD2j0dQ==
X-Google-Smtp-Source: APXvYqxd31GalQHglufXhJap16lK/DzJU5TFe0799jhvV8zXWwrroNs5HUHJZR1S0kMiTp9HOfNbhw==
X-Received: by 2002:a62:14d6:: with SMTP id 205mr148943107pfu.4.1559125597639; 
 Wed, 29 May 2019 03:26:37 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id e12sm18992183pfl.122.2019.05.29.03.26.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 29 May 2019 03:26:36 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/4] fix mediatek drm, dis, and disp-* unbind/bind
Date: Wed, 29 May 2019 18:25:51 +0800
Message-Id: <20190529102555.251579-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_032639_213121_20CCCDE0 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are some errors when unbinding and rebinding mediatek drm, dsi,
and disp-* drivers. This series is to fix those errors and warnings.

Hsin-Yi Wang (4):
  drm: mediatek: fix unbind functions
  drm: mediatek: unbind components in mtk_drm_unbind()
  drm: mediatek: call drm_atomic_helper_shutdown() when unbinding driver
  drm: mediatek: clear num_pipes when unbind driver

 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 8 +++-----
 drivers/gpu/drm/mediatek/mtk_dsi.c     | 2 ++
 2 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
