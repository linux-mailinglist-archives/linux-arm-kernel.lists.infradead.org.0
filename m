Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D832E1A41
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDET6VuxnSN+Pp+YU9QapFzbdWTAqbPZ8kNShM7ylBE=; b=CdmaMtOwpWYe4o
	rz4v0+NsfoN7ENr6BZcfpDIrw47EFiRFeVmRQGKuFGYA8sWFjCcMMGZZ8pTFboxt+07XHsaPQ6j5t
	D7eG7LhvyLd8L/yRZ517V4lStu8RaY4d3PveqJFEY6YXKcvlvq1UMInNXEPiBWAL/OfknvACL1lA4
	oR7QAGbPj8d7pwFGds4SAjbveNbjqe03CE1jclCKs7gnUOzOHFI76yMxnMelcFBNRDkf7RiWbed01
	bsBYXlNFM7ZwVti43b5m2ZM8HODavVIHUs+gaKSkK94DinCPX1OOTn5jvpb6v6IGmpSJTh6KEUeG3
	MgLmLYh0scMUCtWv8YDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFnl-0004d5-4e; Wed, 23 Oct 2019 12:31:45 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFlb-00022f-04
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:29:34 +0000
Received: from ramsan ([84.194.98.4]) by xavier.telenet-ops.be with bizsmtp
 id H0VK2100A05gfCL010VKSW; Wed, 23 Oct 2019 14:29:23 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFlP-0000Fs-7w; Wed, 23 Oct 2019 14:29:19 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFlP-0003BL-6Y; Wed, 23 Oct 2019 14:29:19 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 5/5] dt-bindings: power: Add r8a77961 SYSC power domain
 definitions
Date: Wed, 23 Oct 2019 14:29:11 +0200
Message-Id: <20191023122911.12166-6-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023122911.12166-1-geert+renesas@glider.be>
References: <20191023122911.12166-1-geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_052931_239959_5355999F 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHBvd2VyIGRvbWFpbiBpbmRpY2VzIGZvciB0aGUgUi1DYXIgTTMtVysgKFI4QTc3OTYxKSBT
b0MuCgpCYXNlZCBvbiBSZXYuIDIuMDAgb2YgdGhlIFItQ2FyIFNlcmllcywgM3JkIEdlbmVyYXRp
b24sIEhhcmR3YXJlIFVzZXLigJlzCk1hbnVhbCAoSnVsLiAzMSwgMjAxOSkuCgpTaWduZWQtb2Zm
LWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgpSZXZpZXdl
ZC1ieTogWW9zaGloaXJvIFNoaW1vZGEgPHlvc2hpaGlyby5zaGltb2RhLnVoQHJlbmVzYXMuY29t
PgotLS0KdjI6CiAgLSBBZGQgUmV2aWV3ZWQtYnkuCi0tLQogaW5jbHVkZS9kdC1iaW5kaW5ncy9w
b3dlci9yOGE3Nzk2MS1zeXNjLmggfCAzMiArKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0
LWJpbmRpbmdzL3Bvd2VyL3I4YTc3OTYxLXN5c2MuaAoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQt
YmluZGluZ3MvcG93ZXIvcjhhNzc5NjEtc3lzYy5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9wb3dl
ci9yOGE3Nzk2MS1zeXNjLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAw
MDAwMC4uN2EzODAwOTk2ZjdjMDI1MgotLS0gL2Rldi9udWxsCisrKyBiL2luY2x1ZGUvZHQtYmlu
ZGluZ3MvcG93ZXIvcjhhNzc5NjEtc3lzYy5oCkBAIC0wLDAgKzEsMzIgQEAKKy8qIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KKy8qCisgKiBDb3B5cmlnaHQgKEMpIDIw
MTkgR2xpZGVyIGJ2YmEKKyAqLworI2lmbmRlZiBfX0RUX0JJTkRJTkdTX1BPV0VSX1I4QTc3OTYx
X1NZU0NfSF9fCisjZGVmaW5lIF9fRFRfQklORElOR1NfUE9XRVJfUjhBNzc5NjFfU1lTQ19IX18K
KworLyoKKyAqIFRoZXNlIHBvd2VyIGRvbWFpbiBpbmRpY2VzIG1hdGNoIHRoZSBudW1iZXJzIG9m
IHRoZSBpbnRlcnJ1cHQgYml0cworICogcmVwcmVzZW50aW5nIHRoZSBwb3dlciBhcmVhcyBpbiB0
aGUgdmFyaW91cyBJbnRlcnJ1cHQgUmVnaXN0ZXJzCisgKiAoZS5nLiBTWVNDSVNSLCBJbnRlcnJ1
cHQgU3RhdHVzIFJlZ2lzdGVyKQorICovCisKKyNkZWZpbmUgUjhBNzc5NjFfUERfQ0E1N19DUFUw
CQkgMAorI2RlZmluZSBSOEE3Nzk2MV9QRF9DQTU3X0NQVTEJCSAxCisjZGVmaW5lIFI4QTc3OTYx
X1BEX0NBNTNfQ1BVMAkJIDUKKyNkZWZpbmUgUjhBNzc5NjFfUERfQ0E1M19DUFUxCQkgNgorI2Rl
ZmluZSBSOEE3Nzk2MV9QRF9DQTUzX0NQVTIJCSA3CisjZGVmaW5lIFI4QTc3OTYxX1BEX0NBNTNf
Q1BVMwkJIDgKKyNkZWZpbmUgUjhBNzc5NjFfUERfQ0E1N19TQ1UJCTEyCisjZGVmaW5lIFI4QTc3
OTYxX1BEX0NSNwkJCTEzCisjZGVmaW5lIFI4QTc3OTYxX1BEX0EzVkMJCTE0CisjZGVmaW5lIFI4
QTc3OTYxX1BEXzNER19BCQkxNworI2RlZmluZSBSOEE3Nzk2MV9QRF8zREdfQgkJMTgKKyNkZWZp
bmUgUjhBNzc5NjFfUERfQ0E1M19TQ1UJCTIxCisjZGVmaW5lIFI4QTc3OTYxX1BEX0EzSVIJCTI0
CisjZGVmaW5lIFI4QTc3OTYxX1BEX0EyVkMxCQkyNgorCisvKiBBbHdheXMtb24gcG93ZXIgYXJl
YSAqLworI2RlZmluZSBSOEE3Nzk2MV9QRF9BTFdBWVNfT04JCTMyCisKKyNlbmRpZiAvKiBfX0RU
X0JJTkRJTkdTX1BPV0VSX1I4QTc3OTYxX1NZU0NfSF9fICovCi0tIAoyLjE3LjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
