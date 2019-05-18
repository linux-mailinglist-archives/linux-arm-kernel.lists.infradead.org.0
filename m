Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF4D223E5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 17:24:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3NdD52mY2En889YS8O5rv8bilo06KST5NPXjREGgqM=; b=r349mBDuOM7Q8E
	i7nX/n9BUx+9gffXEn/QnTsT04XPBQT39L5vFcSHG+cRtkEWrxKF81eHfJnTVi5bIbnYUuE4/gp9D
	hg5fHp+qZAMEtYGIoQZqapvKVEdg+Tkb2h9dTajO1TjEsbPAU8u9GINuep8NLylqfKnUpq6/VlOVJ
	W1M/uYaaD+SjrDnc9tvsKMoA1gCo7ybq26IlHsec1Uec3Nk0m3anaWL2COXngZAWpMe8WNKXbn2f9
	GpcGcXzk/pPDrfExlehOY6G5ag7tvPhJf8YxqyzugEdRmykvgGc7vtNENMZO30AXq1llaFoGk5rVg
	KonpytiN3YJ6Be2wU2Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS1CW-0003AY-5B; Sat, 18 May 2019 15:24:44 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS1Bu-0002Si-DC
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 15:24:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id g12so9722116wro.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 May 2019 08:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RZiigEEtBu6x6aspBUVXzYAMEPnSKruYtSBXZsc2Cfo=;
 b=fp6FsnCvhdmQVst6ckA2c2rg7045iUJr4rvl1qayE/jPGdoquSU1Gbx70H2ytCR+P2
 Xvqdb9B+yuinWa5awv7vnU9WAedThTVoIR7pZLob6Na2sd00iygkeddLgcyKs6Pu3iyh
 Q+Xatouxv+p8YVBZt4N1BmVryCH2Ape1EerMq4aNYDNKFOqmxorYIWZPFUrEL5UI5f1o
 xFvvd2UrcBKyZQuJF3rmqh0/cttkpPpDPfzknE0yryrXx11rBZ+vIPEEzZ2wXGNaJW2U
 R2F3rj3HULi0ShkhvpEGFg7Typ9n+8+8BFyl4RbK3KaR2yqhp0YXJ0NEYibrfdlNeCEj
 P6aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RZiigEEtBu6x6aspBUVXzYAMEPnSKruYtSBXZsc2Cfo=;
 b=Y3EAQDcO1u8x+MEQqtS8e62YEygrUPUNXczM4/9Wdd0231HEweCs0fCzVeOsUqDi+i
 qi8r8ta1S2HyFjVP49SAFnoUYd6sofatxlXJl1ZI/DnQkvtqQdORrQ8sLSCtFYMvArgi
 8jH81BUAqNRIH8Jj2nnRg7ijNEjmHe/0DLzgsDm15shRyJj8TNSoe2JgOIoBzGRAwvSy
 8yI5XYeHT8gsiJ1pgjKviI7BW4N4bUT22q5qyjgMVLUdFpceDppifZ+mojqJ380rdHYB
 AmQDBBhyKKUymz42Fup0uTujyiemQllPeSnln5A/tCW7cN2vP46m4yOZ6WcL9vY7Vhsd
 S4yg==
X-Gm-Message-State: APjAAAXzBXhYaxQ8mMIWpRoUOLPlfUtUTBkFMGbZTM/Z48DKJv5XD6sQ
 umT89nbP33cHT068YRZ8pcc=
X-Google-Smtp-Source: APXvYqwfejzVXvjFIohye041B54ZnYKOAoMQ+35th588Mphloi/UooXp/vZZq86x4BSbD0Bq22C+UA==
X-Received: by 2002:a5d:5547:: with SMTP id g7mr11426707wrw.22.1558193045045; 
 Sat, 18 May 2019 08:24:05 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id j190sm12934836wmb.19.2019.05.18.08.24.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 08:24:04 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 3/4] arm64: dts: allwinner: h6: add r_watchog node
Date: Sat, 18 May 2019 17:23:54 +0200
Message-Id: <20190518152355.11134-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190518152355.11134-1-peron.clem@gmail.com>
References: <20190518152355.11134-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_082406_611655_E885581E 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

QWxsd2lubmVyIEg2IGhhcyBhIHJfd2F0Y2hkb2cgc2ltaWxhciB0byBBNjQuCgpEZWNsYXJlIGl0
IGluIHRoZSBkZXZpY2UtdHJlZS4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVy
b24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LmR0c2kgfCA4ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0
c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQppbmRleCA2
MGI0N2YyM2IyZjUuLjI3NjQ3ZTQ5NjI2OSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3
aW5uZXIvc3VuNTBpLWg2LmR0c2kKQEAgLTYzMiw2ICs2MzIsMTQgQEAKIAkJCSNyZXNldC1jZWxs
cyA9IDwxPjsKIAkJfTsKIAorCQlyX3dhdGNoZG9nOiB3YXRjaGRvZ0A3MDIwNDAwIHsKKwkJCWNv
bXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi13ZHQiLAorCQkJCSAgICAgImFsbHdpbm5l
cixzdW41MGktYTY0LXdkdCIsCisJCQkJICAgICAiYWxsd2lubmVyLHN1bjZpLWEzMS13ZHQiOwor
CQkJcmVnID0gPDB4MDcwMjA0MDAgMHgyMD47CisJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTAz
IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQl9OworCiAJCXJfaW50YzogaW50ZXJydXB0LWNvbnRy
b2xsZXJANzAyMTAwMCB7CiAJCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtci1p
bnRjIiwKIAkJCQkgICAgICJhbGx3aW5uZXIsc3VuNmktYTMxLXItaW50YyI7Ci0tIAoyLjE3LjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
