Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1DA1173F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:20:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YQ64ogIbIciWYDcpc8o6e0xtR5ZMaSIw4cLzRIrqWdo=; b=AtL3opl9gVDQWk
	kBJTa/7NkcPHzhHhy/rXwO+JoaxFu2Ef2oEzSvR26whU39l+61ercu6aYUD4ITIkq0QMYrW9HVtD1
	o4ogAFDuLqzBKI0GdSyNiQk02zThjPqFwfY+RcIFcA+TFCRucjxi4B8rT3dviIZ0mU/fj3PY5jBKp
	Io0I1qh9Pk7OYZsFtwHdQlI1a0LW76yR79JLEdqiP/5qsW+R2m3rJoEqnUytf/PvwtpTY+nEjVkh1
	vkBVTzRtPgzm+pigwANjdzYDuu3zCQ3SR0zocYtOQWC0+ZubU20gqUEMRlCJ0QEP9aCVu8sT9LJXy
	ribfViDLKf/gbA0AVglQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNeK-000532-2E; Mon, 09 Dec 2019 18:20:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNe8-00051v-9d
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:20:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id w15so17377624wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 10:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PLlmAEfS4L9u8haRdPnweq0VSUcLpaHdR2XchPJNbS8=;
 b=PYcX3Nh1snHfT8JsgHpyX2NWOTbezNdwxQ2ChVo9oLdWhQpzwyIzKdK3KoA6ehfl8P
 /bggQ6Syjbl7cwQGDr9f/7UzdZLPOd5JV1zCPOLaKlHVV2wNegD04fgD5mQR3ZLkd+mx
 tS+RSHmuYcP0cxJEM7xn9XOk5ve93JvMyCq17gK83Rx/Uu2nnmRKNB+aFi8I8KqrZ0A5
 GwMsqoQun/MoQBgxqJs40Ge5FakV+FdTGGp7ZrI6Pmge1TwBp0gTZCpdeWCR1V85bFRq
 Pws2Vi5/nhRqkqiL/Ut4dUJEuZdv9LT1SQgRezJp05ssWwaRU6w3taBQe4u8+SzIXgVT
 MgFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PLlmAEfS4L9u8haRdPnweq0VSUcLpaHdR2XchPJNbS8=;
 b=TldeN51kXOxsxoWu8PysqjVa9DowxZtIcEBW+JU4gIjh+Sl+Q2Srrwk1V57wHV5zJo
 li0X7+Xi1ruHZuU/InyeeFk67VdjqyLCodKAdbOC0ZkGMf5K3Vy4iEGSgLLA4gSU765f
 BrriypYbLIWZApQCR8OU4TiyS7vWg75m9eZT47E4sOcaHBE3s4iN9c6CQocdHZnwDOj2
 XLJkhTsmM9AKuqtII/OvbLzBzD4/dMRiAgykxt9zvzs4c73j7rXyeWpdnuHghuYhBW96
 UamoVD4C/kblHWTBMqFhoRvhbUhGny7kwyVJBqo/lIyKIRwpJ0I6f9kwvgVrJp0dIviJ
 rSRg==
X-Gm-Message-State: APjAAAXYyGWGoERSddoMRZDgovmqF7gvyo+bLHk0zSZzqVBVCyUjARog
 ylKHWwgjBBQ9TnDKh/79J2s=
X-Google-Smtp-Source: APXvYqywgzQTu50MZa6zMok/CjMF2/kh5sldWniuwz5GIgCWPd6ExEvG5lIpT5xRZpXmMmdPOQb5XA==
X-Received: by 2002:a5d:4204:: with SMTP id n4mr3651948wrq.123.1575915634420; 
 Mon, 09 Dec 2019 10:20:34 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::42f0:c285])
 by smtp.gmail.com with ESMTPSA id n14sm188261wmi.26.2019.12.09.10.20.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 10:20:33 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/3] arm64: dts: allwiner: Fix typo in dual licensed SPDX
 identifier
