Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01EC2CB94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwZGs20eY68PFX4fJTBCOecc06RbaL3yNfuu1D9bhdU=; b=IBs6RM/87r3pG7
	fmN4cWaE3Kl/MQ7Mt7kxzMKP6PfnmfCkIeNk1+L/TGnEQP8+QJ5/gLfwqqFgdqpERFAr8FT7LPfvW
	gv7PnDjVgKc4yQNA3Is+UvRQE1dooQkQ4HIjfTbpOzvGXv3Ys4XiJsk9OUl2aQbuq54MxCjaWqfVC
	X33gcly6SOyaEXV69HNFVjhytPpbSYAu0CA474Fn4SBQkjozqrlCLqGdznUZAdAhXHDCW0SFPGsug
	6Lez/eIi55zcTAvgyLjW9iQRGpW2oF7YB5BYOjXLkQMDDKCVNW+qInZ7rqzUHaGxPwvcwCTJDlD9n
	I5/H84Vk/OIJR7QUnFsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVem9-0002Sz-3X; Tue, 28 May 2019 16:16:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVekh-0008M3-Mv
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:15:05 +0000
Received: by mail-wr1-x441.google.com with SMTP id m3so20903807wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 09:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lc9tkqKyrUQ5ybnMKprgGIZIid5kSZLfkgDo+bRAOdQ=;
 b=fwQLKvh5/S7iFzkUlVTAYUVkkE/lVKgHJmIDwwiVBqggvIzhiGITP3ApoPrypCyb9F
 diNds2S+qxoXdduel3jePDqml5+sOKA3uLGy328bUBXS+29giS69GXO2aUKHAwSLQnAC
 If79va1gLrApIMvfqA44I4qUnXwgQtLPmCFHh9aHTLf1k748Zp75c6eWbqJBVr1n+5Li
 v5wfvpj4xYNf/SViB6fd5tm8gxkiV7Qgr4aZJDeAYrPRkbDZzCtcDmYG1RsyLwNBYSJx
 fu4G8ekdfQQd9bbQOv2FqYOb3MFr+knpfmHFoHyhhY5agWq+6RKufaUJ6J4Vf5/XsNlB
 KS1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lc9tkqKyrUQ5ybnMKprgGIZIid5kSZLfkgDo+bRAOdQ=;
 b=iNqS338ivhvgPKdL03Y9KwhOeHy7BZSadAZtGgOwQf4EcKZ3/3TtD4eL8bZNg0OHqF
 AW0BGrcQxghi4zzPKrU0+TbdwdUFrSe0KHzj+S/ToQ6+FDZJ4ZS7/KG2ezgq3r2XRep7
 DC+P9/s/BNtuvycKXM6Ub53gueeit2fVz34qKUUAFFdFFhri1FA2id4Ib5UCHOMUjlMI
 FXvY9qdJR69Hz1XKxreD4cXoJ9nas+CerlHLVQ1wwX0uEiqgVH/GJDwZEywxG1LMB7TL
 V2uTJ4+7+P0/+HLvhQQ+BJj7pyOggIGEj70xAAqHp/bpXATqq75m2F47+e0AnjdvWG3z
 irjQ==
X-Gm-Message-State: APjAAAVETgzmUUZD2afDPJdCiUwxtCAb0AUaQwYlOEWo2P7ILO91AIWL
 OqGiQJeLheW9wpecRDA56Hc=
X-Google-Smtp-Source: APXvYqwL0cL3QCeeaDPY071jkNLGK3/vjrUceMyKFnaAy+HZOfNPOmfTRE3d4/jH96rR456TgdwZlA==
X-Received: by 2002:adf:f3cc:: with SMTP id g12mr2525397wrp.149.1559060101572; 
 Tue, 28 May 2019 09:15:01 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id l14sm13678787wrt.57.2019.05.28.09.15.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 28 May 2019 09:15:00 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 06/12] dt-bindings: media: sunxi-ir: Add A64 compatible
Date: Tue, 28 May 2019 18:14:34 +0200
Message-Id: <20190528161440.27172-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161440.27172-1-peron.clem@gmail.com>
References: <20190528161440.27172-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091503_838759_4B59C6FF 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
