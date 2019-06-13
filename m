Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4799D44AF1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 20:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivCJdL5akyMEtumwRXZC0siSuKMIW6soGy0ifE2imHI=; b=ISmBLEXxKw9xxY
	yKXNrPyFsIh0j/qoAXXJE4u38GTlCNJ0gn+YX/Qw8peBxbsFTAzXBbSIxAZotLxXhCkQm8KKSEwxe
	94f6vD4NImprVUMqxHL747/2mG/Hj/30JX0lFoBlwSH9NJ2hobqsTSGbXp29L2yqAeAQb6u2kAvsL
	h1bglR9lY+lvkHPFrUafbvBcmUBuyZ4rlTEiK8TieYvidxkUU1LrE2RnlP4UgF9ZPoxvmm64t2Mq3
	DZK/MAaXQbGrcXi+kghcnCL2ETfxIMpyliCn9HijrzEOXx/7r1jboTL+2QHmGSrnaXW5WoOs2SwRY
	BlxoaQdIpu3geY5dIF5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbUhD-0001dj-Qu; Thu, 13 Jun 2019 18:43:35 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbUh5-0001dK-Gz
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 18:43:28 +0000
Received: by mail-qk1-f196.google.com with SMTP id c70so37731qkg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 11:43:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=NcR/8SWBfRQzzMiD/zvgVxR7YrRjbw8pG/CMmNHs2cg=;
 b=QM0bpK75i3/GkS3iEGDqQXGhDlD0JK/4FP3WyULudyHjKpWum0/CYMhmGRpDYGeGz0
 II0dByUREFsmykSMeYCxdfEZ/p7l9ugzQsNEY60yjiOnNDf288tg+gU9TGc0SXIZrpz0
 CO++UYncWKuWnyP+3Tn2/hI4iUhjC56ODPCsVHMJA1lxcwxRpQA+oXNcKTAHy68O5PzQ
 b6iaZIuZ0V1TYhgPk++9VK+ca/2gBsbprxCqidRvI38c2tLwrOKs4iYz8NRkmKXVOnjV
 P6xWRfnyKyRLtGpqeKAFKKS5hF4RmwpkBWp3ccs2A7nAwSzusIa7tpg6G6TyijI6bH+n
 RF+Q==
X-Gm-Message-State: APjAAAW9/ObDlJtM5pNjubKD/GqWuioQ91io+SKv4kkM32hojjtTaXcr
 xGxcs+6JWL1QMOSTZ2e+0g==
X-Google-Smtp-Source: APXvYqzOykNZ+yOjvFYDrp5id4HZ0PDwD2Ol+Jy2xY+WA4FXykBA2wVI1v/kaQWi3VCgBPbrJGXj/w==
X-Received: by 2002:a37:b044:: with SMTP id z65mr71813835qke.294.1560451406096; 
 Thu, 13 Jun 2019 11:43:26 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id x2sm214491qkc.92.2019.06.13.11.43.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 11:43:25 -0700 (PDT)
Date: Thu, 13 Jun 2019 12:43:24 -0600
From: Rob Herring <robh@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH 10/16] dmaengine: ti: New driver for K3 UDMA - split#1:
 defines, structs, io func
Message-ID: <20190613184324.GA26206@bogus>
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
 <20190506123456.6777-11-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506123456.6777-11-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_114327_566445_23467F27 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 tony@atomide.com, vkoul@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMDM6MzQ6NTBQTSArMDMwMCwgUGV0ZXIgVWpmYWx1c2kg
