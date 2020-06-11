Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E56A1F65A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 12:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAuMItKPTrAhpSnXwJlHk/zy8PtP6gZpR8wZA3Arcz0=; b=U+yUGIoLQ/kH9x
	RBTkMrQJ46ha16Mp0jsaQaKeltrLQb4h+FbxwLVoi1iY9rIurbmI3dRjt6rXGoNQ2kRf0/I+uaaFT
	TRgmV12VKgmpHwTDWrr5xfxeoRrvh88SUTyjj4dkiwiVENjHBm6RNXTnewvke4sZX7irTM9slez/k
	lgBXiFrC1AUp4Rds8meYD+YRSoyt5G4Ak12gpbNB4WP5dxjNR8RMmuH7XWsZDmX9VsCETmJT8+1c0
	oE/1OB7xZIufQpAy99f/BuVQW4HjjEdMsncGbwCP7Hg869WuDoL51OFxv8iEHEG8C5kfusz82oBg9
	4cpbVIPAm7U13FO8VZ4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjKO9-0002Hb-Hv; Thu, 11 Jun 2020 10:24:49 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjKNe-00025b-CV
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 10:24:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id B41122A4B71
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent.pinchart@ideasonboard.com
Subject: [PATCH v3 3/5] drm/bridge: tfp410: fix de-skew value retrieval from DT
Date: Thu, 11 Jun 2020 12:23:54 +0200
Message-Id: <20200611102356.31563-4-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
References: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_032418_554354_C78CB243 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

VGhlIHRmcDQxMCBoYXMgYSBkYXRhIGRlLXNrZXcgZmVhdHVyZSB0aGF0IGFsbG93cyB0aGUgdXNl
ciB0byBjb21wZW5zYXRlCnRoZSBza2V3IGJldHdlZW4gSURDSyBhbmQgdGhlIHBpeGVsIGRhdGEg
YW5kIGNvbnRyb2wgc2lnbmFscy4KCkluIHRoZSBkcml2ZXIsIHRoZSBzZXR1cCBhbmQgaG9sZCB0
aW1lcyBhcmUgY2FsY3VsYXRlZCBmcm9tIHRoZSBkZS1za2V3CnZhbHVlLiBUaGlzIHJldHJpZXZl
cyB0aGUgZGVza2V3IHZhbHVlIGZyb20gdGhlIERUIHVzaW5nIHRoZSBwcm9wZXIKZGF0YXR5cGUg
YW5kIHJhbmdlIGNoZWNrIGFzIGRlc2NyaWJlZCBieSB0aGUgYmluZGluZyAodTMyIGZyb20gMCB0
byA3KS4KClRoaXMgZml4IHJlc3VsdHMgZnJvbSBhIGNoYW5nZSBpbiB0aGUgdGksdGZwNDEwIERU
IGJpbmRpbmcuCgpTaWduZWQtb2ZmLWJ5OiBSaWNhcmRvIENhw7F1ZWxvIDxyaWNhcmRvLmNhbnVl
bG9AY29sbGFib3JhLmNvbT4KUmV2aWV3ZWQtYnk6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQu
cGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3Rp
LXRmcDQxMC5jIHwgMTAgKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3Rp
LXRmcDQxMC5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS90aS10ZnA0MTAuYwppbmRleCBlM2Vi
NjM2NGMwZjcuLmRmZGU4MTFmMzQxMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS90aS10ZnA0MTAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3RpLXRmcDQxMC5jCkBA
IC0yMjAsNyArMjIwLDcgQEAgc3RhdGljIGludCB0ZnA0MTBfcGFyc2VfdGltaW5ncyhzdHJ1Y3Qg
dGZwNDEwICpkdmksIGJvb2wgaTJjKQogCXN0cnVjdCBkZXZpY2Vfbm9kZSAqZXA7CiAJdTMyIHBj
bGtfc2FtcGxlID0gMDsKIAl1MzIgYnVzX3dpZHRoID0gMjQ7Ci0JczMyIGRlc2tldyA9IDA7CisJ
dTMyIGRlc2tldyA9IDA7CiAKIAkvKiBTdGFydCB3aXRoIGRlZmF1bHRzLiAqLwogCSp0aW1pbmdz
ID0gdGZwNDEwX2RlZmF1bHRfdGltaW5nczsKQEAgLTI3NCwxMiArMjc0LDEyIEBAIHN0YXRpYyBp
bnQgdGZwNDEwX3BhcnNlX3RpbWluZ3Moc3RydWN0IHRmcDQxMCAqZHZpLCBib29sIGkyYykKIAl9
CiAKIAkvKiBHZXQgdGhlIHNldHVwIGFuZCBob2xkIHRpbWUgZnJvbSB2ZW5kb3Itc3BlY2lmaWMg
cHJvcGVydGllcy4gKi8KLQlvZl9wcm9wZXJ0eV9yZWFkX3UzMihkdmktPmRldi0+b2Zfbm9kZSwg
InRpLGRlc2tldyIsICh1MzIgKikmZGVza2V3KTsKLQlpZiAoZGVza2V3IDwgLTQgfHwgZGVza2V3
ID4gMykKKwlvZl9wcm9wZXJ0eV9yZWFkX3UzMihkdmktPmRldi0+b2Zfbm9kZSwgInRpLGRlc2tl
dyIsICZkZXNrZXcpOworCWlmIChkZXNrZXcgPiA3KQogCQlyZXR1cm4gLUVJTlZBTDsKIAotCXRp
bWluZ3MtPnNldHVwX3RpbWVfcHMgPSBtaW4oMCwgMTIwMCAtIDM1MCAqIGRlc2tldyk7Ci0JdGlt
aW5ncy0+aG9sZF90aW1lX3BzID0gbWluKDAsIDEzMDAgKyAzNTAgKiBkZXNrZXcpOworCXRpbWlu
Z3MtPnNldHVwX3RpbWVfcHMgPSBtaW4oMCwgMTIwMCAtIDM1MCAqICgoczMyKWRlc2tldyAtIDQp
KTsKKwl0aW1pbmdzLT5ob2xkX3RpbWVfcHMgPSBtaW4oMCwgMTMwMCArIDM1MCAqICgoczMyKWRl
c2tldyAtIDQpKTsKIAogCXJldHVybiAwOwogfQotLSAKMi4xOC4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
