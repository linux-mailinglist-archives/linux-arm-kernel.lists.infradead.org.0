Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6681F1F5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 20:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0erd5n8/50Q1ZAc5JShnIvSUoBf6LE/fimDT19daWY=; b=tKa5iCq3MlGgRs
	crqPJ9XU/sOhuanThySl6Qy5uKdY6oVDxjS8hEH7fzOk6baDGJPkq0mwNq5v91y2GCsfIQbGZj8C6
	M/C0vy8yjTE3sk8L6AR+PZKAtvs8MrEJVFlCfqTaEzeszAKlU36yad6Pm8P2AF2bxwOpDdRArq7hu
	kXekbcr6D96DKKK8MbE76eD0+Vfd+OZVljo6Tzg1zSTBE58su/Pm50BvoSSaR3g5POsf0j9hItVZ5
	FlgnqaYSkrIk5CAJGK0cHFN9dJrPvwf3RM9ytjFPH+PuyS2Zf21x65qLwNAgV6B9Q7hmBRqfPInnS
	hOoP8CDvMYYJ4yTyUuLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMzp-0001ht-00; Mon, 08 Jun 2020 18:59:45 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiMzf-0001gH-4q
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 18:59:36 +0000
Received: by mail-qt1-x843.google.com with SMTP id y1so15568855qtv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 11:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=1LNXy0gulshDF6Am2ORMrlABkF4RBeFdpjJ6l6ghlxc=;
 b=XKzY/dMoRNR8g2sNEYdfjb4hTfUUulqOlT+yf47tp2KJzcr32jQMJqtK5NJop2cINl
 9Ebd8hsMhE+MWHwkXW/PjQHzQNVi+QxoJYp5ggn+JZbE6bIhHzJaCbg54yeBdVYaKhiU
 GLOT0fN/40VD6Gf5soYESTPoFMs5u410zhTCtMMxSiTNAF1IeqSGJW4F19rGX+ddm8Lh
 2XsHczdkDeRkyYoLm+k6ElJtv/2AnJKWR7j2B8380LonwThSgmeNaioKv+cKsl8yX/fK
 v69JfJPGaD79z/9nCqUM3LDP+XzmX2bnG5R8IMygXAh/DNaCOzAO7QTc8Jl1vn0W6Czd
 fQRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=1LNXy0gulshDF6Am2ORMrlABkF4RBeFdpjJ6l6ghlxc=;
 b=sgUoZx3XVeFKJgc6CFFcoNfVyH0G16ePq/VLSWXeckNCUVgwKLxs7A2OEicqa+h07U
 1e/EDiHh1+nGzZLKrgu4BWltSnVSOcOvS5pvBw9tJTotWJdx9VBgT9d+iYnaleUnh19T
 zSN8eL/LAhFHBUNqPDccvfz2HWPYsOnRnUdZMx7+WS89Z5N0xAJ+79K2DnwtYzHSBF0H
 JydlBRWf3f9dPRvgmuTFzZAsBI3Qi1P6qxhuRcUuBlxeOQDcHR0M43lovgRerJMOZ/nk
 ch0EiBzGMIGvBpiawR9hgb/BbeXL9oD0z4/aYQ2CYm6rEove8uwxbjDvw/XG5oY6978j
 yIJQ==
X-Gm-Message-State: AOAM531FV0XZaglsKQ+x4LZbRmNOQDVucVAYWGJoOtpMXAponO5JzRT6
 Iks+taGCXwzWRNhxjYPjJ1GVTg==
X-Google-Smtp-Source: ABdhPJzsZQLMeKY0DCqtO/KRhmtkfC5lUzy0bMjqjQup+oWO9tomqEZelGqLBLNBAwZlmugb1j09Jg==
X-Received: by 2002:ac8:7350:: with SMTP id q16mr24420939qtp.74.1591642773976; 
 Mon, 08 Jun 2020 11:59:33 -0700 (PDT)
Received: from skullcanyon
 (marriott-chateau-champlain-montreal.sites.intello.com. [66.171.169.34])
 by smtp.gmail.com with ESMTPSA id z194sm7357905qkb.73.2020.06.08.11.59.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 11:59:33 -0700 (PDT)
