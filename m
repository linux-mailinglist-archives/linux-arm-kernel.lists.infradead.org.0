Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 028F925513
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:12:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RW1+B+3gVVu7hJt2K5v/OWeuuDRotP96N+Lcqp0sEs8=; b=Zemw2pZq7bZzfh
	lc4anJIQpmtgaFgkdt4Rt4+D99pTh7WQDhuJRmeF+rsiMp/la3A9gL0MRIWqABO6gZWzW94TlOgAK
	ipt9e8mIEJNkJz3GGDMy2u8lV8nknhdem556b4dxfbkejlun17l220vfJLGUBpSlk+v9CW7aCkQDb
	XBbQ9d9RrQN6Por7n0XxUY4jSZ6EN28zxu9DHqS6uXh2a+fCfzZW/BVBEQ8C+ZoqTddiArFKstF5S
	P13EG7h5/voBfHwDSHNNZp0UacibkIvgNKYyeJj3+VlK1FujkeuvEcsxw3zbdflZmE6wzERLeQKvJ
	2YQ5Te77TI5tCK8PbyZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7Mx-0007MK-Cu; Tue, 21 May 2019 16:12:03 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7M9-0006Nd-B5
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:11:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id f10so3873558wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 09:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2w/o0YvWj4GW2dKc8xosf8L/TwKxnX3w/M6Sh7NSyHk=;
 b=DfdW1XdDhItosbvciVXVrDVugIjIifv3cMUMU94Jp8X2FK0ZQxxAZxbv2Qn6Fn5cQw
 49oQd6X322hDf8QS0nhTjEWv5J8P0acGtDtNKgQZuxIKRTV9u11Hl+bRwOWopyqopQ+Y
 Lonri78CM6AFUOHPJRHIFr/dOLafFuQxH2L5XPIYZqgW3eN7bPO9qFdCmfynZBpAgiLx
 Xqs7gEgHeQrAWN7IkS+ExBahYnEL7Dy2Cq0ITBOFdyerMgXruyGZs3ON566JrInM7H17
 YfImRCPSTYENl1tnCSf11UodIQ3LinQlSKeR8WR7i6XeC618r8r7hUfdpgHQDMKqPUrG
 VkoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2w/o0YvWj4GW2dKc8xosf8L/TwKxnX3w/M6Sh7NSyHk=;
 b=PV0sS6Xymq0JbcgW6FFQFY8cqOI7tKR3R/jGRo26Zxhw5myIOHtSMxOrfVBLsDlU+s
 mHYnLcdBEPNtvoy9H7vHBCXUo7+Wjx37GmiKLsgTB7EjTH97gF7cPSCx9cWU46QMgJsA
 sGPBUfLeNZbH704VgMarZVqBc76c5wI0UeXGxr8gttm+PQw83h3ZBbLC2k9DzNAbLCa+
 jns3hvxWOk36YyQz4R5sDiFxWlyR+657O1jV7ugCLT0vFJkcCoDk4ZSLMqnRHFHSuKkA
 2vNs1I2yp0918LkQUwvBrXEsUKN2iFNpGGCBS89avUwAKL8p1bXWxdEukigyvRnE+Da8
 SJ2g==
X-Gm-Message-State: APjAAAUAbwJtfWuUYjXOok8ajlGAFxrEfhXfcVKeY0NFPG1cX61YTAYM
 hFLzVuSKueQl5/0/tazz79c=
X-Google-Smtp-Source: APXvYqz4fOGHvkVpsU0vd/YhoaBrRo3VTMc09JZktSMeJdb5LD0oTWIQjOnhKTvCK0VzAq2eMZnopQ==
X-Received: by 2002:adf:f78d:: with SMTP id q13mr1959297wrp.220.1558455071876; 
 Tue, 21 May 2019 09:11:11 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id n63sm3891094wmn.38.2019.05.21.09.11.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:11:11 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Steven Price <steven.price@arm.com>
Subject: [PATCH v6 3/6] dt-bindings: gpu: add bus clock for Mali Midgard GPUs
Date: Tue, 21 May 2019 18:10:59 +0200
Message-Id: <20190521161102.29620-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190521161102.29620-1-peron.clem@gmail.com>
References: <20190521161102.29620-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_091113_689937_CE689D93 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSWNlbm93eSBaaGVuZyA8aWNlbm93eUBhb3NjLmlvPgoKU29tZSBTb0NzIGFkZHMgYSBi
dXMgY2xvY2sgZ2F0ZSB0byB0aGUgTWFsaSBNaWRnYXJkIEdQVS4KCkFkZCB0aGUgYmluZGluZyBm
b3IgdGhlIGJ1cyBjbG9jay4KClNpZ25lZC1vZmYtYnk6IEljZW5vd3kgWmhlbmcgPGljZW5vd3lA
YW9zYy5pbz4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWls
LmNvbT4KUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Ci0tLQogRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwdS9hcm0sbWFsaS1taWRnYXJkLnR4dCB8
IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwdS9hcm0sbWFsaS1taWRnYXJkLnR4
dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncHUvYXJtLG1hbGktbWlkZ2Fy
ZC50eHQKaW5kZXggMWIxYTc0MTI5MTQxLi4yZThiYmNlMzU2OTUgMTAwNjQ0Ci0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncHUvYXJtLG1hbGktbWlkZ2FyZC50eHQKKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwdS9hcm0sbWFsaS1taWRnYXJk
LnR4dApAQCAtMzEsNiArMzEsMTIgQEAgT3B0aW9uYWwgcHJvcGVydGllczoKIAogLSBjbG9ja3Mg
OiBQaGFuZGxlIHRvIGNsb2NrIGZvciB0aGUgTWFsaSBNaWRnYXJkIGRldmljZS4KIAorLSBjbG9j
ay1uYW1lcyA6IFNwZWNpZnkgdGhlIG5hbWVzIG9mIHRoZSBjbG9ja3Mgc3BlY2lmaWVkIGluIGNs
b2NrcworICB3aGVuIG11bHRpcGxlIGNsb2NrcyBhcmUgcHJlc2VudC4KKyAgICAqIGNvcmU6IGNs
b2NrIGRyaXZpbmcgdGhlIEdQVSBpdHNlbGYgKFdoZW4gb25seSBvbmUgY2xvY2sgaXMgcHJlc2Vu
dCwKKyAgICAgIGFzc3VtZSBpdCdzIHRoaXMgY2xvY2suKQorICAgICogYnVzOiBidXMgY2xvY2sg
Zm9yIHRoZSBHUFUKKwogLSBtYWxpLXN1cHBseSA6IFBoYW5kbGUgdG8gcmVndWxhdG9yIGZvciB0
aGUgTWFsaSBkZXZpY2UuIFJlZmVyIHRvCiAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9yZWd1bGF0b3IvcmVndWxhdG9yLnR4dCBmb3IgZGV0YWlscy4KIAotLSAKMi4xNy4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
