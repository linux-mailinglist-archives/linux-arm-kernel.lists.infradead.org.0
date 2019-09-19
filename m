Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5398B7281
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 07:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hwgadk+OjvIwG0zISNxAgwEhkMRh2PcrbPDiyyn/EqI=; b=Lt2n7sBZBAfyQM
	+r3nhp8rwVcWqTCxkOeIkbTaRg4dDwaOD56P+ZEJVOBAWvUJ4/MMk0ctQxxKMZbrQN1XLQFtJQ692
	EeHNxilqkPCQ9GuzxqoiDbFHo0QLdUnNnW0F9MKt3zxEB6Ah/rL/t02TBx3KlPi2xd69AUavJraqB
	xim53koHwpUobebUW4Wy+zwiGpeKfyKhcf7pay8hFGaKDB/WMexbNopKrfdO2cmPFR8AhWWcmeHSo
	5nb/w1U+gPH2EGUAUT/NCTQg3pbG49YhWfw9A6JOfQ1DOJ7jRcjbTyZag38N6GzGE6IykyWgpHUAQ
	thZ/n3z7SoQo2lpAjIDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAoiX-0007nh-40; Thu, 19 Sep 2019 05:10:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAoiH-0007mW-62
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 05:10:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id o18so1533737wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 22:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ttCTUHrEZ8RqxMqrfUks/MJVxPs2athVlNQVJH23ON0=;
 b=pdgjowYLRCsuSv+iBZ5rHqIu+XC7Y9/cD2khPCOXEgPLOtByZUabXyd+pJgoS/hJjp
 5Ang/uWeIaLhscF6XMOZNYeYPwVJZ6BVKxSZj6aQLbLJxrzjx7GMceAcyq6bi+JjOKah
 pnZZq33rabWGrHt4TwpO+ApAcTm2EbXb1pVqCRVjWE8wiI4zPoUNfnjv76JJeiVc6CcW
 towxbanDYZi+wCkEt0gUi8excCGijYHtQyPGRzGC/YFBiQ0k3GBlaQO8jQStkzutmkdv
 c+UMU7Dtd54b6Y5hndx9o3L9vusx8IPqMHjWjYDrcuPaYzQkv5zVKKngNE5988Ire5rz
 UK2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ttCTUHrEZ8RqxMqrfUks/MJVxPs2athVlNQVJH23ON0=;
 b=L3kb5xt9YFljLVTobpAR8Jsh8bmo5BBGQWvtHgZ4F5tBxq1a4uu3ACwuolqMcMpBMQ
 qJtmH+aj8vOXxaSLFoC2OPzwf2+T9fpSf8wu3Wg9OBpK/eFN8Z1E+FRgvUW461iguRz9
 umoImju68fkY4D0pPFNcLOKSVqPcywixbJugYrr+owHOCSXqfyqfdVeLALbCSmGVn+bC
 OlQrP8u5GIp6RoIgwoqb4JMhx11UQaIdqcuof5cD4hE6ZlqQ6vKXvaZgZlXYL15Wkd3I
 4DA7ag2DulKSg+rKDBetzkAOP6Qvi6561m90YA2rmg6IsKycbrxTkaHkA/PzpgjIHHoZ
 XgUA==
X-Gm-Message-State: APjAAAVbJRsCOJ4C0nfESZglVqaLvrWBZkafffJefSwlixV2KxAnVd/0
 TLJ5zhn4d4TcU/SBcrVhk+M=
X-Google-Smtp-Source: APXvYqzGta9q+xvqr076suhGvyYMAdJl62tIA2pJNMA7bhe1Kn3CF25JtfwxOo/WWeoF4ToKaq1CmQ==
X-Received: by 2002:adf:f401:: with SMTP id g1mr5140106wro.275.1568869839395; 
 Wed, 18 Sep 2019 22:10:39 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 94sm6575552wrk.92.2019.09.18.22.10.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Sep 2019 22:10:38 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH v2 0/2] crypto: sun4i-ss: Enable power management
Date: Thu, 19 Sep 2019 07:10:33 +0200
Message-Id: <20190919051035.4111-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_221041_254154_C9F3C05F 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

This serie enables power management in the sun4i-ss driver.

Regards

Changes since v1:
- Fixed style in patch #1
- Check more return code of PM functions
- Add PM support in hash/prng
- reworked the probe order of PM functions and the PM strategy

Corentin Labbe (2):
  crypto: sun4i-ss: simplify enable/disable of the device
  crypto: sun4i-ss: enable pm_runtime

 drivers/crypto/sunxi-ss/sun4i-ss-cipher.c |   9 ++
 drivers/crypto/sunxi-ss/sun4i-ss-core.c   | 157 ++++++++++++++++------
 drivers/crypto/sunxi-ss/sun4i-ss-hash.c   |  12 ++
 drivers/crypto/sunxi-ss/sun4i-ss-prng.c   |   9 +-
 drivers/crypto/sunxi-ss/sun4i-ss.h        |   2 +
 5 files changed, 149 insertions(+), 40 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
