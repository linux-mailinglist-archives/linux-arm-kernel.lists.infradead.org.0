Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B82261B0C1E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X424u+0FmAcJRW2oDVDOaIbPVkRwN7iQrtHEVUwWSsc=; b=jQtA5MQArDCXGO
	I+uMxZxmw+Tkp7UDnFQWR2kdnoZM8ya6F89N57WD3OyatIQrgxBzILws3Ihnh4S10PHFy9+vp+CIT
	15HJOqcaNFmYXTqvQfpT5b/vkDadsHHOwu1HAZswCKEiZQw5nJLwvPjQxExSkfzdQ2EPQNJnDOzZg
	2VTTGvDVPMdrrYIMMhdgwPWh5crzd2EYTBHdepd47gl3KzU5N5n2Oi9vz4jO8IXO9NCcd/rGO6uSZ
	JulgeqClGbQ2LaHeceWz8g4m8N3TetSmh3IG/azbU/rpW99V7mbWpXtRk3d72l0RXiuWUEVB0zzLZ
	2XYEm5LXFWRPe7Yc4iGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQW2i-0003T7-P8; Mon, 20 Apr 2020 13:00:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQW2F-0003F6-6R
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:00:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id b11so12021960wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 06:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nA+q8I/QCJJpzTmNvaZndgqzrDAqaSzjE9lI/zFuMMo=;
 b=J1pZLH7jiM9RNOk7oB7BKZmvRNCbTg6BvjNDXBpp8O9eS47usYikJH7/+sU9jRSkQu
 HqrKLZzlKB5GQZ9tqg3bZBaRk3u/CRxL6DXN6fL3FZWX9w2kD2W0JUMtPqWzHNoZjk08
 0DRwUJz5HIi0yi0GZdcKJmNec6PmJFBC6RacArimIPtYgG35HiaWyEWHO82I9QHWObZo
 uSNXgeAUTfAr4OoqToEZC3Pf2DPl60BnHA3iAI/4dapAVvhWz+3IjHJAIX8Yz8Nx3zeR
 WsS2rV2e/LQb59Y9P9ZU9MpzxrqirNnpMaSpckFiddg/Ni+0dC5aILDWfIAAXeRnqn3D
 Cvkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nA+q8I/QCJJpzTmNvaZndgqzrDAqaSzjE9lI/zFuMMo=;
 b=qowTbMd2Slbf6Crowm1irXcClmM2EDBULQ0M90VLFiK4oTYYPJaOoa463WR3lYtgiN
 UodG37rz9svCz1b7A7kjapbdmedW2k+BqYXPhmUNO4j7jWwUbmou4r4tiY/CuTOh8wjw
 McwwJ08fpMPUW+YSRVXZoM3axSm7mWwI5ORsURWVYtf0W1HghM5oPtitUt6/hb8/rfMS
 KmKHKyCucvIMlPxmuupEP7ArnRPhZHT1j7gId3RRYmNQjidad+ckGYbtV8PYcqBOslNe
 YkAGvnvbRabXTs4kX3wVUJT8RPBPGKDnwp5m6k3PIbxYVxlMhTDT8V5GFgOqB4CfBFEG
 17CA==
X-Gm-Message-State: AGi0PuaSps8Xpv7F7ocFe2IdtUOTxzl5wCPgiVNEF83hoI4+4xWdPRQU
 9sshzFBQNspHkD83ckdSfGw=
X-Google-Smtp-Source: APiQypKWtajRaAihejjMnSgeuLK9Lb250Fvr22I0sXmuCCWb67XU6IJ3wY/PMSswrb5+edDhyjx5hw==
X-Received: by 2002:a5d:6847:: with SMTP id o7mr18776336wrw.83.1587387625601; 
 Mon, 20 Apr 2020 06:00:25 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 e11sm1081680wrn.87.2020.04.20.06.00.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 06:00:24 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 1/9] arm64: dts: allwinner: h6: Add clock to CPU cores
Date: Mon, 20 Apr 2020 15:00:13 +0200
Message-Id: <20200420130021.3841-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420130021.3841-1-peron.clem@gmail.com>
References: <20200420130021.3841-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_060027_238534_EDDA834E 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogWWFuZ3RhbyBMaSA8dGlueS53aW5kenpAZ21haWwuY29tPgoKVGhlIEFSTSBDUFUgY29y
ZXMgYXJlIGZlZCBieSB0aGUgQ1BVIGNsb2NrIGZyb20gdGhlIENDVS4gQWRkIGEKcmVmZXJlbmNl
IHRvIHRoZSBjbG9jayBmb3IgZWFjaCBDUFUgY29yZSwgYWxvbmcgd2l0aCB0aGUgY2xvY2sKdHJh
bnNpdGlvbiBsYXRlbmN5LgoKU2lnbmVkLW9mZi1ieTogWWFuZ3RhbyBMaSA8dGlueS53aW5kenpA
Z21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21h
aWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNp
IHwgOCArKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKaW5kZXggYTVlZTY4Mzg4YmQz
Li4zNzBlNzdiODZmZTEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi5kdHNpCkBAIC0yNSw2ICsyNSw4IEBACiAJCQlkZXZpY2VfdHlwZSA9ICJjcHUiOwogCQkJ
cmVnID0gPDA+OwogCQkJZW5hYmxlLW1ldGhvZCA9ICJwc2NpIjsKKwkJCWNsb2NrcyA9IDwmY2N1
IENMS19DUFVYPjsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVy
aW9kcyAqLwogCQl9OwogCiAJCWNwdTE6IGNwdUAxIHsKQEAgLTMyLDYgKzM0LDggQEAKIAkJCWRl
dmljZV90eXBlID0gImNwdSI7CiAJCQlyZWcgPSA8MT47CiAJCQllbmFibGUtbWV0aG9kID0gInBz
Y2kiOworCQkJY2xvY2tzID0gPCZjY3UgQ0xLX0NQVVg+OworCQkJY2xvY2stbGF0ZW5jeS1ucyA9
IDwyNDQxNDQ+OyAvKiA4IDMyayBwZXJpb2RzICovCiAJCX07CiAKIAkJY3B1MjogY3B1QDIgewpA
QCAtMzksNiArNDMsOCBAQAogCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKIAkJCXJlZyA9IDwyPjsK
IAkJCWVuYWJsZS1tZXRob2QgPSAicHNjaSI7CisJCQljbG9ja3MgPSA8JmNjdSBDTEtfQ1BVWD47
CisJCQljbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8qIDggMzJrIHBlcmlvZHMgKi8KIAkJ
fTsKIAogCQljcHUzOiBjcHVAMyB7CkBAIC00Niw2ICs1Miw4IEBACiAJCQlkZXZpY2VfdHlwZSA9
ICJjcHUiOwogCQkJcmVnID0gPDM+OwogCQkJZW5hYmxlLW1ldGhvZCA9ICJwc2NpIjsKKwkJCWNs
b2NrcyA9IDwmY2N1IENMS19DUFVYPjsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0Pjsg
LyogOCAzMmsgcGVyaW9kcyAqLwogCQl9OwogCX07CiAKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
