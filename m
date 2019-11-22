Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D5D105EDE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 04:03:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/daRWqGuW02N/ebIl4pO12mGIskEJD8h6Yx1FJfuWk=; b=i6UYN2rzx+aDuS
	XaY070Mn+XhfmWnlvCFL6cF/Bl2va49WD5VSHzR6EjrcMMs5WrDMnvQnmUUtIb/2I4bZZe5GwVbqy
	up3MwhvMx9WXn01ulU8zCWVw4DanwA/mio4QSq+0xanYjpCrBmTwLse6eSIFOhngzwlF1kQvJVgwx
	rOQ6TvJSpuiJR0MuzwxmpOEnCKwlTEJcobTY0Jif+jK2fiaN2tR3WHnfGTMkyS8qKffhSl1to1dSF
	ayMYeJIe7OngjQCLo7uLnVMDiu9AeD4cXyStMSzPQQ4arW8siK51ycILXzCnuEGgI3Ufc1REO0khv
	PBa9QNn36OL2ra4FsW+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXzDz-0001eK-Bi; Fri, 22 Nov 2019 03:03:11 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXzDt-0001db-Fx; Fri, 22 Nov 2019 03:03:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 48413AE2C;
 Fri, 22 Nov 2019 03:03:02 +0000 (UTC)
Subject: Re: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
To: James Tai <james.tai@realtek.com>
References: <43B123F21A8CFE44A9641C099E4196FFCF91BEFA@RTITMBSVM04.realtek.com.tw>
 <25fdd8eb-f1a0-82ae-9c4b-22325b163b0e@suse.de>
 <43B123F21A8CFE44A9641C099E4196FFCF920024@RTITMBSVM04.realtek.com.tw>
 <6182b89f-cd7e-ce7c-56f7-e2f500321cde@suse.de>
 <993d5da60a87443995347ee2a4c74959@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <6d44e7f8-1ae5-ed3d-ac3c-0ee7903d660b@suse.de>
Date: Fri, 22 Nov 2019 04:03:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <993d5da60a87443995347ee2a4c74959@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_190305_677840_BD4CD921 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAyMC4xMS4xOSB1bSAwODo1OCBzY2hyaWViIEphbWVzIFRhaToKPj4gVGhp
cyBjb25mbGljdHMgd2l0aCB3aGF0IEkgc2VlIGluIEJTUCBpcnEgbXV4IGNvZGUgaGVyZToKPj4g
aHR0cHM6Ly9naXRodWIuY29tL0JQSS1TSU5PVk9JUC9CUEktTTQtYnNwL2Jsb2IvbWFzdGVyL2xp
bnV4LXJ0ay9kcml2ZXJzL2lyCj4+IHFjaGlwL2lycS1ydGQxNnh4LmgKPj4KPj4gVGhhdCBkb2Vz
IHNob3cgVVIwIGFzIGJpdCAyIGZvciB0aGUgaXNvIGlycSBtdXgsIGFzIGZvciBwcmV2aW91cyBT
b0NzLgo+PiBJcyB0aGF0IGNvZGUgd3JvbmcsIG9yIGRvZXMgdGhlIHNhbWUgVUFSVDAgSVAgYmxv
Y2sgaGF2ZSB0d28gYWx0ZXJuYXRpdmUKPj4gaW50ZXJydXB0cyBmb3IgYmFja3dhcmRzIGNvbXBh
dGliaWxpdHk/IEkgdGhlcmVmb3JlIGhlbGQgYmFjayBSVEQxNjE5IGlycSBtdXgKPj4gcGF0Y2hl
cyBmcm9tIG15IGlycWNoaXAgdjQgc2VyaWVzIFsxXS4KPj4KPiBJdCBpcyBjb2RlIHdyb25nLiBU
aGUgVVIwIHNob3VsZCByZW1vdmUgZnJvbSAiaXJxLXJ0ZDE2eHguaCIuCgpBY3R1YWxseSwgSSBq
dXN0IHRlc3RlZCB0aGF0IFVSMCB3b3JrcyEgKHJldiBBMDEpIFNvIHdlIHNob3VsZG4ndCByZW1v
dmUKaXQgZnJvbSB0aGUgaXJxY2hpcCBkcml2ZXIsIGdpdmVuIHRoZSBtYXBwaW5nIGNoYW5nZXMg
cmVxdWVzdGVkIGZvciB2NS4KClJURDE2MTkgZHJpdmVyIHN1cHBvcnQgYW5kIERUIG5vZGVzIHB1
c2hlZCB0byBteSBydGQxMjk1LW5leHQgYnJhbmNoLgoKPj4gVGhlIEJTUCBEVCBkb2VzIGFzc2ln
biBub24tbXV4IGludGVycnVwdHMgdG8gdGhlIFVBUlQgbm9kZSBsaWtlIHlvdSBkaWQ6Cj4+IGh0
dHBzOi8vZ2l0aHViLmNvbS9CUEktU0lOT1ZPSVAvQlBJLU00LWJzcC9ibG9iL21hc3Rlci9saW51
eC1ydGsvYXJjaC9hcm0KPj4gNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxNnh4L3J0ZC0xNnh4LmR0
c2kKPj4gQW5kIEkgb2J2aW91c2x5IHRydXN0IHRoYXQgeW91IHRlc3RlZCB5b3VyIERUIHRvIHBy
b2R1Y2Ugc2VyaWFsIG91dHB1dC4KCldlIHNob3VsZCBvYnZpb3VzbHkgbGVhdmUgdGhlIG5ldyBH
SUMgaW50ZXJydXB0cyBpbiB0aGUgRFQuCgpSZWdhcmRzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0
d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVy
ZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJn
KQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
