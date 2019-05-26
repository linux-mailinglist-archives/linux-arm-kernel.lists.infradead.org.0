Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F042AC82
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 00:27:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXSXY7ervhPH56yOCG0PP2PCXUnb4YuMVNAOtpbJVIk=; b=lhLTXpJgw9frzd
	apEwLvJCvxIIrZPo85I/CDGEgbyQqcw+N6/ihaI9tIXg7HCGnHQu39RIcwcU4RRGTCwZO2pwiHGuA
	AQV5tOw54ctNOACDsQs8ivJa4Fei45c74K9gekejrEJWaXmqH59+XgSyoN4dDC7RgBohvktVGbwtX
	oWNDb90mQm7mKV5h7+uTvVnUqMhg/ZyWwGqjASuZKw3DYumup8Z/go8jqMQMuOFwQSz4su3r1QXFo
	0i7mC6G+nUY7+dGr1rWzlwtE4bK1thyA9C2s5W1ymyfDjYYs7cJi8Z2QIny/qlgmJB3b3HyqQvGjl
	jR6Cjyzr1Af2Ncq9Mfkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV1c9-0005mP-Ee; Sun, 26 May 2019 22:27:37 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV1aW-0003op-2S
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 22:25:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id 7so13953456wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 15:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ky+CVe/5shquKmn2x9Mkd4t0sluqJy1OgxXU5TLlF8Y=;
 b=sPUyp9v+8Z9vQEkItY8c65gc4hEJo1CCryJxXjEdBdgRfT2MwtaViFBfAqvbTOfAJA
 /JfCsjccRQ8bYTwKOTfczCXgDfnCYj21+5+IVPeLjjZkPeezZNCwdoE00b6q9I1MzKhT
 bp4TYVKCMu+GBI28ErZcklCjb8AS2W7bnrxiRuVT4yGJZKCU8g+QxOhnXTFcBEwmXyPU
 c26Y6DzSLlLy+MePCkuTLC45BYWSRRsjnXKtqnvcyGwF05vRABib42Fd+DzUfk1u/CZ0
 IE5YiyYxBy5pkFuAuNo5wHhq25SVIe58MP5Ry62abf1ZZD8BsWwN/S9Dst3L+A/teMPG
 AMOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ky+CVe/5shquKmn2x9Mkd4t0sluqJy1OgxXU5TLlF8Y=;
 b=D8Oa30r6OJWgD4BNl2NAw5Zb1o4/gwJzHODykNxpU8v7fmh1G1+IqxnXPqAkz5Z4RO
 QYzZiK0943jegBRETSUneIjV5yPuoSkx/sJNyFg45lNRAx8XCaTeMaX6e8OE7vPMf4vv
 abQIh+aBnl9koPWYMRuXOysXj/02dXvVvJdmj/eaWrBGRPyj+I7uQx1iaqQEMRHqo5jW
 I6nmKcQXdzW7RLgpmXChRT1tWVkP3G7TU1EDP+Ou4yLr+qczCKgvhAYFk5dgKExuf0kr
 E5lNQoxznEOGkihkf2dtkddYyw37Doxs9iPFXBP8HM54Wul+OLdfuzUH9Agi10S3eO3m
 aITQ==
X-Gm-Message-State: APjAAAXG22IwRdiToehZcKFu8iBQ/DicEUf7yoxS/Z6mNlUyhevE2ONn
 EQz62tjFr/4P74dtZQblIN8=
X-Google-Smtp-Source: APXvYqyyd3PZUV8lPG0zWsqVsz5SNpdDjh7xV3aWAQkNiuXXvaMocqOTw1pYCTR4qThphBMnLW2HcQ==
X-Received: by 2002:a1c:f413:: with SMTP id z19mr2205565wma.145.1558909554617; 
 Sun, 26 May 2019 15:25:54 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id o20sm10368398wro.2.2019.05.26.15.25.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 15:25:53 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 10/10] arm64: defconfig: enable IR SUNXI option
Date: Mon, 27 May 2019 00:25:36 +0200
Message-Id: <20190526222536.10917-11-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190526222536.10917-1-peron.clem@gmail.com>
References: <20190526222536.10917-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_152556_668058_AF2F16B2 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIENPTkZJR19JUl9TVU5YSSBvcHRpb24gZm9yIEFSTTY0LCBzbyB0aGF0IEFsbHdpbm5l
ciBBNjQvSDYgU29DcwpjYW4gdXNlIHRoZWlyIElSIHJlY2VpdmVyIGNvbnRyb2xsZXIuCgpTaWdu
ZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFy
Y2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgYi9hcmNo
L2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCmluZGV4IDRkNTgzNTE0MjU4Yy4uNTEyODAyOTEwMGQy
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCisrKyBiL2FyY2gvYXJt
NjQvY29uZmlncy9kZWZjb25maWcKQEAgLTQ2MCw2ICs0NjAsNyBAQCBDT05GSUdfUkNfQ09SRT1t
CiBDT05GSUdfUkNfREVDT0RFUlM9eQogQ09ORklHX1JDX0RFVklDRVM9eQogQ09ORklHX0lSX01F
U09OPW0KK0NPTkZJR19JUl9TVU5YST1tCiBDT05GSUdfTUVESUFfU1VQUE9SVD1tCiBDT05GSUdf
TUVESUFfQ0FNRVJBX1NVUFBPUlQ9eQogQ09ORklHX01FRElBX0FOQUxPR19UVl9TVVBQT1JUPXkK
LS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
