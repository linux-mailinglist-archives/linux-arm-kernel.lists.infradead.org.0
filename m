Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B05BA21DAC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 20:47:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hunNEEW9xTzsyEYWOjZ9A1D9CfqzBYiYnRl/ACeWeok=; b=WhRQRybHl1zZTM
	8k+5DliYYgzYKtrwTf34QOAZpU2RA4KrGr1hhIzHbQTEQhayzBD8sPllxmgFWlMYSynrfl2mpRIdw
	M5HZRQ2KYdyrPLuw+2E5BrXq9S8R59GXG4Blv2MCmaH/SSHAoRfUOnUBCswlNCGiojnt9TOYXvSRv
	YHFpvVs+Z/6AUpSjxeEiSNiPmK9R3rc3fM43Wt9f+dQE8HnfNCj9VNZoD1vPWrVN8RaEDCpp/84xI
	jvbQNIwcOfPwSMMNJ5d79hQ9vsc26W3Rx5dl8JkQtttNpm8ctWut8lXPxnuPmx7Opuvwt7ajP0kGl
	2+MoUgpRF0Vwr04PUfaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhtK-0005Kj-Jt; Fri, 17 May 2019 18:47:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhss-0004w9-8P
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 18:47:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id t5so6312100wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 11:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r8viNroRA5goE0iPj/ap53EgAXBGfEQtlqx5YkjMMp0=;
 b=sYa1xSeqBijyACT713JrcPfeJ6i1pId1XJ8eV7bYFwQOvCKVI9hU6X6rsi5VoYuOYt
 0D2cTJcpZWhDRkgW3lFeqzAiU5xxh8pXYkjduO+E3yB4kURp14tlb4FYguNJ6mVXxr/o
 7sNEuSmlziet3wBZ3p1LC4/4XDskX8RjgeFVzrsZZncbZNeV30kdefMoGz1GhCiM5MVN
 77LwiSFwRps5gRv+r0TY4n6TYH1qIYzplYaT0WGD17Sd2DddZ0Ra8tJkdfzHukxZ9Emq
 OxPUS2T4geuoPK9oiBP1tfS0VhtC7+6ZAjb7E2YjmdJZy2Hapy3h2XjQMFiCW1W0RPGZ
 OXDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r8viNroRA5goE0iPj/ap53EgAXBGfEQtlqx5YkjMMp0=;
 b=ZUbfPrLpGpuq7MhzFDfw6HyDOUyC62M0Dca7zkjoHM1jcBQ64mkzCQGy/8mSishTMM
 aeEbCzP7TdpIWv+qZBpMlqu5jxszwtHmQUwKHNTBMKax9IBG3TYU6s3loK+yGYKhgXwh
 5NBQNTUnEN0OTFdcmWueXc8bVZG0vi8rAMQcyGr5pVqr+id3ccATKSziKtI2qqdgbaPs
 sltyK+EXwaHOTxWx77T/Nnap5XY7QaKTAbvr0Kno1LyHu6vmO6LmFO+XHeFFr3dl19Bj
 wP6temNmv5Zmm7Rm2JjHztun4EoyTVMs0ATJTbVQloVEjTKnd3jliUK8d5pIkV/BA3Bl
 iKoQ==
X-Gm-Message-State: APjAAAVp5entfaQ9c/V3Qa6HqTsLmKVoZxgdXwfJrxD1jrpFsyP5l6kJ
 2XyPSLDse15echhArDY0Ev4=
X-Google-Smtp-Source: APXvYqx5WYQ+/UFX3j4mg5Ayc/w6LeLH6Wy8mGmkZ59Hw5REOLqHmfti245ovfZ/JrzJoGg3/ubYNA==
X-Received: by 2002:a1c:7c0d:: with SMTP id x13mr3111380wmc.89.1558118828555; 
 Fri, 17 May 2019 11:47:08 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id v20sm5801112wmj.10.2019.05.17.11.47.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 11:47:07 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Steven Price <steven.price@arm.com>
Subject: [PATCH v5 2/6] iommu: io-pgtable: fix sanity check for non 48-bit
 mali iommu
Date: Fri, 17 May 2019 20:46:55 +0200
Message-Id: <20190517184659.18828-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190517184659.18828-1-peron.clem@gmail.com>
References: <20190517184659.18828-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_114710_354037_FC5E343D 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IFNvQyBoYXMgYSBNYWxpIFQ3MjBNUDIgd2l0aCBhIDMzLWJpdCBpb21tdSB3
aGljaAp0cmlnIHRoZSBzYW5pdHkgY2hlY2sgZHVyaW5nIHRoZSBhbGxvYyBvZiB0aGUgcGd0YWJs
ZS4KCkNoYW5nZSB0aGUgc2FuaXR5IGNoZWNrIHRvIGFsbG93IG5vbiA0OC1iaXQgY29uZmlndXJh
dGlvbi4KClN1Z2dlc3RlZC1ieTogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4K
U2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0t
CiBkcml2ZXJzL2lvbW11L2lvLXBndGFibGUtYXJtLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11
L2lvLXBndGFibGUtYXJtLmMgYi9kcml2ZXJzL2lvbW11L2lvLXBndGFibGUtYXJtLmMKaW5kZXgg
NGUyMWVmYmM0NDU5Li43NGYyY2U4MDJlNmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaW9tbXUvaW8t
cGd0YWJsZS1hcm0uYworKysgYi9kcml2ZXJzL2lvbW11L2lvLXBndGFibGUtYXJtLmMKQEAgLTEw
MTYsNyArMTAxNiw3IEBAIGFybV9tYWxpX2xwYWVfYWxsb2NfcGd0YWJsZShzdHJ1Y3QgaW9fcGd0
YWJsZV9jZmcgKmNmZywgdm9pZCAqY29va2llKQogewogCXN0cnVjdCBpb19wZ3RhYmxlICppb3A7
CiAKLQlpZiAoY2ZnLT5pYXMgIT0gNDggfHwgY2ZnLT5vYXMgPiA0MCkKKwlpZiAoY2ZnLT5pYXMg
PiA0OCB8fCBjZmctPm9hcyA+IDQwKQogCQlyZXR1cm4gTlVMTDsKIAogCWNmZy0+cGdzaXplX2Jp
dG1hcCAmPSAoU1pfNEsgfCBTWl8yTSB8IFNaXzFHKTsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
