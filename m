Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BFDE6035
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 03:05:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6wx9dmx0t4TSrv8dLF0UOkGl4KaUd4dYeMgvIGoYD/U=; b=WAwFv+VEQ9zay4
	o9Qmqm+ZQ7E0ko6liLOl5st4+3/zAhkSLWeKS2hXeBwQfu8HcJXeXId71ASu2AIWG1ostAZ3L3gtk
	fFl9izDT2oVQDeAtzPjC9zvGcIsSlw0/cKkicZfhjeMxDCAP8DYFNCC68+63b9EJjEuLY46rVQaaj
	2KnDcBR6PjwNEcp8IJQYu14swvJuBSDDJ0BNAiYhgnAixdxSZ6OMGuV0qVAvahbyKD7/yfXNORdn9
	WRJ9mb8Bqvv/kd4PSXJmUrSEGte6y8p8qDiDb9q+C2p92WR0I/f7MaY7Ui0gAcLfqJzBzaoe20iAp
	esGcpn+j9KOiAJt84jZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOXvO-0003sk-QE; Sun, 27 Oct 2019 02:04:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOXvH-0003rk-NS; Sun, 27 Oct 2019 02:04:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 969B5ABA0;
 Sun, 27 Oct 2019 02:04:42 +0000 (UTC)
Subject: Re: [PATCH v2 1/8] dt-bindings: watchdog: realtek: Convert RTD119x to
 schema
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
To: Rob Herring <robh@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>
References: <20191020040817.16882-1-afaerber@suse.de>
 <20191020040817.16882-2-afaerber@suse.de> <20191025211638.GA28819@bogus>
 <aeb0d0ed-5649-9035-c753-39e8a1511c9d@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <7fff9d25-e24a-c73e-b14f-12c66607fe3a@suse.de>
Date: Sun, 27 Oct 2019 03:04:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <aeb0d0ed-5649-9035-c753-39e8a1511c9d@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_190451_910617_EA29DBCB 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-realtek-soc@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjUuMTAuMTkgdW0gMjM6MjQgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gQW0gMjUuMTAu
MTkgdW0gMjM6MTYgc2NocmllYiBSb2IgSGVycmluZzoKPj4gT24gU3VuLCBPY3QgMjAsIDIwMTkg
YXQgMDY6MDg6MTBBTSArMDIwMCwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+Pj4gK3Byb3BlcnRp
ZXM6Cj4+PiArICBjb21wYXRpYmxlOgo+Pj4gKyAgICBvbmVPZjoKPj4+ICsgICAgICAtIGNvbnN0
OiByZWFsdGVrLHJ0ZDEyOTUtd2F0Y2hkb2cKPj4KPj4gWW91IGNhbiBkcm9wIHRoZSAnb25lT2Yn
IGhlcmUgdW5sZXNzIHlvdSdyZSBwbGFubmluZyB0byBhZGQgYW5vdGhlciAKPj4gZW50cnkgd2l0
aCAyIGNvbXBhdGlibGUgc3RyaW5ncy4KPiAKPiBJdCdzIGEgcHJlcGFyYXRpb24gZm9yIGFkZGlu
ZyBydGQxMTk1LXdhdGNoZG9nIHdoZW4gbmVlZGVkLCB0byBtYWtlCj4gZnV0dXJlIGRpZmZzIHNt
YWxsZXIuIFRoZXJlJ3MgYWxzbyBSVEQxMzk1IGFuZCBSVEQxNjE5IHRvIGJlIHRlc3RlZC4KPiAK
Pj4gV2l0aCB0aGF0LAo+Pgo+PiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4KClNlbGYtTkFLLgoKVGhlIGV4YW1wbGUgZG9lc24ndCBwYXNzIGR0X2JpbmRpbmdfY2hl
Y2s6IEl0IGRvZXNuJ3QgbGlrZSB0aGUgdGFicwpyZXRhaW5lZCBmcm9tIHRoZSBvcmlnaW5hbCBi
aW5kaW5nLiBSZXBsYWNpbmcgdGhlbSB3aXRoIGZvdXIgc3BhY2VzCm1ha2VzIGl0IHBhc3MuIFdp
bGwgcG9zdCBhIHYzLgoKQXMgZm9yIHRoZSBjb21wYXRpYmxlcywgY3VycmVudGx5IGluIHRoZSBy
dGQxMTk1LmR0c2kgcGF0Y2ggSSdtIHJldXNpbmcKInJlYWx0ZWsscnRkMTI5NS13YXRjaGRvZyIs
IHRvIGF2b2lkIGEgZGVwZW5kZW5jeSBvbiB0aGUgd2F0Y2hkb2cgdHJlZS4KCkxvbmctdGVybSB0
aGF0J3Mga2luZCBvZiB1Z2x5IGFzIGl0IHVzZXMgYSBsYXRlciBtb2RlbCBudW1iZXIuClRoYXQg
bGVhdmVzIHVzIHdpdGggdHdvIGFsdGVybmF0aXZlczoKCmEpICJyZWFsdGVrLHJ0ZDExOTUtd2F0
Y2hkb2ciLCAicmVhbHRlayxydGQxMjk1LXdhdGNoZG9nIiAtIHRoaXMKcmVxdWlyZXMgb25lT2Yu
IEFsbG93cyB0byBkaXN0aW5ndWlzaCBiZXR3ZWVuIFJURDExOTUgYW5kIFJURDEyOTUgd2hpbGUK
cmVtYWluaW5nIGNvbXBhdGlibGUgd2l0aCB0aGUgY3VycmVudCBkcml2ZXIuCgpiKSAicmVhbHRl
ayxydGQxMTk1LXdhdGNoZG9nIiAtIHJlcXVpcmVzIHRoZSBkcml2ZXIgY2hhbmdlIG5vdyBhbmQK
cmVxdWlyZXMgdGhlIGJpbmRpbmcgdG8gYmUgbWVyZ2VkIGJlZm9yZSBJIGNhbiB1c2UgaXQgaW4g
dGhlIERUIGJ1dApkb2Vzbid0IG5lZWQgb25lT2YgaGVyZS4KCkd1ZW50ZXIsIGFueSBwcmVmZXJl
bmNlIGhlcmU/CgpUaGFua3MsCkFuZHJlYXMKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBH
ZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBG
ZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
