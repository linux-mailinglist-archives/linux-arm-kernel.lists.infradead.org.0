Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2078CEFE32
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:16:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+7z0v+DEG+IeBFMZZ5trfxwV549xR2HHFxWhYWEP6w=; b=XH6Ma8LBIm3htj
	rafWCxWxe2YRwUsGtpH4zKozsEz6E+a6DPCKKc/QWrme8TlIe45JqbsbHZgO2uWipcK0vUEdNrFxq
	oUEh5jWewE9K8aTpRem0nFEIi92nnl5K0rowd2BjJj9xDicQDt7512W31XoImb0AueuR9wF9hxBaQ
	G55R80/6+8R16w4NiIpmYz+/VIcO/XM4pNg+o28MrHc8CF3bLomfBexNNOS94tp9PMN3EmxypLptY
	uGwoHqpv1lAhgZCy++im3xXxVm8BRaGn5zkctBOG84NONnTittRwEb7n67mEJWz9z60LxFHHwoVKd
	0YvgkuZK1j7ctxs2khJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyhN-0003nF-Jg; Tue, 05 Nov 2019 13:16:41 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyfr-0001f8-7x
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:15:09 +0000
Received: by mail-wr1-x442.google.com with SMTP id s1so21365212wro.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 05:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n0fXA0HzdVYuMz+Yhj3TQjNmtcRgY2Ng0Cfj0PwkXk0=;
 b=nE6YVB8/dRlU2b3fHPmJ2QWHV0BQW340fAH+uA5LHsNv3jb6e/FKJTcJXzPlO7+ioU
 RNNPdn41M5dPxZMGxbnfPewuo/6zUyxgLQReHbeqBA6z2fIwxoVFagoab0i6Irbi4XDH
 Yc1LF0UfhEFlmoSKZNTZez+2H1Z7hE+bxkYwzTb6Rnzdev0pwqyN+nZYO2BjH+ZT8+iE
 g9WxNeAW4ZzQFVleSiSoL4eerfT36Zg6FA4T5dw6xQ+GKJ/pU/O4Uwd6AG99Mn1/zjGH
 6uAhBmknvt0h5wga6lJaNgb3ea1y3gfv8a/tvkRGDj6V/8j+K9BV1sr4HwD/eAd9uUiY
 mfrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n0fXA0HzdVYuMz+Yhj3TQjNmtcRgY2Ng0Cfj0PwkXk0=;
 b=F8pWblcbyOZJc7BDQCzAmtTba5t4AA2JE7qIbBU9YjOSVzjR0wMEUC/a8kcyKKtjt6
 ce5Mpilu5nEG2EmG/XoIJSWNIXkODmlS2UQTZXDNvw71oCw2MBXLmp6DuuxeSiLHDGX1
 9pqWewJeoXoPEqFfdWmSCmqMTEtJ2vAcHalUzNVj6/+Tq5wemjF0I8TIGI0ltpBPlkG3
 xHxBmEnr7FURkv0G8hPlFH1HiFHAO8NqlLFpTZxTdYTolvv2A0lM+8vYQSY9AxOXrNN5
 i40jurDr/DwEMGgFOCqQ8sUGjNFKyQZFXOB84XLgY0oPFV0Sl9zb/723L9f/1gn64xTF
 WUfA==
X-Gm-Message-State: APjAAAXZcYgItRUU12jN6xLxgJRJ2E+D7MSNLZ9KHTxXznfJLGODWZ2U
 ArdHqOJc9IZADIbw9GnBAP0=
X-Google-Smtp-Source: APXvYqwDhiEdJsPCcbhoaUwHdt2VPbYYzr78z9ZpGF4u1c+27BE7Axc5XPOsR2n+RkKWXf8PUlPbIA==
X-Received: by 2002:a5d:404d:: with SMTP id w13mr29418841wrp.185.1572959705408; 
 Tue, 05 Nov 2019 05:15:05 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id a6sm13549920wmj.1.2019.11.05.05.15.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 05:15:04 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v3 6/7] arm64: dts: allwinner: h6: Add PWM node
Date: Tue,  5 Nov 2019 14:14:55 +0100
Message-Id: <20191105131456.32400-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105131456.32400-1-peron.clem@gmail.com>
References: <20191105131456.32400-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_051507_337656_8556174D 
X-CRM114-Status: GOOD (  14.67  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKQWxsd2lubmVy
IEg2IFBXTSBpcyBzaW1pbGFyIHRvIHRoYXQgaW4gQTIwIGV4Y2VwdCB0aGF0IGl0IGhhcyBhZGRp
dGlvbmFsCmJ1cyBjbG9jayBhbmQgcmVzZXQgbGluZS4KCk5vdGUgdGhhdCBmaXJzdCBQV00gY2hh
bm5lbCBpcyBjb25uZWN0ZWQgdG8gb3V0cHV0IHBpbiBhbmQgc2Vjb25kCmNoYW5uZWwgaXMgdXNl
ZCBpbnRlcm5hbGx5LCBhcyBhIGNsb2NrIHNvdXJjZSB0byBBQzIwMCBjby1wYWNrYWdlZCBjaGlw
LgpUaGlzIG1lYW5zIHRoYXQgYW55IGNvbWJpbmF0aW9uIG9mIHRoZXNlIHR3byBjaGFubmVscyBj
YW4gYmUgdXNlZCBhbmQKdGh1cyBpdCBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8gYWRkIHBpbmN0cmwg
bm9kZXMgYXQgdGhpcyBwb2ludC4KClNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJu
ZWouc2tyYWJlY0BzaW9sLm5ldD4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJv
bi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYuZHRzaSB8IDEwICsrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQppbmRl
eCAwZDVlYTE5MzM2YTEuLmIwZDllZTFlYWQxMyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKQEAgLTIyMiw2ICsyMjIsMTYgQEAKIAkJCXN0YXR1cyA9
ICJkaXNhYmxlZCI7CiAJCX07CiAKKwkJcHdtOiBwd21AMzAwYTAwMCB7CisJCQljb21wYXRpYmxl
ID0gImFsbHdpbm5lcixzdW41MGktaDYtcHdtIjsKKwkJCXJlZyA9IDwweDAzMDBhMDAwIDB4NDAw
PjsKKwkJCWNsb2NrcyA9IDwmb3NjMjRNPiwgPCZjY3UgQ0xLX0JVU19QV00+OworCQkJY2xvY2st
bmFtZXMgPSAibW9kIiwgImJ1cyI7CisJCQlyZXNldHMgPSA8JmNjdSBSU1RfQlVTX1BXTT47CisJ
CQkjcHdtLWNlbGxzID0gPDM+OworCQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJfTsKKwogCQlw
aW86IHBpbmN0cmxAMzAwYjAwMCB7CiAJCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGkt
aDYtcGluY3RybCI7CiAJCQlyZWcgPSA8MHgwMzAwYjAwMCAweDQwMD47Ci0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
