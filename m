Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FA3223E6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 17:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yD5c2wXB3iN/M0/hYKtornajfloFaMitAOZNEMe/0U=; b=Ctr9P0EUyQS92y
	kNBG37WiS86qqxZhIe+5KcchgNhdAHVlklYnD5vRnY7Lhn1T7Dn8vJPjr2WSoLfOcvy95mHGjYcEd
	iXeyjAlPl1cx07gsnXsRWmx1u9DMD9OMz3SCCqFN9+I98yZ3lx6PAzZSmpRK5pQdJ2xZOVdzRQNqM
	eEIisF912APTcryATH+EqJGOX56uM2IuPAaQZcZ9dgNYJY+K14RJpT8KBhldb9Q0qk1a+ZIzVw6Or
	rd/N56V/QUM7U88Jgyp8xRrpwPmCvcF4zsewydnW2wF2rYTNsucxZW2Xr+qpw5XuJANOmYbMcOAMH
	T7hKZWYSJTO0lQK6bijw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS1Ch-0003Oh-5F; Sat, 18 May 2019 15:24:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS1Bv-0002Te-H4
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 15:24:10 +0000
Received: by mail-wr1-x444.google.com with SMTP id l2so9994214wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 May 2019 08:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hGVC97kr/8/BngU9FjmbWaxR7LHVSKdzb8qIb3rfhLw=;
 b=BtXqZsPgI4WM70yIJTRcoOW/v1fHPTQ93blqEPfY62Z0eCoo1omvj12jxcouniHVav
 RWUwM8ayTu/1lelHgxgyVv/r3oNEOc80PvKVxuCHjdnBpDeDYklt51R5ttVrCYjW9wfy
 VBta0i3i+wa4GqaxtZGskmdJHQPoTLX4k4oAaghWp8yCaddmmJm5Ea5MqcX0iZIbYqxe
 cJ1lGMTQltgYA4KHE+Djl8LQl/X8Tz+IJs5WfJ6LrgPQRTJ7ztQHBaaEhYmOr5JH3q1P
 VWEjaCVhqAW5Fi1bRATi2/ScbR5HrO86rLKXlvxN68pNKXvBM/rnR/7GnmOFYghOr8Hd
 vUaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hGVC97kr/8/BngU9FjmbWaxR7LHVSKdzb8qIb3rfhLw=;
 b=ckOMiMTX2saGD5HErMQLd2iXJ+WOSSd7Q+XFBsqlxuyCmjQ23kbAWa1sfYKjU5TaLU
 /gqaL1bOJj3VaALEEWmn7ydeCYglk4ZLyrNKnsC2VOFhGHxu2mUW+44G9Fm23ThsbO0O
 GeWwo3HY3HnCCJh/2uNFGCWS45+dBWOsh6ajp1yucQWWqSkoCRnflJ97L8htH3C+jOvf
 QRNRq0N/5fMkt0bMvpbWkE5vbFC5S4v0tIoznSGV1vfZ2K4P1r0k80+94Z44wfmeXkTh
 EcfgX9PNP55drPe6gyPdSo73j7QOjVArYV8xpk7p00h9C1NcwVSDmQMDfkVHv+xsIQTs
 a31A==
X-Gm-Message-State: APjAAAVX5FKOK7m5sbprMT9kcbOOLNaR9da72Cm2RCupcYwoKCYV2y9G
 /VKZsU3aB11V0U66lN2kk38=
X-Google-Smtp-Source: APXvYqxWCD6w353QbYqhVWkd+Dn2oVl6fxAxPkAkutmksHJUDijWPOUywy0u0pjrcZn1TcL3nbhdyg==
X-Received: by 2002:adf:cf0e:: with SMTP id o14mr3328031wrj.230.1558193046204; 
 Sat, 18 May 2019 08:24:06 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id j190sm12934836wmb.19.2019.05.18.08.24.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 08:24:05 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 4/4] arm64: defconfig: enable sunxi watchdog
Date: Sat, 18 May 2019 17:23:55 +0200
Message-Id: <20190518152355.11134-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190518152355.11134-1-peron.clem@gmail.com>
References: <20190518152355.11134-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_082407_886639_84F3D56C 
X-CRM114-Status: GOOD (  12.12  )
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
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
