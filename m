Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E5FF2D4F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 12:20:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AwkuMYVIqSrgTo/kQjQ6Bme9sDmJd6oduxhFO7RZFHo=; b=jslzrHm/T1TKYY
	Cb/7HwOWx7Y2rqehTC2aJwymvtmC8zZfB/0VTreZ+M5k6lBVoRFWo0ZDTPfhNPjtV8EEerMWWD1NT
	7tiecKDgqfN7I0zgbwry/9xxa2JYNKHUW5mwOKBWCATxOBcmrmClNvccOvvmGmitNl+MF3qOnTPuk
	WC1TDSnyrpYfRgPKjV5cacmgy+RPGm6ndzswN4md5YBLt7uNeSS1CJusHgcY1/D9ONfhPXKEhZmXv
	GCvlAq8fuVl5Z4mZtHl1wK0h9B26yNa64nfZ9s9PH5VqyJziW/2hhntCJTv5pfZYAyeJCEqRNfGyN
	zVrWe4yrIhDqUsm78KQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSfpf-0002Th-GZ; Thu, 07 Nov 2019 11:20:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSfpT-0002TL-SQ
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 11:19:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id v3so4630918wmh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 03:19:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IwdRFDOXkMcHZuF7dT3xdj3njNrFX7fm3v4BU31vZyk=;
 b=tnuUwkk9ZmM2/TYgNZYHyFz6ylE2usvhuyCX/ajLgnZUOknA13MLnl+Uo7bIqL74eb
 nLLfx7EIhM0AEHzaHt3LwRFsOuZCEL9zRLrfMz8/wMdBexw6giTTUqnizP81QyJJsgTx
 0E4oeLldDhsfz5+Zzl54IoWXeeUKDhHeOHg0mR1Ez8s4K8jFl7csKx6u5hJOpbmcQgYQ
 PwqYSvbZ1u7N927ATftjr5mzVu1XN+ifUJgClGSC5tguZFmmAl+Xw6Jr3ugorTuH8dL7
 fyT4c6qoAbWYGNUjmsgQbm9iBMhREF3CMrGRYQmQg6x/SzkbHojzmjW77SJLLtdiR1vF
 Q8uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IwdRFDOXkMcHZuF7dT3xdj3njNrFX7fm3v4BU31vZyk=;
 b=s/kDMGPuT+NOPNbh+AQdw6DCcpxQ2FniTFvaQkS1CovC2Y5OYP4mg/9LFATJoPsjdP
 s3pa8Bau3KjEZsBIVY9mJAtluTzKymW1x2UlUnDpM6bLoj9XJ2SmJY0H/afd8yGrkSzg
 MdkYdK1/NrsIlUB3M7/ZyPPiEWvH4o7tqtLopvR+jHzlx/FKhBxTkEVVcj5UphcdDYGW
 S2lyNG5CHFhG9rBPkhX36J3Rozk9tU7+9N2WINoT7xjvpC+EciCtOqgZs9JKbsewXheh
 g7ZRoVGR2D83HlNN+iBGuxZ6kAXUFx6VPfnkPvtP0B+ZuawIeme+xbH22MC41y+XOxNT
 +YMw==
X-Gm-Message-State: APjAAAVb6vqMwTe9y8OFBTrtAwYTxd1oxjb5jfQfwthcF3jumW0FM4xf
 h9yk4IJRC8RttbUPIQ94Mv8O7w==
X-Google-Smtp-Source: APXvYqxEPRhIVj+JQur9UlC44Bjo5MEJwHKQbFmC1ZGMMz3NkKm9ScOCnspb3A8Tfggc1Z+2SEmicg==
X-Received: by 2002:a7b:c8c2:: with SMTP id f2mr2207030wml.99.1573125593844;
 Thu, 07 Nov 2019 03:19:53 -0800 (PST)
Received: from localhost.localdomain ([95.147.198.88])
 by smtp.gmail.com with ESMTPSA id d11sm2566002wrf.80.2019.11.07.03.19.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 03:19:53 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, broonie@kernel.org, arnd@arndb.de,
 linus.walleij@linaro.org
Subject: [PATCH 1/1] mfd: mfd-core: Honour Device Tree's request to disable a
 child-device
Date: Thu,  7 Nov 2019 11:19:50 +0000
Message-Id: <20191107111950.1189-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_031955_916461_74F5C4E3 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: baohua@kernel.org, stephan@gerhold.net, linux-kernel@vger.kernel.org,
 Barry Song <Baohua.Song@csr.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Until now, MFD has assumed all child devices passed to it (via
mfd_cells) are to be registered. It does not take into account
requests from Device Tree and the like to disable child devices
on a per-platform basis.

Well now it does.

Link: https://www.spinics.net/lists/arm-kernel/msg366309.html
Link: https://lkml.org/lkml/2019/8/22/1350

Reported-by: Barry Song <Baohua.Song@csr.com>
Reported-by: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/mfd-core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
index cb3e0a14bbdd..f5a73af60dd4 100644
--- a/drivers/mfd/mfd-core.c
+++ b/drivers/mfd/mfd-core.c
@@ -152,6 +152,11 @@ static int mfd_add_device(struct device *parent, int id,
 	if (parent->of_node && cell->of_compatible) {
 		for_each_child_of_node(parent->of_node, np) {
 			if (of_device_is_compatible(np, cell->of_compatible)) {
+				if (!of_device_is_available(np)) {
+					/* Ignore disabled devices error free */
+					ret = 0;
+					goto fail_alias;
+				}
 				pdev->dev.of_node = np;
 				pdev->dev.fwnode = &np->fwnode;
 				break;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
