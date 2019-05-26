Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D152D2AC6E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 00:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FpVseDklTJ1SQBJMzb2yZue/DF0raJ/PA8WRyjW44MA=; b=u1MoDctZKnTzuw
	6IAj/nZiLm49ahcyx0f7Xt24JCLXH8/XKQpDdil8uCqIMHNT4aOc3W4mJN0wtsKQHYgQWjLF5fmPy
	eRbvyOKQmKOMDNVrRIut7tLCqJzapDmH39+4VhoVyH9L1+hoCD3D+ZPH5s9Te8h+joo/cv6e4Nz2V
	VTQxkY8Tx35j2rAPOCItfnaGm4vigJOKw9q9Ql+OuqYsSHNh49eV7V36i5slCJU+yW3Ja6k3rZCVG
	0zI7FbHc8Kqi9VMDnGcq1kTjnZHWp5wMgWEb1QvMdBdhR91OS+I3Nhrchvd03cWh8H09c0l+Phvon
	fu8cJT/bBbtkHVLsrDIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV1aS-0003eT-AC; Sun, 26 May 2019 22:25:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV1aL-0003e3-BP
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 22:25:46 +0000
Received: by mail-wm1-x341.google.com with SMTP id i3so14233656wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 15:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ramFDJ3R+AtjRxaNB0t90s4XaqyMkSnufLHrPP/uUT8=;
 b=u8wTFbctX+VkQPsaKwnQiOa7Q/qWSO0/49O6yzkVmMH1Fsqsbre6TXAGzcmIH8sNwn
 VApqqWSpQUwA3AV4NvahQdf9OdXEmrBJb6t4AE0tAQ3vXVlZ12Am6VoaIz2+mzCHV65I
 4kuA/LBgY0HiY8YFHgv7IrOjy6fBzJpiHUa7FoqMdhL6CQ/KSZx4YreQAEBoVoME8IJA
 OLjq+NYluGqo4zVlXLPgeaewpoVDy9Yybfvwrh8hmIjU7CtDX4ML5RDCYqQUfyQrLnec
 U+iaDqMuC16auKaqzMHk2LTppxOimXqCEIatfWbIB1hMv+erLHrBuVYnUEXM6StmpH3U
 q07g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ramFDJ3R+AtjRxaNB0t90s4XaqyMkSnufLHrPP/uUT8=;
 b=X88tXG7X4FIzUKKaYYfMdppuSPMi539raQmg5ODcsSv1PG4PP1GllBgih/wUSWBMkG
 jADPbYUy3VX9d6w3+WKS8MP5/fjWya6U0cUrLk0rRywWsTmlRxIB21mRXqbUfuUZZAeX
 PElGifc92Rxr1AqfCAhdy6opHsC5pvdNB04IYhMsMUxvdVJ5k9ScMlJVX02H49VVkmBh
 cu/f8IO/2YIeR5Jmh/6NWOrIll5Z6iGhQWqgU/xBiLm1ASUy9cWMfx2RyFKTP9XdNFwC
 qCPxSfdxlh+RTh9tN/riuTNIhP59wsAVpJp59dCkcxmQsKyg1fzFNXxIIEoo0na+nfDz
 oLHA==
X-Gm-Message-State: APjAAAWQVdfTUYNzUwkOTOXX3TZ1lyQz6J2CpD7p1NFWC5F+tUP1UBWT
 i+2GkGDgzChkb2DZNyvJ2iM=
X-Google-Smtp-Source: APXvYqyzDtTcZ0+M8W2DNUeGoD1ely2DBDSjR+tF+T9XGtoxcsHT6c+tUu5WqGbSeT5IhmzohWEHZg==
X-Received: by 2002:a7b:cbcc:: with SMTP id n12mr8029506wmi.167.1558909543004; 
 Sun, 26 May 2019 15:25:43 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id o20sm10368398wro.2.2019.05.26.15.25.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 15:25:42 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 00/10] Allwinner A64/H6 IR support
