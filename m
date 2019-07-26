Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 994A97648A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:31:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QZoTcEoOM0gU4u1CxBassrlWf3wATymz7REbkgzgFQg=; b=qvlJCMOFpnAzb8
	svJV23pE5JheMuzCbiXtTBFZc8//BS7s7ddrflDXqVnuxER31w8aRrLXZoL3v1uuD+ivJbtUpayRL
	LEWTC4zpFmeGr4UXLHF/284RrsG5xIBv5eN3Znov0NTl/QhBZZcTUHq62Et+fsBg7czmPNrWrEeQT
	gLLCzGo5XZeG4JDaJR4LSlfpbJhrhkmMuPqkNrlbiVAy7AWTSpN/K4MrNve+t3WAxSk72xT6hlz/x
	w5zSqFoT5gwYQLZCKDnyjhgMNYrwFBQxscaWK1RZoJYurZq9stY7d+OE5Jb70v0xK+koMi6Gyd8Xm
	bRiZ4o4LIYas+LSyeG3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyRQ-0005aP-Ny; Fri, 26 Jul 2019 11:31:16 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyOh-0002Sm-Js
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:28:29 +0000
Received: by mail-lj1-x241.google.com with SMTP id h10so51164156ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qXAXo0fvFfroRZgYWsv3eTIS6UJVzpeVoAbknFGsjMk=;
 b=vhHmCUXbOqW0ShlZ/0VDIpjuqPN+yllwC23Y3r37PVgVfm8QzAufXGqQE2M+e3bBXW
 Sa6agtYW/J24tzUmmzQjuBIoBrEixhf2OJJIwLPQWd9lzYXcR2RWUkVbv4kyj5McBBh8
 VCM3fRX1y9DZW93ANmXw5P15g2/wydbxmnos6SrNyEQldDQEgLri8kEg4Rc43TnBR8aU
 AF47mTvHieO1vcSgJNotQg7LAhRptdA3m/4kyvTmUukb0G6X/fGd+q4RKWD6SqLlU4Ic
 PjQCc0/aPxCrzqEw94q1kEOcur207rRqjYV3LPtB5ntt2FqDgvmoASo8zndwPTG1O1JC
 GTgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qXAXo0fvFfroRZgYWsv3eTIS6UJVzpeVoAbknFGsjMk=;
 b=iTZUEeqO7zA3Gdv4UmrLALxVijNeTLTLroe74601VosDK1PK7qzzqw9698+V3Ow2JN
 hEgqsshB5vAh10T1FsSMOyhjzlDvYaibHHUsMyRknC9MKtOnQrA7jW1odUIK9eII0wBt
 j5ZhsnDSRjrtlR22FVp1hCDc67BWnSE4O96Y0yuwS2fZDmyMwN7p/ZwLYI2OsQw70gYg
 voFTYfjyMPzddoUM2lAIu1ORTjDEjze1UcG6fBDZa+GnXnjOwB0UgCasI7/rzDh5n/LB
 Nn0LMzbS5sYU8k/Z5O13/dsecmj8cHAJkYze8K8IdttxGGeltihBkzcUSXOp+3kQx9fH
 AtNA==
X-Gm-Message-State: APjAAAVAecbFsvZ2I9qi6TgYv/IOoaA3PVzD19F6OtZFm/k+m/dWUdIr
 2rJwwpBzwll6yPnhfIuN4gFvdVLoHtZRNQ==
X-Google-Smtp-Source: APXvYqxRcpeZfOkhl+kP2goAmuAtJQrE6rFVOEMWhCTxNELXPLbMSsa8XPVrXecSGADSpL4vrWzCFA==
X-Received: by 2002:a2e:301a:: with SMTP id w26mr48094531ljw.76.1564140506079; 
 Fri, 26 Jul 2019 04:28:26 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id s26sm10008774ljs.77.2019.07.26.04.28.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:28:25 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: will@kernel.org,
	joro@8bytes.org
