Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6529B1AD9A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 19:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RW1+B+3gVVu7hJt2K5v/OWeuuDRotP96N+Lcqp0sEs8=; b=SJHrzs/CDOvggK
	1IK3Ld/jSNAHIvu14nfeHa3JSXcvCdOM/IqOfe+pbjOigO6fBzrTRAX1EA7udpC2GP48mBW8tjR0N
	z5g8fpeVWWDqzVMtdZu7Hr+pgKo7GyXLNs7vYmS7lvCPp6UUkc3588UhoKXcWQ1uxMc6jJv5EQd30
	b46OG91dCAPxkws3PuIBATaDHIt5wFI8NK89jaH3YxCHH0IDfCkV+qOC/MWvbjQxsh3RNd6HiNr4r
	7VqMHlGEx0mYDwPp17ogYjotnt55o917WUKVF24z3cvK2/cpZTbF0csQumxyXS07xFifBD9jzyB3X
	5UEeiiN+hG1ip2Q4RkAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPsYk-0006XM-KJ; Sun, 12 May 2019 17:46:50 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPsYF-00061N-M1
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 17:46:20 +0000
Received: by mail-wr1-x442.google.com with SMTP id d9so4345918wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 10:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2w/o0YvWj4GW2dKc8xosf8L/TwKxnX3w/M6Sh7NSyHk=;
 b=AjsEnXYimdr8AvydteCtPqKKl4nVXnBE3i0ABKHq/uJCZi98gqAOEJgPbS7s5lnb7d
 8AbtSEb/imSgq1c4/AUmc6O/cboc0TJGeCLfOp5Z3oNlvT9V9iVXZXEKeQQMhr8t1lRM
 YaT2dlb4MSUgf73LLkrdJA19XRmXH41HYOryaYBusMPZZdr04tXBk2k3TPhwIrTwIFL+
 F1JPK6mLy6Fqvl3p0WlAv5jCn2oIU6MEJ3efLRpIq7BrqCaE3nXnVTIKTnt9g9h7kU0W
 9SxtSgkGYN+D7UvI0CpXOQ3IbHf0wsrlQtgOHOeCESbKGDvOgP49Z67LcO6RGwEXR3uA
 ziQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2w/o0YvWj4GW2dKc8xosf8L/TwKxnX3w/M6Sh7NSyHk=;
 b=doMyuHL++6xOd8i6u6HxHKj6IH5LWYUegP6oQqZie+h2cVqWHW/fQsGud3QdMyDwZE
 2IGFWvUzs/IVgISZoUTw1yqbFu2liQ6TbYcdFY8u9Bzayu96QrSS0Hg/WtDiQ7owR8fU
 rinwaB6Od81RF6HjDaTm7eA864cMau87V0Bq4V5FArGbfrMXum3L9jeV8HL03Sc8OHYg
 2AOGpTyUvsCYoJsko1gJG6xyzXCxZgEDPZDeRPNkJfWzdlhx2i2WsxQ//F2tZrme6foD
 Fc5xC9tVtC249nCIoLjcr/nBzx9/P61RfiUW2Gt/VtO7pwQ3eqOWkoExTzvl4C/lu+KX
 4Qsg==
X-Gm-Message-State: APjAAAWiYF9q8zGIuLOaqc+VgoFOhHEIJkTCX6VNM9jRHeep1QdFkCQT
 1U8W4DAa5F9CCgUW4dQtabM=
X-Google-Smtp-Source: APXvYqzvp8ezt6AmI9jIyt2T+HF6x4fAV9SfcMVOJ7+O+OXtpp/dMmSAZ2wvp2VfVb1lYQz+lHV//w==
X-Received: by 2002:a5d:4fd2:: with SMTP id h18mr15357356wrw.117.1557683177903; 
 Sun, 12 May 2019 10:46:17 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id d14sm9090558wre.78.2019.05.12.10.46.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 10:46:16 -0700 (PDT)
From: peron.clem@gmail.com
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 2/8] dt-bindings: gpu: add bus clock for Mali Midgard GPUs
Date: Sun, 12 May 2019 19:46:02 +0200
Message-Id: <20190512174608.10083-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190512174608.10083-1-peron.clem@gmail.com>
References: <20190512174608.10083-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_104619_732166_2B94459E 
X-CRM114-Status: GOOD (  13.30  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
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
