Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C242809F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QrtPnsP9DSW2rLRCEBNkWdS3MFbznb5LXbxzKFubfBM=; b=KFzHEVBYPjvtGO
	9Z2k+0uxCMgDmZ6AsfEbC+yn7/vCIAdGAPFPiXLUVa+bfgoBawHUjv/CkHt8PVQG5L3OViqMjP0jV
	t5oPc2tjWFDti8AJomEztTki1eLRNdxru3VXaVG1wxZUBNbGXLq5NKlsIaMcIb9BPTv42wnqQqIcD
	GsTzea8seNPU1LmZRfq7wMHRQdqAd7jhHYSsQ+pqegrtbIL2idEqHy931Abx79liLDk8vf3835ahM
	mFiNwOJ7Fif/yqXb941grSwL/rDa81+Xt2bxlbSFNo8oHeB5NCTwKwG5+Duy+84dfjNnKqEgt5DzF
	kIkwcY7k1XmQb69Uz2qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpN4-0006mb-1E; Thu, 23 May 2019 15:11:06 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpMx-0006l2-3c
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:11:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id l2so6691583wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 08:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lG50LjNdtMd0GMcXEgVx+Uoijbx7K9hNxSLBW/EgKhU=;
 b=ldNHsFevoUJI+m4FbTi2UMH8wljD73iVyxptd+ijSL15+l+rvV27f4AhOfD6Zithsz
 WHb2N7G1npz9JSFRbdGPfYOgGBC0e9w0H9CXu1nBFbBWtdq43KJ+vRiBbMmpxNw9KI4S
 Aep6RVyaD/KsRv+ZWnTUzNufFG+S8xl+kI8jsyzurpZGX262YD6X/LM6Hwe1FT0zDZXU
 SKQeh+duhFV4XN7daCUxIws7h8BRcEK3oGdbGeAJblBk/DV5iFfMf+TJAnpzMNzmokQP
 rbhFXAqrhe3S1YPlLEklIZ7ksp7mHOESuCYvGE5DJiGKehx2Ifyo5fOyiYFAXuRrF106
 aAQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lG50LjNdtMd0GMcXEgVx+Uoijbx7K9hNxSLBW/EgKhU=;
 b=Y0p2gYEzG6oXAeO0pLIdiU60rFPzucO4CiCsdvRKGIHpxE1NhKMOwNoA2MFDpxD0q1
 3jMLP6pnItAS9DjIG/6xDGMlsPxIWwSo0SE5GgdADiaVQ02iILN/hmjBSk4c8b0V24p3
 lVFDHZSUexiEWjFFQ8Pyy4+gm+NV+ZZ53UI8zi5BHlaTuV+OERZMwyG+OW+u/5e3uv7M
 SDs7wWgSVVR42TehmbYdlsoPt0U5c8A6U4qbmDYdwjuAj/pL51/iWJF8ky+aJ7o1K0Oh
 kBLS/FXSS/WlmEXisG757qkqv+tVgIjiTl4xv0vWwiAv+jZteX8rzajRS5iX77fgbdvm
 m2HA==
X-Gm-Message-State: APjAAAWTKMpxOiLjOnr4nfUi616SM7Isfa6AkOv2Nm+gn5x0zAI1CwQ3
 r0JchkuNoTV6EUqzmFaBe/I=
X-Google-Smtp-Source: APXvYqwCg24QiXYaWltw5JOWO6jVdtF8z8XW5AMyTqUcKape8p/MJ1d+TsrXsWEg5OIeBmZrAPWruA==
X-Received: by 2002:adf:cf0e:: with SMTP id o14mr3337336wrj.230.1558624256003; 
 Thu, 23 May 2019 08:10:56 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id q15sm11436324wrr.19.2019.05.23.08.10.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 08:10:55 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 0/4] Allwinner H6 watchdog support
