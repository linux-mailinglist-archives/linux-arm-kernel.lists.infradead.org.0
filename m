Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F43513A4FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 11:07:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MrzIvow/r4E3ZUDIBLuT80ovi7a7AwJQvJiD71fnJCY=; b=tadCdNVuSIn5i7DzVKs8PfnYN
	fqPJtwbv1hiEcYHM5EXxMoT00JEQt/vA16/sDODTwKgQpxA2P3EIwUd1BSsIo1M/58l3HM4XP9epb
	cypvjvcT67XAm4SFco5bgmQJeTNdy3YSs2DL4Ua7NHNyVdZwLyr5upWFuhE0GxXdvLrBzbxjM22Ir
	PSy29TPC7RBvblp0P95UNyJ8hqBJCf264tKaTBVPht1PBnk0B/1gJw3kCx7pFm06fIw6I0wS7Rqe5
	QM4Ly1+C4Y0EvbgHDNwEmFYOjLB3gRxxfhukHATjWnJgHDIZdtJ8bVIu/Me8xi/PTxUV4DxBaaULI
	+zdW9/+zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJ6e-000688-CD; Tue, 14 Jan 2020 10:07:28 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJ6L-00066n-6n; Tue, 14 Jan 2020 10:07:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E44BEAFAE;
 Tue, 14 Jan 2020 10:07:06 +0000 (UTC)
Subject: Re: [PATCH] arm64: dts: realtek: rtd16xx: Add memory reservations
To: linux-realtek-soc@lists.infradead.org, James Tai <james.tai@realtek.com>
References: <20200103060441.1109-1-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <5c2a472c-39f7-f8e0-6df8-0d02d07990df@suse.de>
Date: Tue, 14 Jan 2020 11:07:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200103060441.1109-1-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_020709_398114_5F0D8D05 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDMuMDEuMjAgdW0gMDc6MDQgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gUmVzZXJ2ZSBt
ZW1vcnkgcmVnaW9ucyBmb3IgUlBDIGFuZCBURUUuCj4gCj4gRml4ZXM6IGU1YTllMjM3NjA4ZCAo
ImFybTY0OiBkdHM6IHJlYWx0ZWs6IEFkZCBSVEQxNjE5IFNvQyBhbmQgUmVhbHRlayBNam9sbmly
IEVWQiIpCj4gQ2M6IEphbWVzIFRhaSA8amFtZXMudGFpQHJlYWx0ZWsuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KPiAtLS0KPiAgIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxNnh4LmR0c2kgfCAxOSArKysrKysrKysrKysrKysr
KysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQoKUGluZyEgQFJlYWx0ZWs6
IFBsZWFzZSBjaGVjayB0aGUgbnVtYmVycy4KClRoYW5rcywKQW5kcmVhcwoKPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE2eHguZHRzaSBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVhbHRlay9ydGQxNnh4LmR0c2kKPiBpbmRleCAzYzcwYTBkYTMyOWUuLjRkYzZj
OWYxM2M0MyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTZ4
eC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE2eHguZHRzaQo+
IEBAIC0xNCw2ICsxNCwyNSBAQAo+ICAgCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICAgCSNzaXpl
LWNlbGxzID0gPDE+Owo+ICAgCj4gKwlyZXNlcnZlZC1tZW1vcnkgewo+ICsJCSNhZGRyZXNzLWNl
bGxzID0gPDE+Owo+ICsJCSNzaXplLWNlbGxzID0gPDE+Owo+ICsJCXJhbmdlczsKPiArCj4gKwkJ
cnBjX2NvbW06IHJwY0AyZjAwMCB7Cj4gKwkJCXJlZyA9IDwweDJmMDAwIDB4MTAwMD47Cj4gKwkJ
fTsKPiArCj4gKwkJcnBjX3JpbmdidWY6IHJwY0AxZmZlMDAwIHsKPiArCQkJcmVnID0gPDB4MWZm
ZTAwMCAweDQwMDA+Owo+ICsJCX07Cj4gKwo+ICsJCXRlZTogdGVlQDEwMTAwMDAwIHsKPiArCQkJ
cmVnID0gPDB4MTAxMDAwMDAgMHhmMDAwMDA+Owo+ICsJCQluby1tYXA7Cj4gKwkJfTsKPiArCX07
Cj4gKwo+ICAgCWNwdXMgewo+ICAgCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiAgIAkJI3NpemUt
Y2VsbHMgPSA8MD47CgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1h
eGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJm
ZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
