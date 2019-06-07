Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991D2399A2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JobBnKSzpWQSIIMSJHP9Loi8vDb/B/c9QhTIA+DEg4=; b=Qnde3V3m3Kt7Vn
	9DYdfMSsVXcL9mCrTk/5Csasy+7S2j8SQ5/24Yzsc2hZiG7c7GQ1QOTjqaScuSpXoHkHEMCXG3Zxe
	x9JoSX6Xn/OxdwOuJ5UXuq6OTEnzF7Fcz8XL54xDf2dUN45zZrpGFov9Fek3Hy+5Q7h9OvB51yHkq
	qC9cCt890lyeiDxKBPXrJE4yvTyhOOuJsHaCW7LRAl659kn66RC4HjM7v4JSGxMGScaf8Sr6Ui3ML
	WGV0elREWBq3ZTzlhUk8SyqA3sNt1RvkfP4mhQm3XDs6kuqVMVzy98+iBUBmnrs2pTPAExt530lYD
	BEXHbB4RkCaDJ6/QyrAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZO40-0003bt-Pf; Fri, 07 Jun 2019 23:14:24 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZO13-00015h-E9
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:11:23 +0000
Received: by mail-wm1-x343.google.com with SMTP id u8so3304416wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=njnjG6a7jdrYLSKYX++HVTkLLSLz4gvoHp7YU4YYSHc=;
 b=rloz6Cds/NcMZNyX5rYQjfALN+w2sD5cwdqhllPoUbXBmo8udxJ0GPHIGW9k93s5Zy
 IaGyx6fa4lOL0OtqX1KdDOP0m4A/Stjp7v3fKISOW9c9HR7JFDMdVV9gyavmg5XydFjy
 1Q5C/XfWld69ItuWgeM7X8Csi5s42hghY7NRTi81LMy7+cIVJNkguVaQwSTU7tPEFOnt
 m80h0avgOSIZHmo8IDE5n5ENCEzrhfQHQzF+bmXv1popmBa17bFYDVJat//VcrWLkJPt
 haGZHYjeygHbonGEmu/0f5VyCQ0mXQeYpR2wYujWxyoryzhertqqaKpFMonDIyBDzVOK
 3KBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=njnjG6a7jdrYLSKYX++HVTkLLSLz4gvoHp7YU4YYSHc=;
 b=nuwCMMTWdYfLepKsBXo22aVZB0MVNwJKWy5j9VVsaCTJhR0tlorpGvNfsp8eUeHcu3
 pz0Wv92kPTzJEqUS3xFar3wQyTQTcp8TF4bC+qzm0CJG/EV9YRJCEnoglsWE6Y1WbAc3
 Yb3mqKESksVKCIwMJ4maelFFU94XQKRllmynL04jVq1UYWfbp9uapiZSE7+s871JK2JF
 Rwax7HNhXtnHaEfqGp4ygFVcorPc/Cc2t9Q8Rs6nOIe6uiWex/aOZ263YbbqSy8y+fmB
 KBkaeRBpuoLBMvoYVQJJ6fbJ9u3P4yba9gxq+Ou3Db0yQDAl5isT6eisR+mnYDwPWWKz
 /P+Q==
X-Gm-Message-State: APjAAAVuESqEQFW8mnWknjP2O+2me8mBfDwAoXCJV2bCVVr5TdeAAFb9
 yaJg4V3NLPbIcCKjMLRjMXKo4DPr4GY=
X-Google-Smtp-Source: APXvYqzEr1O0RpYAA6xX7b1pY4WlGx9jKDwzLXPofzg39mkwMlQpXn6zyw+shISAW27y3Y6h+x5pVA==
X-Received: by 2002:a7b:cb55:: with SMTP id v21mr5134238wmj.157.1559949080086; 
 Fri, 07 Jun 2019 16:11:20 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id h84sm4108559wmf.43.2019.06.07.16.11.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 16:11:19 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 11/13] arm64: dts: allwinner: h6: Add IR receiver node
Date: Sat,  8 Jun 2019 01:10:58 +0200
Message-Id: <20190607231100.5894-12-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607231100.5894-1-peron.clem@gmail.com>
References: <20190607231100.5894-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_161121_665598_D4B18C09 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Sean Young <sean@mess.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IElSIGlzIHNpbWlsYXIgdG8gQTMxIGFuZCBjYW4gdXNlIHNhbWUgZHJpdmVy
LgoKQWRkIHN1cHBvcnQgZm9yIGl0LgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxw
ZXJvbi5jbGVtQGdtYWlsLmNvbT4KQWNrZWQtYnk6IFNlYW4gWW91bmcgPHNlYW5AbWVzcy5vcmc+
Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgfCAxOSAr
KysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIGIv
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKaW5kZXggMTZjNWMz
ZDBmZDgxLi42NDljYmRmZTQ1MmUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxs
d2lubmVyL3N1bjUwaS1oNi5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi5kdHNpCkBAIC02NDcsNiArNjQ3LDI1IEBACiAJCQkJcGlucyA9ICJQTDAiLCAi
UEwxIjsKIAkJCQlmdW5jdGlvbiA9ICJzX2kyYyI7CiAJCQl9OworCisJCQlyX2lyX3J4X3Bpbjog
ci1pci1yeC1waW4geworCQkJCXBpbnMgPSAiUEw5IjsKKwkJCQlmdW5jdGlvbiA9ICJzX2Npcl9y
eCI7CisJCQl9OworCQl9OworCisJCXJfaXI6IGlyQDcwNDAwMDAgeworCQkJCWNvbXBhdGlibGUg
PSAiYWxsd2lubmVyLHN1bjUwaS1oNi1pciIsCisJCQkJCSAgICAgImFsbHdpbm5lcixzdW42aS1h
MzEtaXIiOworCQkJCXJlZyA9IDwweDA3MDQwMDAwIDB4NDAwPjsKKwkJCQlpbnRlcnJ1cHRzID0g
PEdJQ19TUEkgMTA5IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJCWNsb2NrcyA9IDwmcl9jY3Ug
Q0xLX1JfQVBCMV9JUj4sCisJCQkJCSA8JnJfY2N1IENMS19JUj47CisJCQkJY2xvY2stbmFtZXMg
PSAiYXBiIiwgImlyIjsKKwkJCQlyZXNldHMgPSA8JnJfY2N1IFJTVF9SX0FQQjFfSVI+OworCQkJ
CXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCQkJcGluY3RybC0wID0gPCZyX2lyX3J4X3Bp
bj47CisJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsKIAogCQlyX2kyYzogaTJjQDcwODE0
MDAgewotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