Date: Thu, 23 May 2019 17:10:46 +0200
Message-Id: <20190523151050.27302-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_081059_172910_B85AFBA4 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

SGksCgpBbGx3aW5uZXIgSDYgU29DIGhhcyB0d28gd2F0Y2hkb2dzLgoKQXMgd2UgYXJlIG5vdCBz
dXJlIHRoYXQgYm90aCBBNjQgYW5kIEg2IGFyZSBzdHJpY2x5IGlkZW50aWNhbCwgSSBoYXZlCmlu
dHJvZHVjZWQgdGhlIEg2IGJpbmRpbmdzLgoKQWZ0ZXIgaW52ZXN0aWdhdGlvbiBpdCBzZWVtcyB0
aGF0IG9uIHNvbWUgYm9hcmRzIHRoZSBmaXJzdCB3YXRjaGRvZyBkb2Vzbid0Cm1ha2UgaXQgcHJv
cGVybHkgcmVib290LiBQbGVhc2Ugc2VlIGRldGFpbHMgaW4gdGhlIGNvbW1pdCBsb2cuCgpJIHRo
aW5rIGl0J3MgcHJvcGVyIHRvIGFkZCBpdCB3aXRoIGEgY29tbWVudCBhbnl3YXkuCgpUaGUgcl93
YXRjaGRvZyBpcyBzdGlsbCBhdmFpbGFibGUgYW5kIHVzYWJsZSBvbiBhbGwgdGhlIEg2IGJvYXJk
cy4KClRoYW5rcywKQ2zDqW1lbnQKCkNoYW5nZXMgc2luY2UgdjQ6CiAtIERlbGV0ZSBzcGVjaWZp
YyBiaW5kaW5ncyBmb3Igci13ZHQKCkNoYW5nZXMgc2luY2UgdjM6CiAtIFJlbW92ZSBBNjQgY29t
cGF0aWJsZQogLSBJbnRyb2R1Y2Ugc3BlY2lmaWMgYmluZGluZ3MgZm9yIHItd2R0CgpDaGFuZ2Vz
IHNpbmNlIHYyOgogLSBSZWludHJvZHVjZSBINiBiaW5kaW5ncwogLSBBZGQgd2F0Y2hkb2cgTWFp
bnRhaW50ZXJzIC8gTUwKIC0gQWRkIE1hcnRpbiBBeW90dGUgdGVzdCByZXN1bHRzCgpDaGFuZ2Vz
IHNpbmNlIHYxOgogLSBVc2UgQTY0IGNvbXBhdGlibGUgaW5zdGVhZCBvZiBINgogLSBSZW1vdmUg
ZHQtYmluZGluZ3MgcGF0Y2gKIC0gQ2hhbmdlIHdhdGNoZG9nIHN0YXR1cyB0byBkaXNhYmxlZAog
LSBBZGQgcl93YXRjaGRvZyBub2RlIHBhdGNoCiAtIEFkZCBlbmFibGUgc3VueGkgd2F0Y2hkb2cg
cGF0Y2gKCkNsw6ltZW50IFDDqXJvbiAoNCk6CiAgZHQtYmluZGluZ3M6IHdhdGNoZG9nOiBhZGQg
QWxsd2lubmVyIEg2IHdhdGNoZG9nCiAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogYWRkIHdh
dGNoZG9nIG5vZGUKICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGg2OiBhZGQgcl93YXRjaG9nIG5v
ZGUKICBhcm02NDogZGVmY29uZmlnOiBlbmFibGUgc3VueGkgd2F0Y2hkb2cKCiAuLi4vZGV2aWNl
dHJlZS9iaW5kaW5ncy93YXRjaGRvZy9zdW54aS13ZHQudHh0ICAgfCAgMSArCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSAgICAgfCAxNiArKysrKysrKysrKysr
KysrCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnICAgICAgICAgICAgICAgICAgICAgfCAg
MSArCiAzIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykKCi0tIAoyLjIwLjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
