Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175F5CBBC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dNt9z+2RDjLp3HpS5U9chCtnw+DdK65j4bj4aRBPwNY=; b=M4Vp4USKEfuzcp
	eVUN/TtZI/z4cYyQOD9B+uQfzZT/OXVg9XyL7YOu3rpxnRg0PwLske6gA/lr9jlBzuOdgjP+Lr5g3
	An5mY1D1AlWdJfAr/fEWEcjszANTyh4UqxFlYLW4eAgazXddh/iALpPlbA/e/1NCrXjkUYFBabWcz
	aZfVUvoz2BJ2Av8b5xoCrk+zpKwz2VzNOXbHKp2F7UdVkKYbmABf2GSZ+qXuIlPHNgj9FycDqmb3W
	q5gq40shJ7/kjB2RTkPNZBJdTg/RwwJwECl7k98PeuxoT0wCA6axqVrezseU+8VqdyVolJ9vfTL6Y
	3q/0cPmAYpF1GD4tYGMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNhs-0005Fv-1l; Fri, 04 Oct 2019 13:33:16 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNhb-0005FI-NI
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:33:01 +0000
Received: by mail-lj1-x241.google.com with SMTP id a22so6566715ljd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 06:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6e6kNUFkOwggtKh2FtgQ72TKMBXQJNnsWv0kpOgx0sI=;
 b=XZkKHdG2crSiyzrMy2VYonGv0szQi+UnZmCse5Bf56kipSTq4oGJhOVzSkBSoZFHR1
 +ZF/LdhdrF5138bRvPtoMvzxccaUeOYRvhGHeLff0IJzgfXgOwBh7uHZdnco99ie3Xd7
 t0vZOi9c0XtZONz49s5W+o1BWQlyXdSavQ1zA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6e6kNUFkOwggtKh2FtgQ72TKMBXQJNnsWv0kpOgx0sI=;
 b=sHbD1mh8xOaNYID0Dwj+PlQCz9bYRTLiWN5S14P4XPKg0xZRvLUxwKrdLBIbmd9BMZ
 n951EPXZp+pcCYDkhoFvpxxBdCqcHpE8wqVnbV0llQMBSSbDQYsx3iZ4ist7cNM4MNfQ
 BERX4vFsYgojmmPsCVzp90JtuOac0h9vjUqokmjnbIYAUtBPNsm4EOI+B6wtOx+R2/ty
 tKqFjZrR9w/jX+DdboGMhd51MN/LfqbSzk8pWHJsugWyFeC8FSj37PkpThCj+64RD840
 RlxPilYT+LILhwP7obnw2HNbLhnFpR9tNf6Mclt8Q0vU+vVr2flHMBDq5bBC4AN9Aru+
 e2oQ==
X-Gm-Message-State: APjAAAWNzPOXNTRgoGCt/sEVMMOims1dNFNqu2ShwtTKcFo+/gd3nMh+
 GsMpJbAMGAU9PKhmb3jRXOTC0g==
X-Google-Smtp-Source: APXvYqxG/5L0LFLLyQDBwiDl6JJamRel6vq19pDlrjEK0hxD7neje+Af0NtighCjwoCkw70qCO0Dag==
X-Received: by 2002:a2e:9692:: with SMTP id q18mr9757018lji.73.1570195977546; 
 Fri, 04 Oct 2019 06:32:57 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id y26sm1534991ljj.90.2019.10.04.06.32.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 06:32:56 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/6] pwm: mxs: add support for setting polarity via DT
Date: Fri,  4 Oct 2019 15:32:01 +0200
Message-Id: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_063259_760961_379B15E3 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for setting the polarity via DT to the
pwm-mxs driver.

The DT binding is updated, but I'm not touching the existing .dts or
.dtsi files - it seems that the same was done for bcm2835 in commits
46421d9d8e802e570dfa4d793a4938d2642ec7a7 and
8a88b2a2017d1e7e80db53080baff591fd454722, while
arch/arm/boot/dts/bcm283x.dtsi still has #pwm-cells = <2>.

v2:
- Rebase to v5.4-rc1
- Address comments from Uwe.
- Add Rob's ack to patch 4.
- New patches 5 and 6. The last one is independent of the others, but
  I stumbled on this when rebasing and found the signature had
  changed.

Rasmus Villemoes (6):
  pwm: mxs: implement ->apply
  pwm: mxs: remove legacy methods
  pwm: mxs: add support for inverse polarity
  dt-bindings: pwm: mxs-pwm: Increase #pwm-cells
  pwm: mxs: avoid a division in mxs_pwm_apply()
  pwm: update comment on struct pwm_ops::apply

 .../devicetree/bindings/pwm/mxs-pwm.txt       |   4 +-
 drivers/pwm/pwm-mxs.c                         | 101 +++++++++---------
 include/linux/pwm.h                           |   5 +-
 3 files changed, 53 insertions(+), 57 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
