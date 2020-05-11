Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD0C1CD735
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3HgbKJPj62btOSct9Ax4Cfv7BNFycQWdZgOHHLbV2vA=; b=t4Fls0IUgSKsPD
	o7JAUHgEcOqj1hOJ7H3Kp55J8J4qKJJwKRPnNJwfV5N0xpAbRXp5PAI/Yf8S3Vs5qxyC25rSqDFs2
	WtDF6u9epyML4iaoXJyCnEs6vvy7cv5eIh3m3XzEx4l3A8Z9piIpLcJJ1FkiS39zoeVN2pjaOZl/t
	0scLc8FI2n05bBlagPGcDNV8HFtJ+cNFfPRJnKqfFrFrAfZjYdN77GAU3u2hAIt/vH4vQezpAJyd/
	FpzLKsTX5zt8OTY6HMwE4LN46kHrwsAe8pONYXi0sG/d4wxRTaGa4Nw8NUpirn5VmEuShfDdQUjpK
	Ibb7boiOTeY61q6lesJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6H6-0003Jj-GW; Mon, 11 May 2020 11:07:08 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Ga-00037M-VA
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:06:38 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 3824B2A0C4E
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 1/6] arm64: dts: renesas: make hdmi encoder nodes compliant
 with DT bindings
Date: Mon, 11 May 2020 13:06:06 +0200
Message-Id: <20200511110611.3142-2-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_040637_131608_807616B5 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U21hbGwgZml4ZXMgdG8gbWFrZSB0aGVzZSBEVHMgY29tcGxpYW50IHdpdGggdGhlIGFkaSxhZHY3
NTExdyBiaW5kaW5nLgoKcjhhNzc5NzAtZWFnbGUuZHRzLApyOGE3Nzk3MC12M21zay5kdHMsCnI4
YTc3OTgwLWNvbmRvci5kdHMsCnI4YTc3OTgwLXYzaHNrLmR0cywKcjhhNzc5OTAtZWJpc3UuZHRz
OgogIHJlbW92ZSB0aGUgYWRpLGlucHV0LXN0eWxlIGFuZCBhZGksaW5wdXQtanVzdGlmaWNhdGlv
biBwcm9wZXJ0aWVzLgoKcjhhNzc5OTUtZHJhYWsuZHRzOgogIFJlb3JkZXIgdGhlIEkyQyBzbGF2
ZSBhZGRyZXNzZXMgb2YgdGhlIGhkbWktZW5jb2RlckAzOSBub2RlIGFuZCByZW1vdmUKICB0aGUg
YWRpLGlucHV0LXN0eWxlIGFuZCBhZGksaW5wdXQtanVzdGlmaWNhdGlvbiBwcm9wZXJ0aWVzLgoK
U2lnbmVkLW9mZi1ieTogUmljYXJkbyBDYcOxdWVsbyA8cmljYXJkby5jYW51ZWxvQGNvbGxhYm9y
YS5jb20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTcwLWVhZ2xlLmR0
cyAgfCAyIC0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5NzAtdjNtc2suZHRz
ICB8IDIgLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk4MC1jb25kb3IuZHRz
IHwgMiAtLQogYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTgwLXYzaHNrLmR0cyAg
fCAyIC0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5OTAtZWJpc3UuZHRzICB8
IDIgLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk5NS1kcmFhay5kdHMgIHwg
NiArKy0tLS0KIDYgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5NzAtZWFn
bGUuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTcwLWVhZ2xlLmR0cwpp
bmRleCAyYWZiOTFlYzljOGQuLmFjMjE1NmFiM2U2MiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yZW5lc2FzL3I4YTc3OTcwLWVhZ2xlLmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JlbmVzYXMvcjhhNzc5NzAtZWFnbGUuZHRzCkBAIC0xMzcsOCArMTM3LDYgQEAKIAkJYWRp
LGlucHV0LWRlcHRoID0gPDg+OwogCQlhZGksaW5wdXQtY29sb3JzcGFjZSA9ICJyZ2IiOwogCQlh
ZGksaW5wdXQtY2xvY2sgPSAiMXgiOwotCQlhZGksaW5wdXQtc3R5bGUgPSA8MT47Ci0JCWFkaSxp
bnB1dC1qdXN0aWZpY2F0aW9uID0gImV2ZW5seSI7CiAKIAkJcG9ydHMgewogCQkJI2FkZHJlc3Mt
Y2VsbHMgPSA8MT47CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhh
Nzc5NzAtdjNtc2suZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTcwLXYz
bXNrLmR0cwppbmRleCBkN2M3YjkxNTZlMDguLjAxYzRiYTBmN2JlMSAxMDA2NDQKLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTcwLXYzbXNrLmR0cworKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5NzAtdjNtc2suZHRzCkBAIC0xNTAsOCArMTUwLDYg
QEAKIAkJYWRpLGlucHV0LWRlcHRoID0gPDg+OwogCQlhZGksaW5wdXQtY29sb3JzcGFjZSA9ICJy
Z2IiOwogCQlhZGksaW5wdXQtY2xvY2sgPSAiMXgiOwotCQlhZGksaW5wdXQtc3R5bGUgPSA8MT47
Ci0JCWFkaSxpbnB1dC1qdXN0aWZpY2F0aW9uID0gImV2ZW5seSI7CiAKIAkJcG9ydHMgewogCQkJ
I2FkZHJlc3MtY2VsbHMgPSA8MT47CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jl
bmVzYXMvcjhhNzc5ODAtY29uZG9yLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9y
OGE3Nzk4MC1jb25kb3IuZHRzCmluZGV4IDNkZGUwMjhlMjJhNi4uZWY4MzUwYTA2MmFmIDEwMDY0
NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5ODAtY29uZG9yLmR0cwor
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5ODAtY29uZG9yLmR0cwpAQCAt
MTc0LDggKzE3NCw2IEBACiAJCWFkaSxpbnB1dC1kZXB0aCA9IDw4PjsKIAkJYWRpLGlucHV0LWNv
bG9yc3BhY2UgPSAicmdiIjsKIAkJYWRpLGlucHV0LWNsb2NrID0gIjF4IjsKLQkJYWRpLGlucHV0
LXN0eWxlID0gPDE+OwotCQlhZGksaW5wdXQtanVzdGlmaWNhdGlvbiA9ICJldmVubHkiOwogCiAJ
CXBvcnRzIHsKIAkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTgwLXYzaHNrLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcmVuZXNhcy9yOGE3Nzk4MC12M2hzay5kdHMKaW5kZXggYWRiZmQ4ZjA3ZDA2Li42ZGZmMDQ2
OTMyMjMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk4MC12
M2hzay5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTgwLXYzaHNr
LmR0cwpAQCAtMTQxLDggKzE0MSw2IEBACiAJCWFkaSxpbnB1dC1kZXB0aCA9IDw4PjsKIAkJYWRp
LGlucHV0LWNvbG9yc3BhY2UgPSAicmdiIjsKIAkJYWRpLGlucHV0LWNsb2NrID0gIjF4IjsKLQkJ
YWRpLGlucHV0LXN0eWxlID0gPDE+OwotCQlhZGksaW5wdXQtanVzdGlmaWNhdGlvbiA9ICJldmVu
bHkiOwogCiAJCXBvcnRzIHsKIAkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTkwLWViaXN1LmR0cyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk5MC1lYmlzdS5kdHMKaW5kZXggNGZkMmIxNGZiYjhi
Li5kYzI0Y2VjNDZhZTEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9y
OGE3Nzk5MC1lYmlzdS5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3
OTkwLWViaXN1LmR0cwpAQCAtMzYwLDggKzM2MCw2IEBACiAJCWFkaSxpbnB1dC1kZXB0aCA9IDw4
PjsKIAkJYWRpLGlucHV0LWNvbG9yc3BhY2UgPSAicmdiIjsKIAkJYWRpLGlucHV0LWNsb2NrID0g
IjF4IjsKLQkJYWRpLGlucHV0LXN0eWxlID0gPDE+OwotCQlhZGksaW5wdXQtanVzdGlmaWNhdGlv
biA9ICJldmVubHkiOwogCiAJCXBvcnRzIHsKIAkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTk1LWRyYWFrLmR0cyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk5NS1kcmFhay5kdHMKaW5kZXggNjc2
MzRjYjAxZDZiLi43OWM3M2E5OWQyZmUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cmVuZXNhcy9yOGE3Nzk5NS1kcmFhay5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZW5l
c2FzL3I4YTc3OTk1LWRyYWFrLmR0cwpAQCAtMjcyLDggKzI3Miw4IEBACiAKIAloZG1pLWVuY29k
ZXJAMzkgewogCQljb21wYXRpYmxlID0gImFkaSxhZHY3NTExdyI7Ci0JCXJlZyA9IDwweDM5Piwg
PDB4M2Y+LCA8MHgzOD4sIDwweDNjPjsKLQkJcmVnLW5hbWVzID0gIm1haW4iLCAiZWRpZCIsICJw
YWNrZXQiLCAiY2VjIjsKKwkJcmVnID0gPDB4Mzk+LCA8MHgzZj4sIDwweDNjPiwgPDB4Mzg+Owor
CQlyZWctbmFtZXMgPSAibWFpbiIsICJlZGlkIiwgImNlYyIsICJwYWNrZXQiOwogCQlpbnRlcnJ1
cHQtcGFyZW50ID0gPCZncGlvMT47CiAJCWludGVycnVwdHMgPSA8MjggSVJRX1RZUEVfTEVWRUxf
TE9XPjsKIApAQCAtMjg0LDggKzI4NCw2IEBACiAJCWFkaSxpbnB1dC1kZXB0aCA9IDw4PjsKIAkJ
YWRpLGlucHV0LWNvbG9yc3BhY2UgPSAicmdiIjsKIAkJYWRpLGlucHV0LWNsb2NrID0gIjF4IjsK
LQkJYWRpLGlucHV0LXN0eWxlID0gPDE+OwotCQlhZGksaW5wdXQtanVzdGlmaWNhdGlvbiA9ICJl
dmVubHkiOwogCiAJCXBvcnRzIHsKIAkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwotLSAKMi4xOC4w
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
