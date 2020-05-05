Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4424F1C526D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=unf8MwsGQIbc2lNvzXTzjGOgSKdIAclNUGeEzbg/tV4=; b=ubm0+NZCG6utO1
	lkzxVu/b3TgUm7kpatLWeCgHva6Zv3rjm0agwGlGSaHGMHtoym68t0nF3WeL6Q9aARfby7nOq9C1J
	d3e2a5ImEy4JPkMxC0MCTiPoUv0npcJAuQ2ttNadPnHlbAaCYU1FpYwh5t8KtZ4EpBUNucja2RdQB
	EaDkFfSf6QOO4V92XQH4mCv6gWTU6E1Df2Kc2Xud3HVkfwGYozdTMA6EZkZI6/cX73pjE7lTmT5Xk
	lh/x+iQrY6EFeC9YNHinVfu40GrN13cG7ompKNlOGn6eBU07+NwbyMtbBZRkjmYm6dEaZbRG/uGti
	G6xkh1/8fNWvLmz7XSMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuOl-0006UV-4H; Tue, 05 May 2020 10:01:59 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuOY-0006QE-Mz
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:01:48 +0000
Received: by mail-wm1-x342.google.com with SMTP id u127so1641717wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 03:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+LL5Exw/qifs+ywjXu90IVbYhDqBc3wJ0gzzOrYmWxA=;
 b=h+wkAt1i/yCYuX+qg1JC8lx8oQsta2OrisDGdBFuMTcvtQk/cQivwwqTaDR0pmR3DP
 39LFUa7BjHELU77lw1tHM5xu+whtgayMBcmmYv3pIh9k7md57hp0p93IVtvEWnIqdujM
 coqXsmWyzIIzwqGFLyxYVnKyb92OfpUSbyDGNjGexX6ymnJPeW7KUNHXsCB2YO6JPH/n
 ENOoE7YlGuM/vT5atE4/qKpekrQsvgrCqC2/4crQaO2O7W+OLjuQGfD5khlyDBk5OuuN
 2wuWE6Kfi+D2X9DZJQ9f8lJU8LiHMfPbQu6xwjW/piotoJSnupNpYhyAgkg7XEWc77L+
 ueSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+LL5Exw/qifs+ywjXu90IVbYhDqBc3wJ0gzzOrYmWxA=;
 b=fBOQz3E3Gy+RyfEAc42VwFXGQSbwE7y/imSww7ga5tHFA6pjiqRKjUo2gCycgIT8W2
 IXGNZVnovqwxEuYGjYELOd7hpnzVa7B7MKgMhKb1JoFICxuWbV4e3ktfCuKXb1gUwAOK
 v0mogFl6TIkCLpAGCQrlMxaKmdwmdpdkYRzgEU0RtlrCKC/DMWxiXT9bP1OPYvi97KBj
 ClH3AlJGHjpQx5yvoQAkABzSt7I56PAhSYX8Hg5h2GvvfRWQQoishjhTmSUVcIMTi5cH
 tMEEOnwUstlMSTpmxD8WiCOCC8oBApLhXwl5ZDv5jYQtD2cNx4IfKLzoZrraDUwLv699
 IGFQ==
X-Gm-Message-State: AGi0PuY8Y9z10dpKKtpbmVKpwsQPVgE5cHZ/7AF092FXXzO9r7Zd0i7K
 g40YTVq2KycMsNzFjCYjwuffBA==
X-Google-Smtp-Source: APiQypJH4ypVMYFM9XMVWAInmVcCnVeQt1dycl0lYgZmTAGLLZ0z5kQZxnBsAutgmTA2Hwem48xMXg==
X-Received: by 2002:a1c:2002:: with SMTP id g2mr2318452wmg.109.1588672904726; 
 Tue, 05 May 2020 03:01:44 -0700 (PDT)
Received: from localhost.localdomain ([37.120.63.158])
 by smtp.gmail.com with ESMTPSA id n6sm2884258wmc.28.2020.05.05.03.01.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 03:01:44 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Marco Felsch <m.felsch@pengutronix.de>,
 Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 0/3] media: ov8856: Add devicetree support
Date: Tue,  5 May 2020 12:01:27 +0200
Message-Id: <20200505100129.104673-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_030146_787304_73AFC740 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Ben Kao <ben.kao@intel.com>, Fabio Estevam <festevam@gmail.com>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Robert Foss <robert.foss@linaro.org>,
 Tomasz Figa <tfiga@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds devicetree support to the ov8856 driver.
In order to to aid debugging and enable future sensor
modes to be supported, module revision detection is also added.


Dongchun Zhu (1):
  media: dt-bindings: ov8856: Document YAML bindings

Robert Foss (2):
  media: ov8856: Add devicetree support
  media: ov8856: Implement sensor module revision identification

 .../devicetree/bindings/media/i2c/ov8856.yaml | 142 +++++++++++++
 MAINTAINERS                                   |   1 +
 drivers/media/i2c/ov8856.c                    | 190 ++++++++++++++++--
 3 files changed, 319 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
