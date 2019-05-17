Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD38E211DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 03:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSAycte1Kf1v/2cEIGKXZlEZfMhdvD/Gu45EdSR1UVs=; b=bsjAyuIUEKRC/x
	avA2UmscuLou8EicAcWkxdetZS/Tzi1EOAu3iI8E1wuwUXj8yXmB++M0D8ly6LKa1v9IeWMC8mtga
	Sb9LnE7MfthMgk3VmDBzn2H2+Tu3BcFz/xlcEP2LXB4nDWqgxc3UepqYXsu+cpWMa3sJ77Tk6/ZQT
	E5RLpey3Lvdy4VJCW/VkI+QRRpJXOKRmUZqtlBprzsh8ACzAw7WqUOjfOmr42T8QjGZ4XjqZd9Ult
	yZDbsZP/X5S5ITM4Bl//9ZhGPauhjyAC8rvJ55iWpjEYOwMI6rUYExVuT0EgsImkNMuJfdl97vQ22
	izB0ZvXVtwOTFI80wZ9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRS6L-0004Od-GL; Fri, 17 May 2019 01:56:01 +0000
Received: from smtp81.ord1c.emailsrvr.com ([108.166.43.81])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRS6D-0004OB-H5; Fri, 17 May 2019 01:55:55 +0000
Received: from smtp19.relay.ord1c.emailsrvr.com (localhost [127.0.0.1])
 by smtp19.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id C64B5A00D7;
 Thu, 16 May 2019 21:55:50 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
Received: from smtp19.relay.ord1c.emailsrvr.com (localhost [127.0.0.1])
 by smtp19.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id BB3FDA013F;
 Thu, 16 May 2019 21:55:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1558058150;
 bh=ruWjhSiIxIzZ+uVDbCZxZzbXIByPB1vnI1uU7Zw158M=;
 h=Subject:From:Date:To:From;
 b=tqxEf2jJjyVLeIePrdCa0SALLszfQmcrS3UecajepWWf2U+D6x2uCWIy6yyecGwCI
 ypKAGhtAeqoAThraMsjVwQIUmFkPJTeY4yyV56WyiePDW9FJsR6+IdRSF3oqZWGpsG
 pU0kvRTMZtlDIa0PcaFceK/ldME6nXbpo7KOeNFM=
X-Auth-ID: mcdermj@xenotropic.com
Received: by smtp19.relay.ord1c.emailsrvr.com (Authenticated sender:
 mcdermj-AT-xenotropic.com) with ESMTPSA id C44F3A00D7; 
 Thu, 16 May 2019 21:55:49 -0400 (EDT)
X-Sender-Id: mcdermj@xenotropic.com
Received: from [10.0.3.33] (c-73-96-52-102.hsd1.or.comcast.net [73.96.52.102])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:465 (trex/5.7.12); Thu, 16 May 2019 21:55:50 -0400
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v2] i2c: bcm2835: Model Divider in CCF
From: Annaliese McDermond <nh6z@nh6z.net>
In-Reply-To: <20190516075848.GA1033@kunai>
Date: Thu, 16 May 2019 18:55:48 -0700
Message-Id: <2E6EDCD1-E0B1-4859-BD75-EF411D3D4C6B@nh6z.net>
References: <20190508071227.18609-1-nh6z@nh6z.net>
 <4174B26B-4E3A-4CCA-A5ED-BE62A3B5E66A@nh6z.net> <20190516075848.GA1033@kunai>
