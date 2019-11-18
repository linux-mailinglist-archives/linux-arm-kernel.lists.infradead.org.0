Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF981100182
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:39:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6CjzJoPpw9L0iRbkqZ1LKvCZDRrL5XxwyszbmerE+Q=; b=OecnxuQcNnTu/k
	EvYOx533ctrBu7UP27FVYiWFSbSLbGbPPOD1q5GY34kNrvxRGoZvFqYujFIoyjqU+RokfQWF7x7BG
	l/RLpW/xav9di1eFj6nGYl1qEWlLlf7ZOI0jnpUb0hBrwa1NPGmmZQDnuYLV3TFrq7hp5HOMy/Bq9
	KtdlXDg0j5sSuBfpclBULWx0vJfNeXNF/QmH5TV9jZsZKPJxKFhEnKaONcg4UTknOBBOWmA2Ob7ja
	AcqlDOF9130+MAPWXhnp1DM5p8RLBsEoAmQilyJ0w/t8SlqjD/BNbpUmd98yB3jOPES2CblqOvvYG
	p8qXdq3Jl3SiKZmtpxyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdVG-0005bE-Nf; Mon, 18 Nov 2019 09:39:26 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdTi-00049S-HU
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:37:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id t1so18550677wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 01:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iGqUalssFt90BW+qC26cPJ2ocimtOg3RIH0RE3W1sS4=;
 b=tLOox4gXBgeuMcVf6MPAAv697SJ+irwwdmKmBr5Y/n1W/KDxkadEcy+ffgp4gbfPu2
 YZV8mDzXoU/DHJ4YvPNk6Gx8xVQUmQM+rWgm8jV3IXROjViFIosyi2eLKzbPRW4PsS3p
 w54uwjSjthL3gl9VJ3VhNtAYWBieiOu9+kVg6q3m/yVXyE1y5OY9eCfPv7+ckJEiJIAq
 3bYg3t107yXwdeHQdxi5D7FPBk/kxLgrhUYhnR+GJEYplDIVEeSm6GpMp2u9nO5bK99X
 H2eZa0YyOymjzaVKyI355x9IQR2srhgyyc0MldA0FBfy5LN5srnSclLFv+FCrhfjOTCh
 sZ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iGqUalssFt90BW+qC26cPJ2ocimtOg3RIH0RE3W1sS4=;
 b=BicSSR5MWQN6qX4EQR7qy/BsZB6yuV8Jb67RioB71jR7g7zHZX/kpULA1V1z4/fWas
 eFb4pBbh7R/lVDhcb/Q2B4bY0CkXVatNOmtHJot/hhshZ1+b+O0xSeOQSFLf/aQoBFQo
 hLc2dQoI2IhbQG4WX7FV0hzZN177mAWEof9PD9SYpch2es/piDFncUogKIsD0GSpr5dG
 f/5Zdz3V9N6lV1Vj2aST8YxX3ljskMHcJpeaz0T3xaKC1KfvtxHRiKN2GM6faw41vIyN
 aZ64sBHKMag2H1NDSlSS2GzleP5FNfkawnmF/heq/83JhnRcdvGiArJK1oP6iKCGrUFX
 fTnw==
X-Gm-Message-State: APjAAAUQXglK+6QIpCgRUbBhuj4aONhvHCkFna85ObV3TPTQySylbySb
 /4BFsWpLYCMMVORwX1RISARtJobU4/4=
X-Google-Smtp-Source: APXvYqwJTC4TGwM9hvlm2LKX+ev9HQJG633L3So58N0alxBGkAmetvFIYpwsUfKCX1Z+oAukbL2Qkg==
X-Received: by 2002:a5d:4b08:: with SMTP id v8mr26653916wrq.338.1574069869088; 
 Mon, 18 Nov 2019 01:37:49 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id w10sm19006687wmd.26.2019.11.18.01.37.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 01:37:48 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v5 8/8] [DO NOT MERGE] arm64: allwinner: h6: enable Beelink
 GS1 PWM
Date: Mon, 18 Nov 2019 10:37:27 +0100
Message-Id: <20191118093727.21899-9-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191118093727.21899-1-peron.clem@gmail.com>
References: <20191118093727.21899-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_013750_685480_9574F242 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
aW5kZXggZjMzNWY3NDgyYTczLi5jZjY4NGJjNzM3NGQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cwpAQCAtMTM2
LDYgKzEzNiwxMCBAQAogCXZjYy1wZy1zdXBwbHkgPSA8JnJlZ19hbGRvMT47CiB9OwogCismcHdt
IHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmcl9pMmMgewogCXN0YXR1cyA9ICJva2F5IjsK
IAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