Date: Mon, 27 May 2019 00:25:26 +0200
Message-Id: <20190526222536.10917-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_152545_416471_32DE6DB2 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpBNjQgSVIgc3VwcG9ydCBzZXJpZXNbMV0gcG9pbnRlZCBvdXQgdGhhdCBhbiBBMzEgYmlu
ZGluZ3Mgc2hvdWxkIGJlCmludHJvZHVjZWQuCgpUaGlzIHNlcmllcyBpbnRyb2R1Y2UgdGhlIEEz
MSBjb21wYXRpYmxlIGJpbmRpbmdzLCB0aGVuIHN3aXRjaCBpdCBvbgp0aGUgYWxyZWFkeSBleGlz
dGluZyBib2FyZC4KCkZpbmFsbHkgaW50cm9kdWNlIEE2NCBhbmQgSDYgc3VwcG9ydC4KClJlZ2Fy
ZHMsCkNsw6ltZW50CgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNo
LzEwMzEzOTAvIzEyMjE0NjQKCkNoYW5nZXMgc2luY2UgdjE6CiAtIERvY3VtZW50IHJlc2V0IGxp
bmVzIGFzIHJlcXVpcmVkIHNpbmNlIEEzMQogLSBFeHBsYWluIHRoZSBtZW1vcnkgbWFwcGluZyBk
aWZmZXJlbmNlIGluIGNvbW1pdCBsb2cKIC0gRml4IG1pc3NwZWxsaW5nICJBbGx3aW5lciIgdG8g
IkFsbHdpbm5lciIKCkNsw6ltZW50IFDDqXJvbiAoOCk6CiAgZHQtYmluZGluZ3M6IG1lZGlhOiBz
dW54aS1pcjogYWRkIEEzMSBjb21wYXRpYmxlCiAgbWVkaWE6IHJjOiBzdW54aTogQWRkIEEzMSBj
b21wYXRpYmxlCiAgQVJNOiBkdHM6IHN1bnhpOiBwcmVmZXIgQTMxIGluc3RlYWQgb2YgQTEzIGZv
ciBpcgogIGR0LWJpbmRpbmdzOiBtZWRpYTogc3VueGktaXI6IEFkZCBBNjQgY29tcGF0aWJsZQog
IGR0LWJpbmRpbmdzOiBtZWRpYTogc3VueGktaXI6IEFkZCBINiBjb21wYXRpYmxlCiAgYXJtNjQ6
IGR0czogYWxsd2lubmVyOiBoNjogQWRkIElSIHJlY2VpdmVyIG5vZGUKICBhcm02NDogZHRzOiBh
bGx3aW5uZXI6IGg2OiBFbmFibGUgSVIgb24gSDYgYm9hcmRzCiAgYXJtNjQ6IGRlZmNvbmZpZzog
ZW5hYmxlIElSIFNVTlhJIG9wdGlvbgoKSWdvcnMgTWFrZWpldnMgKDEpOgogIGFybTY0OiBkdHM6
IGFsbHdpbm5lcjogYTY0OiBBZGQgSVIgbm9kZQoKSmVybmVqIFNrcmFiZWMgKDEpOgogIGFybTY0
OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBFbmFibGUgSVIgb24gT3JhbmdlIFBpIFdpbgoKIC4uLi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dCAgICB8IDExICsrKysrKysrKy0t
CiBhcmNoL2FybS9ib290L2R0cy9zdW42aS1hMzEuZHRzaSAgICAgICAgICAgICAgfCAgMiArLQog
YXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktYTgzdC5kdHNpICAgICAgICAgICAgIHwgIDIgKy0KIGFy
Y2gvYXJtL2Jvb3QvZHRzL3N1bjlpLWE4MC5kdHNpICAgICAgICAgICAgICB8ICAyICstCiBhcmNo
L2FybS9ib290L2R0cy9zdW54aS1oMy1oNS5kdHNpICAgICAgICAgICAgfCAgMiArLQogLi4uL2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1vcmFuZ2VwaS13aW4uZHRzIHwgIDQgKysrKwogYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC5kdHNpIHwgMTggKysrKysrKysrKysr
KysrKysrCiAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzICAgfCAg
NCArKysrCiAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGkuZHRzaSAgICAgfCAg
NCArKysrCiAuLi4vYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMgfCAg
NCArKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSAgfCAx
OSArKysrKysrKysrKysrKysrKysrCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnICAgICAg
ICAgICAgICAgICAgfCAgMSArCiBkcml2ZXJzL21lZGlhL3JjL3N1bnhpLWNpci5jICAgICAgICAg
ICAgICAgICAgfCAgMSArCiAxMyBmaWxlcyBjaGFuZ2VkLCA2OCBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
