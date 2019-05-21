Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0176E25512
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hunNEEW9xTzsyEYWOjZ9A1D9CfqzBYiYnRl/ACeWeok=; b=OGBfvDA3jnc1+a
	D1JdMMc+XyAbn/l7TMwQrePIPTHIV037DGuzZ5CvBxc4iCNyJ8vIGWMuDOx3pCdb6dS262OEHQXiD
	xifa5hxm3qLwITxwjL47mfh4XshxzoOp2xBYswiYNTp9Ck/0DBRXA7Hdyt3wxDhMDdkNNniTsMl9x
	uaDFKRCUe4wHqt9gpr4wo9O0rL84oYmioatNNfMdOO0o2xlFxoxVEJH1QtKGL2BBwBDtwsnGQgWj/
	ctK5/vw9RuuvXTwm5t053XGg7ovk/l0hw6UbToOAusLI8WRNnvpkk1rOiwihVyVpCyfDDARUB8KaR
	vHKDZKjSB3gDzF6elOvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7Mn-000736-VH; Tue, 21 May 2019 16:11:54 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7M8-0006M0-0x
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:11:14 +0000
Received: by mail-wm1-x341.google.com with SMTP id i3so3573769wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 09:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r8viNroRA5goE0iPj/ap53EgAXBGfEQtlqx5YkjMMp0=;
 b=ARZFb59f/TEGR4dKn2zPIsVrlQpgAN3MkGdMyYoenwZrYx//1w/GS1vxb/zR0DiMu4
 kFpEmoMA86LR7oMglGgowJVUCRWcB4uFwzjEjBzB/TClFDnUCsAYsZGfse3m9d3Elf0X
 LZXgLoTvu2klwbc97GLhdfLn9ItpsQuHfWTsjUtfW9vQRNNk+uobllA6qAZTnTm99Ugm
 n1r7iW/h9mU0lcFEX1q+b4LjCRuTE9urqhkK56b9ItVJIMrgMcJ4E0gF0t7oqfqCy6WU
 IMfY/wZLsXkxMjbx6rkgIiucVgB9E+aq2VD6BVtbZIJW4Dj9fkmrj2Upj/QMFHowPrYh
 TkYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r8viNroRA5goE0iPj/ap53EgAXBGfEQtlqx5YkjMMp0=;
 b=gEZNHKxW73oCGC82BIL3VUD5L6UoXOx/S5QoaaAb7Ni0rBXljUInnMujgEh3TjpJXs
 ju+Su/X2IXdpJqDFpANhCwshrFXEBGOMfmNeXCx9fSCaqRsz1UKq+ESMgQ8QkYzCDlgB
 4Io+sEIEKzehS2Cv771zCG7l6puYgfpfZP3b5UF4fNCxKNol8goOvM91JRxkI+QA5hTM
 CFA4HsE8HeCF6CSWV8zkdi4BDji6vqCrQ4SQRD9dJxBTWvC+b2AkuR98ul6yE/OwcHMs
 iZU6uHWXMM10V3xzq7kUG4AlZQ//ul7ob6HMGwrnHePUDF8RqfrWil/g8TDb8rybqLU2
 fQzQ==
X-Gm-Message-State: APjAAAX5lVPKB4VjsKwa0kkKTbG9NZzWR4O9Z8EVnvRXnIMxf0RLcw6E
 FHjUd4ppf9E/Ou85FYZIZg8=
X-Google-Smtp-Source: APXvYqxfxJ6RsSMMKEQ8Whf7wf2BBbNOZyqWjeSvLocsSoko9vuDWmS1j0CXAq8lGvRTLD6FP4Blfw==
X-Received: by 2002:a7b:c4d2:: with SMTP id g18mr4212516wmk.78.1558455070526; 
 Tue, 21 May 2019 09:11:10 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id n63sm3891094wmn.38.2019.05.21.09.11.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:11:09 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Steven Price <steven.price@arm.com>
Subject: [PATCH v6 2/6] iommu: io-pgtable: fix sanity check for non 48-bit
 mali iommu
Date: Tue, 21 May 2019 18:10:58 +0200
Message-Id: <20190521161102.29620-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190521161102.29620-1-peron.clem@gmail.com>
References: <20190521161102.29620-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_091112_322689_CF3519FC 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
