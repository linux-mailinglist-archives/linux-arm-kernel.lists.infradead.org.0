Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BFEFD236
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 02:08:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohc85SD3fUaNJcppGx0sinKS0c+ofpQxbHnuMZW7aBg=; b=pMYtWXm1IPq2Wm
	Ho8AiJ8mitL8ffjwy19wBKIe9edNLf7BzTkF3n+xALOaUwiKVW412R1dZaOuZEgS9ykxjzU3aY/13
	0hJqL8vX/vcxchvclGShoWehgkWzMh1xqAhO+ljDujuYFOsVN6fzxnhuIF5s9VtTn0O6GPZuIjno5
	rKlEjuOEOY3S/MDR54FFLWCDaxpZfuCacBCZIzfWeCaMJzFoKleKk58AcYmOsZBP/o0/yZB2qqry+
	jFcCdSfP6LOmupl4TiuxtFcecvhxaNp3wrpLH+FOmCxvpvvnqcY5Ag8noxUKqxg8hAZe/FqU6uug9
	Kc/BLee8no4meZTFTsTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVQ6N-0007kT-QR; Fri, 15 Nov 2019 01:08:43 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVQ6F-0007k7-Dg; Fri, 15 Nov 2019 01:08:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DDE13AEAB;
 Fri, 15 Nov 2019 01:08:33 +0000 (UTC)
Subject: Re: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
To: James Tai <james.tai@realtek.com>
References: <43B123F21A8CFE44A9641C099E4196FFCF91BEFA@RTITMBSVM04.realtek.com.tw>
 <25fdd8eb-f1a0-82ae-9c4b-22325b163b0e@suse.de>
 <43B123F21A8CFE44A9641C099E4196FFCF920024@RTITMBSVM04.realtek.com.tw>
 <7a05ac2c-00bc-b2ac-0a33-be0242d33188@suse.de>
 <309cd67da48e4702ae3dcc4ca8ab4309@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <279fd3a3-17dc-5796-f0b0-e39eb919081f@suse.de>
Date: Fri, 15 Nov 2019 02:08:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <309cd67da48e4702ae3dcc4ca8ab4309@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_170835_604963_2F2264FA 
X-CRM114-Status: GOOD (  11.53  )
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

SGkgSmFtZXMsCgpBbSAxMS4xMS4xOSB1bSAwMzo1OCBzY2hyaWViIEphbWVzIFRhaToKPj4gSG93
IG11Y2g/IE1vcmUgdGhhbiAweDk4MDAwMDAwPyBUaGUgUlREMTM5NSBkYXRhc2hlZXQgc2F5cyB1
cCB0byA0IEdCIC0KPj4gZG9lcyB0aGF0IG1lYW4gaXQgY29udGludWVzIGluIGEgc2Vjb25kIHJl
Z2lvbiBiZXlvbmQgMHhmZmZmZmZmZj8gVGhvc2UKPj4gbG9jYXRpb25zIHNob3VsZCBiZSBleGNs
dWRlZCBpbiB0aGUgc29jIG5vZGUgcmFuZ2VzICh3aGljaCB5b3Ugc2FkbHkgYXBwZWFyIHRvCj4+
IGhhdmUgZHJvcHBlZCBpbiB2MikuCj4gCj4gU29ycnkgZm9yIG15IG1pc3VuZGVyc3RhbmRpbmcu
IFRoZSBSQU0gcmVnaW9uIGRvbid0IHJlcXVpcmUgCj4gdHdvIGNlbGxzIGZvciBtZW1vcnkgbm9k
ZXMsIHNvIEknbGwgZml4IGl0IGluIHYzIHBhdGNoLgoKU2hvdWxkIEkgdGhlbiBhbHNvIGNoYW5n
ZSBSVEQxMzk1IHRvIHVzZSBvbmx5IG9uZSBjZWxsLCBvciBkb2VzIGl0CnN1cHBvcnQgbW9yZSBS
QU0gdGhhbiBSVEQxNjE5PwoKQnkgbXkgY2FsY3VsYXRpb24gMHg5ODAwMDAwMCBpcyBsZXNzIHRo
YW4gMi40IEdpQiEgU28sIGRvZXMgUkFNIGNvbnRpbnVlCmJldHdlZW4gci1idXMgYW5kIEdJQywg
c2ltaWxhciB0byBob3cgaXQgZG9lcyBvbiBSVEQxMTk1PyBUaGVuIHdlIG5lZWQKdG8gZXhjbHVk
ZSB0aG9zZSBSQU0gcmFuZ2VzIGZyb20gdGhlIFNvQyBub2RlIChhZGp1c3RpbmcgMHg2ODAwMDAw
MCkuCgpSZWdhcmRzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFu
eSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXgg
SW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
