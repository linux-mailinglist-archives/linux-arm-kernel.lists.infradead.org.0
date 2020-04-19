Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C92FF1AFB00
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 15:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFeAw0F7YKqJ64rzpc1K29Cm1u6dZst/P2GBYmKs8vQ=; b=VH5OT/fdA7IM6l
	Zp2bqyPwhet66kY6ZThp7fGktIs0FvD0SHlKm5xECk0doeKXS8ynUG04Zv8yeD9zJk4XRAtVUvhOK
	3CNFZArUOg9xt/j9U4jFV3Yfvr7kEzC/fDRZopK8GmUp3UB/DIGi0ebPFFDL3W0ynfc4QwaJlVZhd
	xmbfv6PDbPf2nlCSuUgmlwYvgPTLLU9jB3Z1ZPq5jqarzsYpvs7WCMRXfrfr5vu6SiT5mjHDzo2E8
	Sm4CURtSghE1Om00MPYKKO9lr9lmItCmqpu9EDkDbST/dIMzUIbO1bnMQEHdTbpqtPRvHHJNlJS4w
	29AcVf9W/9N4Vm35pung==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQAN2-0001zf-3M; Sun, 19 Apr 2020 13:52:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQAL1-0000Na-92
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 13:50:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id i10so8675871wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 06:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i+OjEGx56p5nShQkF9i2bVGbxPWUEyMjxVk1NXXnab4=;
 b=IRpYW7GI7OPPAPHhvhb/srgP8tmGqqnNd0SkG/k3XrSQB5A0dXikTzXCxcUr4+nj5k
 uonLZsT1rYp80VIudZ3+PFaMZZF1zxtCrF0bkCElVGoxHV44376LXWHaQiaceF9ZLd9O
 h6HxM2vE6MG4+nIQOYbELFLfgy0J4dzaSslzfR5kuHoYT+jR7FYlsHWKJ4vY0gR39E7A
 LrKxwHYJyILfq0r7Kjtzv/G4JNJ+F7iv2N64KKMjTIdsrveEwrpa9x30JsZmlrfiW9CS
 a85dIZTF3yeiPouFbP+bqK1DE2qjjUHNd3vSLG2m57ySJbDuNrtRc2Q8Lkgz5cBmWY6c
 4Wwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i+OjEGx56p5nShQkF9i2bVGbxPWUEyMjxVk1NXXnab4=;
 b=WboEya5gzcmJcuVQ+vf/YkVfn1Mz3WNvVyan2ZfD5GtdUPk9NL/1etY1IquYgNWB9D
 uEKlC5dZnlWjvRnqDCwBh+A1AKxLsDwmkkWuUvmzGoBJm4jMveNzNGgiVkNLzfqI+AqL
 +GMfkCyZ+MR4HvftVP4C9ISjpoptfjYSO5qUZHIM4VX+crRLCKkpHtjQ0bxg8D5II9De
 OSq9QfJVqWB1TXqmcHETdZlM7EQP9bnehhDgu1l2olLJq8wfIrgBbnR7zKka/uoM0YM1
 xIOvKoSRlyICAx6NVpYabPHgAA+CLHbdqvmVw2QuOCbRCi4apMmfXqyKU0Kouel/jH81
 zsfg==
X-Gm-Message-State: AGi0PuYxTwDCo29Ez+5wXDXHrtzggDZhDaOsY1a0NJVzggralDo5iLnA
 2dm8i/53KsPUYj3et9C1CVM=
X-Google-Smtp-Source: APiQypL5C06Bf6yVWNwxLLJrMfFXFPzgVn6j2eawN9bgs0TIdNfqR+FQtHny+5CKgOHVnG93TVnL1g==
X-Received: by 2002:a5d:6646:: with SMTP id f6mr13528540wrw.318.1587304221588; 
 Sun, 19 Apr 2020 06:50:21 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 z8sm20183940wrr.40.2020.04.19.06.50.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 06:50:20 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 7/7] arm64: dts: allwinner: h6: Enable CPU and GPU opp
 tables for Pine H64
