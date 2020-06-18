Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7061FE150
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7aeB4pzSpSgoUUzHTvXRd6KGPhQ2I25aUAdg6Lrtww=; b=MyvCYI98Wau/ws
	YcbMM0LceRTKFjz96u7PMHMQ1M9piwEJf82m61zotGQ+TKYAqWWxXpODZ+MO+PAf89am2KQAX6fLe
	zAYDGn5kfDQFN/UDvzt+5mHkX2XqvhDELNhdt2erzuCpkpylizxpmfUh+WNzxDiCstHt5OIhCKA5V
	cdVCqFUr2v+1EVBgQdJzSzb7RhdLQI7Cq6V/oUKbyBjD/Sheu5tITEUExUZbxbDSNjok8oj/c4R3p
	ef/sMLaSh+A76JXP3xJqf3BkIxYJlf6olPakFGgUNsDXFFUTJ6asIyp2uAlYDW3TbhHRSJSGbnTmf
	zMc6LQp8mVQjHv011fPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljl6-0005Rt-4s; Thu, 18 Jun 2020 01:54:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljGY-0006N4-0C
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:22:57 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44B9B20663;
 Thu, 18 Jun 2020 01:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592443373;
 bh=ptpv6AaHe3Ar61d8PWH8ycxxaQqCbcDaY5LkOUNJEmI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tvsEWH/GXosw17DHT7zf6Rt6Gd2qjIh8yvLXdn+HOBiyZylzr8V3e7PmFIeMUk4mb
 hxQI+4XZ9O/8I3rQaNFhabFk46B0qTwKxVu9JBPq2LkebuUwn1+T6v9+Sa4SPOkW0S
 ojnejE6wheRLsoRNVqRjeqVA9NoAxNvIzPx+fEfM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 026/172] PCI: aardvark: Don't blindly enable ASPM
 L0s and don't write to read-only register
Date: Wed, 17 Jun 2020 21:19:52 -0400
Message-Id: <20200618012218.607130-26-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_182254_079898_9639E824 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tomasz Maciej Nowak <tmn505@gmail.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Sasha Levin <sashal@kernel.org>,
 linux-pci@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KClsgVXBzdHJlYW0gY29tbWl0IDkw
