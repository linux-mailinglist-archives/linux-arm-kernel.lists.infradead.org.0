Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D25254D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yD5c2wXB3iN/M0/hYKtornajfloFaMitAOZNEMe/0U=; b=Zf0OqRm3JkDlcM
	wdj8swdt74A93vZnm8XQVo/ep/LYL/2Ndy9quO5VBiZah4CBWgqwmb8vpCkVYGbPiyRcBQub2caY9
	S0ERbDUXwFuxvB3900ItrvwdUk+C9N2dYwOHJrCZbR8RYlgQ39ries3XZBE67LVZo9RubP+1TunHC
	POXsat4fwHuGXfjqbK/phOZpKGFGSHsl8J4zh/cgquvbWUder4AlwZPg/fQ7Cw1n97elZIBWCvfqp
	Rwp+tBLB9qb1CFXIPzdyRTP2Nrkk+i+0KqfOh2+op5DH6ZdlRz38vSi4ZpZBTv6RcLaMN8pEF85+b
	sdtRDMZsic5DWyFeUYtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7Fq-0001eO-JA; Tue, 21 May 2019 16:04:42 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7Ev-0000ak-71
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:03:48 +0000
Received: by mail-wr1-x444.google.com with SMTP id d18so19271734wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 09:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hGVC97kr/8/BngU9FjmbWaxR7LHVSKdzb8qIb3rfhLw=;
 b=HRRHLDE1UdIMVLXhwmTlkWpovX6rwrEXPgpyKoOZuazWMIopdAk4WZP0WUYOA3XTgv
 vQxe4ruWmBTcZJ4wCOqsdA/7mq37vXaU/eCoqqgnI/abpOR0Uu1ny4UDdtz6hV5lu3Cr
 awd1tgjLmydezd0eSTlv5xZlJOerP4Y7+98cXdJrzEVoL4TmL7kcZ9mKvq4oj6y28ahb
 uRIEZVH5wTF0UWExYRcZxojFsjmPrlS6zTGDFxDs1nxv2oeTGakE7+a47GIZ4Iu0KthH
 3jf65+ePC+f3evSjgiHaXfaR8C7FTuOTSSvkGe/WaAnHoV/RzggAAqhPMFE7dzcMGLLd
 KvAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hGVC97kr/8/BngU9FjmbWaxR7LHVSKdzb8qIb3rfhLw=;
 b=O4+tVVdyV7T/xPdmKQM+ZJ1782Qolk0lbHwqTFyud0HRLVYpI9wc77aRBwK4khAcUc
 ri1ipjD0gU32HX6k2duh70O+CvZZHic24EPVrBr/0vPsic64rX2xneAHpXPYMsaGKiWE
 Lvl+AkAdLc6yxfdKHezTCq1glb2zU15O2jGSBi5U/gaXrV7/L4FZttvmN1uqAmqabz6T
 Wpe7ks8GKTzKFIwdnl7GiCPBJya3pzQtEL5YKrJICxB6uLd77nrIgnO3xY70h86A0qx/
 YFfw6YyORpGFjND4JicxUwyaHG2SJa62QaKGAy0z0b2jMjQMDeUpt1iqdaawdKJrO/C5
 RuYQ==
X-Gm-Message-State: APjAAAXduJu1+v7wr2BYk6HEWJnk3SFvCDUFV3DrGanQtvW75V/t6I+E
 STkFPEmlQrhf51R/wxXlm2s=
X-Google-Smtp-Source: APXvYqwsJuVrNQzCHOQhxugVzCWj6HJBBTOVQD6czAHbkhVTt9RaLaBMKvGnLoVMuS7+6erE1Vtuuw==
X-Received: by 2002:adf:c149:: with SMTP id w9mr40235573wre.40.1558454623694; 
 Tue, 21 May 2019 09:03:43 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id g11sm6853811wrq.89.2019.05.21.09.03.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:03:43 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 5/5] arm64: defconfig: enable sunxi watchdog
Date: Tue, 21 May 2019 18:03:30 +0200
Message-Id: <20190521160330.28402-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190521160330.28402-1-peron.clem@gmail.com>
References: <20190521160330.28402-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_090345_803187_5551852C 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIFNVTlhJX1dBVENIRE9HIG9wdGlvbiBpcyByZXF1aXJlZCB0byBtYWtlIHRoZQp3YXRjaGRv
ZyBhdmFpbGFibGUgb24gQWxsd2lubmVyIEg2LgoKRW5hYmxlIHRoaXMgb3B0aW9uIGFzIGEgbW9k
dWxlLgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNv
bT4KLS0tCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnIHwgMSArCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29u
ZmlnIGIvYXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZwppbmRleCA0ZDU4MzUxNDI1OGMuLmZj
NTFkZDRkZWNiMSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZworKysg
Yi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCkBAIC00MjAsNiArNDIwLDcgQEAgQ09ORklH
X1VOSVBISUVSX1RIRVJNQUw9eQogQ09ORklHX1dBVENIRE9HPXkKIENPTkZJR19BUk1fU1A4MDVf
V0FUQ0hET0c9eQogQ09ORklHX1MzQzI0MTBfV0FUQ0hET0c9eQorQ09ORklHX1NVTlhJX1dBVENI
RE9HPW0KIENPTkZJR19JTVgyX1dEVD15CiBDT05GSUdfTUVTT05fR1hCQl9XQVRDSERPRz1tCiBD
T05GSUdfTUVTT05fV0FUQ0hET0c9bQotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