Date: Sun, 19 Apr 2020 15:50:11 +0200
Message-Id: <20200419135011.18010-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419135011.18010-1-peron.clem@gmail.com>
References: <20200419135011.18010-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_065023_336568_D5357DFA 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIENQVSBhbmQgR1BVIG9wcCB0YWJsZXMgZm9yIFBpbmUgSDY0LgoKQWxzbyBhZGQgdGhl
IHJhbXAtZGVsYXkgaW5mb3JtYXRpb24gdG8gYXZvaWQgYW55IG91dCBvZiBzcGVjCnJ1bm5pbmcg
YXMgdGhlIHJlZ3VsYXRvciBpcyBzbG93ZXIgYXQgcmVhY2hpbmcgdGhlIHZvbHRhZ2UKcmVxdWVz
dGVkIGNvbXBhcmUgdG8gdGhlIFBMTCByZWFjaGluZyB0aGUgZnJlcXVlbmN5LgoKVGhlcmUgaXMg
bm8gc3VjaCBpbmZvcm1hdGlvbiBmb3IgQVhQODA1IGJ1dCBzaW1pbGFyIFBNSUMgKEFYUDgxMykK
aGFzIGEgRFZNIChEeW5hbWljIFZvbHRhZ2Ugc2NhbGluZyBNYW5hZ2VtZW50KSByYW1wIHJhdGUg
ZXF1YWwKdG8gMjUwMHVWL3VzLgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJv
bi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYtcGluZS1oNjQuZHRzIHwgNyArKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBp
LWg2LXBpbmUtaDY0LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni1waW5lLWg2NC5kdHMKaW5kZXggNjNhNzg1YjUzNGUxLi42MGZkMzNmNjU3ZGMgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMK
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LmR0
cwpAQCAtNCw2ICs0LDcgQEAKIC9kdHMtdjEvOwogCiAjaW5jbHVkZSAic3VuNTBpLWg2LmR0c2ki
CisjaW5jbHVkZSAic3VuNTBpLWg2LWNwdS1vcHAuZHRzaSIKIAogI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL2dwaW8vZ3Bpby5oPgogCkBAIC04MCw2ICs4MSwxMCBAQAogCX07CiB9OwogCismY3B1MCB7
CisJY3B1LXN1cHBseSA9IDwmcmVnX2RjZGNhPjsKK307CisKICZkZSB7CiAJc3RhdHVzID0gIm9r
YXkiOwogfTsKQEAgLTIzOSw2ICsyNDQsNyBAQAogCQkJCXJlZ3VsYXRvci1hbHdheXMtb247CiAJ
CQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8ODEwMDAwPjsKIAkJCQlyZWd1bGF0b3ItbWF4
LW1pY3Jvdm9sdCA9IDwxMDgwMDAwPjsKKwkJCQlyZWd1bGF0b3ItcmFtcC1kZWxheSA9IDwyNTAw
PjsKIAkJCQlyZWd1bGF0b3ItbmFtZSA9ICJ2ZGQtY3B1IjsKIAkJCX07CiAKQEAgLTI0Niw2ICsy
NTIsNyBAQAogCQkJCXJlZ3VsYXRvci1lbmFibGUtcmFtcC1kZWxheSA9IDwzMjAwMD47CiAJCQkJ
cmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8ODEwMDAwPjsKIAkJCQlyZWd1bGF0b3ItbWF4LW1p
Y3Jvdm9sdCA9IDwxMDgwMDAwPjsKKwkJCQlyZWd1bGF0b3ItcmFtcC1kZWxheSA9IDwyNTAwPjsK
IAkJCQlyZWd1bGF0b3ItbmFtZSA9ICJ2ZGQtZ3B1IjsKIAkJCX07CiAKLS0gCjIuMjAuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
