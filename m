Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F063F2AC70
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 00:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwZGs20eY68PFX4fJTBCOecc06RbaL3yNfuu1D9bhdU=; b=Fx8BoUgPtjIdJh
	qGn5oss7sseRTnRoRwYqJgJQQN4lT5nF2XoClKlswtOLBAkJ79vHsKUbKFx3hwEKI84rWqdUz2R91
	g+/4ifyibCjbGAB8I+/+enkMmQMv7N6U15CN/9UwJA9TgogFDai4MfY8PfExgyiWA5/0bdeZkYNM+
	ndeBdTvsVgA6GuHAuhr9dUuBcoyDcYm3t16UDfqSTxXP6OF80KS4bt9kFDbQ9QLkOQA3xWfE4Q3Ln
	3mnKnDarfsd3G+tevU6FfsCZ47OysSWkomJsTPBcULhoykUoWzSSiSMoU8YRzwFjuCep5Ywqn/2Rq
	iHi13dje7LcuROTf3KOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV1au-000474-TY; Sun, 26 May 2019 22:26:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV1aQ-0003ev-Iw
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 22:25:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id h1so847044wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 15:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lc9tkqKyrUQ5ybnMKprgGIZIid5kSZLfkgDo+bRAOdQ=;
 b=klAOx+HfmYTw/8Yq5Z9Z7zoBFd0OBdip2dn3Rmyo4lHbtZsRaeyaDNO7P9DSMFFGdN
 glJOISUhVbNcyEGaatP61u8UYu9Xaa3Yqqo2N/4y+VbCpAxvUE2gNrAEy/COEyn3oh3/
 jkIaplzNNdkTrkPsgeMyzXiW9lcq/WwXneLVDkNJErDm9sf+23Wq+7ZD0al9sqwuVl81
 PSIXQY53c6iXav4ck3FsJyS9S6pLwvKdoJ8YJ4NJX23yGKFuVzLIZt/L0ZO4vkXjkiOT
 93Vp60xAKV+vac25lK13kKK8bAun4yyuJq6hfLY/VTDotDIX0DFNcXUMjCBcxAc6wBE4
 fusA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lc9tkqKyrUQ5ybnMKprgGIZIid5kSZLfkgDo+bRAOdQ=;
 b=q8nXD6sVbnNZHe5epPlYYRt/6LxM6WBV5n0CdLLSAvsyxxJBwgeRjNc1dKwku55JWg
 ELw6Wr3/83gWh9nK0fHHMZG4BsdM6SwQwgk2SusOua40KzDPpiXVwzsYBOu9f+VOldXI
 1k36UGrjrFmLw82Edbi6hAjC8lQdGoC/VVuDxf1HXiFMqAywVPbupwojTUuzDBW3yKff
 fgq7KI5dm+iqzhjCM7viozytFFRpXigENuzov4o1lr/VPhD/jEqLcMD1zNj4xUsTR7Hq
 OlA2wF274BTFjJmW010QLkNLn/3aLxrhqguuOWhJK7YzIOzHuPxUeKMQvbLShK+xmjPD
 CLOA==
X-Gm-Message-State: APjAAAUJ5eL9XtZQaY3AbikDD23eZDeg1Aw+Y9tbj9pv4ii0upg7B84Z
 gcKBlNuJWPivH/LvKaxTi5M=
X-Google-Smtp-Source: APXvYqxsbYPyxTGP5DkswvSnejLVACIIPGGCwxeFSFdOifI61ffIiR4kdft4KEdZ6jhd1Ba8cfpkSg==
X-Received: by 2002:a5d:528b:: with SMTP id c11mr10869878wrv.25.1558909548083; 
 Sun, 26 May 2019 15:25:48 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id o20sm10368398wro.2.2019.05.26.15.25.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 15:25:47 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 04/10] dt-bindings: media: sunxi-ir: Add A64 compatible
Date: Mon, 27 May 2019 00:25:30 +0200
Message-Id: <20190526222536.10917-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190526222536.10917-1-peron.clem@gmail.com>
References: <20190526222536.10917-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_152550_904296_DCEA2D60 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

VGhlcmUgYXJlIHNvbWUgbWlub3IgZGlmZmVyZW5jZXMgYmV0d2VlbiBBMzEgYW5kIEE2NCBkcml2
ZXIuCgpCdXQgQTMxIElSIGRyaXZlciBpcyBjb21wYXRpYmxlIHdpdGggQTY0LgoKU2lnbmVkLW9m
Zi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvc3VueGktaXIudHh0IHwgMSArCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbWVkaWEvc3VueGktaXIudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dAppbmRleCAyZTU5YTMyYTdlMzMuLjFk
ZDI4N2E0YWIzYSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L21lZGlhL3N1bnhpLWlyLnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbWVkaWEvc3VueGktaXIudHh0CkBAIC01LDYgKzUsNyBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVz
OgogCSJhbGx3aW5uZXIsc3VuNGktYTEwLWlyIgogCSJhbGx3aW5uZXIsc3VuNWktYTEzLWlyIgog
CSJhbGx3aW5uZXIsc3VuNmktYTMxLWlyIgorCSJhbGx3aW5uZXIsc3VuNTBpLWE2NC1pciIsICJh
bGx3aW5uZXIsc3VuNmktYTMxLWlyIgogLSBjbG9ja3MJICAgIDogbGlzdCBvZiBjbG9jayBzcGVj
aWZpZXJzLCBjb3JyZXNwb25kaW5nIHRvCiAJCSAgICAgIGVudHJpZXMgaW4gY2xvY2stbmFtZXMg
cHJvcGVydHk7CiAtIGNsb2NrLW5hbWVzCSAgICA6IHNob3VsZCBjb250YWluICJhcGIiIGFuZCAi
aXIiIGVudHJpZXM7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