To: Wolfram Sang <wsa@the-dreams.de>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_185553_673178_73EA56AF 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [108.166.43.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com, swarren@wwwdotorg.org,
 team@nwdigitalradio.com, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V29sZnJhbSAtLQoKVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgeW91ciByZXNwb25zZS4KCj4gT24g
TWF5IDE2LCAyMDE5LCBhdCAxMjo1OCBBTSwgV29sZnJhbSBTYW5nIDx3c2FAdGhlLWRyZWFtcy5k
ZT4gd3JvdGU6Cj4gCj4gSGkgQW5uYWxpZXNlLAo+IAo+IE9uIFdlZCwgTWF5IDE1LCAyMDE5IGF0
IDEwOjM3OjAzUE0gLTA3MDAsIEFubmFsaWVzZSBNY0Rlcm1vbmQgd3JvdGU6Cj4+IEnigJltIGp1
c3QgZm9sbG93aW5nIHVwIG9uIHRoaXMgc2luY2UgSSBoYXZlbuKAmXQgaGVhcmQgYW55dGhpbmcg
c2luY2UgSSBzdWJtaXR0ZWQgdGhlCj4+IHYyIHBhdGNoIGEgd2VlayBhZ28uICBXb2xmcmFtLCBk
b2VzIHRoaXMgbG9vayBsaWtlIGEgc2FuZSBhcHByb2FjaD8gIFN0ZWZhbiwKPj4gd2VyZSBteSBj
aGFuZ2VzIGluIHYyIGFjY2VwdGFibGU/Cj4gCj4gVGhlcmUgaXMgYSBiaXQgb2Ygb3ZlcmhlYWQg
aW52b2x2ZWQsIGJ1dCBjb25jZXB0dWFsbHkgaXQgbG9va3MgbGlrZSBhbgo+IGVsZWdhbnQgc29s
dXRpb24gdG8gbWUuIEhvd2V2ZXIsIEkgYW0gbm90IGFuIGV4cGVydCBvZiBDQ0YuIEdyZXBwaW5n
Cj4gdGhyb3VnaCBrZXJuZWwgc291cmNlcywgSSBkb24ndCBzZWUgbWFueSBjbG9ja3MgZGVmaW5l
ZCBvdXRzaWRlCj4gZHJpdmVycy9jbGsuIFNvLCBJJ2QgYXBwcmVjaWF0ZSBpZiB3ZSBjb3VsZCBn
ZXQgc29tZSBhY2svZmVlZGJhY2sgZnJvbQo+IG9uZSBvZiB0aGUgQ0NGIGV4cGVydHMvbWFpbnRh
aW5lcnMuCgpJIHdhcyBhbHNvIHNpbWlsYXJseSBuZXJ2b3VzIGFib3V0IGEgY2xvY2sgcHJvdmlk
ZXIgYmVpbmcgb3V0c2lkZSBvZiAKZHJpdmVycy9jbGssIGVzcGVjaWFsbHkgc2luY2Ugb25lIG9m
IHRoZSBpbnN0YW5jZXMgb2YgdGhhdCBJIHdyb3RlLgoKV2hlbiB3cml0aW5nIHRoaXMsIHRoZXJl
IHdhcyBhIGNlcnRhaW4gbG9naWMgdG8gcHV0dGluZyB0aGlzIGluc2lkZSBvZgpjbGstYmNtMjgz
NS5jIGluc3RlYWQuICBFcmljIG1heSBsaWtlIHRoaXMgYXBwcm9hY2ggYmV0dGVyIGJlY2F1c2Ug
dGhlcmUKd2lsbCBwcm9iYWJseSBiZSBtb3JlIGNvZGUgcmV1c2Ugb2Ygc29tZSBvZiB0aGUgZGl2
aWRlcnMgaGUgdXNlcyBpbiB0aGF0CmRyaXZlci4gIAoKTXkgY29uY2VybiB3YXMgc3Vycm91bmRp
bmcgdGhlIGNyb3NzIHBvbGxlbmF0aW9uIG9mIHRoZSBpMmMgYW5kCmNsb2NrIGRyaXZlcnMgdG8g
YSBjZXJ0YWluIGV4dGVudC4gIFlvdSBoYXZlIHRvIGJlIGFibGUgdG8gc2V0IHRoZQpGRURMX1NI
SUZUIGFuZCBSRURMX1NISUZUIHJlZ2lzdGVycyB3aGVuIHlvdSBjaGFuZ2UgdGhlIGNsb2NrIHJh
dGUuCllvdSBjYW7igJl0IGRvIGl0IGluIHRoZSB0cmFuc2ZlciBmdW5jdGlvbiBsaWtlIHdhcyBk
b25lIGJlZm9yZSBiZWNhdXNlCml0IHJlcXVpcmVzIGEgY2FsbCB0byBjbGtfZ2V0X3JhdGUoKSB3
aGljaCBjYW4gZGVhZGxvY2sgaW4gdGhlCmNvbmRpdGlvbnMgSSBlbmNvdW50ZXJlZC4gIFlvdeKA
mWQgaGF2ZSB0byBtb3ZlIHRob3NlIGNhbGxzIHRvIHRoZQpjbGstYmNtMjgzNSBkcml2ZXIgaW5z
dGVhZC4KCk15IG5lcnZvdXNuZXNzIHN1cnJvdW5kaW5nIG1vdmluZyB0aGUgY29kZSBpbnRvIHRo
ZSBjbG9jayBkcml2ZXIKcmF0aGVyIHRoYW4gdGhlIGkyYyBkcml2ZXIgaXMgdGhhdCBJIGRvbuKA
mXQga25vdyBob3cgZGVwZW5kZW50IHRoZXkKYXJlIG9uIG9uZSBhbm90aGVyLiAgRG8gd2UgYW50
aWNpcGF0ZSB0aGF0IHRoZXJlIG1heSBiZSBhIHVzZSBmb3IKdGhlIGkyYy1iY20yODM1IGRyaXZl
ciB3aXRob3V0IHRoZSBjbGstYmNtMjgzNSBkcml2ZXI/ICBBc2tpbmcgdGhlCnF1ZXN0aW9uIHZl
cnkgd2VsbCBtYXkgYmUgcHJlbWF0dXJlIG9wdGltaXphdGlvbiBmb3IgYSBjb25kaXRpb24KdGhh
dCBtYXkgbmV2ZXIgZXhpc3QuICBJ4oCZbSB0aGlua2luZyBtYXliZSBFcmljIGhhcyBzb21lIG1v
cmUKaW5zaWdodCBpbnRvIHRoaXM/CgpUaGUgb3RoZXIgbWlub3IgaXNzdWUgaXMgdGhhdCBpdOKA
mXMgZ29pbmcgdG8gcmVxdWlyZSBhIGNoYW5nZSB0byB0aGUKYmNtMjgzNSBEVCB0byBjaGFuZ2Ug
dGhlIGNsb2NrIHBvaW50ZXIgdG8gdGhlIGRpdmlkZXIuCgpJZiBpdCBmaXRzIGJldHRlciBpbiB0
aGUgY2xrLWJjbTI4MzUgZHJpdmVyLCBJ4oCZbSBoYXBweSB0byBzdWJtaXQgYQpwYXRjaCB0aGF0
IHB1dHMgaXQgdGhlcmUuICBKdXN0IGxldCBtZSBrbm93IGFuZCBJIGNhbiB3b3JrIG9uIGl0LgoK
LS0KQW5uYWxpZXNlIE1jRGVybW9uZApuaDZ6QG5oNnoubmV0Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