Date: Mon,  9 Dec 2019 19:20:22 +0100
Message-Id: <20191209182024.20509-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_102036_346852_DF31EA1E 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2l0aCBkdWFsIGxpY2Vuc2VkIFNQRFggaWRlbnRpZmllciB0aGUgIk9SIiBzaG91bGQKYmUgdXBw
ZXJjYXNlLgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWls
LmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGlu
ay1nczEuZHRzICAgICAgIHwgMiArLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LW9yYW5nZXBpLTMuZHRzICAgICAgICB8IDIgKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS1saXRlMi5kdHMgICAgfCAyICstCiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGktb25lLXBsdXMuZHRzIHwg
MiArLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0
c2kgICAgICAgICB8IDIgKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni1waW5lLWg2NC5kdHMgICAgICAgICAgfCAyICstCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDYtdGFuaXgtdHg2LmR0cyAgICAgICAgIHwgMiArLQogYXJjaC9hcm02NC9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgICAgICAgICAgICAgICAgICB8IDIgKy0K
IDggZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdz
MS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1n
czEuZHRzCmluZGV4IGYzMzVmNzQ4MmE3My4uODRiN2U5OTM2MzAwIDEwMDY0NAotLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzCisrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMK
QEAgLTEsNCArMSw0IEBACi0vLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIG9y
IE1JVCkKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQogLyoK
ICAqIENvcHlyaWdodCAoQykgMjAxOSBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwu
Y29tPgogICovCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYtb3JhbmdlcGktMy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYtb3JhbmdlcGktMy5kdHMKaW5kZXggNGVkM2ZjMmM3NzM0Li4xYzY2MzA0ZmM1NTEgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2Vw
aS0zLmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3Jh
bmdlcGktMy5kdHMKQEAgLTEsNCArMSw0IEBACi0vLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
KEdQTC0yLjArIG9yIE1JVCkKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsg
T1IgTUlUKQogLyoKICAqIENvcHlyaWdodCAoQykgMjAxOSBPbmTFmWVqIEppcm1hbiA8bWVnb3Vz
QG1lZ291cy5jb20+CiAgKi8KZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS1saXRlMi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGktbGl0ZTIuZHRzCmluZGV4IGUwOThhMjQ3NWYyZC4u
ODg0NDk2OGY3MjI3IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9z
dW41MGktaDYtb3JhbmdlcGktbGl0ZTIuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxs
d2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS1saXRlMi5kdHMKQEAgLTEsNCArMSw0IEBACi0vLyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIG9yIE1JVCkKKy8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQogLyoKICAqIENvcHlyaWdodCAoQykgMjAx
OCBKYWdhbiBUZWtpIDxqYWdhbkBvcGVuZWRldi5jb20+CiAgKi8KZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS1vbmUtcGx1cy5kdHMg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGktb25lLXBs
dXMuZHRzCmluZGV4IDEyZTE3NTY3YWI1Ni4uMmJkODYzNTYxMjgyIDEwMDY0NAotLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGktb25lLXBsdXMuZHRz
CisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS1v
bmUtcGx1cy5kdHMKQEAgLTEsNCArMSw0IEBACi0vLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
KEdQTC0yLjArIG9yIE1JVCkKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsg
T1IgTUlUKQogLyoKICAqIENvcHlyaWdodCAoQykgMjAxOCBBbWFydWxhIFNvbHV0aW9ucwogICog
QXV0aG9yOiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNp
IGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0c2kK
aW5kZXggZGY0Y2JkN2VmOTZjLi5jYWNjZWJlMzM4OWIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNpCisrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNpCkBAIC0xLDQgKzEs
NCBAQAotLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBvciBNSVQpCisvLyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKIC8qCiAgKiBDb3B5cmln
aHQgKEMpIDIwMTggQW1hcnVsYSBTb2x1dGlvbnMKICAqIEF1dGhvcjogSmFnYW4gVGVraSA8amFn
YW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW41MGktaDYtcGluZS1oNjQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LmR0cwppbmRleCA3NDg5OWVkZTAwZmIuLjMyMzgz
MjNkNWE3MSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBp
LWg2LXBpbmUtaDY0LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYtcGluZS1oNjQuZHRzCkBAIC0xLDQgKzEsNCBAQAotLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IChHUEwtMi4wKyBvciBNSVQpCisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQ
TC0yLjArIE9SIE1JVCkKIC8qCiAgKiBDb3B5cmlnaHQgKGMpIDIwMTcgSWNlbm93eSBaaGVuZyA8
aWNlbm93eUBhb3NjLmlvPgogICovCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYtdGFuaXgtdHg2LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxs
d2lubmVyL3N1bjUwaS1oNi10YW5peC10eDYuZHRzCmluZGV4IGJjY2ZlMWU2NWI2YS4uODkxYWQ2
MTYzMDJjIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYtdGFuaXgtdHg2LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYtdGFuaXgtdHg2LmR0cwpAQCAtMSw0ICsxLDQgQEAKLS8vIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiAoR1BMLTIuMCsgb3IgTUlUKQorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChH
UEwtMi4wKyBPUiBNSVQpCiAvKgogICogQ29weXJpZ2h0IChjKSAyMDE5IEplcm5laiBTa3JhYmVj
IDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KICAqLwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYuZHRzaQppbmRleCAyOTgyNDA4MWI0M2IuLmI4ZjUxZDk1Y2E4YyAx
MDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kK
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKQEAgLTEs
NCArMSw0IEBACi0vLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIG9yIE1JVCkK
Ky8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQogLyoKICAqIENv
cHlyaWdodCAoQykgMjAxNyBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFvc2MuaW8+CiAgKi8KLS0g
CjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
