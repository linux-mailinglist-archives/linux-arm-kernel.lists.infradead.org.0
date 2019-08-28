Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E87E59FC47
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNYIgovFyl2yYjIC0xW9Zwtk5giXSNZCNWxU6d/Sv60=; b=M27wDSdDCyiyOi
	Doo7yhSD+fSH7Pxob+uHat1aRaZrWZVXmIytzB7OW3sQ8X6e4UMnjB+JAWnwgstET3R0YTUpb6srn
	wnhDeLXeINwm0utYBzYrXMle8/bk2RTFgS0x1IBsRHkOdVZSwnMCQWk3JOjufyGNwMjKEeWKnc6QV
	L+1xrj7QTPrCRfhVdlEGbvbssCgnYyNNtdJ15hUOCV9A0RieHlPmRn6U1oRiBLiVHg64xRiHlyedc
	f8F38s+S6fOc8AD56YFwek1z62VXb03vbkRSctSq8dWZGBLNLS3gfLuEGNAvASpkAsOnAS3GL7IN1
	7TrCSbFqftNh8fM27KRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2so1-0002Aa-Mw; Wed, 28 Aug 2019 07:55:49 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2snW-0002A7-Bt
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:55:20 +0000
Received: by mail-oi1-x242.google.com with SMTP id l2so1408543oil.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 00:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QGf5uExDLqVSJFepg+5EOK0njK0xgdtyZsXSdS638Is=;
 b=RQZ1DIRip5iFVGB1jBJbo7s3cIvEnWa5dQY/G/eK4GTRkLuPTK2DZMl+Jh2AinnwYD
 cBLb2XIWRMmRlxHTMUN9vB9IdTsK/W4Wd97XkHCgwSmR0FY1HewwY0kZHgjofcA8cPDM
 bEIjgaNjTLgj5eTtdQI07MU2xj7Fck8WScdaYW4Sid7H/CU9ZnYDXwRV3E3B+FvTbtmq
 O/3BMVFNOJgLzhGNFcgfoYj75hJhe57SJM5TkiV05F+3GtuwSxSGFoAGWMnx8DDhWSQ0
 7ZkuGYcG/U5BZGtq53ZrCdnD5fPIbdnJbqABFhQDFBLSvTeNHvAdNSd9ZZQ0SlqbzF7S
 IqQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QGf5uExDLqVSJFepg+5EOK0njK0xgdtyZsXSdS638Is=;
 b=OqE6qF1MY9DIvPvFOEG3d1UuxQVDq9mWIhYQtUhF6bZZ5YXSEUnfUSSu17Chnu7jzf
 aY2B79VVJ9g3uPGjBoCZ0cQRSo0jOd5FtDt3JayYNcKbXs9nwHszj1xJ0CTvQ3QuCadz
 w8Gve5R+4U/BR6hdjsaOigvEqFwQwGMbfXthyDOfKWvc4d9Sf6tg3DOvwfy7qfqmBCxv
 3fT49ALTASnncpcxRsXMNw7hzfAPYGBa/k/MDxuvte8KJmIY5mBdtqBWnsbQbf8d/A4E
 h6f00r6UogIR2pwR8IqwvCbQcAYyVJAesZfURJZsBPUSZh38Mkn1FqUjHjxLG31gAxv6
 8VIg==
X-Gm-Message-State: APjAAAV4xMHMs0wmZwkOud1uD0ZvkZBN+i++64GgeMWNVsWnBjPf1o+P
 3ALrzlEWWFY9UL+H4eKgCInP52cXYEtwBTN7mZCKtg==
X-Google-Smtp-Source: APXvYqxfuRjsm98zALpH9qES7Ui44tXIsVlQP5NaBZKe/uP0yYHdn/6rR/wrfjhEuycjLFIH4qH5636ewokO2qDfWtE=
X-Received: by 2002:aca:5652:: with SMTP id k79mr1817021oib.175.1566978912617; 
 Wed, 28 Aug 2019 00:55:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190725131257.6142-1-brgl@bgdev.pl>
 <CAK8P3a1FXyRRi5q48h-=egFjgoRJvy6_zuO9MQaAOMA-bsJKRA@mail.gmail.com>
 <CAMRc=Me_7aw_RvU_tZnVUgduN2wWYGqJ7hQirQ2RLzxGiPujvQ@mail.gmail.com>
 <CAMRc=MdCviMA4gakqFS3+F-nU2XkdmmZbCb-m1mBJdGRHufKGg@mail.gmail.com>
 <27eb964a-bc6c-3a0d-c2c4-48e908465986@ti.com>
In-Reply-To: <27eb964a-bc6c-3a0d-c2c4-48e908465986@ti.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 28 Aug 2019 09:55:01 +0200
Message-ID: <CAMpxmJX7osgdzx1Lc=627RpHZDs+ha8a6=AnhaQJ5HkLVp-xKg@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] ARM: make DaVinci part of the ARM v5 multiplatform
 build
