Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF3F1C6C06
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7SV1DAQQSsFrKI6LJa9Iz6+YS1trHqll20wVwxnaoJs=; b=tvkBZbNsXcXUdM
	FYeJMePjGJaa+Y9V8w/cZq4V6iOe+U/t3hcVBYuuBkJV3yFidAdqbS0cAh2xuH0XYlgKljP+NhvUi
	A0Fnm9I/fybh2eBbcWjTm2JnfewHue2AAczHu5JAJY8DiipH+ZvxqQ5s9iwD+rCgBmQD43MjYIaEe
	6Tt2XIHzY8W2RkuLlfl/EGXCjI/2Q+GkOsBzDinAkfcXfNpew4QzFFuXIlcUQawSmJdUpRNeQaHme
	bVulfP3zSxsAdxN15B1x5fLzdVYc7WY3Z/+0YnEs5fVd1+qMIKXH0ZpesyZeGjkKDPcOgJa8FUoAI
	0nSbIaUzbJnPxivKSFXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFcS-0003K0-U9; Wed, 06 May 2020 08:41:32 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFcC-0003Hf-3f
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:41:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id n11so471300pgl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 01:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VkoYcVU7NbBeJg58Zqc5BWaG09vaVe4UBMU1LZjqb/g=;
 b=CIpRiYea9WavKCCzFUX1KcmqQRqXAUfnUOpK6kYBI47aHAW2q68iHkQwQ9a53C4+mm
 bfI2CWK8Yr2OJlemlrTiq2q/w0fUesykOuoV/uPt11BXPFji9lBmU5tQeBjrbr3Fe8QU
 3U+D2JeKqnISGbxkYsJdYFDrdMSz6AMv3TTmQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VkoYcVU7NbBeJg58Zqc5BWaG09vaVe4UBMU1LZjqb/g=;
 b=HPx4QmI/GMUN1E5XawsDEnFRW8EgLh3fjJ2TYj0/M7qjTsDCZ/G4upT7PghuhKmJC9
 v/Guzwx0w84ffYrsynyExff8pHVL3/D9vzFkRDzqZYMw9pi6I5d8x8CezToijrNq36M9
 kU+/Dwti4tTSSoFuk5iuXHsMvJno6j1V3oJ6e1hi5MRYobow/xelByailWGBubhPAyE2
 dCf7yeWz6bZC+qFjIuHHlGU0HW6WJulOhzdiDUt0Bb7jqsKUoU0VlxeHlO0TiHgxcz3Q
 9dSzKJ2bcG+aQIF/bk/wznmwAY2SqqF0haQrIVGZa5y5zAb74jxm8TeVsd6JpAbntokW
 BxAg==
X-Gm-Message-State: AGi0PuZiHb97UMepUGgbjzWE3XCIVMKurqVjnkm0GTnlOMJmgaffxRlx
 SYCkRtrHt7/bsJBsRO9iZaF6jg==
X-Google-Smtp-Source: APiQypI0J1HwXbViVLlYWXD2Y2yI1V6k6VKFQ9zvlAicFXalpNwCJAXSFHp0zsOyvBrN9HZalI3SBw==
X-Received: by 2002:a62:7f07:: with SMTP id a7mr4606572pfd.34.1588754475570;
 Wed, 06 May 2020 01:41:15 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id o21sm3986931pjr.37.2020.05.06.01.41.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 01:41:15 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/2] Refactor MDP driver and add dummy component driver
Date: Wed,  6 May 2020 18:40:37 +1000
Message-Id: <20200506084039.249977-1-eizan@chromium.org>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_014119_847202_37347D90 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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


This series depends on all changes in the series:
https://patchwork.kernel.org/patch/11530275/

We are adding a dummy MDP component driver so that all the components
are properly configured with IOMMUs and LARBs. This is required for
us to get hardware video decode working in 4.19, and possibly newer
kernels.

Changes in v2:
- remove empty mtk_mdp_comp_init
- update documentation for enum mtk_mdp_comp_type
- remove comma after last element of mtk_mdp_comp_driver_dt_match

Eizan Miyamoto (2):
  [media] mtk-mdp: add driver to probe mdp components
  [media] mtk-mdp: use pm_runtime in MDP component driver

 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 172 ++++++++++++++---
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.h |  32 +--
 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 182 ++++++++++++------
 drivers/media/platform/mtk-mdp/mtk_mdp_core.h |   1 +
 4 files changed, 286 insertions(+), 101 deletions(-)

-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
