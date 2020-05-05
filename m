Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD95C1C4F69
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 09:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lKt3R4uMOhW+b0GjiduoTXHRzoG+XYp8cudamdHQbno=; b=MOH9bVF+ieyS/z
	Rw3oMHIHVX2I7jrNNwVc52zhdsdFYaGhL+/ZNJmw3uFsmALxB+YiNofe2JzeJDdPUJ0DsSNUdrXOk
	eYTTW1mHuQOMuNMHv7jLxsl5m356CC1da2PYd0msPwsAe8iYvaw+K59pF8HzKaXD7ljOwEMfLw4Ul
	Ast879rzzgpvR057/99CSOsYArrAHgM5z9m2u8S4utENLEX0+Q2KA3tooo9kJmFNkfJHY9LKNNbAg
	D6ZzhxPA9cSzIN9Dr4pmSO9yN8pzz4lM5QTG1uBfc45HBL1bN6b04k+36jcIQu+xTPG9zFk5avZvS
	wSdN3DM/XXeehUK6cjOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVsGW-0003tx-By; Tue, 05 May 2020 07:45:20 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVsGB-0003Xm-IU
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 07:45:00 +0000
Received: by mail-pl1-x641.google.com with SMTP id u22so448598plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 00:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=O2pv13qx7VFGbbGCBI+M8Dk49yxcXbYowJJnWYcKPyA=;
 b=gTUcBPhXn7zwDJld52yMM64s04tMkXRJBQG1NWq/zYwXC6B1H01YZwAbf03E0N+d3a
 dsYVRX3mdZ9pP3VUEc1ki2liSb7gzB2RnSZzS39WlTfSWX5IENahsL6Ptt8mKz3pYpcg
 OyJfrpRgzQWKerlBIyhp3wbvemUv+0LOlwiCk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=O2pv13qx7VFGbbGCBI+M8Dk49yxcXbYowJJnWYcKPyA=;
 b=tFUReub4yVak7iEEr0xNfXsUFL/n7k4DEJPG4xbppm0zIM3iVim+kG3Lh8sn/GxE79
 4URYPx8zuFJrdOrszH6K074bZOAEOrzd1Qu9jWTtM2TovM6YTDg3cSWmNh+tly8+n74y
 6fBoC0SP/uiSeS5IBZxOH5sPSZIXd4b/553ghPMkpsRst/ZJYvhrzGHdeQjVHaIvgrbB
 I4S5hveQGR2x4rgWEj5g638eZ+cNEhf72A6z5NXwWyM/uLRkz82LNAIGLRPODrzrqB5b
 WvJ2gkVEuj4Emhlw7nCVSowH8ShCZC88FeBeHL8CKOv+lwX7G/olTTsRsMCJjnE1ADmT
 q+Xg==
X-Gm-Message-State: AGi0PuYjrg7Ln0pFO0fVCDOzYOw3I6Q8uEtwqXdnj4tDe/C7gjDUye3W
 9E964udgs8aTP6Yv0aXWfWDhbQ==
X-Google-Smtp-Source: APiQypKEj76sEkdrmamm6pACw3UuGZqt7SISdTgTQwe/a0f+om4l4A/EzQV+B3BPoL0Bs/K056M7Kg==
X-Received: by 2002:a17:902:8687:: with SMTP id
 g7mr1976063plo.59.1588664697580; 
 Tue, 05 May 2020 00:44:57 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id j5sm1205741pfh.58.2020.05.05.00.44.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 00:44:57 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
X-Google-Original-From: Eizan Miyamoto <eizan@google.com>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 0/2] Refactor MDP driver and add dummy component driver
Date: Tue,  5 May 2020 17:44:29 +1000
Message-Id: <20200505074431.242840-1-eizan@google.com>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_004459_605744_8621A892 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@google.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This series depends on changes in
https://patchwork.kernel.org/patch/11528171/

We are adding a dummy MDP component driver so that all the components
are properly configured with IOMMUs and LARBs. This is required for
us to get hardware video decode working in 4.19, and possibly newer
kernels.


Eizan Miyamoto (2):
  [media] mtk-mdp: add driver to probe mdp components
  [media] mtk-mdp: use pm_runtime in MDP component driver

 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 186 +++++++++++++++---
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.h |  33 +---
 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 177 ++++++++++++-----
 drivers/media/platform/mtk-mdp/mtk_mdp_core.h |   1 +
 4 files changed, 297 insertions(+), 100 deletions(-)

-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