Message-ID: <f6d35521b61da395528d6dd1164a9af6c3acd664.camel@ndufresne.ca>
Subject: Re: [PATCH 1/5] media: videodev2: add Compressed Framebuffer pixel
 formats
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Neil Armstrong
 <narmstrong@baylibre.com>
Date: Mon, 08 Jun 2020 14:59:32 -0400
In-Reply-To: <2a0db0a4-9d04-f20c-39d8-ff25e07e64b7@xs4all.nl>
References: <20200604135317.9235-1-narmstrong@baylibre.com>
 <20200604135317.9235-2-narmstrong@baylibre.com>
 <02aa06fd8397b77c9a75d3a8399cb55d3b4d39c1.camel@ndufresne.ca>
 <4d22ff40-11ac-c77a-564d-af9a678f23af@baylibre.com>
 <a15dea55-3ca4-2a65-5c56-6c1edd2de405@xs4all.nl>
 <a4c5ae79-1d4d-4c1e-1535-c6c8b02d4b6f@baylibre.com>
 <2a0db0a4-9d04-f20c-39d8-ff25e07e64b7@xs4all.nl>
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_115935_252853_AF77C596 
X-CRM114-Status: GOOD (  31.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbHVuZGkgMDgganVpbiAyMDIwIMOgIDE2OjQzICswMjAwLCBIYW5zIFZlcmt1aWwgYSDDqWNy
aXQgOgo+IE9uIDA4LzA2LzIwMjAgMTY6MTQsIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+ID4gT24g
MDgvMDYvMjAyMCAxMToyNiwgSGFucyBWZXJrdWlsIHdyb3RlOgo+ID4gPiBPbiAwOC8wNi8yMDIw
IDEwOjE2LCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPiA+ID4gPiBIaSBOaWNvbGFzLAo+ID4gPiA+
IAo+ID4gPiA+IE9uIDA1LzA2LzIwMjAgMTc6MzUsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4g
PiA+ID4gPiBMZSBqZXVkaSAwNCBqdWluIDIwMjAgw6AgMTU6NTMgKzAyMDAsIE5laWwgQXJtc3Ry
b25nIGEgw6ljcml0IDoKPiA+ID4gPiA+ID4gRnJvbTogTWF4aW1lIEpvdXJkYW4gPG1qb3VyZGFu
QGJheWxpYnJlLmNvbT4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEFkZCB0d28gZ2VuZXJpYyBD
b21wcmVzc2VkIEZyYW1lYnVmZmVyIHBpeGVsIGZvcm1hdHMgdG8gYmUgdXNlZAo+ID4gPiA+ID4g
PiB3aXRoIGEgbW9kaWZpZXIgd2hlbiBpbXBvcnRlZCBiYWNrIGluIGFub3RoZXIgc3Vic3lzdGVt
IGxpa2UgRFJNL0tNUy4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFRoZXNlIHBpeGVsIGZvcm1h
dHMgcmVwcmVzZW50cyBnZW5lcmljIDhiaXRzIGFuZCAxMGJpdHMgY29tcHJlc3NlZCBidWZmZXJz
Cj4gPiA+ID4gPiA+IHdpdGggYSB2ZW5kb3Igc3BlY2lmaWMgbGF5b3V0Lgo+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gVGhlc2UgYXJlIGFsaWduZWQgd2l0aCB0aGUgRFJNX0ZPUk1BVF9ZVVY0MjBf
OEJJVCBhbmQgRFJNX0ZPUk1BVF9ZVVY0MjBfMTBCSVQKPiA+ID4gPiA+ID4gdXNlZCB0byBkZXNj
cmliZSB0aGUgdW5kZXJseWluZyBjb21wcmVzc2VkIGJ1ZmZlcnMgdXNlZCBmb3IgQVJNIEZyYW1l
YnVmZmVyCj4gPiA+ID4gPiA+IENvbXByZXNzaW9uLiBJbiB0aGUgQW1sb2dpYyBjYXNlLCB0aGUg
Y29tcHJlc3Npb24gaXMgZGlmZmVyZW50IGJ1dCB0aGUKPiA+ID4gPiA+ID4gdW5kZXJseWluZyBi
dWZmZXIgY29tcG9uZW50cyBpcyB0aGUgc2FtZS4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IE1heGltZSBKb3VyZGFuIDxtam91cmRhbkBiYXlsaWJyZS5jb20+Cj4gPiA+
ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJl
LmNvbT4KPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ICBkcml2ZXJzL21lZGlhL3Y0bDItY29y
ZS92NGwyLWlvY3RsLmMgfCAyICsrCj4gPiA+ID4gPiA+ICBpbmNsdWRlL3VhcGkvbGludXgvdmlk
ZW9kZXYyLmggICAgICAgfCA5ICsrKysrKysrKwo+ID4gPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2Vk
LCAxMSBpbnNlcnRpb25zKCspCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1pb2N0bC5jIGIvZHJpdmVycy9tZWRpYS92NGwy
LWNvcmUvdjRsMi1pb2N0bC5jCj4gPiA+ID4gPiA+IGluZGV4IDIzMjJmMDhhOThiZS4uOGYxNGFk
ZmQ1YmM1IDEwMDY0NAo+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92
NGwyLWlvY3RsLmMKPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRs
Mi1pb2N0bC5jCj4gPiA+ID4gPiA+IEBAIC0xNDQ3LDYgKzE0NDcsOCBAQCBzdGF0aWMgdm9pZCB2
NGxfZmlsbF9mbXRkZXNjKHN0cnVjdCB2NGwyX2ZtdGRlc2MgKmZtdCkKPiA+ID4gPiA+ID4gIAkJ
Y2FzZSBWNEwyX1BJWF9GTVRfUzVDX1VZVllfSlBHOglkZXNjciA9ICJTNUM3M01YIGludGVybGVh
dmVkIFVZVlkvSlBFRyI7IGJyZWFrOwo+ID4gPiA+ID4gPiAgCQljYXNlIFY0TDJfUElYX0ZNVF9N
VDIxQzoJZGVzY3IgPSAiTWVkaWF0ZWsgQ29tcHJlc3NlZCBGb3JtYXQiOyBicmVhazsKPiA+ID4g
PiA+ID4gIAkJY2FzZSBWNEwyX1BJWF9GTVRfU1VOWElfVElMRURfTlYxMjogZGVzY3IgPSAiU3Vu
eGkgVGlsZWQgTlYxMiBGb3JtYXQiOyBicmVhazsKPiA+ID4gPiA+ID4gKwkJY2FzZSBWNEwyX1BJ
WF9GTVRfWVVWNDIwXzhCSVQ6CWRlc2NyID0gIkNvbXByZXNzZWQgWVVWIDQ6MjowIDgtYml0IEZv
cm1hdCI7IGJyZWFrOwo+ID4gPiA+ID4gPiArCQljYXNlIFY0TDJfUElYX0ZNVF9ZVVY0MjBfMTBC
SVQ6CWRlc2NyID0gIkNvbXByZXNzZWQgWVVWIDQ6MjowIDEwLWJpdCBGb3JtYXQiOyBicmVhazsK
PiA+IAo+ID4gWy4uXQo+ID4gCj4gPiA+ID4gPiBJJ2xsIHJlbWluZCB0aGF0IHRoZSBtb2RpZmll
ciBpbXBsZW1lbnRhdGlvbiBoYXMgZ3JlYXQgdmFsdWUgYW5kIGlzCj4gPiA+ID4gPiBtdWNoIG1v
cmUgc2NhbGFibGUgdGhlbiB0aGUgY3VycmVudCBWNEwyIGFwcHJvYWNoLiBUaGVyZSBoYXMgYmVl
biBzb21lCj4gPiA+ID4gPiBlYXJseSBwcm9wb3NhbCBmb3IgdGhpcywgbWF5YmUgaXQncyB0aW1l
IHRvIHByaW9yaXRpemUgYmVjYXVzZSB0aGlzCj4gPiA+ID4gPiBsaXN0IHdpbGwgc3RhcnRzIGdy
b3dpbmcgd2l0aCBodW5kcmVkIG9yIGV2ZW4gdGhvdXNhbmRzIG9yIGZvcm1hdCwKPiA+ID4gPiA+
IHdoaWNoIGlzIGNsZWFybHkgaW5kaWNhdGVkIGJ5IHRoZSBpbmNyZWFzZSBvZiBtb2RpZmllciBn
ZW5lcmF0b3IgbWFjcm8KPiA+ID4gPiA+IG9uIHRoZSBEUk0gc2lkZS4KPiA+ID4gPiAKPiA+ID4g
PiBZZXMsIGJ1dCB1bnRpbCB0aGUgbWlncmF0aW9uIG9mIGRybV9mb3VyY2MgYW5kIHY0bDIgZm91
cmNjIGludG8gYSBjb21tb24gb25lCj4gPiA+ID4gaXMgZGVjaWRlZCwgSSdtIHN0dWNrIGFuZCB0
aGlzIGlzIHRoZSBvbmx5IGludGVybWVkaWF0ZSBzb2x1dGlvbiBJIGZvdW5kLgo+ID4gPiAKPiA+
ID4gV2UgY2FuIHNhZmVseSBhc3N1bWUgdGhhdCBkcm0gZm91cmNjIGFuZCB2NGwyIGZvdXJjYyB3
b24ndCBiZSBtZXJnZWQuCj4gPiA+IAo+ID4gPiBUaGVyZSBpcyB0b28gbXVjaCBkaXZlcmdlbmNl
IGFuZCBub3QgZW5vdWdoIGludGVyZXN0IGluIGNyZWF0aW5nIGNvbW1vbgo+ID4gPiBmb3VyY2Nz
Lgo+ID4gPiAKPiA+ID4gQnV0IHdlICpkbyogd2FudCB0byBzaGFyZSB0aGUgbW9kaWZpZXJzLgo+
ID4gPiAKPiA+ID4gPiBXZSBoYXZlIGEgd29ya2luZyBzb2x1dGlvbiB3aXRoIEJvcmlzJ3MgcGF0
Y2hzZXQgd2l0aCBleHRfZm10IHBhc3NpbmcgdGhlCj4gPiA+ID4gbW9kaWZpZXIgdG8gdXNlci1z
cGFjZS4KPiA+ID4gPiAKPiA+ID4gPiBidXQgYW55d2F5LCBzaW5jZSB0aGUgZ29hbCBpcyB0byBt
ZXJnZSB0aGUgZm91cmNjIGJldHdlZW4gRFJNICYgVjRMMiwgdGhlc2UgWVVWNDIwXypCSVQKPiA+
ID4gPiB3aWxsIHN0aWxsIGJlIG5lZWRlZCBpZiB3ZSBwYXNzIHRoZSBtb2RpZmllciB3aXRoIGFu
IGV4dGVuZGVkIGZvcm1hdCBzdHJ1Y3QuCj4gPiA+IAo+ID4gPiBXZSB0cmllZCBtZXJnaW5nIGZv
dXJjY3MgYnV0IHRoYXQgcmFuIGludG8gcmVzaXN0YW5jZS4gRnJhbmtseSwgSSB3b3VsZG4ndAo+
ID4gPiBib3RoZXIgd2l0aCB0aGlzLCBpdCBpcyBtdWNoIGVhc2llciB0byBqdXN0IGNyZWF0ZSBh
IGNvbnZlcnNpb24gdGFibGUgaW4gdGhlCj4gPiA+IGtlcm5lbCBkb2NzLgo+ID4gPiAKPiA+ID4g
U28gZG9uJ3QgYmxvY2sgb24gdGhpcywgSSB3b3VsZCByZWFsbHkgcHJlZmVyIGlmIHRoZSBleHRf
Zm10IHNlcmllcyBpcyBwaWNrZWQKPiA+ID4gdXAgYWdhaW4gYW5kIHJlYmFzZWQgYW5kIHJlcG9z
dGVkIGFuZCB0aGVuIHdvcmtlZCBvbi4gVGhlIHN0YXRlbGVzcyBjb2RlYyBzdXBwb3J0Cj4gPiA+
IGlzIHRha2luZyBsZXNzIHRpbWUgKGl0J3Mgc2hhcGluZyB1cCB3ZWxsKSBzbyB0aGVyZSBpcyBt
b3JlIHRpbWUgdG8gd29yayBvbiB0aGlzLgo+ID4gCj4gPiBPaywgSSBhbHJlYWR5IHN0YXJ0aW5n
IGRpc2N1c3Npbmcgd2l0aCBIZWxlbiBLb2lrZSBhYm91dCB0aGUgZXh0X2ZudCByZS1zcGluLgo+
ID4gCj4gPiBTaG91bGQgSSByZS1pbnRyb2R1Y2UgZGlmZmVyZW50IHY0bDIgcGl4Zm10IGZvciB0
aGVzZSBEUk0gWVVWNDIwXypCSVQgb3IgSSBjYW4ga2VlcCB0aGlzCj4gPiBwYXRjaCBhbG9uZyB0
aGUgbmV3IGV4dF9mbXQgYW5kIHNoYXJlZCBtb2RpZmllcnMgPwo+IAo+IFNvIHRvIGJlIGNsZWFy
IHRoZSBEUk1fRk9STUFUX1lVVjQyMF84QklULzEwQklUIGZvdXJjY3MgZGVmaW5lIHRoYXQgdGhp
cyBpcyBhCj4gYnVmZmVyIGNvbnRhaW5pbmcgY29tcHJlc3NlZCBZVVY0MjAgaW4gOCBvciAxMCBi
aXQgYW5kIHRoZSBtb2RpZmllciB0ZWxscyB1c2Vyc3BhY2UKPiB3aGljaCBjb21wcmVzc2lvbiBp
cyB1c2VkLCByaWdodD8KPiAKPiBBbmQgd2Ugd291bGQgYWRkIFY0TDJfUElYX0ZNVF9ZVVY0MjBf
OEJJVC9fMTBCSVQgdGhhdCwgSSBhc3N1bWUsIHVzZSB0aGUgc2FtZQo+IGZvdXJjYyB2YWx1ZXMg
YXMgdGhlIERSTSB2YXJpYW50cz8KPiAKPiBTaW5jZSB0aGVzZSBmb3VyY2NzIGFyZSBiYXNpY2Fs
bHkgdXNlbGVzcyB3aXRob3V0IFY0TDIgbW9kaWZpZXIgc3VwcG9ydCBpdCB3b3VsZAo+IG9ubHkg
bWFrZSBzZW5zZSBpbiBjb21iaW5hdGlvbiB3aXRoIHRoZSBleHRfZm10IHNlcmllcy4KCkkgcGVy
c29uYWxseSBzdGlsbCB0aGluayB0aGF0IGFkZGluZyB0aGVzZSBmb3VyY2Mgd2lsbCBqdXN0IGNy
ZWF0ZSBhCnNvdXJjZSBvZiBjb25mdXNpb24gYW5kIHRoYXQgZm91cmNjIHNob3VsZCBub3QgYmUg
dHJpZWQgdG8gYmUgbWF0Y2hlZAphdCB0aGUgY29zdCBvZiB0cmlwbGluZyB0aGUgYWxyZWFkeSBk
dXBsaWNhdGVkIHBpeGVsIGZvcm1hdHMuIFVzZXJzcGFjZQphbHJlYWR5IG5lZWQgdG8gaW1wbGVt
ZW50IHRyYW5zbGF0aW9uIGFueXdheS4KCk9uIERSTSBzaWRlLCBuZXcgZm91cmNjIHdhcyBub3Qg
Y3JlYXRlIGZvciBOVjEyK21vZGlmaWVyLCBJIGRvbid0IHNlZQp3aHkgcGxhbmFyIFlVVjQyMCBo
YXMgdG8gYmUgZGlmZmVyZW50LCB3aXRoIG9yIHdpdGhvdXQgZXh0X2ZtdC4KCk5pY29sYXMKIAo+
IAo+IFJlZ2FyZHMsCj4gCj4gCUhhbnMKPiAKPiA+IE5laWwKPiA+IAo+ID4gPiBJIGJlbGlldmUg
d2UgcmVhbGx5IG5lZWQgdGhpcyBzaW5jZSB2NGwyX2J1ZmZlciBhbmQgdjRsMl9mb3JtYXQgYXJl
IGEgcmVhbCBtZXNzLgo+ID4gPiAKPiA+ID4gUmVnYXJkcywKPiA+ID4gCj4gPiA+IAlIYW5zCj4g
PiA+IAo+ID4gPiA+ID4gPiAgCQlkZWZhdWx0Ogo+ID4gPiA+ID4gPiAgCQkJaWYgKGZtdC0+ZGVz
Y3JpcHRpb25bMF0pCj4gPiA+ID4gPiA+ICAJCQkJcmV0dXJuOwo+ID4gPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L3ZpZGVvZGV2Mi5oIGIvaW5jbHVkZS91YXBpL2xpbnV4
L3ZpZGVvZGV2Mi5oCj4gPiA+ID4gPiA+IGluZGV4IGMzYTFjZjFjNTA3Zi4uOTBiOTk0OWFjYjhh
IDEwMDY0NAo+ID4gPiA+ID4gPiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmgK
PiA+ID4gPiA+ID4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L3ZpZGVvZGV2Mi5oCj4gPiA+ID4g
PiA+IEBAIC03MDUsNiArNzA1LDE1IEBAIHN0cnVjdCB2NGwyX3BpeF9mb3JtYXQgewo+ID4gPiA+
ID4gPiAgI2RlZmluZSBWNEwyX1BJWF9GTVRfRldIVCAgICAgdjRsMl9mb3VyY2MoJ0YnLCAnVycs
ICdIJywgJ1QnKSAvKiBGYXN0IFdhbHNoIEhhZGFtYXJkIFRyYW5zZm9ybSAodmljb2RlYykgKi8K
PiA+ID4gPiA+ID4gICNkZWZpbmUgVjRMMl9QSVhfRk1UX0ZXSFRfU1RBVEVMRVNTICAgICB2NGwy
X2ZvdXJjYygnUycsICdGJywgJ1cnLCAnSCcpIC8qIFN0YXRlbGVzcyBGV0hUICh2aWNvZGVjKSAq
Lwo+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ICsvKgo+ID4gPiA+ID4gPiArICogQ29tcHJlc3Nl
ZCBMdW1pbmFuY2UrQ2hyb21pbmFuY2UgbWV0YS1mb3JtYXRzCj4gPiA+ID4gPiA+ICsgKiBJbiB0
aGVzZSBmb3JtYXRzLCB0aGUgY29tcG9uZW50IG9yZGVyaW5nIGlzIHNwZWNpZmllZCAoWSwgZm9s
bG93ZWQgYnkgVQo+ID4gPiA+ID4gPiArICogdGhlbiBWKSwgYnV0IHRoZSBleGFjdCBMaW5lYXIg
bGF5b3V0IGlzIHVuZGVmaW5lZC4KPiA+ID4gPiA+ID4gKyAqIFRoZXNlIGZvcm1hdHMgY2FuIG9u
bHkgYmUgdXNlZCB3aXRoIGEgbm9uLUxpbmVhciBtb2RpZmllci4KPiA+ID4gPiA+ID4gKyAqLwo+
ID4gPiA+ID4gPiArI2RlZmluZSBWNEwyX1BJWF9GTVRfWVVWNDIwXzhCSVQJdjRsMl9mb3VyY2Mo
J1knLCAnVScsICcwJywgJzgnKSAvKiAxLXBsYW5lIFlVViA0OjI6MCA4LWJpdCAqLwo+ID4gPiA+
ID4gPiArI2RlZmluZSBWNEwyX1BJWF9GTVRfWVVWNDIwXzEwQklUCXY0bDJfZm91cmNjKCdZJywg
J1UnLCAnMScsICcwJykgLyogMS1wbGFuZSBZVVYgNDoyOjAgMTAtYml0ICovCj4gPiA+ID4gPiA+
ICsKPiA+ID4gPiA+ID4gIC8qICBWZW5kb3Itc3BlY2lmaWMgZm9ybWF0cyAgICovCj4gPiA+ID4g
PiA+ICAjZGVmaW5lIFY0TDJfUElYX0ZNVF9DUElBMSAgICB2NGwyX2ZvdXJjYygnQycsICdQJywg
J0knLCAnQScpIC8qIGNwaWExIFlVViAqLwo+ID4gPiA+ID4gPiAgI2RlZmluZSBWNEwyX1BJWF9G
TVRfV05WQSAgICAgdjRsMl9mb3VyY2MoJ1cnLCAnTicsICdWJywgJ0EnKSAvKiBXaW5ub3YgaHcg
Y29tcHJlc3MgKi8KPiA+ID4gPiAKPiA+ID4gPiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy83MzcyMi8jcmV2Nwo+ID4gPiA+IAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
