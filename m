Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9601C4CCE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 06:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=74JbYDqTGyl+iJH6gi4MMGnKz+912F3Ewz2TVJKNwfc=; b=HRhDlYohSae3Ki
	U5aKfbWxDiZvA3AvpyfPfRlqu9d5myNDV876iOj+VIpwqFc3sxBC18N+2UkgOSXvPWwcQtaNtoDvq
	OCYDt9Z1Sp6m6sw/AMyXG6vVjvrCjGksRGb2vFKlBntgZTamna8L3FhhZSYq44fAC+rTkXmAtDIzi
	y7g9jPbtQtjv8DgnL4hUWjfQjkF4+dhJe+idJCq6dMQyV61o440f1bAvOMbH1RU2R81qlE8MLJ2B4
	3M3XwOjBS13y/z1hvCXJwzkLjCbkbzgDjtM8PDe1tepWYk6uqHHU/c1Cu7MFUNv0zRaD4+DYmU3Yu
	qqdiHrx0M1khYVpl1iFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVolY-0002zX-1z; Tue, 05 May 2020 04:01:08 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVolQ-0002xu-Da
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 04:01:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id x2so259175pfx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 21:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zXcNVzanMlcydlCFrB2r+HWplGTpnlRV6J+MdBaPrW0=;
 b=L9xooj06SkKYA1F/mM6gzkXw0XRoE4+PPOkuKWhil2K0egyXKdJzupiMsGnMwT0YZQ
 xGiwlJ5L/ot5yLd7/aWq+6s6xqhhn81GenquLvLfmVrAVCzRFE5iCEWnvH3ef9uQv72m
 Ixc8jb7K6KPUUbjSkttRV/P8Yde3shEwk7HKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zXcNVzanMlcydlCFrB2r+HWplGTpnlRV6J+MdBaPrW0=;
 b=LH1aZmcaLDxGugNIvypYuDUt1QS7Q6v4HZfGfO3Cplkzc0sdKBMrAG1bMHDVe96e+W
 mJ8jN18B0b4DWmUio4N72B2bla+jPS3b8Mp2zYo+EdFwAAGtL2heV/Rt0Z+hFAiRP4k7
 UGxKAyNPWTlEHA555Epord9k9q7gcZUEXlWmDO/umSL6m1fPg0pohnXv50v/s9+IcIzK
 3pBBmaVwzDMGVKuZkCnptzf5Sz0JfQr1XBaClcn94lrFEuz0cwQK4yD0CRXlbQZGfeZH
 rb/K3pKYJ72VdhwmDIfccYDrgQ0ePOFSGPRhBIDnlURLAKiSdpfXxSOBcghxrDCbP/Ql
 sh/w==
X-Gm-Message-State: AGi0PuaQwqwfcNOuDaF7Obt48772LQiTt5dVOt4rECeHU9F6J/JZREtB
 uPh/oOi5ZJcgv6Ue33wrOpJsNA==
X-Google-Smtp-Source: APiQypIp32k7wFgY1LdvBHBmqXAPISaNhBFaTPFmVLXNVlSrCu74vyD+6Dj1MKLOgE+L+DG1C5YGzw==
X-Received: by 2002:a63:1103:: with SMTP id g3mr1357965pgl.206.1588651258943; 
 Mon, 04 May 2020 21:00:58 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id c124sm585707pfb.187.2020.05.04.21.00.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 21:00:58 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
X-Google-Original-From: Eizan Miyamoto <eizan@google.com>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 0/5] MTK MDP driver cleanups to prep for futher work
Date: Tue,  5 May 2020 14:00:43 +1000
Message-Id: <20200505040048.132493-1-eizan@google.com>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_210100_452658_0D1382FD 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@chromium.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eizan Miyamoto <eizan@chromium.org>


It most notably converts an array of MDP components to a list instead,
but also removes some unused fields.

This series of patches does some cleanup in preparation for futher work
so that hardware video decode works on 4.19 and later kernels. We are
planning on adding a dummy driver for the relevant MDP components that
will be bound together using the component framework, which will enable
calls to set up IOMMUs and LARBs, and make calls into pm_runtime.


Eizan Miyamoto (5):
  [media] mtk-mdp: remove mtk_mdp_comp.regs from mtk_mdp_comp.h
  [media] mtk-mdp: handle vb2_dma_contig_set_max_seg_size errors during
    probe
  [media] mtk-mdp: handle vpu_wdt_reg_handler() errors during probe
  [media] mtk-mdp: convert mtk_mdp_dev.comp array to list
  [media] mtk-mdp: Remove mtk_mdp_comp.id and supporting functionality

 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 60 ++-------------
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.h | 23 +-----
 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 74 ++++++++++++-------
 drivers/media/platform/mtk-mdp/mtk_mdp_core.h | 10 ++-
 4 files changed, 68 insertions(+), 99 deletions(-)

-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
