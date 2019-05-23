Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C6A280B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnedLVLdx4RKEFe6uwritAFjMEJe1eqW1F0YNpX+6ms=; b=eB2ji+UDoii+f1
	A+jV9g1+Hh42iGQ4sA5Q3qGeOmZiR6EFWavKQLlAhNo9OTWAHFecKRefn7NOfB7UL3BxxnEV5kROh
	uZhc74G6HpOC7cOpo+M28ri1nnHADPB8//Gg7LKgsEYRBEYbhE6RsqLGJ7TkChO5vPQY5SDU4/NSL
	YYfqhbHKfsroLx6t/AbbPnEYRnw71fTP3CkFV5fnXtb/mq/MVsmBTRlhH6GjTSy6rOiHyhGMO9AtT
	sNYeRiSLWw30DtAaRUovbJuqrezSASmF5RByYNYfQv2f9eFzte4+FXhQnvPE3ogFfTZzi0uHDeie2
	hbLZvMdgz4rr39hYxEKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpNq-0007hH-Ju; Thu, 23 May 2019 15:11:54 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpN0-0006mI-IW
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:11:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id l2so6691825wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 08:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9wwz+xfCsHkHpcqUvXeTMqGEu53cQ0RDs4iESG7T3CQ=;
 b=oLDDUfny5GtdyO+VUAmKEqF0H9jggBBicRo3ExIGe7XhbAMOFPWQmKFj8k8jbGzVK3
 +vu/jtK1kcZxpAKsSlNtOXKE25fxw5yoSPHmVUkx3CHQDdllbYQwj4Mq0CMq5C/0/mDr
 86jjGYEWvwLnW4k2LzY4dAbGh2AN26BqQsXRAhPn5qTWog50oKgs4aItEc6cLFiyLRol
 uFuC0uMs1VsVLUFiciLx8JAxuFVE/kFeqAegOGsK9hUV82gwIlhk8+lOy0qiL5F/Msvz
 ohCfn2iEqXyYH1cZA/MjMMCBTjhE4gH3wZHG6FZBQZnh8TBWIpXPxxYBMEymrwOZ2dAN
 j8dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9wwz+xfCsHkHpcqUvXeTMqGEu53cQ0RDs4iESG7T3CQ=;
 b=JqsuQsvKSC2Yf33ZfAsbsOHseW8QKHA7gGMyC6vbtmeLHCzAz/qiRFlBnUFNKC1ryG
 HE5Q6tynViklPPEUTlpAdQeqXmlWvWTZb/9yf2YQhXLARqHCO9N+6BMHlOFEDyZiwYZ6
 Kqz3oXVUd1rr2Peb+qGFo72PVUoMKN9gtyWmrzdYM/bOuHyea2hhbbp2I2jRPxSMylah
 CnpIiveTX32iJsSff2i2sXN4lQpdsXQEY1/Vx1zfKpnA2pZYRAT2bBnk+naOCwBqnxsD
 II8TBAXp57H8EFtSF4lAbBpIS00EJFufq3tsG3ALvs64dh+SixEH+dq076SOEh7GBv+X
 Fx8A==
X-Gm-Message-State: APjAAAUWTrTwCAUCr7TCEKosAelYXN8xmhN1ygs6q7WWf/91P483oJNI
 YfDMkb9ykLpuFDLR/esnRDc=
X-Google-Smtp-Source: APXvYqwpqFOtLIWfs3xJWCqQCSaru3enfRBsUpAknbkIYOU0UUgbvZX0ZeO7EK5SZbkov/7ukjHJYQ==
X-Received: by 2002:adf:ce8e:: with SMTP id r14mr46914850wrn.289.1558624260438; 
 Thu, 23 May 2019 08:11:00 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id q15sm11436324wrr.19.2019.05.23.08.10.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 08:10:59 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 4/4] arm64: defconfig: enable sunxi watchdog
Date: Thu, 23 May 2019 17:10:50 +0200
Message-Id: <20190523151050.27302-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523151050.27302-1-peron.clem@gmail.com>
References: <20190523151050.27302-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_081102_949282_1559290A 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
T05GSUdfTUVTT05fV0FUQ0hET0c9bQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
