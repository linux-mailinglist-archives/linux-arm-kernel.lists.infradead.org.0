Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9703A8143F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 10:32:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5R+ZZfIbyDbmF40kn6kuy1v1UA2p+//7GftvWZuTeBU=; b=LJk16xQNca0XKX
	V8BWFARKz1OSS2izmbQkIXp4T9bcfLgpgUsKWNS5O2X/DoWzvhVw0y8GLD//KMHAjqE/lbPBiVfNk
	Hr//12NlS1SGW6MRIt5l/1jY97Marfm6YFmy0sgpBO5b0RRRyMDI6XdeBJeFsssEmbSf/5Ri16Wsw
	x+sR5hChaiexNsrxHIH6YwBGw5gSfYQQvJsRzTdx59mW88R1xbjg+gEx5GX6XTNIVeI6I7O2RfiR1
	st2bAYg7K46E/Lt8HZwzDHrfMKCBOZA2os66CkCMfJHRvXS8oZLckqMrh5ApzWX42GhhNuAr60mFx
	ymVqhp17t+bvRKupcWUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYPP-0006WZ-VS; Mon, 05 Aug 2019 08:31:59 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYPC-0006W3-Oi
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 08:31:48 +0000
Received: by mail-io1-xd43.google.com with SMTP id j6so45748896ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 01:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/9onNqSu8H6T4t+v8bvPux5C3Ze/nalI4ApJroQRttg=;
 b=aywESScdkNjlGJf+foMrGaH30r3yFivVONl+3QF/vs9mPZxQ7Z9lCSqAyevZxfhXBV
 p8Y71cVlfFNUQTlqv3fAISo5KNCajOU6OqFY8zXEiQwtgIDNHjm1JLQM8mcmBfK/Essk
 Vs1iZN+Zd9qsQCZfwGrN71p0/vxpdh1yVob0V5Kddk+Z/nd7sQKhLstCHf0Usgxwwjk9
 EJQmEKFdpnBimhSdaDaq4sVIY93TaBb8vY1+OPKgg+jhPAp0s/NgDOZ5ohrGB3Cz7R22
 +L0+ioeTc9pYBSuDbEdoGHFvdgHuYL79kuicaVTPqh+hvyhAcJoXbtOht/1sFRJngb0w
 qquw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/9onNqSu8H6T4t+v8bvPux5C3Ze/nalI4ApJroQRttg=;
 b=PtziwgDx5ExQjyl180sLg+YrhB+j6+z+RbPujOqzLD8dkpUUb9A/NuwbE1CBEZPJke
 wrBktFv8zvK7QpMPALEiQd/9GN34+WtX+lSflPwK0AW1ilCP/ua+P76p/OI18osWfkNp
 OTpTLI7Rh6QrwbYi3PDOodxwr2XxVrH7LW1NzUm1aUuXfT+BEa/oT7SdRBwdtllSF8Ha
 7JIKIWBRE6ladNfJAaYrbmdCuEB0PeOTUqbAcc3/Pm4iETVzmf6Ykr6CYcL5ocliI+1K
 O+WQrFK6XnVfeQNHoHFEp4iiB50501cugfc2QoT5Iy2AcVrrPraZ6hjdWsDpZbM5IecD
 zXmQ==
X-Gm-Message-State: APjAAAV9ylOCjE5CoL8udO4DojB9cEE9FNymaQ+QVAmBRPcIT9ZZ7xDT
 rVp6uWN2IqsH+aBc347tHL9eP1QV56/X5UuDLok=
X-Google-Smtp-Source: APXvYqwdH5YrXmNOdQLqeqaHrEbB41XdZAI+QgVn/WPhGXhazC5gC+vdAsxaH69ckpH1PS09DzXuJmzKdsOLUZS7P9M=
X-Received: by 2002:a02:5b05:: with SMTP id g5mr147889176jab.114.1564993906173; 
 Mon, 05 Aug 2019 01:31:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190725131257.6142-1-brgl@bgdev.pl>
 <CAK8P3a1FXyRRi5q48h-=egFjgoRJvy6_zuO9MQaAOMA-bsJKRA@mail.gmail.com>