Subject: [PATCH] iommu: arm-smmu-v3: Mark expected switch fall-through
Date: Fri, 26 Jul 2019 13:28:21 +0200
Message-Id: <20190726112821.19775-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_042828_028995_21411A99 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: stable@vger.kernel.org, iommu@lists.linux-foundation.org,
 Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCwgY29tbWl0
IGQ5MzUxMmVmMGYwZQooIk1ha2VmaWxlOiBHbG9iYWxseSBlbmFibGUgZmFsbC10aHJvdWdoIHdh
cm5pbmciKSwgdGhlIGZvbGxvd2luZwp3YXJuaW5nIHdhcyBzdGFydGluZyB0byBzaG93IHVwOgoK
Li4vZHJpdmVycy9pb21tdS9hcm0tc21tdS12My5jOiBJbiBmdW5jdGlvbiDigJhhcm1fc21tdV93
cml0ZV9zdHJ0YWJfZW504oCZOgouLi9kcml2ZXJzL2lvbW11L2FybS1zbW11LXYzLmM6MTE4OTo3
OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbAogdGhyb3VnaCBbLVdpbXBsaWNpdC1m
YWxsdGhyb3VnaD1dCiAgICBpZiAoZGlzYWJsZV9ieXBhc3MpCiAgICAgICBeCi4uL2RyaXZlcnMv
aW9tbXUvYXJtLXNtbXUtdjMuYzoxMTkxOjM6IG5vdGU6IGhlcmUKICAgZGVmYXVsdDoKICAgXn5+
fn5+fgoKUmV3b3JrIHNvIHRoYXQgdGhlIGNvbXBpbGVyIGRvZXNuJ3Qgd2FybiBhYm91dCBmYWxs
LXRocm91Z2guIE1ha2UgaXQKY2xlYXJlciBieSBjYWxsaW5nICdCVUcoKScgd2hlbiBkaXNhYmxl
X2J5cGFzcyBpcyBzZXQsIGFuZCBhbHdheXMKJ2JyZWFrOycKCkNjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnICMgdjQuMisKRml4ZXM6IDViYzBhMTE2NjRlMSAoImlvbW11L2FybS1zbW11OiBEb24n
dCBCVUcoKSBpZiB3ZSBmaW5kIGFib3J0aW5nIFNURXMgd2l0aCBkaXNhYmxlX2J5cGFzcyIpClNp
Z25lZC1vZmYtYnk6IEFuZGVycyBSb3hlbGwgPGFuZGVycy5yb3hlbGxAbGluYXJvLm9yZz4KLS0t
CiBkcml2ZXJzL2lvbW11L2FybS1zbW11LXYzLmMgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9t
bXUvYXJtLXNtbXUtdjMuYyBiL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUtdjMuYwppbmRleCBhOWE5
ZmFiZDM5NjguLjhlNWYwNTY1OTk2ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9pb21tdS9hcm0tc21t
dS12My5jCisrKyBiL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUtdjMuYwpAQCAtMTE4Niw4ICsxMTg2
LDkgQEAgc3RhdGljIHZvaWQgYXJtX3NtbXVfd3JpdGVfc3RydGFiX2VudChzdHJ1Y3QgYXJtX3Nt
bXVfbWFzdGVyICptYXN0ZXIsIHUzMiBzaWQsCiAJCQlzdGVfbGl2ZSA9IHRydWU7CiAJCQlicmVh
azsKIAkJY2FzZSBTVFJUQUJfU1RFXzBfQ0ZHX0FCT1JUOgotCQkJaWYgKGRpc2FibGVfYnlwYXNz
KQotCQkJCWJyZWFrOworCQkJaWYgKCFkaXNhYmxlX2J5cGFzcykKKwkJCQlCVUcoKTsKKwkJCWJy
ZWFrOwogCQlkZWZhdWx0OgogCQkJQlVHKCk7IC8qIFNURSBjb3JydXB0aW9uICovCiAJCX0KLS0g
CjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
