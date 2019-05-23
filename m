Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FBA280B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5u2YfjjFdJeB4gCmYZFV9ZLX79kVZQxMlaHCjPpOolA=; b=q1ykjmOhoLB6cs
	zcbISii5Ru4KswVKx74GnFI/kN3BlSvDwKT4TZSMgb0Q5k+lv4ug3juo1e9i/BK30xgcEByr0vYdk
	kx/LE3GncZpnd7QAR0ehVx0iq3K9iSrHcbdFgMMH1oWz3Jvku6a3CGeF/mRhgI5Go+KG0BYD4xOmP
	nCAh0r9TlLrBRKyJGoaHSDOMFEGEnRDuI2KjTT1Txe8ulIoh4r8vm+JXa0V5VeNWM9/rfBC7OqVYU
	9vuDbQtIKDGhZE4uwvAobDHwa0hy8bPi88ytB1pBgXFxyUW908dvL/dZsuOcNvHV2Me+NWFo578CZ
	fWOee/Fs725g0H2f9FGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpNg-0007Sn-51; Thu, 23 May 2019 15:11:44 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpMy-0006ll-P1
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:11:01 +0000
Received: by mail-wr1-x442.google.com with SMTP id u16so2811319wrn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 08:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fvwl941ZyZparX8brXidU5HoO9Ig5nxnHgPKZgnW/1Y=;
 b=Yve2LgbRgQFXq5aIqAwhcfwMswZWViqZB/KmVUu3hw5Tf73rg8LXrUSIFyFiDaI1oo
 rDv9GPVjh5m3Q5qUsWY4Ogxgi96iD32VdLDa55OJPVCRLfYFidu8o4go8sGRrevZbD3+
 mHTE/bHUk1wWnyiviVnrdU8HWICQGOBgbqtiT8ojO64FvNg/gnIKyJ42j43fpTfxaiHc
 uzDLS7aB5+U0jAXgSiMn1IG9dop6BCSzKO4uJWrUbed27A+G2p8zl6rSfCVdDnDYY1fb
 e/6vygjTUuhM8CixQDAe3hSJxMK70dOguE4Fbz0psqe8D4ViNOcLMU5DCtM7mDbt0N0J
 yyrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fvwl941ZyZparX8brXidU5HoO9Ig5nxnHgPKZgnW/1Y=;
 b=KNHqhmE+YgOWHQoxwtsIaKzfhAztqu4ZweesHoJJePEfKCiHqEpscE+Tx0NwvIjT+J
 b0u/Ig/FdtYRhjWJZ0mljOlRWOaJxSo60cHkSHsi2Ncgcu4XTiQz2gsZpFBDUGJL6O9X
 BdAoiJZhGG71qrJonRLimhP30Lq5mkM1N674/ad4HK8NjUZVKwBGwYFN+J1YV/UT6uMH
 LgaJAttNEChJxCuV8p7Y/B8WaIZX9nEDw/ymj0e7Nm6SLt5mwrqLaaD4eZe7NxUxgGzO
 zGc/xqOAQBrtIZLaNJiDson44rI64T6eeGBtAli9+2tnSkBOw9+OxkFJ6Ny4BFndLhJo
 VfKw==
X-Gm-Message-State: APjAAAUqm389/ZsWDacutjBR/Xo8Cjvz/776rCXtZqD1uR23Mko3KP5P
 VSpbatpM26yuL8ATmDe1+cMjp28wbWSBiw==
X-Google-Smtp-Source: APXvYqxAcBpYdRU3uQXQXxzbY6tmx0nOvPyZ2p1H1iqb2oHivmiO7eV7p5Mn9yabh14Q8bSMmaRF6g==
X-Received: by 2002:adf:f6c4:: with SMTP id y4mr33608596wrp.37.1558624259318; 
 Thu, 23 May 2019 08:10:59 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id q15sm11436324wrr.19.2019.05.23.08.10.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 08:10:58 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 3/4] arm64: dts: allwinner: h6: add r_watchog node
Date: Thu, 23 May 2019 17:10:49 +0200
Message-Id: <20190523151050.27302-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523151050.27302-1-peron.clem@gmail.com>
References: <20190523151050.27302-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_081100_811039_4C98B452 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

QWxsd2lubmVyIEg2IGhhcyBhIHJfd2F0Y2hkb2cgc2ltaWxhciB0byBBNjQuCgpEZWNsYXJlIGl0
IGluIHRoZSBkZXZpY2UtdHJlZS4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVy
b24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LmR0c2kgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCmluZGV4IDEz
ZTcwYWViZGRiZS4uYjlhN2RjOGQyYTQwIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDYuZHRzaQpAQCAtNjMxLDYgKzYzMSwxMyBAQAogCQkJI3Jlc2V0LWNlbGxz
ID0gPDE+OwogCQl9OwogCisJCXJfd2F0Y2hkb2c6IHdhdGNoZG9nQDcwMjA0MDAgeworCQkJY29t
cGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXdkdCIsCisJCQkJICAgICAiYWxsd2lubmVy
LHN1bjZpLWEzMS13ZHQiOworCQkJcmVnID0gPDB4MDcwMjA0MDAgMHgyMD47CisJCQlpbnRlcnJ1
cHRzID0gPEdJQ19TUEkgMTAzIElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQl9OworCiAJCXJfaW50
YzogaW50ZXJydXB0LWNvbnRyb2xsZXJANzAyMTAwMCB7CiAJCQljb21wYXRpYmxlID0gImFsbHdp
bm5lcixzdW41MGktaDYtci1pbnRjIiwKIAkJCQkgICAgICJhbGx3aW5uZXIsc3VuNmktYTMxLXIt
aW50YyI7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