In-Reply-To: <CAK8P3a1FXyRRi5q48h-=egFjgoRJvy6_zuO9MQaAOMA-bsJKRA@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 5 Aug 2019 10:31:35 +0200
Message-ID: <CAMRc=Me_7aw_RvU_tZnVUgduN2wWYGqJ7hQirQ2RLzxGiPujvQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] ARM: make DaVinci part of the ARM v5 multiplatform
 build
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_013146_803522_A36A5096 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgMjUgbGlwIDIwMTkgbyAxNjo1NyBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPiBu
YXBpc2HFgihhKToKPgo+IE9uIFRodSwgSnVsIDI1LCAyMDE5IGF0IDM6MTMgUE0gQmFydG9zeiBH
b2xhc3pld3NraSA8YnJnbEBiZ2Rldi5wbD4gd3JvdGU6Cj4gPgo+ID4gRnJvbTogQmFydG9zeiBH
b2xhc3pld3NraSA8YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbT4KPiA+Cj4gPiBUaGlzIHNlcmll
cyBtYWtlcyBEYVZpbmNpIHBhcnQgb2YgdGhlIG11bHRpcGxhdGZvcm0gYnVpbGQgZm9yIEFSTSB2
NS4KPiA+Cj4gPiBGaXJzdCB0aHJlZSBwYXRjaGVzIGZpeCBidWlsZCBlcnJvcnMgc3BvdHRlZCBh
bmQgZml4ZWQgYnkgQXJuZCB3aXRoIHYxLgo+ID4KPiA+IFRoZSBmb3VydGggcGF0Y2ggYWRkcyBu
ZWNlc3NhcnkgYml0cyBhbmQgcGllY2VzIGZvciBkYXZpbmNpIHRvIHN1cHBvcnQKPiA+IG11bHRp
cGxhdGZvcm0gYnVpbGQgYW5kIHRoZSBsYXN0IG9uZSBhY3R1YWxseSBhZGRzIGFsbCBkYXZpbmNp
IGJvYXJkcwo+ID4gdG8gbXVsdGlfdjVfZGVmY29uZmlnLgo+ID4KPiA+IFRlc3RlZCBvbiBkYTg1
MC1sY2RrIHdpdGggYm90aCBtdWx0aV92NSBhcyB3ZWxsIGFzIGRhdmluY2lfYWxsIGRlZmNvbmZp
Z3MuCj4gPgo+ID4gdjEgLT4gdjI6Cj4gPiAtIGFkZGVkIHBhdGNoZXMgZnJvbSBBcm5kIHRoYXQg
Zml4IGJ1aWxkIGVycm9ycyBzcG90dGVkIHdoZW4gYnVpbGRpbmcKPiA+ICAgcmFuZG9tIGNvbmZp
Z3VyYXRpb25zIChtdWNoIGFwcHJlY2lhdGVkKQo+ID4gLSByZWJhc2VkIG9uIHRvcCBvZiB2NS4z
LXJjMQo+Cj4gPiBBcm5kIEJlcmdtYW5uICgzKToKPiA+IHN0YWdpbmc6IG1lZGlhL2RhdmluY2lf
dnBmZTogZml4IHBpbm11eCBzZXR1cCBjb21waWxhdGlvbgo+ID4gIG1lZGlhOiBkYXZpbmNpLXZw
YmU6IHJlbW92ZSBvYnNvbGV0ZSBpbmNsdWRlcwo+ID4gIGRhdmluY2k6IGZpeCBzbGVlcC5TIGJ1
aWxkIGVycm9yIG9uIEFSTXY0Cj4gPgo+ID4gQmFydG9zeiBHb2xhc3pld3NraSAoMik6Cj4gPiAg
QVJNOiBkYXZpbmNpOiBzdXBwb3J0IG11bHRpcGxhdGZvcm0gYnVpbGQgZm9yIEFSTSB2NQo+ID4g
IEFSTTogbXVsdGlfdjVfZGVmY29uZmlnOiBtYWtlIERhVmluY2kgcGFydCBvZiB0aGUgQVJNIHY1
IG11bHRpcGxhdGZvcm0gYnVpbGQKPgo+Cj4gVGhhbmtzIGEgbG90IGZvciByZXBvc3RpbmcgdGhl
IHNlcmllcyEKPgo+IEkgd29uZGVyIGhvdyB3ZSBzaG91ZCBkZWFsIHdpdGggdGhlIGRlcGVuZGVu
Y2llcyBub3cgdGhhdCB0aGUgdHdvIG1lZGlhCj4gcGF0Y2hlcyBnb3QgbWVyZ2VkIGluIHRoZSBs
aW51eC1tZWRpYSB0cmVlLgo+Cj4gSXQgd291bGQgYmUgdGVtcHRpbmcgdG8ganVzdCBtZXJnZSB0
aGUgYXJjaC9hcm0vIGNoYW5nZXMsIGJ1dCB0aGF0IGNyZWF0ZXMKPiBhIGJpc2VjdGlvbiBwcm9i
bGVtIHdoZW4gdGhlIHZwYmUgZHJpdmVyIGlzIGVuYWJsZWQuIEkgZG9uJ3QgY2FyZQo+IGFib3V0
IHRoZSBzdGFnaW5nIGRyaXZlciByZWFsbHkgYXMgdGhhdCBvbmUgaXMgYnJva2VuIGFueXdheSwg
YnV0IGluY2x1ZGluZwo+IHRoZSAibWVkaWE6IGRhdmluY2ktdnBiZTogcmVtb3ZlIG9ic29sZXRl
IGluY2x1ZGVzIiBmaXggd291bGQgYmUgYmV0dGVyCj4gaGVyZS4KPgo+IE1hdXJvLCBhbnkgaWRl
YSBmb3IgaG93IHRvIGhhbmRsZSB0aGF0PyBTaG91bGQgd2UgYXBwbHkgYW4gaWRlbnRpY2FsCj4g
cGF0Y2ggdG8gdGhlIGRhdmluY2kgdHJlZSwgb3IgbWF5YmUgb25seSBoYXZlIGl0IHRoZSBBUk0g
dHJlZSBhbmQgeW91Cj4gZHJvcCBpdCBmcm9tIHlvdXIgdHJlZSAoSSBkb24ndCBrbm93IGlmIHlv
dSBoYXZlIGEgcnVsZSBhZ2FpbnN0IHJlYmFzaW5nKS4KPiBTb3JyeSBmb3Igbm90IGNvb3JkaW5h
dGluZyB3aXRoIEJhcnRvc3ogYmVmb3JlIEkgc2VudCB0aGUgcGF0Y2ggYWdhaW4KPiBlYXJsaWVy
IHRoaXMgd2Vlay4KPgo+Cj4gICAgICAgQXJuZAoKSGkgQXJuZCwKCmlzIHRoZXJlIGFueSBhY3Rp
b24gcmVxdWlyZWQgZnJvbSBtZSBmb3IgdGhpcyBzZXJpZXM/CgpCYXJ0CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
