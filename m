Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A901DA51C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 01:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IzUn74F8znXE7Xzw2MApphcIkZPXknI+jVAFp+MktM=; b=Dttvk5k4eZSvfI
	dPdXbPy//H88mvQTRh6okVpmM1FS4sGh3I1n+cdRDco0fcufC3ZnAle9d5ZLfXpu0zB221wTBwvMK
	Hm5WAcGsjOC4zpNMuuwLX3rLuOmWucTv0OCGB4lofRAk5JSc0zWFvu2b3SypjMapSxq2dBj5I6qs0
	aPihaNvADtvAuI9dCn2zmF1WESwQtbmMwWfBUP/L6iILVVUMYeFI6qCEE7XsdJkFZbnx51vl5W5GQ
	0lUxl5xmIdxasJx+eokwoDkat5UXCZ2xd57mSdVOveTCVPfxuM6k5yC1UuB3GreW2ORWP6Agxn+tf
	vU2cWNsoc8KHS/SRQdyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbBGr-0007D1-49; Tue, 19 May 2020 23:03:37 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbBGj-0007CM-56
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 23:03:30 +0000
Received: by mail-il1-f196.google.com with SMTP id 17so1183282ilj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 16:03:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=YYKFcBn0SXqCqC3JTj/787nlEe7iveNyNWOYE196YMU=;
 b=fd/X4lxMlWFwkTgJ7KZju2Naq43SQ0bK+IG6gOtYMQK9xotV0QWI3+AgG/MgTnQ/Jl
 eY85Eqmlx0z7CiFumiKfdpd1bT5+k2JzOGvaDyQ5MmnKUFkxKRmhOYPR+JK+4Bk10uwm
 O/v8BqEYmuk2yPA1AGUYok+zvcUfs0/wGtUc7Oo05ygoIM3NcXP1SChUrVzMuFHcFRSY
 10F9wVvy9P3e4A+m3H1qGKzvTLZKthG1jPUr1jbu2BufmYx42gnF5oEpsfBTZVmfhk/2
 NZsOkE2iBagG+T86JlRHMXCNW8KHMQrFIJtp9bx9FN+KhSBI7owJ+xv/+qs8k8k8M8sK
 d6mA==
X-Gm-Message-State: AOAM530NLH6s+by6OK/y1ksD7IjSXx1QcBMN14ajTbXOEbmkS50RK+p6
 u+HW/w9L70fM+0puCspnRA==
X-Google-Smtp-Source: ABdhPJxrdBDMRZsMfXlcAqqKCF6SJxDXpeObfQ7NHHULwBA3poGnWuC12jMRJg/9rKFDPnbTK5zxqw==
X-Received: by 2002:a92:2801:: with SMTP id l1mr1515644ilf.132.1589929407929; 
 Tue, 19 May 2020 16:03:27 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id h10sm412676ioe.3.2020.05.19.16.03.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 16:03:27 -0700 (PDT)
Received: (nullmailer pid 857175 invoked by uid 1000);
 Tue, 19 May 2020 23:03:26 -0000
Date: Tue, 19 May 2020 17:03:26 -0600
From: Rob Herring <robh@kernel.org>
To: Stephen Warren <swarren@wwwdotorg.org>
Subject: Re: [PATCH 2/4] dt-bindings: sram: add documentation for
 reserved-only flag
Message-ID: <20200519230326.GA827289@bogus>
References: <20200512144803.24344-1-ykaukab@suse.de>
 <20200512144803.24344-2-ykaukab@suse.de>
 <52f099e4-5c03-2141-f049-cd3adeb04c5b@wwwdotorg.org>
 <20200513104127.GA2309@suse.de>
 <efcc6b5e-423c-8ae1-8a46-d6a06c1a1bab@wwwdotorg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <efcc6b5e-423c-8ae1-8a46-d6a06c1a1bab@wwwdotorg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_160329_194912_C2C1F9A8 
