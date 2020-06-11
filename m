Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4611F65A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 12:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5ztsXgM6kJ1839qiM1bNilZC4XsmYONH+pAlO0FIE9E=; b=py2Vv4uBBuuTnK
	9Ss5lswRPeOfH9dw9BijyToclbYpbQ3qj0x4+6ntxkygFwVOfqhZ1/At88Zvas+1cnouVo+iVMarx
	0utg9hhW/hWYAEraW91R2/0zztPL9r3b6Bh8xl8Ov82QdYJL8i3tQRVNLtg61hPBB2uoqYTWo+z/u
	sIQBVbQ0SLRcwW1Ao6RrsWCLkJm8SP0tvgTAPQfubpqZZsODMY3UFkVmDEc04NMT5RyLFJHm0uPEF
	yXVOa3Xewq7y/ILiBuCmFLqwGypob9m8tdeKJtEgAXwN2tVYA2K0K74R0tuEwb6r4xuetdQbyXoav
	0j01pgh7UtSIVAhHSNJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjKOL-0002ZY-11; Thu, 11 Jun 2020 10:25:01 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjKNe-00025f-DV
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 10:24:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 638E02A38CE
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent.pinchart@ideasonboard.com
Subject: [PATCH v3 0/5] dt-bindings: display: ti,tfp410.txt: convert to yaml
Date: Thu, 11 Jun 2020 12:23:51 +0200
Message-Id: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_032418_581196_6717A3A9 
X-CRM114-Status: GOOD (  10.86  )
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, tomi.valkeinen@ti.com,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBzZXJpZXMgY29udmVydHMgdGhlIERUIGJpbmRpbmcgZm9yIHRoZSBUSSBURlA0MTAgRFBJ
LXRvLURWSSBlbmNvZGVyCnRvIGpzb24tc2NoZW1hLgoKVGhpcyBhbHNvIGZpeGVzIGEgbWlub3Ig
YnVnIGluIHRoZSB0aS10ZnA0MTAgZHJpdmVyIHRoYXQgd291bGQgY2F1c2UgYQp3cm9uZyBjYWxj
dWxhdGlvbiBvZiB0aGUgc2V0dXAgYW5kIGhvbGQgdGltZXMgd2hlbiB0aGUgZGUtc2tldyBmZWF0
dXJlCmlzIGVuYWJsZWQuIFRoZSByZXRyaWV2YWwgb2YgdGhlIGRlLXNrZXcgdmFsdWUgZnJvbSB0
aGUgRFQgaGFzIGFsc28gYmVlbgp1cGRhdGVkIHRvIHJlZmxlY3QgdGhlIGJpbmRpbmcgY2hhbmdl
cy4KCkNoYW5nZXMgaW4gdjM6CgogIC0gdGksdGZwNDEwLnlhbWwKICAgIC0gT3JpZ2luYWwgdHJh
bnNsYXRpb24gdG8geWFtbCBzZXBhcmF0ZWQgaW50byBpdHMgb3duIGNvbW1pdCB3aXRoIG5vCiAg
ICAgIGFkZGl0aW9uYWwgY2hhbmdlcyAoTGF1cmVudCBQaW5jaGFydCkuCiAgICAtIFJlZGVmaW5p
dGlvbiBvZiB0aSxkZXNrZXcgcHJvcGVydHkgaW4gaXRzIG93biBjb21taXQgKExhdXJlbnQpLgog
ICAgLSBSZW1vdmFsIG9mIHVubmVjZXNzYXJ5IHRleHQgKExhdXJlbnQpLgogICAgLSBOZXcgY29u
ZGl0aW9uYWwgY29uc3RyYWludCBmb3IgdGksZGVza2V3IChMYXVyZW50KS4KICAgIC0gInBvcnRz
IiBub2RlIHNldCBhcyBvcHRpb25hbCAoUm9iIEhlcnJpbmcpLgoKICAtIGRvdmUtc2JjLWE1MTAu
ZHRzOiByZW1vdmVkLiBUaGlzIGNvbWVzIGZyb20gUm9iJ3Mgc3VnZ2VzdGlvbiB0aGF0CiAgICB0
aGUgInBvcnRzIiBub2RlIHNob3VsZCBiZSBvcHRpb25hbCBpbnN0ZWFkIG9mIGRlZmluaW5nIGVt
cHR5IHBvcnQKICAgIG5vZGVzIGluIERUcyBmaWxlcy4KCiAgLSB0aS10ZnA0MTAuYwogICAgLSBP
cmlnaW5hbCBjaGFuZ2VzIHNwbGl0IGludG8gdHdvIGNvbW1pdHMuIFRoZSBmaXJzdCBvbmUgY2hh
bmdlcyB0aGUKICAgICAgZGF0YXR5cGUgYW5kIHJldHJpZXZhbCBvZiB0aGUgZGVza2V3IHByb3Bl
cnR5LiBUaGUgc2Vjb25kIG9uZQogICAgICBmaXhlcyB0aGUgY2FsY3VsYXRpb24gb2YgaG9sZCBh
bmQgc2V0dXAgdGltZXMgKExhdXJlbnQpLgoKVGhlIGJpbmRpbmdzIGhhdmUgYmVlbiB0ZXN0ZWQg
d2l0aDoKCiAgbWFrZSBkdF9iaW5kaW5nX2NoZWNrIEFSQ0g9PGFyY2g+IERUX1NDSEVNQV9GSUxF
Uz08Li4udGksdGZwNDEwLnlhbWw+CiAgbWFrZSBkdGJzX2NoZWNrIEFSQ0g9PGFyY2g+IERUX1ND
SEVNQV9GSUxFUz08Li4udGksdGZwNDEwLnlhbWw+Cgpmb3IgPGFyY2g+ID0gYXJtIGFuZCBhcm02
NC4KVGhpcyB1bmNvdmVyZWQgYSBudW1iZXIgb2YgZHRzIGZpbGVzIHRoYXQgdXNlIHRoZSBURlA0
MTAgYnV0IG5vdCB0aHJvdWdoCkkyQyBhbmQgZG9uJ3QgZGVmaW5lIHRoZSB0aSxkZXNrZXcgcHJv
cGVydHkuIFRoZXNlIHNob3VsZCBiZSBmaXhlZCBhdApzb21lIHBvaW50LgoKUmljYXJkbyBDYcOx
dWVsbyAoNSk6CiAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IHRpLHRmcDQxMC50eHQ6IGNvbnZlcnQg
dG8geWFtbAogIGR0LWJpbmRpbmdzOiBkaXNwbGF5OiB0aSx0ZnA0MTAueWFtbDogUmVkZWZpbmUg
dGksZGVza2V3IHByb3BlcnR5CiAgZHJtL2JyaWRnZTogdGZwNDEwOiBmaXggZGUtc2tldyB2YWx1
ZSByZXRyaWV2YWwgZnJvbSBEVAogIGRybS9icmlkZ2U6IHRmcDQxMDogRml4IHNldHVwIGFuZCBo
b2xkIHRpbWUgY2FsY3VsYXRpb24KICBkdC1iaW5kaW5nczogZGlzcGxheTogdGksdGZwNDEwLnlh
bWw6IG1ha2UgdGhlIHBvcnRzIG5vZGUgb3B0aW9uYWwKCiAuLi4vYmluZGluZ3MvZGlzcGxheS9i
cmlkZ2UvdGksdGZwNDEwLnR4dCAgICAgfCAgNjYgLS0tLS0tLS0tCiAuLi4vYmluZGluZ3MvZGlz
cGxheS9icmlkZ2UvdGksdGZwNDEwLnlhbWwgICAgfCAxMzAgKysrKysrKysrKysrKysrKysrCiBk
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL3RpLXRmcDQxMC5jICAgICAgICAgICAgfCAgMTAgKy0KIDMg
ZmlsZXMgY2hhbmdlZCwgMTM1IGluc2VydGlvbnMoKyksIDcxIGRlbGV0aW9ucygtKQogZGVsZXRl
IG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2Jy
aWRnZS90aSx0ZnA0MTAudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL3RpLHRmcDQxMC55YW1sCgotLSAKMi4xOC4w
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