YzZjYjRhMzU1ZTdiZWZjYjU1N2QyMTdkMWQ4YjhiZDU4NzVhMDUgXQoKVHJ5aW5nIHRvIGNoYW5n
ZSBMaW5rIFN0YXR1cyByZWdpc3RlciBkb2VzIG5vdCBoYXZlIGFueSBlZmZlY3QgYXMgdGhpcwpp
cyBhIHJlYWQtb25seSByZWdpc3Rlci4gVHJ5aW5nIHRvIG92ZXJ3cml0ZSBiaXRzIGZvciBOZWdv
dGlhdGVkIExpbmsKV2lkdGggZG9lcyBub3QgbWFrZSBzZW5zZS4KCkluIGZ1dHVyZSBwcm9wZXIg
Y2hhbmdlIG9mIGxpbmsgd2lkdGggY2FuIGJlIGRvbmUgdmlhIExhbmUgQ291bnQgU2VsZWN0CmJp
dHMgaW4gUENJZSBDb250cm9sIDAgcmVnaXN0ZXIuCgpUcnlpbmcgdG8gdW5jb25kaXRpb25hbGx5
IGVuYWJsZSBBU1BNIEwwcyB2aWEgQVNQTSBDb250cm9sIGJpdHMgaW4gTGluawpDb250cm9sIHJl
Z2lzdGVyIGlzIHdyb25nLiBUaGVyZSBzaG91bGQgYmUgYXQgbGVhc3Qgc29tZSBkZXRlY3Rpb24g
aWYKZW5kcG9pbnQgc3VwcG9ydHMgTDBzIGFzIGlzbid0IG1hbmRhdG9yeS4KCk1vcmVvdmVyIEFT
UE0gQ29udHJvbCBiaXRzIGluIExpbmsgQ29udHJvbCByZWdpc3RlciBhcmUgY29udHJvbGxlZCBi
eQpwY2llL2FzcG0uYyBjb2RlIHdoaWNoIHNldHMgaXQgYWNjb3JkaW5nIHRvIHN5c3RlbSBBU1BN
IHNldHRpbmdzLAppbW1lZGlhdGVseSBhZnRlciBhYXJkdmFyayBkcml2ZXIgcHJvYmVzLiBTbyBz
ZXR0aW5nIHRoZXNlIGJpdHMgYnkKYWFyZHZhcmsgZHJpdmVyIGhhcyBubyBsb25nIHJ1bm5pbmcg
ZWZmZWN0LgoKUmVtb3ZlIGNvZGUgd2hpY2ggdG91Y2hlcyBBU1BNIEwwcyBiaXRzIGZyb20gdGhp
cyBkcml2ZXIgYW5kIGxldAprZXJuZWwncyBBU1BNIGltcGxlbWVudGF0aW9uIHRvIHNldCBBU1BN
IHN0YXRlIHByb3Blcmx5LgoKU29tZSB1c2VycyBhcmUgcmVwb3J0aW5nIGlzc3VlcyB0aGF0IHRo
aXMgY29kZSBpcyBwcm9ibGVtYXRpYyBmb3Igc29tZQpJbnRlbCB3aWZpIGNhcmRzIGFuZCByZW1v
dmluZyBpdCBmaXhlcyB0aGVtLCBzZWUgZS5nLjoKaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xOTYzMzkKCklmIHByb2JsZW1zIHdpdGggSW50ZWwgd2lmaSBjYXJk
cyBvY2N1ciBldmVuIGFmdGVyIHRoaXMgY29tbWl0LCB0aGVuCnBjaWUvYXNwbS5jIGNvZGUgY291
bGQgYmUgbW9kaWZpZWQgLyBob29rZWQgdG8gbm90IGVuYWJsZSBBU1BNIEwwcyBzdGF0ZQpmb3Ig
YWZmZWN0ZWQgcHJvYmxlbWF0aWMgY2FyZHMuCgpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9yLzIwMjAwNDMwMDgwNjI1LjI2MDcwLTMtcGFsaUBrZXJuZWwub3JnClRlc3RlZC1ieTogVG9t
YXN6IE1hY2llaiBOb3dhayA8dG1uNTA1QGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogUGFsaSBS
b2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1ieTogTG9yZW56byBQaWVyYWxpc2kg
PGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+CkFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBr
ZXJuZWwub3JnPgpBY2tlZC1ieTogVGhvbWFzIFBldGF6em9uaSA8dGhvbWFzLnBldGF6em9uaUBi
b290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3Jn
PgotLS0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMgfCA0IC0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJk
dmFyay5jCmluZGV4IDZiNDU1NWZmMjU0OC4uMDIzNWI2ZTdkY2QxIDEwMDY0NAotLS0gYS9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jCisrKyBiL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvcGNpLWFhcmR2YXJrLmMKQEAgLTMyMSwxMCArMzIxLDYgQEAgc3RhdGljIHZvaWQgYWR2
a19wY2llX3NldHVwX2h3KHN0cnVjdCBhZHZrX3BjaWUgKnBjaWUpCiAKIAlhZHZrX3BjaWVfd2Fp
dF9mb3JfbGluayhwY2llKTsKIAotCXJlZyA9IFBDSUVfQ09SRV9MSU5LX0wwU19FTlRSWSB8Ci0J
CSgxIDw8IFBDSUVfQ09SRV9MSU5LX1dJRFRIX1NISUZUKTsKLQlhZHZrX3dyaXRlbChwY2llLCBy
ZWcsIFBDSUVfQ09SRV9MSU5LX0NUUkxfU1RBVF9SRUcpOwotCiAJcmVnID0gYWR2a19yZWFkbChw
Y2llLCBQQ0lFX0NPUkVfQ01EX1NUQVRVU19SRUcpOwogCXJlZyB8PSBQQ0lFX0NPUkVfQ01EX01F
TV9BQ0NFU1NfRU4gfAogCQlQQ0lFX0NPUkVfQ01EX0lPX0FDQ0VTU19FTiB8Ci0tIAoyLjI1LjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
