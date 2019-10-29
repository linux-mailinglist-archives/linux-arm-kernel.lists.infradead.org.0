Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4AFE8FCF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 20:18:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=irJSL6X8zkb4wMtTtBTIK/BcipDSgtfxulA5J+If2ho=; b=RVr
	MrBnzH+bMbLQwa3Oy2/m5QDUm4Bp9IfQuCyRlx2cAD46uQS5eHcsOv7cxeJM7I0XC8No6VFna6LJY
	cVi7r+d2rTVDj2J8cwbYhWPpbrjMJ3NBHm8OyCX4ydYR+Iw4T7AHvYCxUuNGaK2yLrb6AF/BNPosE
	RwGn6FEi03nOFD1PGopRwEoGorZMBq/WxNIrO0uvXqwENpeh4i3boeOxwBBoEwEpUPgv5Gcd7gG6q
	LsnlJ0XuUFIARvA8jYUgtr5TZGLBN/hKr9QcsSexs2LwDIFcWhnfYOsCM+4QHsgEXrpoKvR1d8oYm
	fapv3CAxUpr4v7FB7uIufb4OXqomCIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPX0K-0001vr-6c; Tue, 29 Oct 2019 19:18:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPX08-0001uC-KV
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 19:17:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id l10so14919215wrb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 12:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=b2dn1SeqtrpMCE6ny/3qCkKIFN0yrPzK+VM5xpNw4d8=;
 b=Zyk5gtjpdLviBk9jsvEc7RR3u0srQtn1vTw21Hbym/7TKEtqDQ10J94GFRTW56KZon
 iegTxSsVi958hn92pams/H1a6pv0byz0R+RVVdIg9VlFqQP4TdVF2m/W3mbTTQJoExTj
 ff7oFJ9mjcyC4V1fNllS5vPG1g0vd+DhmJOD23iGdrzH9taOtdwZwx7LSZH4Br1IT3wx
 H2wWaXQ4Q+JelxMhRDW52Q4a+XvUAJ10bBfu3KPm7ieV5y/nh58Lkh7jrcvG/05CsW2w
 ExzFZU8zX+9phkTM6Ys7RBmB5tL3I1eQ8RbgUWuMHI9sn6liP8aK6Y0s6C+FtxlLII9S
 rhrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=b2dn1SeqtrpMCE6ny/3qCkKIFN0yrPzK+VM5xpNw4d8=;
 b=Ib7BvBkeiHeNFbHb4puGpJLnGi8Ux4VTF57GoFXhSQIgqr4Gs2zmYgtkjUWwA3efm9
 hvu6GmrSR4quvl3ZYRD5PWwKp7TKZnob6otM+rNB4rMVIgvfxGpdv+7oWUeILiP3wM08
 YX+U0AwBCCEIcC2tWNFOpaCjblYza9nepdP1GsD4L41aEGNUyZdwGUWPVsIvOeajR9ki
 EE8ObWfZay+TLqoZJR7CjXELYmYCNj6mXhQRkZR1D1MQtU9fIx0OzEl6xad7SiE1r1CE
 l8n4IfM/7qmFzaoUdw1MxnJOe4KBJ46VfYM61rkV5yzBnp3WmUnXmu7usrw/1VGPA+nW
 RCGg==
X-Gm-Message-State: APjAAAVOqJwJp/4Dd8Nhn5EJd8zFqn/I1JJvLEvjJaA+KlKHyeR/BpCG
 74qS/1eTofN7mFhf9FCTIJPwvA==
X-Google-Smtp-Source: APXvYqyM2go1b1G/RM2lrR+mSRZw44cAY0wBRI/Rk71pe1bwQfHZOxviW2/DPPw2w8+V6inqVnkBvw==
X-Received: by 2002:adf:de91:: with SMTP id w17mr13462824wrl.322.1572376674466; 
 Tue, 29 Oct 2019 12:17:54 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v128sm5493043wmb.14.2019.10.29.12.17.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 29 Oct 2019 12:17:53 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mark.rutland@arm.com, maxime.ripard@bootlin.com, robh+dt@kernel.org,
 wens@csie.org, jernej.skrabec@siol.net
Subject: [PATCH v2 0/2] ARM64: dts: allwinner: Add devicetree for pine H64
 modelA evaluation board
Date: Tue, 29 Oct 2019 19:17:41 +0000
Message-Id: <1572376663-22023-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_121756_856995_5A7E604A 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Changes since v1:
- Added the first patch for stating which model support the
  sun50i-h6-pine-h64.dts

Corentin Labbe (2):
  ARM64: dts: sun50i-h6-pine-h64: state that the DT supports the modelB
  ARM64: dts: allwinner: add pineh64 model A

 .../devicetree/bindings/arm/sunxi.yaml        |  9 +++++--
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-h6-pine-h64-modelA.dts   | 26 +++++++++++++++++++
 .../boot/dts/allwinner/sun50i-h6-pine-h64.dts |  4 +--
 4 files changed, 36 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA.dts

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
