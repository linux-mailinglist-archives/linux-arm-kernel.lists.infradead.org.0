Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CA0254BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YjWDgDDD/vRl77ivPgq7iOre53ak0NAyW19ZcmIvaB8=; b=ldLwVxQUHASgvX
	mklqjtyQT6lkxlVkhti4UoiPQst3M8SujpOXU2no77v4E+b7/6KqmOb/tbHcHLubMcUuFfMyXQ3je
	QbiLERI/8M1FFBld3Rifb2Uv4n5vTHjkENpU0+Ly6Ru67rY6q56BUdhyPhtPH1CJNbTinLizKRjgY
	u/8L7PGyOnozwOa5C77nfVkKh1DDoXiQewa4NDJmHHcUEFS2u4+iYJmnrMm7kxZrDBaIMOPRLjZ7u
	5i13wVzj8B1VSzQLEGRtOKGG15b09xtxXAX7ySt4qPxusKCo9OfON3GvPl72CaywRHwIKbcMEMePR
	42fPZLSE5WUDGP32z7JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7Ex-0000Yr-MP; Tue, 21 May 2019 16:03:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7Eq-0000Xz-B2
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:03:41 +0000
Received: by mail-wr1-x444.google.com with SMTP id w8so19271954wrl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 09:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nDVM5JY0UCQQWnTrJayIQkK7SrKOctqqMDMV9spSsxw=;
 b=EYxZgIO5dsxx3yD9fsqj6fe4T+XzTC5VXoGkGvuywXp8yJRU754xsd8K0OEXIy4UCP
 g7WTSgirP243yLYV6r0iHdDyQjtQE9zP7Bb5BNSQoll1ld1h4eBB2i/xrNmezqhql3/C
 nfkGZF04ZpAdquZuprZSg0EOzQFn5b4sA8Pad2z1LwRf5X7OZcVA3hE63IqkRX9dJdqa
 ax2LdGe+7nTI0JUBsgJw1oIaGXKyS4SOGjtpiMb9f+CWQUyRfM7ALbzDKK7a/UuB0Q1D
 hLBwRLokrdeLuI6j+34idK2cpYRzi4SBMtYnMoqlVFGTg96NsFRq9fVt1i3U6eLNCM1e
 BPMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nDVM5JY0UCQQWnTrJayIQkK7SrKOctqqMDMV9spSsxw=;
 b=VUgRfWovwsD2ulRrfonkvdbIirtC2xCQl71TuQvHltCftWD3DGNditgRBJeLrBww94
 BYvUcVAAGaChQ9aoOiEAM0tkY1TYETRuiYjS/wS7Mq4uyJxrCpjunql3TicmfzdTlCSK
 gQY9T39wA7kcH2XRTkAVOVlgvQsGpjSKPLJPwPU8IpWPTsPAQU08+90ID6SxdraOHXuN
 hWdlHppuxDB4HIoUAyQCY9ttPHCupHuqMVrw6jIqIgmm2hXdfteUcPfwo1ehpv/xsmcs
 yk2paReti2dB8Kwi3s9h/apjCd8DOHtBEl06VpwvlgoIR99n4EnxCfgjRHl37SCmUPge
 DyhA==
X-Gm-Message-State: APjAAAVGDHjo+TxOXDjQUpbnwA09u7pgNdg/b8S2py4A6kCPhRCZVnk8
 /fK3mQLCTHS8jMXJjtjtVxA=
X-Google-Smtp-Source: APXvYqw//oVHVQE8dOkatKRTfxOnljBLeM0nGz32xgOKSjeongOCRNazNj5zD0dXglyd7R3Kdi2Jdg==
X-Received: by 2002:adf:fc8f:: with SMTP id g15mr52594055wrr.122.1558454617669; 
 Tue, 21 May 2019 09:03:37 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id g11sm6853811wrq.89.2019.05.21.09.03.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:03:36 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 0/5] Allwinner H6 watchdog support
Date: Tue, 21 May 2019 18:03:25 +0200
Message-Id: <20190521160330.28402-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_090340_406206_433727C1 
X-CRM114-Status: GOOD (  12.21  )
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
cy4KClRoYW5rcywKQ2zDqW1lbnQKCkNoYW5nZXMgc2luY2UgdjM6CiAtIFJlbW92ZSBBNjQgY29t
cGF0aWJsZQogLSBJbnRyb2R1Y2Ugc3BlY2lmaWMgYmluZGluZ3MgZm9yIHItd2R0CgpDaGFuZ2Vz
IHNpbmNlIHYyOgogLSBSZWludHJvZHVjZSBINiBiaW5kaW5ncwogLSBBZGQgd2F0Y2hkb2cgTWFp
bnRhaW50ZXJzIC8gTUwKIC0gQWRkIE1hcnRpbiBBeW90dGUgdGVzdCByZXN1bHRzCgpDaGFuZ2Vz
IHNpbmNlIHYxOgogLSBVc2UgQTY0IGNvbXBhdGlibGUgaW5zdGVhZCBvZiBINgogLSBSZW1vdmUg
ZHQtYmluZGluZ3MgcGF0Y2gKIC0gQ2hhbmdlIHdhdGNoZG9nIHN0YXR1cyB0byBkaXNhYmxlZAog
LSBBZGQgcl93YXRjaGRvZyBub2RlIHBhdGNoCiAtIEFkZCBlbmFibGUgc3VueGkgd2F0Y2hkb2cg
cGF0Y2gKCkNsw6ltZW50IFDDqXJvbiAoNSk6CiAgZHQtYmluZGluZ3M6IHdhdGNoZG9nOiBhZGQg
QWxsd2lubmVyIEg2IHdhdGNoZG9nCiAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogYWRkIHdh
dGNoZG9nIG5vZGUKICBkdC1iaW5kaW5nczogd2F0Y2hkb2c6IGFkZCBBbGx3aW5uZXIgSDYgcl93
YXRjaGRvZwogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IGFkZCByX3dhdGNob2cgbm9kZQog
IGFybTY0OiBkZWZjb25maWc6IGVuYWJsZSBzdW54aSB3YXRjaGRvZwoKIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3dhdGNoZG9nL3N1bnhpLXdkdC50eHQgICB8ICAyICsrCiBhcmNoL2FybTY0L2Jv
b3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSAgICAgfCAxNiArKysrKysrKysrKysrKysr
CiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnICAgICAgICAgICAgICAgICAgICAgfCAgMSAr
CiAzIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKCi0tIAoyLjE3LjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
