Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5284254C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0+Etopf8nEkbYp+RzaIdtKeu1/LgnnqBL2oIXFlNVo=; b=iblYKGaVN1LMbZ
	YkIq3O4gQBJV8P0Wg8G+X46BoQYF5anfFObaX5SWns4OA7LDXKkpVlH+lhAGIesU3DN39hnBG5azA
	iw/mkQynEUJuTsomkIChbWqdMMBHNu1hWMwgdPIJOA7PKFRJ7GS5mOnDITL4o6L6QJpsvcjt2P2Fq
	8qVf9j9rDbwKXzUIUcdcnZftBD+iqYExUu/kCEMoOz67hfDu0QzOjv7B3npWcO0+8zDXND0nSPiBg
	9+j1sGB9V/VDpQseBZdD00rAqaKiQHmq/ZagbTqJ16L90H+wAqIIiWLsGAMS93i9hvhyDSMP5Mjur
	xOZPBeuZxRmUKkT+iTqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7F6-0000gQ-Ri; Tue, 21 May 2019 16:03:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7Eq-0000Y1-HY
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:03:41 +0000
Received: by mail-wm1-x344.google.com with SMTP id i3so3548595wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 09:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SyE9kuP93puOVa5bnxKzAz6P/q7rG15j4OqWFA5YadY=;
 b=T+vYrdTmZN/Md8Sf9dvxQNA0o0nZohyfU6cEOhtm/9KKtsEci4xzTwF5wwha/RbDcm
 hxWNAf+NMA09hM4YjOJI6kvZvazFJlDKG8ray2p2qXbvjxFyenWsP6msDiRkdpIIeTsc
 7lyZXOUNLnq/6d3I9HejXYYGL8HP+rpU3lsXxGPVEr5rQS8NJUxSKsFnMXer/ab76net
 atdfJRW7SM9srR81IAT/KY7wstpxt3hKyaRVFk9qzTyDpIGuYYgInFzk9/58pfWWERSr
 QtJRL7WPoVW/8/MKODfl5ocUuejtytfVzNMK2KaALG/t82pQfmBIVhNH4O7OJHx2A/s9
 05aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SyE9kuP93puOVa5bnxKzAz6P/q7rG15j4OqWFA5YadY=;
 b=rpsp/1nGAh9vSys5G6292focoIkEvgaOQvqF1ENb7DKCPriy3TPpAd6M2Iyevptz1K
 +A+nnnYkuMcpZl1edHG5dqSvLOhJsIPlLQ8jO4tJoSuvAponSajZRl5koKoVrR0929Pn
 MJHw5uSnPf2ig1URde65tQDAUb8avNTCtOM9uHUP3qHoa1ob2uKh6u8WDg3MN+ywsJb+
 Jw+/qEM/Jwk0VellKJRnZtxrvMp9IL6JSJEZnBfrGlKFDJZAa12h7KB2amOXixa7P2Wt
 BKXKVGyLUCTzYx5DUbOtdumvO+zv6loCvNI+i9f8xP1n+LrKYvmEn9yKjcbcPGGv0TCU
 dwnA==
X-Gm-Message-State: APjAAAUkV6UAlq91M+LljjYln82uXOSEXXiwAdPqKb5AspznEGGL34XS
 2efSJQg1YyeKtv2Pj27zev4=
X-Google-Smtp-Source: APXvYqwUHxJAUHN1YLpD84q4B8bKA40ChffErOtsXq3i2Uq3kGPqvW+6jtuDA211uTmP3GAi8TqfxA==
X-Received: by 2002:a1c:4087:: with SMTP id n129mr4099381wma.14.1558454618926; 
 Tue, 21 May 2019 09:03:38 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id g11sm6853811wrq.89.2019.05.21.09.03.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:03:38 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 1/5] dt-bindings: watchdog: add Allwinner H6 watchdog
Date: Tue, 21 May 2019 18:03:26 +0200
Message-Id: <20190521160330.28402-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190521160330.28402-1-peron.clem@gmail.com>
References: <20190521160330.28402-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_090340_613916_C3680186 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

QWxsd2lubmVyIEg2IGhhcyBhIHNpbWlsYXIgd2F0Y2hkb2cgYXMgdGhlIEE2NCB3aGljaCBpcyBh
bHJlYWR5CmEgY29tcGF0aWJsZSBvZiB0aGUgQTMxLgoKVGhpcyBjb21taXQgYWRkIHRoZSBINiBj
b21wYXRpYmxlLgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdt
YWlsLmNvbT4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cv
c3VueGktd2R0LnR4dCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3N1bnhp
LXdkdC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc3Vu
eGktd2R0LnR4dAppbmRleCA0NjA1NTI1NGU4ZGQuLmU2NTE5OGQ4MmEyYiAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3N1bnhpLXdkdC50eHQK
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3N1bnhpLXdk
dC50eHQKQEAgLTYsNiArNiw3IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6CiAJImFsbHdpbm5lcixz
dW40aS1hMTAtd2R0IgogCSJhbGx3aW5uZXIsc3VuNmktYTMxLXdkdCIKIAkiYWxsd2lubmVyLHN1
bjUwaS1hNjQtd2R0IiwiYWxsd2lubmVyLHN1bjZpLWEzMS13ZHQiCisJImFsbHdpbm5lcixzdW41
MGktaDYtd2R0IiwiYWxsd2lubmVyLHN1bjZpLWEzMS13ZHQiCiAJImFsbHdpbm5lcixzdW5pdi1m
MWMxMDBzLXdkdCIsICJhbGx3aW5uZXIsc3VuNGktYTEwLXdkdCIKIC0gcmVnIDogU3BlY2lmaWVz
IGJhc2UgcGh5c2ljYWwgYWRkcmVzcyBhbmQgc2l6ZSBvZiB0aGUgcmVnaXN0ZXJzLgogCi0tIAoy
LjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
