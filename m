Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B676B280AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=twAuz75uNTSDUN1xWmhbMJhxKxWzw5Us1WATS5/ccJQ=; b=XjxsEG2Lnbsxfq
	tkTnzMs7Js9Rv28mjl8bmngk00IliJQNGo+jhkd957oLSVYU0xcCq/5f5I/r/J4L9+kNzpzt3hrpm
	/B6UkOfECWj5mMFmfHf6yWph7X3KDNTcpLNvViJae7ZFupibx2vGsCJ2M84ZAw3dtUbHZ45Qro0Wd
	ZKxjRMtAwal6tEsM/ZPDHT55Qh9/PHDQXnFRu5vI4za6wVgu5R56Hl8G9GBFdLKGEkVajyN4D9Pam
	J01RyJ8wy2PLmSIPqXsAkoiP5BdxbO13NdaFPLcedcuxgc/NygTjVg4xXpI1JT2J/6YYnkkXn/vXS
	6LO/BEhbx+AqELDOcuaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpNW-0007I7-NN; Thu, 23 May 2019 15:11:34 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpMx-0006l6-ND
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:11:01 +0000
Received: by mail-wr1-x442.google.com with SMTP id f10so6706357wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 08:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gc5Q9HCaQ5rPgkj8KRzJTbdaxTJ0kW48gLvYL3xRMJ0=;
 b=M8xdb6wZwYfZCgHc3Bw+Bw5y9J72T/s0dD3w/SIV1z+UVpKhQ0+QPXNjZDQJEcznfB
 ljIoX+5rCbr7ead2MGjgQHmGV+hAK+zKCuhTsOQQts4NWc6oIwQwWXQFze/rtiUCgNAZ
 BprM+1fpa9g+yedn7B7rv+3fSwcP5zdKtRV0r/wYe+umPZ7hhlMFqjB6z0mWLFHbm/og
 knKO72rDJlbe1v3dzfBs9+8hREUV7kGtlSJNzGOZp/D57uLOb1UtIRqy6FY6uyE17InL
 2QivjhrymxxIIjHPK2w9Jc8QO1DunpEAxBHx5VRXo++XG+IaD8UuDtfbBbVSeUN8ZsXu
 oVug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gc5Q9HCaQ5rPgkj8KRzJTbdaxTJ0kW48gLvYL3xRMJ0=;
 b=Xyj6/MChSrgkJ9R5h9B26Ab3ArcDNh+E7VoYhGIeCOSS3RskadtuPUbNht9z8O8YqO
 Ykhd2BrJENb5FvIm1A/LnkJzEwAjdHOnkHBd7rnhkd6UjEWTvCRUH42C1fRmTcBtGrZz
 CYovFxSxJ+G1AM6G0XhWrgv6ufXP5YBg1/+NtkhWmSIKwBj4ih+dUUiho5EjTprUDam8
 qMgG2FsRtoJyoTCWN2ndFK6dXyS1q2DSaW9xCwDbtU0QIgMUAM5DckSMncDpaN4ff70h
 6mfW2qrIGXJbsHM7tbOcRcdxK19t8iEhubwZyipPfUiuo4UiRpIGOufjeqIhG9ZECB1I
 hU5g==
X-Gm-Message-State: APjAAAUHNP71vPzBHsZLms5p/+XwdA//XIlQfTem74SesT3jVF48J8P8
 tK+Vhq6pRq3mEQcy1Fwcph0=
X-Google-Smtp-Source: APXvYqyhry9skXqUZHuz4MBLzVwV4UhZXVj9Afk7FyiwMdTrNP46yL9NLed8GYbSR7agDLkb5+Xypw==
X-Received: by 2002:adf:a4d8:: with SMTP id h24mr3142017wrb.171.1558624258158; 
 Thu, 23 May 2019 08:10:58 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id q15sm11436324wrr.19.2019.05.23.08.10.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 08:10:57 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 2/4] arm64: dts: allwinner: h6: add watchdog node
Date: Thu, 23 May 2019 17:10:48 +0200
Message-Id: <20190523151050.27302-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523151050.27302-1-peron.clem@gmail.com>
References: <20190523151050.27302-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_081059_751836_345EEF85 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IGhhcyBhIHdhdGNob2cgbm9kZSB3aGljaCBzZWVtcyBicm9rZW4Kb24gc29t
ZSBib2FyZHMuCgpUZXN0IGhhcyBiZWVuIHBlcmZvcm1lZCBvbiBzZXZlcmFsIGJvYXJkcy4KCkNo
ZW4tWXUgVHNhaSBib2FyZHM6ClBpbmUgSDY0IC0gSDY0NDhCQSA3NzgyID0+IE9LCk9yYW5nZVBp
IExpdGUgMiAtIEg4MDY4QkEgNjFDMiA9PiBLTwoKTWFydGluIEF5b3R0ZSBib2FyZHM6ClBpbmUg
SDY0IC0gSDgwNjlCQSA2ODkyID0+IE9LCk9yYW5nZVBpIDMgLSBIQTA0N0JBIDY5VzIgPT4gS08K
T3JhbmdlUGkgT25lIFBsdXMgLSBINzMxMEJBIDY4NDIgPT4gS08KT3JhbmdlUGkgTGl0ZTIgLSBI
NjQ0OEJBIDY2NjIgPT4gS08KCkNsw6ltZW50IFDDqXJvbiBib2FyZDoKQmVlbGluayBHUzEgLSBI
NzMwOUJBIDY4NDIgPT4gS08KCkFzIGl0IHNlZW1zIG5vdCBmaXhhYmxlIGZvciBub3csIGRlY2xh
cmUgdGhlIG5vZGUKYnV0IGxlYXZlIGl0IGRpc2FibGUgd2l0aCBhIGNvbW1lbnQuCgpTaWduZWQt
b2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gv
YXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIHwgOSArKysrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxs
d2lubmVyL3N1bjUwaS1oNi5kdHNpCmluZGV4IDE2YzVjM2QwZmQ4MS4uMTNlNzBhZWJkZGJlIDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQor
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQpAQCAtMjA4
LDYgKzIwOCwxNSBAQAogCQkJcmVnID0gPDB4MDMwMDYwMDAgMHg0MDA+OwogCQl9OwogCisJCXdh
dGNoZG9nOiB3YXRjaGRvZ0AzMDA5MGEwIHsKKwkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1
bjUwaS1oNi13ZHQiLAorCQkJCSAgICAgImFsbHdpbm5lcixzdW42aS1hMzEtd2R0IjsKKwkJCXJl
ZyA9IDwweDAzMDA5MGEwIDB4MjA+OworCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDUwIElSUV9U
WVBFX0xFVkVMX0hJR0g+OworCQkJLyogQnJva2VuIG9uIHNvbWUgSDYgYm9hcmRzICovCisJCQlz
dGF0dXMgPSAiZGlzYWJsZWQiOworCQl9OworCiAJCXBpbzogcGluY3RybEAzMDBiMDAwIHsKIAkJ
CWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1waW5jdHJsIjsKIAkJCXJlZyA9IDww
eDAzMDBiMDAwIDB4NDAwPjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
