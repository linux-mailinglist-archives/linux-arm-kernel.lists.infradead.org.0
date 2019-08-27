Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBA79EA3C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:58:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRU/gW8g81hyJm/P2jFaZdhBcQvQXfTJqn0AGN+6Te0=; b=ThNLshKdOZ7c+J
	Sli9t7CAjGaHZDYyjd2vcIPP2x7DR2SLUyLIda1awtgUDnosz5DKPefEiMXN1veXXxkHT9gvRPdQe
	yZclB4AfPv1B6EifTWfbh3YHT5SGLDiny1nqiEdjDn4PEiT1/13yLU+TJ0ZZLdRAiA6IKrMhV5Yo8
	jHamy6eV5rg3eqeynNnIzn7MRWtz7pIks8xmwJ6hLNgSXnYZBFHMk+vNIftEzXUujAJdmfQiKw9VG
	m4KUNMz+f9aKx7qMmHovxFDgmdFrisbqQsPpdehdSx46x8f6N0ufVxdYs6yDIibsLCJ7ax9B8ycc/
	x4R5Q1xx6uhumiX+BReA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bze-0002Jy-7I; Tue, 27 Aug 2019 13:58:42 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bzU-0002JG-HW
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:58:34 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 716FC240011;
 Tue, 27 Aug 2019 13:58:17 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: marvell: armada-37xx: add mailbox node
In-Reply-To: <20190812163003.23016-1-marek.behun@nic.cz>
References: <20190812163003.23016-1-marek.behun@nic.cz>
Date: Tue, 27 Aug 2019 15:58:17 +0200
Message-ID: <87r256zp52.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_065832_736683_C0CB968F 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyZWssCgo+IFRoaXMgYWRkcyB0aGUgcldUTSBCSVUgbWFpbGJveCBub2RlIGZvciBjb21t
dW5pY2F0aW9uIHdpdGggdGhlIHNlY3VyZQo+IHByb2Nlc3Nvci4gVGhlIGRyaXZlciBhbHJlYWR5
IGV4aXN0cyBpbgo+IGRyaXZlcnMvbWFpbGJveC9hcm1hZGEtMzd4eC1yd3RtLW1haWxib3guYy4K
Pgo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIEJlaMO6biA8bWFyZWsuYmVodW5AbmljLmN6Pgo+IENj
OiBHcmVnb3J5IENsZW1lbnQgPGdyZWdvcnkuY2xlbWVudEBib290bGluLmNvbT4KPiBDYzogTWlx
dWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KCgpBcHBsaWVkIG9uIG12ZWJ1
L2R0NjQKClRoYW5rcywKCkdyZWdvcnkKCgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL21h
cnZlbGwvYXJtYWRhLTM3eHguZHRzaSB8IDcgKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxs
L2FybWFkYS0zN3h4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3
eHguZHRzaQo+IGluZGV4IGY0M2M0MzE2OGIwMC4uN2Y2OWUzZGZjYjEzIDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzd4eC5kdHNpCj4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zN3h4LmR0c2kKPiBAQCAtNDE5LDYgKzQx
OSwxMyBAQAo+ICAJCQkJY2xvY2tzID0gPCZuYl9wZXJpcGhfY2xrIDE1PjsKPiAgCQkJfTsKPiAg
Cj4gKwkJCXJ3dG06IG1haWxib3hAYjAwMDAgewo+ICsJCQkJY29tcGF0aWJsZSA9ICJtYXJ2ZWxs
LGFybWFkYS0zNzAwLXJ3dG0tbWFpbGJveCI7Cj4gKwkJCQlyZWcgPSA8MHhiMDAwMCAweDEwMD47
Cj4gKwkJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTggSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4g
KwkJCQkjbWJveC1jZWxscyA9IDwxPjsKPiArCQkJfTsKPiArCj4gIAkJCXNkaGNpMTogc2RoY2lA
ZDAwMDAgewo+ICAJCQkJY29tcGF0aWJsZSA9ICJtYXJ2ZWxsLGFybWFkYS0zNzAwLXNkaGNpIiwK
PiAgCQkJCQkgICAgICJtYXJ2ZWxsLHNkaGNpLXhlbm9uIjsKPiAtLSAKPiAyLjIxLjAKPgoKLS0g
CkdyZWdvcnkgQ2xlbWVudCwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2lu
ZWVyaW5nCmh0dHA6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
