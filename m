Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B96321DAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 20:47:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RW1+B+3gVVu7hJt2K5v/OWeuuDRotP96N+Lcqp0sEs8=; b=emVhBXU6nhimBE
	ijk7ybQcYKKBNuqhlPjUwll1NsrAw2iSxe1wsNH+OH7dyWSm0Z33+5P0mjqUXud8S9SAU/szLFO6w
	I/5ZtxZVMw+kbUX68CY2jPMmDFqJCqn+YXN0zOTVMdZwIiLLYm8A7Y+asGiqTGdSUaeTgLzoKo1g/
	xxgVCNCjb1+MykyQGJbCv2c79U4esAMAU7HpeDxGcRTEy2JNT2hE7re54SGtWSUbjvurBH/ei9KpV
	tHfBBLOJlMKLwxkD1ld+6J+WC2xn6JJ59AXXJ1fg5X7Zj3FSs8mqUfNvcOuhxDT45Mge7SaUAOdVZ
	XnTQ8ywAlz/AS0kr1AWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhtU-0005bW-Uz; Fri, 17 May 2019 18:47:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhst-0004wI-Ei
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 18:47:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so8110466wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 11:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2w/o0YvWj4GW2dKc8xosf8L/TwKxnX3w/M6Sh7NSyHk=;
 b=mMauM/oRgsPGZUvkUT/+QSTeGRj6V4+Bsa6SDx89DACsieftOUcfnpP0PEa41Y7jjx
 vXR0gKI35+II1451PFUMT8qwllnoMQCNopXWWgkKjmFkg97k9NkB0qyU/ITdLnqaNvhm
 7824EGQbsW7XUYg+EzvF7fldSBjWgoGIYtjpilZkMG0t9WLhzSrvsol8kDo+K3T3NCbz
 PtKzNCbAtvYzjHxH1L/LnQ5cuh6R/Ykju94XenD6GIqKrMqbcTl7PRp9x84vws0jG24X
 O0reJu7XDq7JltXMnRyde6v/Fyx4Zr/oaaCH3CSZNg0MmhVKzYSpSwrgTvKQLNFPdlfF
 wbeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2w/o0YvWj4GW2dKc8xosf8L/TwKxnX3w/M6Sh7NSyHk=;
 b=Xi5cbgTxBjhqNOPCCt8kzXbItoCDjGwoJx73/G2dM7hGnFaW6FU3RLyFMJKWajAUKx
 JVf9uqExo1Y4wrDmiu1c2nBROMMRJ4jA8FDtJOWMZM7nm2wOs4/7JRmKO/UG7k6xuuTq
 +w6zGyAdNZFKxchmn39vPWcZP+GpuOhTQotwUwQDoEAnHI31uICOKfVlo8D9tvWift7X
 5763+w9z8t+QQl6WBU7+yVNjPcHsBfBtyzSbBowue8K8ir4zNapo8UsJYicx+Mmd5Vts
 zOid6eacC+IxFQoAVEwnKQTnK/fgIlvf3gkJZ7UC0gU0MBEGApU1Ali7fDvvp14vXZK5
 1fmw==
X-Gm-Message-State: APjAAAXuvGLGMGTSEVngID43COkjMKnrqeiw2k8aVSPgLpE5ypP3u/3e
 NycTX77KodfsMfIWSz+IybA=
X-Google-Smtp-Source: APXvYqwJzLvCjxFr10WwtK8XqGQ5+MmNhKYR5eWWQw+nzXOrlwwqnjpWoqW7Z7qd4a37Tuhgl5Jysw==
X-Received: by 2002:adf:eb03:: with SMTP id s3mr29605848wrn.170.1558118829632; 
 Fri, 17 May 2019 11:47:09 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id v20sm5801112wmj.10.2019.05.17.11.47.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 11:47:08 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Steven Price <steven.price@arm.com>
Subject: [PATCH v5 3/6] dt-bindings: gpu: add bus clock for Mali Midgard GPUs
Date: Fri, 17 May 2019 20:46:56 +0200
Message-Id: <20190517184659.18828-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190517184659.18828-1-peron.clem@gmail.com>
References: <20190517184659.18828-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_114711_653386_D50C9BAD 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