X-CRM114-Status: GOOD (  23.36  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 Mian Yousaf Kaukab <ykaukab@suse.de>, linux-kernel@vger.kernel.org,
 jonathanh@nvidia.com, talho@nvidia.com, thierry.reding@gmail.com,
 linux-tegra@vger.kernel.org, robin.murphy@arm.com, afaerber@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMTA6MTY6NDNBTSAtMDYwMCwgU3RlcGhlbiBXYXJyZW4g
d3JvdGU6Cj4gT24gNS8xMy8yMCA0OjQxIEFNLCBNaWFuIFlvdXNhZiBLYXVrYWIgd3JvdGU6Cj4g
PiBPbiBUdWUsIE1heSAxMiwgMjAyMCBhdCAwMTo0NToyOFBNIC0wNjAwLCBTdGVwaGVuIFdhcnJl
biB3cm90ZToKPiA+PiBPbiA1LzEyLzIwIDg6NDggQU0sIE1pYW4gWW91c2FmIEthdWthYiB3cm90
ZToKPiA+Pj4gQWRkIGRvY3VtZW50YXRpb24gZm9yIHRoZSBuZXcgb3B0aW9uYWwgZmxhZyBhZGRl
ZCBmb3IgU1JBTSBkcml2ZXIuCj4gPj4KPiA+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9zcmFtL3NyYW0ueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9zcmFtL3NyYW0ueWFtbAo+ID4+Cj4gPj4+ICsgIHJlc2VydmVkLW9ubHk6
Cj4gPj4+ICsgICAgZGVzY3JpcHRpb246Cj4gPj4+ICsgICAgICBUaGUgZmxhZyBpbmRpY2F0aW5n
LCB0aGF0IG9ubHkgU1JBTSByZXNlcnZlZCByZWdpb25zIGhhdmUgdG8gYmUgcmVtYXBwZWQuCj4g
Pj4+ICsgICAgICByZW1hcHBpbmcgdHlwZSBpcyBzZWxlY3RlZCBkZXBlbmRpbmcgdXBvbiBuby1t
ZW1vcnktd2MgYXMgdXN1YWwuCj4gPj4+ICsgICAgdHlwZTogYm9vbGVhbgo+ID4+Cj4gPj4gVGhp
cyBmZWVscyBhIGJpdCBsaWtlIGEgU1cgZmxhZyByYXRoZXIgdGhhbiBhIEhXIGRlc2NyaXB0aW9u
LCBzbyBJJ20gbm90Cj4gPj4gc3VyZSBpdCdzIGFwcHJvcHJpYXRlIHRvIHB1dCBpdCBpbnRvIERU
Lgo+ID4gCj4gPiBSZXNlcnZlZCByZWdpb25zIHRoZW1zZWx2ZXMgYXJlIHNvZnR3YXJlIGRlc2Ny
aXB0aW9ucywgbm8/IFRoZW4gd2UgaGF2ZSAncG9vbCcKPiA+IGZsYWcgd2hpY2ggaXMgYWdhaW4g
YSBzb2Z0d2FyZSBmbGFnIGFuZCBzbyBvbi4gVGhpcyBmbGFnIGZhbGxzIGludG8gc2FtZQo+ID4g
Y2F0ZWdvcnkgYW5kIG5vdGhpbmcgb3V0IG9mIG9yZGluYXJ5Lgo+IAo+IEkgc3VwcG9zZSB0aGF0
J3MgdHJ1ZSB0byBzb21lIGV4dGVudC4gVGhpcyBpcyBpbmRlZWQgYSBkZXNjcmlwdGlvbiBvZgo+
IHRoZSBzeXN0ZW0gZW52aXJvbm1lbnQgcHJlc2VudGVkIHRvIHRoZSBTVyB0aGF0IGNvbnN1bWVz
IHRoZSBEVCwgd2hpY2gKPiBpcyBhIGJpdCBtb3JlIHRoYW4gcHVyZSBIVyBkZXNjcmlwdGlvbiBi
dXQgc3RpbGwgYSBkZXNjcmlwdGlvbiBvZgo+IHNvbWV0aGluZyBpbXBvc2VkIGV4dGVybmFsbHkg
cmF0aGVyIHRoYW4gZGVzY3JpYmluZyBzb21ldGhpbmcgdGhhdCdzIHVwCj4gdG8gdGhlIGRpc2Ny
ZXRpb24gb2YgdGhlIGNvbnN1bWluZyBTVy4gU28sIGdvIGFoZWFkLgo+IAo+ID4+IEFyZSB0aGVy
ZSBhbnkgY2FzZXMgd2hlcmUgdGhlIFNXIHNob3VsZCBtYXAgYWxsIG9mIHRoZSBTUkFNLCBpLmUu
IHdoZXJlCj4gPj4gd2Ugd291bGRuJ3QgZXhwZWN0IHRvIHNldCByZXNlcnZlZC1vbmx5PyBbLi4u
XQo+ID4gCj4gPiBZZXMsIGhlcmUgYXJlIGEgZmV3IGV4YW1wbGVzOgo+ID4gYXJjaC9hcm0vYm9v
dC9kdHMvYXNwZWVkLWcqLmR0c2kKPiA+IGFyY2gvYXJtL2Jvb3QvZHRzL2F0OTEqLmR0c2kKPiA+
IGFyY2gvYXJtL2Jvb3QvZHRzL2JjbTc0NDUuZHRzaQo+ID4gVGhlbiBhcmNoL2FybS9ib290L2R0
cy9kcmE3LmR0c2kgaXMgYW4gZXhhbXBsZSB3aGVyZSB3ZSBzaG91bGQgbWFwIGV2ZXJ5dGhpbmcK
PiA+IGV4Y2VwdCB0aGUgcmVzZXJ2ZWQgcmVnaW9uLgo+ID4gCj4gPj4gWy4uLl0gSSdkIGV4cGVj
dCByZXNlcnZlZC1vbmx5IHRvIGJlCj4gPj4gdGhlIGRlZmF1bHQsIGFuZCBwZXJoYXBzIG9ubHks
IG1vZGUgb2Ygb3BlcmF0aW9uIGZvciB0aGUgU1JBTSBkcml2ZXIuCj4gPiAKPiA+IEl0IHdpbGwg
YnJlYWsgY29tcGF0aWJpbGl0eSB3aXRoIGV4aXN0aW5nIGR0YnMuCj4gPiAKPiA+PiBJZiB3ZSBj
YW4ndCBkbyB0aGF0IGJlY2F1c2Ugc29tZSBTVyBjdXJyZW50bHkgZXhwZWN0cyB0byBiZSBhYmxl
IHRvIG1hcAo+ID4+IGFyYml0cmFyeSBwb3J0aW9ucyBvZiB0aGUgU1JBTSwgc2hvdWxkbid0IHRo
YXQgU1cgYmUgZml4ZWQgdG8gdGVsbCB0aGUKPiA+PiBTUkFNIGRyaXZlciB3aGljaCBwYXJ0cyBp
dCdzIHVzaW5nLCBoZW5jZSBzdGlsbCBhbGxvd2luZyB0aGUgZHJpdmVyIHRvCj4gPj4gb25seSBt
YXAgaW4tdXNlIHBvcnRpb25zPwo+ID4gCj4gPiBVc2VyIGRvZXNu4oCZdCBuZWVkIHNyYW0gZHJp
dmVyIGluIHRoYXQgY2FzZS4gSXQgY2FuIHVzZSBnZW5hbGxvYyBhcGkgZGlyZWN0bHkuCj4gCj4g
VGhpcyBzb3VuZHMgYSBiaXQgb2RkLiBXaXRob3V0IGEgZHJpdmVyIGZvciB0aGUgcmVzZXJ2ZWQg
cmVnaW9uLCBub3RoaW5nCj4gc2hvdWxkIGJlIHRvdWNoaW5nIGl0LCBzaW5jZSBvdGhlcndpc2Ug
dGhlcmUncyBubyBjb2RlIHRoYXQgb3ducyBhbgo+IG1hbmFnZXMgdGhlIHJlZ2lvbi4gSWYgYW55
IGNvZGUgbmVlZHMgdG8gY29uc3VtZSB0aGUgcmVnaW9uLCBpdCBzaG91bGQKPiBvYnRhaW4gaW5m
byBhYm91dCB0aGUgcmVnaW9uIGZyb20gc29tZSBmb3JtIG9mIHByb3ZpZGVyIGNvZGUgdGhhdCBj
YW4KPiBoYW5kbGUgYm90aCB0aGUgYWxsb2NhdGlvbiBhbmQgbWFwcGluZy4gQW55dGhpbmcgZWxz
ZSBzb3VuZHMgbGlrZSBzb21lCj4gY29uc3VtZXIgY29kZSBkaXJlY3RseSBtYWtpbmcgdXNlIG9m
IERUIG5vZGVzIGl0IGRvZXNuJ3Qgb3duLiBCdXQgc2luY2UKPiBJJ20gbm90IGZhbWlsaWFyIGVu
b3VnaCB3aXRoIHRoZSBTUkFNIGRyaXZlciBhbmQgZ2VuYWxsb2MgY29kZSB0aGF0IHlvdQo+IG1l
bnRpb24gdG8gZnVsbHkgdW5kZXJzdGFuZCB0aGUgYWxsb2NhdGlvbiBwYXRocyBJIGd1ZXNzIEkg
d29uJ3Qgb2JqZWN0Cj4gZm9yIG5vdywgYWx0aG91Z2ggaXQgZG9lcyBzdGlsbCBzb3VuZCBmaXNo
eS4KCkknbSBmaW5lIHdpdGggdGhlIGNvbmNlcHQsIGJ1dCBJIGRvbid0IHRoaW5rIGEgc2luZ2xl
IGZsYWcgaXMgYWRlcXVhdGUuIApJZiB0aGVyZSBhcmUgcmVzZXJ2ZWQgcmVnaW9ucyB3aXRoaW4g
dGhlIFNSQU0sIHRoZW4gZGVmaW5lIGNoaWxkIG5vZGVzIAp0byBtYXJrIHRob3NlIHJlZ2lvbnMg
cmVzZXJ2ZWQuIEkgZG9uJ3QgdGhpbmsgeW91IG5lZWQgYSBuZXcgZmxhZy4gSnVzdCAKYSAncmVn
JyBwcm9wZXJ0eSBhbmQgbm90aGluZyBlbHNlLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