To: Sekhar Nori <nsekhar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_005518_412030_2B805707 
X-CRM114-Status: GOOD (  23.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Lechner <david@lechnology.com>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xZtyLiwgMjggc2llIDIwMTkgbyAwOTo0NCBTZWtoYXIgTm9yaSA8bnNla2hhckB0aS5jb20+IG5h
cGlzYcWCKGEpOgo+Cj4gT24gMjgvMDgvMTkgMTowMyBQTSwgQmFydG9zeiBHb2xhc3pld3NraSB3
cm90ZToKPiA+IHBvbi4sIDUgc2llIDIwMTkgbyAxMDozMSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
cmdsQGJnZGV2LnBsPiBuYXBpc2HFgihhKToKPiA+Pgo+ID4+IGN6dy4sIDI1IGxpcCAyMDE5IG8g
MTY6NTcgQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4gbmFwaXNhxYIoYSk6Cj4gPj4+Cj4g
Pj4+IE9uIFRodSwgSnVsIDI1LCAyMDE5IGF0IDM6MTMgUE0gQmFydG9zeiBHb2xhc3pld3NraSA8
YnJnbEBiZ2Rldi5wbD4gd3JvdGU6Cj4gPj4+Pgo+ID4+Pj4gRnJvbTogQmFydG9zeiBHb2xhc3pl
d3NraSA8YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbT4KPiA+Pj4+Cj4gPj4+PiBUaGlzIHNlcmll
cyBtYWtlcyBEYVZpbmNpIHBhcnQgb2YgdGhlIG11bHRpcGxhdGZvcm0gYnVpbGQgZm9yIEFSTSB2
NS4KPiA+Pj4+Cj4gPj4+PiBGaXJzdCB0aHJlZSBwYXRjaGVzIGZpeCBidWlsZCBlcnJvcnMgc3Bv
dHRlZCBhbmQgZml4ZWQgYnkgQXJuZCB3aXRoIHYxLgo+ID4+Pj4KPiA+Pj4+IFRoZSBmb3VydGgg
cGF0Y2ggYWRkcyBuZWNlc3NhcnkgYml0cyBhbmQgcGllY2VzIGZvciBkYXZpbmNpIHRvIHN1cHBv
cnQKPiA+Pj4+IG11bHRpcGxhdGZvcm0gYnVpbGQgYW5kIHRoZSBsYXN0IG9uZSBhY3R1YWxseSBh
ZGRzIGFsbCBkYXZpbmNpIGJvYXJkcwo+ID4+Pj4gdG8gbXVsdGlfdjVfZGVmY29uZmlnLgo+ID4+
Pj4KPiA+Pj4+IFRlc3RlZCBvbiBkYTg1MC1sY2RrIHdpdGggYm90aCBtdWx0aV92NSBhcyB3ZWxs
IGFzIGRhdmluY2lfYWxsIGRlZmNvbmZpZ3MuCj4gPj4+Pgo+ID4+Pj4gdjEgLT4gdjI6Cj4gPj4+
PiAtIGFkZGVkIHBhdGNoZXMgZnJvbSBBcm5kIHRoYXQgZml4IGJ1aWxkIGVycm9ycyBzcG90dGVk
IHdoZW4gYnVpbGRpbmcKPiA+Pj4+ICAgcmFuZG9tIGNvbmZpZ3VyYXRpb25zIChtdWNoIGFwcHJl
Y2lhdGVkKQo+ID4+Pj4gLSByZWJhc2VkIG9uIHRvcCBvZiB2NS4zLXJjMQo+ID4+Pgo+ID4+Pj4g
QXJuZCBCZXJnbWFubiAoMyk6Cj4gPj4+PiBzdGFnaW5nOiBtZWRpYS9kYXZpbmNpX3ZwZmU6IGZp
eCBwaW5tdXggc2V0dXAgY29tcGlsYXRpb24KPiA+Pj4+ICBtZWRpYTogZGF2aW5jaS12cGJlOiBy
ZW1vdmUgb2Jzb2xldGUgaW5jbHVkZXMKPiA+Pj4+ICBkYXZpbmNpOiBmaXggc2xlZXAuUyBidWls
ZCBlcnJvciBvbiBBUk12NAo+ID4+Pj4KPiA+Pj4+IEJhcnRvc3ogR29sYXN6ZXdza2kgKDIpOgo+
ID4+Pj4gIEFSTTogZGF2aW5jaTogc3VwcG9ydCBtdWx0aXBsYXRmb3JtIGJ1aWxkIGZvciBBUk0g
djUKPiA+Pj4+ICBBUk06IG11bHRpX3Y1X2RlZmNvbmZpZzogbWFrZSBEYVZpbmNpIHBhcnQgb2Yg
dGhlIEFSTSB2NSBtdWx0aXBsYXRmb3JtIGJ1aWxkCj4gPj4+Cj4gPj4+Cj4gPj4+IFRoYW5rcyBh
IGxvdCBmb3IgcmVwb3N0aW5nIHRoZSBzZXJpZXMhCj4gPj4+Cj4gPj4+IEkgd29uZGVyIGhvdyB3
ZSBzaG91ZCBkZWFsIHdpdGggdGhlIGRlcGVuZGVuY2llcyBub3cgdGhhdCB0aGUgdHdvIG1lZGlh
Cj4gPj4+IHBhdGNoZXMgZ290IG1lcmdlZCBpbiB0aGUgbGludXgtbWVkaWEgdHJlZS4KPiA+Pj4K
PiA+Pj4gSXQgd291bGQgYmUgdGVtcHRpbmcgdG8ganVzdCBtZXJnZSB0aGUgYXJjaC9hcm0vIGNo
YW5nZXMsIGJ1dCB0aGF0IGNyZWF0ZXMKPiA+Pj4gYSBiaXNlY3Rpb24gcHJvYmxlbSB3aGVuIHRo
ZSB2cGJlIGRyaXZlciBpcyBlbmFibGVkLiBJIGRvbid0IGNhcmUKPiA+Pj4gYWJvdXQgdGhlIHN0
YWdpbmcgZHJpdmVyIHJlYWxseSBhcyB0aGF0IG9uZSBpcyBicm9rZW4gYW55d2F5LCBidXQgaW5j
bHVkaW5nCj4gPj4+IHRoZSAibWVkaWE6IGRhdmluY2ktdnBiZTogcmVtb3ZlIG9ic29sZXRlIGlu
Y2x1ZGVzIiBmaXggd291bGQgYmUgYmV0dGVyCj4gPj4+IGhlcmUuCj4gPj4+Cj4gPj4+IE1hdXJv
LCBhbnkgaWRlYSBmb3IgaG93IHRvIGhhbmRsZSB0aGF0PyBTaG91bGQgd2UgYXBwbHkgYW4gaWRl
bnRpY2FsCj4gPj4+IHBhdGNoIHRvIHRoZSBkYXZpbmNpIHRyZWUsIG9yIG1heWJlIG9ubHkgaGF2
ZSBpdCB0aGUgQVJNIHRyZWUgYW5kIHlvdQo+ID4+PiBkcm9wIGl0IGZyb20geW91ciB0cmVlIChJ
IGRvbid0IGtub3cgaWYgeW91IGhhdmUgYSBydWxlIGFnYWluc3QgcmViYXNpbmcpLgo+ID4+PiBT
b3JyeSBmb3Igbm90IGNvb3JkaW5hdGluZyB3aXRoIEJhcnRvc3ogYmVmb3JlIEkgc2VudCB0aGUg
cGF0Y2ggYWdhaW4KPiA+Pj4gZWFybGllciB0aGlzIHdlZWsuCj4gPj4+Cj4gPj4+Cj4gPj4+ICAg
ICAgIEFybmQKPiA+Pgo+ID4+IEhpIEFybmQsCj4gPj4KPiA+PiBpcyB0aGVyZSBhbnkgYWN0aW9u
IHJlcXVpcmVkIGZyb20gbWUgZm9yIHRoaXMgc2VyaWVzPwo+ID4+Cj4gPj4gQmFydAo+ID4KPiA+
IFBpbmcuCj4KPiBJIGRvbnQgdGhpbmsgdGhlIG11bHRpLXBsYXRmb3JtIHBhcnRzIGNhbiBiZSBt
ZXJnZWQgaW4gdjUuNCBzaW5jZSB3ZQo+IGRvbnQgaGF2ZSBETTM2NSBjb252ZXJ0ZWQgc3VjY2Vz
c2Z1bGx5IHRvIHVzZSBjbG9ja3NvdXJjZSBkcml2ZXIgeWV0Lgo+Cj4gQnV0IG90aGVyIHBhcnRz
IG9mIHRoZSBzZXJpZXMgY2FuIGJlIG1lcmdlZCBhbmQgaG9wZWZ1bGx5IHdlIHJlc29sdmUKPiB0
aGF0IHBlbmRpbmcgaXNzdWUgZm9yIHY1LjUKPgo+IFRoYW5rcywKPiBTZWtoYXIKCkFjdHVhbGx5
IEkgdGVzdGVkIHRoaXMgd2l0aG91dCB0aGUgY2xvY2tzb3VyY2UgY29udmVyc2lvbiBhbmQgaXQg
d29ya3MKLSB0aGUgcHJldmlvdXMgZHJpdmVyIHN0aWxsIHNlbGVjdHMgcmVsZXZhbnQgY29uZmln
IG9wdGlvbnMuIEJ1dCBJCnRoaW5rIHlvdSdyZSByaWdodCAtIGl0J3Mgd29ydGggcGlja2luZyB1
cCBhbGwgdGhlIGJ1ZyBmaXhlcyBmcm9tIHRoaXMKc2VyaWVzIGFuZCB0aGVuIG1lcmdpbmcgdGhl
IHJlc3Qgb25jZSBkbTM2NSBpc3N1ZSBpcyBmaXhlZC4KCkJhcnQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