d3JvdGU6Cj4gU3BsaXQgcGF0Y2ggZm9yIHJldmlldyBjb250YWluaW5nOiBkZWZpbmVzLCBzdHJ1
Y3RzLCBpbyBhbmQgbG93IGxldmVsCj4gZnVuY3Rpb25zIGFuZCBpbnRlcnJ1cHQgY2FsbGJhY2tz
LgoKTm90IGEgdXNlZnVsIGNvbW1lbnQgZm9yIHVwc3RyZWFtLgoKPiAKPiBETUEgZHJpdmVyIGZv
cgo+IFRleGFzIEluc3RydW1lbnRzIEszIE5BVlNTIFVuaWZpZWQgRE1BIOKAkyBQZXJpcGhlcmFs
IFJvb3QgQ29tcGxleCAoVURNQS1QKQo+IAo+IFRoZSBVRE1BLVAgaXMgaW50ZW5kZWQgdG8gcGVy
Zm9ybSBzaW1pbGFyIChidXQgc2lnbmlmaWNhbnRseSB1cGdyYWRlZCkgZnVuY3Rpb25zCj4gYXMg
dGhlIHBhY2tldC1vcmllbnRlZCBETUEgdXNlZCBvbiBwcmV2aW91cyBTb0MgZGV2aWNlcy4gVGhl
IFVETUEtUCBtb2R1bGUKPiBzdXBwb3J0cyB0aGUgdHJhbnNtaXNzaW9uIGFuZCByZWNlcHRpb24g
b2YgdmFyaW91cyBwYWNrZXQgdHlwZXMuIFRoZSBVRE1BLVAgaXMKPiBhcmNoaXRlY3RlZCB0byBm
YWNpbGl0YXRlIHRoZSBzZWdtZW50YXRpb24gYW5kIHJlYXNzZW1ibHkgb2YgU29DIERNQSBkYXRh
Cj4gc3RydWN0dXJlIGNvbXBsaWFudCBwYWNrZXRzIHRvL2Zyb20gc21hbGxlciBkYXRhIGJsb2Nr
cyB0aGF0IGFyZSBuYXRpdmVseQo+IGNvbXBhdGlibGUgd2l0aCB0aGUgc3BlY2lmaWMgcmVxdWly
ZW1lbnRzIG9mIGVhY2ggY29ubmVjdGVkIHBlcmlwaGVyYWwuIE11bHRpcGxlCj4gVHggYW5kIFJ4
IGNoYW5uZWxzIGFyZSBwcm92aWRlZCB3aXRoaW4gdGhlIERNQSB3aGljaCBhbGxvdyBtdWx0aXBs
ZSBzZWdtZW50YXRpb24KPiBvciByZWFzc2VtYmx5IG9wZXJhdGlvbnMgdG8gYmUgb25nb2luZy4g
VGhlIERNQSBjb250cm9sbGVyIG1haW50YWlucyBzdGF0ZQo+IGluZm9ybWF0aW9uIGZvciBlYWNo
IG9mIHRoZSBjaGFubmVscyB3aGljaCBhbGxvd3MgcGFja2V0IHNlZ21lbnRhdGlvbiBhbmQKPiBy
ZWFzc2VtYmx5IG9wZXJhdGlvbnMgdG8gYmUgdGltZSBkaXZpc2lvbiBtdWx0aXBsZXhlZCBiZXR3
ZWVuIGNoYW5uZWxzIGluIG9yZGVyCj4gdG8gc2hhcmUgdGhlIHVuZGVybHlpbmcgRE1BIGhhcmR3
YXJlLiBBbiBleHRlcm5hbCBETUEgc2NoZWR1bGVyIGlzIHVzZWQgdG8KPiBjb250cm9sIHRoZSBv
cmRlcmluZyBhbmQgcmF0ZSBhdCB3aGljaCB0aGlzIG11bHRpcGxleGluZyBvY2N1cnMgZm9yIFRy
YW5zbWl0Cj4gb3BlcmF0aW9ucy4gVGhlIG9yZGVyaW5nIGFuZCByYXRlIG9mIFJlY2VpdmUgb3Bl
cmF0aW9ucyBpcyBpbmRpcmVjdGx5IGNvbnRyb2xsZWQKPiBieSB0aGUgb3JkZXIgaW4gd2hpY2gg
YmxvY2tzIGFyZSBwdXNoZWQgaW50byB0aGUgRE1BIG9uIHRoZSBSeCBQU0ktTCBpbnRlcmZhY2Uu
Cj4gCj4gVGhlIFVETUEtUCBhbHNvIHN1cHBvcnRzIGFjdGluZyBhcyBib3RoIGEgVVRDIGFuZCBV
RE1BLUMgZm9yIGl0cyBpbnRlcm5hbAo+IGNoYW5uZWxzLiBDaGFubmVscyBpbiB0aGUgVURNQS1Q
IGNhbiBiZSBjb25maWd1cmVkIHRvIGJlIGVpdGhlciBQYWNrZXQtQmFzZWQgb3IKPiBUaGlyZC1Q
YXJ0eSBjaGFubmVscyBvbiBhIGNoYW5uZWwgYnkgY2hhbm5lbCBiYXNpcy4KPiAKPiBUaGUgaW5p
dGlhbCBkcml2ZXIgc3VwcG9ydHM6Cj4gLSBNRU1fVE9fTUVNIChUUiBtb2RlKQo+IC0gREVWX1RP
X01FTSAoUGFja2V0IC8gVFIgbW9kZSkKPiAtIE1FTV9UT19ERVYgKFBhY2tldCAvIFRSIG1vZGUp
Cj4gLSBDeWNsaWMgKFBhY2tldCAvIFRSIG1vZGUpCj4gLSBNZXRhZGF0YSBmb3IgZGVzY3JpcHRv
cnMKPiAKPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1c2lAdGku
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2RtYS90aS9rMy11ZG1hLmMgICAgICAgICAgfCAxMDA4ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvZG1hL3RpL2szLXVkbWEuaCAg
ICAgICAgICB8ICAxMjkgKysrKwo+ICBpbmNsdWRlL2R0LWJpbmRpbmdzL2RtYS9rMy11ZG1hLmgg
fCAgIDI2ICsKClRoaXMgYmVsb25ncyBpbiB0aGUgYmluZGluZyBwYXRjaC4KCj4gIDMgZmlsZXMg
Y2hhbmdlZCwgMTE2MyBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2RtYS90aS9rMy11ZG1hLmMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZG1hL3RpL2sz
LXVkbWEuaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9kbWEvazMt
dWRtYS5oCgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2RtYS9rMy11ZG1hLmgg
Yi9pbmNsdWRlL2R0LWJpbmRpbmdzL2RtYS9rMy11ZG1hLmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uODliYTZhOWQ0YThmCj4gLS0tIC9kZXYvbnVsbAo+ICsr
KyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvZG1hL2szLXVkbWEuaAo+IEBAIC0wLDAgKzEsMjYgQEAK
PiArI2lmbmRlZiBfX0RUX1RJX1VETUFfSAo+ICsjZGVmaW5lIF9fRFRfVElfVURNQV9ICj4gKwo+
ICsjZGVmaW5lIFVETUFfVFJfTU9ERQkJMAo+ICsjZGVmaW5lIFVETUFfUEtUX01PREUJCTEKPiAr
Cj4gKyNkZWZpbmUgVURNQV9ESVJfVFgJCTAKPiArI2RlZmluZSBVRE1BX0RJUl9SWAkJMQo+ICsK
PiArI2RlZmluZSBQU0lMX1NUQVRJQ19UUl9OT05FCTAKPiArI2RlZmluZSBQU0lMX1NUQVRJQ19U
Ul9YWQkxCj4gKyNkZWZpbmUgUFNJTF9TVEFUSUNfVFJfTUNBTgkyCj4gKwo+ICsjZGVmaW5lIFVE
TUFfUERNQV9UUl9YWShpZCkJCQkJXAo+ICsJdGkscHNpbC1jb25maWcjI2lkIHsJCQkJXAo+ICsJ
CWxpbnV4LHVkbWEtbW9kZSA9IDxVRE1BX1RSX01PREU+OwlcCj4gKwkJc3RhdGljdHItdHlwZSA9
IDxQU0lMX1NUQVRJQ19UUl9YWT47CVwKPiArCX0KCldlIGRvbid0IGFjY2VwdCB0aGlzIGtpbmQg
b2YgY29tcGxleCBtYWNyb3MgaW4gZHRzIGZpbGVzLiBJdCBvYmZ1c2NhdGVzIApyZWFkaW5nIGR0
cyBmaWxlcy4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
