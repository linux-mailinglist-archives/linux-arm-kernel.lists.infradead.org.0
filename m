Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01809DC4E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m6J0dR1XfBhZyy0YIbOcqtOJ2CQsa8FnExLc7Khh8Js=; b=YM7Ln8RPtkGR2j8ge8lt1Douis
	XHwoSoV9z2gShu4x7cdCwVJSzrqTq+G3Uv6XMp144f8IZzOutdfi8jvdJarSjlxO+LD73u3s+N0kW
	+HlAKzVYKrXpQcuR+UH4jLTkmWWR4QYoT4wZR7Mfq8c8uzeWf8avhKDbuMLl/Wl5Gp0l4KGdHpQO9
	ZK/mrShN6WJcn/iuivUbC3D47yvYZXdYYRlwSc/ZHFhetHv6YXP45ZaNgDtQTPIc36oaOtkL4CUMX
	gSu1bphL9vKpc+nCKh3KYXEKUpnOaWd6NBFnNxfvNpuygiVPMeMPMzuwqotQtC1ibxT/xQgqCCji+
	lRUnRCeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRNv-00040n-Bh; Fri, 18 Oct 2019 12:29:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRNM-0003cB-Lx
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:29:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id r3so6077104wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 05:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JOGbCAX9wvou6ywsxAyjFayUMg5QkjoPiWUMNf49UP4=;
 b=FHn4bQGUrrme8bhdcuqbKlKd4iJXjl0H680Dwdil6m5suU5dWL94Fgcyp/05VQzwrM
 IpHa8A90edNgbxCwOirUmCs3KMllZWamn0ZPjdUit+YGXPGCn/AtWY/S0v2uCdwJBAFH
 U/vk2d8CtrJgbBYDu7xAQgLbdcILRIy9qqgMYzbHvLjL8pcImeWmPwFTEuku/0jxQsGY
 Om6RbYNvZZP5ddmrJKbFgHvMnAnM0XF12HW2K71fIqtA9pF8DXdf/MXGzkGXYgxn0M4j
 GYj7PJ0cCmn6SZJSBAAwc0eBtAuEgQIBBtX95N7/SJWTIJag3z7yfa+pa8tQrRyNwHH6
 bn0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JOGbCAX9wvou6ywsxAyjFayUMg5QkjoPiWUMNf49UP4=;
 b=NIG8rych1FaY1jfN6jTMRLtq2hwVWXVspOgl5fPoxJTz/qwBY76m54MMTFugxKZMGe
 E6tPW6wjAKx5R6JxhGJJvXAm2bt6ASO59MdrPusiyE9sfbBX659iw8JS6omMepFWsjgz
 Mq+tVRjJpUWC9w4uaov99gcKIvAKAE9McHj8Hs0tsFbyv5d/bTjiW5ZxWghkiZFR4BLb
 ascpf1KZpQ0AuJ+fhQdyI8p4eRWzPuIWUlBIRI5Tt2ocDoJ0g7DyQ2iZgGe7Z+R5F6ka
 8RH+wqRy3U4Ddho2hjOwNpsfQL7JmBIGqa/f+/kGk18o4oxmp9NUN1v3DbIsDJpMrBKy
 rZpw==
X-Gm-Message-State: APjAAAXd/lNVgK9HuMiU9cE2snkbdNK2oaIkdtf0auWNmk90Meu7taUN
 2IFs+0AGG0C9rZBf6ub7BbnXKRaTTio=
X-Google-Smtp-Source: APXvYqxhqYisy4iiE3UsQz9L4d23eqq/hgE36QscL1/8FgBQ17hh2NLS5RjkL0/X2RyHXS88imp4Xg==
X-Received: by 2002:a5d:522f:: with SMTP id i15mr7209770wra.257.1571401739165; 
 Fri, 18 Oct 2019 05:28:59 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.47])
 by smtp.gmail.com with ESMTPSA id e3sm5033820wme.39.2019.10.18.05.28.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 05:28:58 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: broonie@kernel.org, linus.walleij@linaro.org, daniel.thompson@linaro.org,
 arnd@arndb.de
Subject: [PATCH 2/2] mfd: mfd-core: Honour Device Tree's request to disable a
 child-device
Date: Fri, 18 Oct 2019 13:26:47 +0100
Message-Id: <20191018122647.3849-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191018122647.3849-1-lee.jones@linaro.org>
References: <20191018122647.3849-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_052900_713057_C1571A69 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lee Jones <lee.jones@linaro.org>, baohua@kernel.org, stephan@gerhold.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Until now, MFD has assumed all child devices passed to it (via
mfd_cells) are to be registered.  It does not take into account
requests from Device Tree and the like to disable child devices
on a per-platform basis.

Well now it does.

Reported-by: Barry Song <Baohua.Song@csr.com>
Reported-by: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/mfd-core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
index eafdadd58e8b..24c139633524 100644
--- a/drivers/mfd/mfd-core.c
+++ b/drivers/mfd/mfd-core.c
@@ -182,6 +182,11 @@ static int mfd_add_device(struct device *parent, int id,
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
