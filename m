Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B582A602
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qkvRQnIlZWt8vYOiJ3sooIluUMp6F5tNoFDNbFPNN34=; b=P1Ruef20MumtdR
	kyiGxtxnvY7LquNoSReoSigQj6XAQqERkkuejVkyi7yeAXUxbuSIFxQ3+mBRGCQC6T549H1rAoNjX
	5WA+NTvACBzOP1A8C/G3UGstfdBm1nj+jFYZTORuxULkZOMZpEaY+BcCFoHsJ2GYgAbxrA+2ALNWn
	PrVtJo05yMiMaKb39RFFV2qGtgMjtAEve0emqOmYI+strbFUy2S2O6wmnXM/dn1S7VTkAgH83axJY
	NYAxT+006gqGsvSYK1bGmRD5xqe7oeB81ZJQL2/x4dzeyyJaJUnEYBUIX8+dgaWYVrtGObeB7zFxU
	Tiyfb4UoYiEMkep5yoMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUb7L-000728-2G; Sat, 25 May 2019 18:10:03 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb6w-0006nk-G2
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:09:49 +0000
Received: by mail-wm1-x343.google.com with SMTP id t5so12062359wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=83YdGTTjdVEgbMX9Pve7cooV7ArUmubUq0eyLyKNWLY=;
 b=DX6mAzkeprbAS8LEcZHXWGfX8FmT9LxCk+W9MNQARSEtOVNEeb5MpfnVHYd8v68GPF
 XphJ1dHafwu64rV2J6d7gAE2kwuEPHZuM+wGza8xAJAZh3PbYQ8cGjzxIioyrXUnbCiT
 H0sBjfaG3WBFMdjF8aA80lCIASJIBgHYKlBIlLyVko9Q0zeliBEgRD697rfHFKwqCOih
 cwckQP5DTM84BRQk89IIZH/PBKUERHqk2SvvGfc5LktIuaWjNQmf4HNnvF538DXu6ntD
 EjSdwKYMe7WZ2qFPbZRRjGWir6KR7M5fcsAGclh+gWP0aWGyFD95ZQjB6XnJQeLab/IG
 RQ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=83YdGTTjdVEgbMX9Pve7cooV7ArUmubUq0eyLyKNWLY=;
 b=ugWWcrUVv6nz/TsZm8C2V/Y4T55LEM2j7+5evuGo5aqG1KyGh8K+SAm0q34k9i/WlH
 SHpByEU8kQ50oZn8vwEejyWDFjj3zn8lm7hVCWe62NQmTu8iXWgQwrSdtaVOIZcD7Tqr
 i/++x1mNDytqelbXsBgRWQuFfwcST+1PCpNcEUTgDc+phF/BokcEovOYyVQ64sgScl3+
 /HHXCX59d6fcx8hybdKbcp4idpmit0K7EmVslLJFu96SCaFZFlSy1jBWFyzaVlJK5+Qm
 oLZ3v8hxWSqO26Dg1F9AtmUQwAcalQRJ3KkSWrkZnqq9nUaJWvknx9mgO4iZ6hW5+6Yc
 r+eQ==
X-Gm-Message-State: APjAAAVdTAGq0xzc0das6vXw8tGYGemGdh1/TPwrYvFLor6KSEy6+ppa
 7O9mRRZ8JcYaMJuO7WK11dM=
X-Google-Smtp-Source: APXvYqzQvx/00v1QDf5WbzmOXOq/hJfS/KM85m1a+8CNmf3tCuAdcXLFH7KbENB6gixGMVuYqgW+zw==
X-Received: by 2002:a1c:f111:: with SMTP id p17mr20168600wmh.62.1558807773768; 
 Sat, 25 May 2019 11:09:33 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm5656914wmf.48.2019.05.25.11.09.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:09:33 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 04/10] dt-bindings: media: sunxi-ir: Add A64 compatible
Date: Sat, 25 May 2019 20:09:17 +0200
Message-Id: <20190525180923.6105-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525180923.6105-1-peron.clem@gmail.com>
References: <20190525180923.6105-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_110938_568417_0B18FA51 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlcmUgaXMgc29tZSBtaW5vciBkaWZmZXJlbmNlcyBiZXR3ZWVuIEEzMSBhbmQgQTY0IGRyaXZl
ci4KCkJ1dCBBMzEgSVIgZHJpdmVyIGlzIGNvbXBhdGlibGUgd2l0aCBBNjQuCgpTaWduZWQtb2Zm
LWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1pci50eHQgfCAxICsKIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1pci50eHQgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbWVkaWEvc3VueGktaXIudHh0CmluZGV4IDUzZTg4ZWJiNTNmZS4uZGE1
YWViYTg0M2RlIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bWVkaWEvc3VueGktaXIudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tZWRpYS9zdW54aS1pci50eHQKQEAgLTUsNiArNSw3IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6
CiAJImFsbHdpbm5lcixzdW40aS1hMTAtaXIiCiAJImFsbHdpbm5lcixzdW41aS1hMTMtaXIiCiAJ
ImFsbHdpbm5lcixzdW42aS1hMzEtaXIiCisJImFsbHdpbm5lcixzdW41MGktYTY0LWlyIiwgImFs
bHdpbm5lcixzdW42aS1hMzEtaXIiCiAtIGNsb2NrcwkgICAgOiBsaXN0IG9mIGNsb2NrIHNwZWNp
ZmllcnMsIGNvcnJlc3BvbmRpbmcgdG8KIAkJICAgICAgZW50cmllcyBpbiBjbG9jay1uYW1lcyBw
cm9wZXJ0eTsKIC0gY2xvY2stbmFtZXMJICAgIDogc2hvdWxkIGNvbnRhaW4gImFwYiIgYW5kICJp
ciIgZW50cmllczsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
