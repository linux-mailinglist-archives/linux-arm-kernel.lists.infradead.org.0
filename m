Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8A7F603A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 17:21:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WKL1eUWAZ3kbdqP6xHAgNXbVSUZCkwk5VD1GXEZ7oZQ=; b=iCL
	Ss/cE4zPeFW1GwBsXxKVySnzlAxZ6MFDi7jCUYWj5mr5DpF1bZBH/zPbdYriiiXaurQDWKY8Ri1vG
	NfjxuaVd+QiZWjFDhZnsLp6oNzLrvZZVTU9B2eY9uABhBEtDGjFNrpdmei7kG+xWFTj6GmYnpHQUy
	h0q4P9QY1c5OTbSAZUQ4EHZyOEhWwXjAGsoWHFJq8D22WW99pvz+sC3R7dP+umLwcc3we1U67GEcU
	+hZpsWs1sP1+aTLMlae/UO4XeHZSJO0HbBYhgjdzR9G+souQm/dn0BgG2lU28J2/T3GE1Ye2mJMys
	xf1I92OVj9PYVgmuHG92aIyzboxqIoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTTTr-0004Ti-Uy; Sat, 09 Nov 2019 16:20:55 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTTTj-0004Sl-9y
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 16:20:49 +0000
Received: by mail-wm1-x342.google.com with SMTP id v3so9589417wmh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 Nov 2019 08:20:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=QxJTiFF2tFspkmtu1wQfetzhDZKVTexM39tXBbbNRGs=;
 b=jAp8hBi+ormRFjudgmYDiSOMdMveumDKk8iOfwVa1a0eKHmKLPwJfvvfj+Jaqh6MXK
 mG2saAwOrBs+yzS6Su8/Kh3ceJmMJNRYGZzWKIHnJGbqwLMeTxdPD/pTsQqZ/smIYxZa
 Hwmd4oRNfGvXmdxoZNtE+mVe97U1cod2JiQz7gqBU3IqHM4KJ39huM5ppJ3m48M97ub4
 zy9NGpj6R36mc4jbjPYTyoQAFnV0n0pDuFVc76MS/0BGlAEOWe0PCYGR+/pvMQWqmmyT
 kPIdEmeaczhaDmnUK83Y3v53jNywzQO4ZNyDxNCUZDYPA5eodKreRbqd2eDRFhzHUDEl
 w47A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QxJTiFF2tFspkmtu1wQfetzhDZKVTexM39tXBbbNRGs=;
 b=IwmViLvcWiMCNixVhZgbTvOBWtsNIX5GDC7L+YGKueWNeZbsr5+kA64LXqu0KZyxV+
 dV0wGXNhtT6XWROv9JF7BzaJLw/oHBFLNn0wMkD7nDomU7E+q5QZNBSxmjfZywhR5KfC
 LbDaWpjcDVh2knP/rWDJElpYsOs+CiC3aD0oHqmH8vTdjvOv/Wie7fLntVQ9M9lzycLl
 ojEOG1/FTLLX2yxw+wYIo9tCrFtsp7ALLohlkabXclxkX5o2v0CuZXQn5ZEF3KL71fa1
 GjXIglFFJGH114hHUeqqcwaLZBNHQA2sGv8ABonvPrlRV4eOO9eGUHepZc8pbwzyVmeK
 mPFg==
X-Gm-Message-State: APjAAAX2xlmmdb9ocN2uAJww/K1bm6EcgJ9KOXsyo35z26/rIDLffSk4
 MTJimN9nxGo+jR0Eg8Hj91DSyA==
X-Google-Smtp-Source: APXvYqzfpSw1QICUjqw55lc5O3xioumYYFSINgP6PwukID8b6dRepSRuAyhR68WqcEXvuvmDdCS1+A==
X-Received: by 2002:a1c:28d4:: with SMTP id
 o203mr13557036wmo.147.1573316445172; 
 Sat, 09 Nov 2019 08:20:45 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v8sm14534975wra.79.2019.11.09.08.20.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 09 Nov 2019 08:20:44 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org,
 wens@csie.org, jernej.skrabec@siol.net
Subject: [PATCH v4 0/2] ARM64: dts: allwinner: Add devicetree for pineH64
 modelB
Date: Sat,  9 Nov 2019 16:20:31 +0000
Message-Id: <1573316433-40669-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_082047_373766_9DA1CA24 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

Pineh64 have two existing model (A and B) with some hardware difference and
so need two different DT file.
But the current situation has only one file for both.
This serie fix this situation by being more clear on which DT file is
needed for both model.

Regards

Change since v3:
- state the current file is model A and add a new modelB file.

Change since v2:
- Added the HDMI connector node to model A

Changes since v1:
- Added the first patch for stating which model support the
  sun50i-h6-pine-h64.dts

Corentin Labbe (2):
  ARM64: dts: sun50i-h6-pine-h64: state that the DT supports the modelA
  ARM64: dts: allwinner: add pineh64 model B

 .../devicetree/bindings/arm/sunxi.yaml        |  9 ++++++--
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-h6-pine-h64-modelB.dts   | 21 +++++++++++++++++++
 .../boot/dts/allwinner/sun50i-h6-pine-h64.dts | 19 +++++++++++++----
 4 files changed, 44 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
