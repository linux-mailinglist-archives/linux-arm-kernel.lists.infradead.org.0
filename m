Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C837F4280
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 09:47:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGJYGl7AIUlRs4NnUfAe8uiMpb2d6cJVgaDSjJ7jSPM=; b=WIWYGVrCRl7Err
	CZoEVh9Ukh+QRFxSd/N7TapTyEa//Cci3HyfE/fS1Kv89DmK4ya2MTX/yW8hall2DskjMF953tJEw
	H38LYnNvigmV0EFUktqvnCXutNdHdGtl05N1vyaT0Pc2AQLMxFnwRqyFEiYNPhVbWvTZI6lKvq1fi
	8EJS/x/Q81OmlUAq9gp/Thz1P7YZz7wURBOQZweBvTlU7T1xSRgugmsmCYZVGmQCcNyVUmG3Zeg2K
	griwmyccBDQ6taVGKqxquM/VX5t93WL9aZ8aU2Aj4+IcDscteq6zP6wNQC5ssUok1GaTyR3tBHHK1
	VwMsp5HKhpIGZpfi1b7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzvK-0006pu-In; Fri, 08 Nov 2019 08:47:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSztd-0005Lo-BO
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 08:45:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id t26so5299774wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 00:45:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9aSxRdpuFtWHR4fiaYF0NucipXPgTqmHceHSDmByEc8=;
 b=fewmUdz8Bc1voBvS9gkVz79gCkt7venyCUove7xWvuUQ7Y4j/5GuWd2AXvvgJu1Kfj
 N0dQ5nNqgLQudUbMeirlTSoTROX+NXDVjv7tmF7iOf3rJrWmkKmh2vS/eJjIzlX3uqx4
 STJgeC8x6DSUy9PENPKGwtPtmXM483oVZq4Tm20Sg9l4PF42SkfQzBy8FNi7A54AoFCP
 k5F6YhLTTRPhmtsmFWLs8KjOql5qNPJDr74p2c7q4oNgfFgToC/aHzfjzHqwBIH5YJcz
 u/9zV1l8RwIgs5Kml7dx0uYElJGbgKN5fExDkFmeNqi4iAmfvBOItS7w5LRN0zL+qcHs
 ssbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9aSxRdpuFtWHR4fiaYF0NucipXPgTqmHceHSDmByEc8=;
 b=orOC2MCyZBbDETPOV8HD00cFPFglxenRIGPCq+FS8BfpNVUXElKPhLhNsK6RCOCJ/B
 R00aGQyuRUOZ93JVHpVAQU4yRulOH5JwwPTt4jFbxnmcDAsOqteVYizOhVLsj77Q6RGq
 wyw+oyh7zh4f90JTpyt0YaJZudc7mAbxc75QSCWLP8k9PMmm+bNUJIpIVHZeap8BIv0u
 h3zon/zjwLwK/QBhrfAZZsGY4+/JsABc/KUX6KguBqK2eJfPuz8QUAirmkGDVABuPcuq
 L+hdmNbJ3NUejZMmLw4FKjXUe3mK0tQeHgpW2qDDkMZz83nzKpBA8mOVCfOMTJUKX6pc
 409g==
X-Gm-Message-State: APjAAAU7HhVuSt6VyffyCFGkBUGWIwTyRzbjOEwmCva3dWTTYWWJ1Um5
 OL26r5nU5hGMHD1920NrcV8=
X-Google-Smtp-Source: APXvYqzDrSyXBmSgmOwIGNCEnIg0mdtNJewcjpzu3/9Z4+a5/R+2nI67UgxKiYB47MIydRckpkp04g==
X-Received: by 2002:a1c:558a:: with SMTP id j132mr6983373wmb.21.1573202731677; 
 Fri, 08 Nov 2019 00:45:31 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id q25sm6662665wra.3.2019.11.08.00.45.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 00:45:31 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v4 7/7] [DO NOT MERGE] arm64: allwinner: h6: enable Beelink
 GS1 PWM
Date: Fri,  8 Nov 2019 09:45:17 +0100
Message-Id: <20191108084517.21617-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108084517.21617-1-peron.clem@gmail.com>
References: <20191108084517.21617-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_004533_440426_6559D108 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0t
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRz
IHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMK
aW5kZXggMWQwNWQ1NzAxNDJmLi4zOGFiYTdlNWJiZDkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cwpAQCAtMTMx
LDYgKzEzMSwxMCBAQAogCXZjYy1wZy1zdXBwbHkgPSA8JnJlZ19hbGRvMT47CiB9OwogCismcHdt
IHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmcl9pMmMgewogCXN0YXR1cyA9ICJva2F5IjsK
IAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
