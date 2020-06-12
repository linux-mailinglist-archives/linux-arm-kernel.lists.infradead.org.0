Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAF61F7537
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 10:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6PEvqTbjCs93XzqdErg22kAn4cgWI2Ko3qQ2fPj5w1w=; b=f6q9BVAL2Gq8IE0X4N7SKeH6c
	pRvPM62r5ilY8hD1CdOJQsxznpAkHsWZLT8KUUkmoDupLK9G40Uo2+sqDtbSA/tQUmjg7VzEmy7xW
	asrkxFlpItgVr047qPfqNzJRI1oH2kEuT5X14/e3a30WOct5L2fNe1SgCcSRJUFl7mCOLzXR9UQUr
	6VGbwpeIGefZMvBOmEZUx4PTrDbKn+es5apI0BApCfEzxUhp2Lmx7TUT9N+m/hyHOXfrD6ZAneP0K
	aXTQ+Agmz00fvjs5uJMsDGQy/WDq/MAWa5ZAg9VPwEG/r6ZbPykQU305mUg2uHv0R20lULpQ5H4gq
	GjXFEHWvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjetF-0005G3-KV; Fri, 12 Jun 2020 08:18:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjet3-0005FH-8m
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 08:18:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591949883;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LbTU48ojgO2FlIo9PAsC9R4igbZ13z+cUADaXE0FnOU=;
 b=XYw5arrhjWNlMCUnAvnXzIZG/sQQa6CpziYuqEcWIpA0u8UK+O6HJ43nuBQkA0Al4TWe1A
 xOSQNwPHZt5keDea9SKfZ3OYOTUZn/kXjJ2gW/j3bt14JpZ03soQ1zhzsL4Yd1Se+GZ9oX
 vXt+/yjcnqPcvDrTshnHAGdBSAZQ/7s=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-23-x5SbsqYlMsSRb6HSZjyPGQ-1; Fri, 12 Jun 2020 04:17:57 -0400
X-MC-Unique: x5SbsqYlMsSRb6HSZjyPGQ-1
Received: by mail-ej1-f70.google.com with SMTP id do21so3880658ejc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 01:17:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LbTU48ojgO2FlIo9PAsC9R4igbZ13z+cUADaXE0FnOU=;
 b=Ig0N32AcwbxjxCIOcDDeqWuJ5h5Cw3HNnnWIRAVupI15GUhr9l63zooNRKuvLw2Gbg
 6sa6uJ+3nzoYc6jfNGBD412sqS4neW8RhdTf44uXbtw9OguPFeAge6FXXMdH9Oya5Vyd
 IIyrt6Cf+KNjJ/P8UTcy8KfoSesKucXX3tsxlNcXTk9yNx7bihg81Q5zIoP0Odv5lCJH
 Fw8KHnsmJ9y5enKb+hsU9UXMP1oiFogz59veXOjNmroUHAhXRmcs2QJutf11iWy5Be9o
 LbAj6+roaVk0JtXVTm/djZNuNgw9df9PXU7yaSAMyZYOMvnZxFPHQT6Nyq5qlSjldjfm
 VIng==
X-Gm-Message-State: AOAM533oXY+Zw+0IUCM8837g2wp2Iee6SFp6QHwIQV0KCWNOYiLkzN8Z
 OctfFRv2yDkK3OSqLDyAHf50fU9kbW43iOPS8qGx+Xp0SSe1aBYUYh8vwDhEqDpMhJwr2KGc2cO
 kFsslGd99QzWcuqcukfwDwOZQWgfPGiO+npg=
X-Received: by 2002:a17:906:ccdd:: with SMTP id
 ot29mr11758801ejb.119.1591949875881; 
 Fri, 12 Jun 2020 01:17:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxwtNGBDEJyj/avNl3UCU7R4ntwBo4aI35VOBMw7tHPjvk5hJcx1khBKXvQ05G75ytNLMmeTQ==
X-Received: by 2002:a17:906:ccdd:: with SMTP id
 ot29mr11758779ejb.119.1591949875662; 
 Fri, 12 Jun 2020 01:17:55 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id mf24sm3166452ejb.13.2020.06.12.01.17.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 01:17:54 -0700 (PDT)
Subject: Re: [PATCH v4 0/7] Support inhibiting input devices
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-input@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <1821a5b7-cbf3-a739-2203-a93b06f0c6f2@redhat.com>
Date: Fri, 12 Jun 2020 10:17:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200608112211.12125-1-andrzej.p@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_011805_388674_1490EEE8 
X-CRM114-Status: GOOD (  20.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kernel@collabora.com, Nick Dyer <nick@shmanahar.org>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Len Brown <lenb@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiA2LzgvMjAgMToyMiBQTSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+IFRo
aXMgaXMgYSBxdWljayByZXNwaW4gb2YgdjMsIHdpdGgganVzdCB0d28gc21hbGwgY2hhbmdlcywg
cGxlYXNlIHNlZQo+IHRoZSBjaGFuZ2Vsb2cgYmVsb3cuCj4gCj4gVXNlcnNwYWNlIG1pZ2h0IHdh
bnQgdG8gaW1wbGVtZW50IGEgcG9saWN5IHRvIHRlbXBvcmFyaWx5IGRpc3JlZ2FyZCBpbnB1dAo+
IGZyb20gY2VydGFpbiBkZXZpY2VzLgo+IAo+IEFuIGV4YW1wbGUgdXNlIGNhc2UgaXMgYSBjb252
ZXJ0aWJsZSBsYXB0b3AsIHdob3NlIGtleWJvYXJkIGNhbiBiZSBmb2xkZWQKPiB1bmRlciB0aGUg
c2NyZWVuIHRvIGNyZWF0ZSB0YWJsZXQtbGlrZSBleHBlcmllbmNlLiBUaGUgdXNlciB0aGVuIG11
c3QgaG9sZAo+IHRoZSBsYXB0b3AgaW4gc3VjaCBhIHdheSB0aGF0IGl0IGlzIGRpZmZpY3VsdCB0
byBhdm9pZCBwcmVzc2luZyB0aGUga2V5Ym9hcmQKPiBrZXlzLiBJdCBpcyB0aGVyZWZvcmUgZGVz
aXJhYmxlIHRvIHRlbXBvcmFyaWx5IGRpc3JlZ2FyZCBpbnB1dCBmcm9tIHRoZQo+IGtleWJvYXJk
LCB1bnRpbCBpdCBpcyBmb2xkZWQgYmFjay4gVGhpcyBvYnZpb3VzbHkgaXMgYSBwb2xpY3kgd2hp
Y2ggc2hvdWxkCj4gYmUga2VwdCBvdXQgb2YgdGhlIGtlcm5lbCwgYnV0IHRoZSBrZXJuZWwgbXVz
dCBwcm92aWRlIHN1aXRhYmxlIG1lYW5zIHRvCj4gaW1wbGVtZW50IHN1Y2ggYSBwb2xpY3kuCj4g
Cj4gRHVlIHRvIGludGVyYWN0aW9ucyB3aXRoIHN1c3BlbmQvcmVzdW1lLCBhIGhlbHBlciBoYXMg
YmVlbiBhZGRlZCBmb3IgZHJpdmVycwo+IHRvIGRlY2lkZSBpZiB0aGUgZGV2aWNlIGlzIGJlaW5n
IHVzZWQgb3Igbm90IChQQVRDSCAxLzcpIGFuZCBpdCBoYXMgYmVlbgo+IGFwcGxpZWQgdG8gcmVs
ZXZhbnQgZHJpdmVycyAoUEFUQ0ggMiw0LDUsNi83KS4KPiAKPiBQQVRDSCA3LzcgYWRkcyBzdXBw
b3J0IGZvciBpbmhpYml0aW5nIGlucHV0IGRldmljZXMuCj4gCj4gVGhpcyB3b3JrIGlzIGluc3Bp
cmVkIGJ5Ogo+IAo+IGh0dHBzOi8vY2hyb21pdW0uZ29vZ2xlc291cmNlLmNvbS9jaHJvbWl1bW9z
L3RoaXJkX3BhcnR5L2tlcm5lbC8rLzQ1YzJkN2JiMzk4Zjc0YWRmYWUwMDE3ZTIwYjIyNDE1MmZk
ZTM4MjIKPiAKPiBhbmQKPiAKPiBodHRwczovL2Nocm9taXVtLmdvb2dsZXNvdXJjZS5jb20vY2hy
b21pdW1vcy90aGlyZF9wYXJ0eS9rZXJuZWwvKy80Y2UwZThhMzY5N2VkYjhmZDA3MTExMGIzYWY2
NTAxNDUxMjA2MWM3Cj4gCj4gSW4gdGhpcyByZXNwaW4gdGhlIGVsYW5faTJjIHBhdGNoIGlzIGRy
b3BwZWQgYW5kIGNvbnZlcnRpbmcgaXQgd2lsbCBiZQo+IGFkZHJlc3NlZCBsYXRlci4KPiAKPiB2
My4udjQ6Cj4gLSB1cGRhdGVkIHRoZSBjb21tZW50IGluIGlucHV0X29wZW5fZGV2aWNlKCkgKEhh
bnMpCj4gLSB1c2VkIG1vcmUgc3RyYWlnaHRmb3J3YXJkIGxvY2tpbmcgcGF0dGVybiBpbiBhZGMv
ZXh5bm9zIChNaWNoYcWCKQo+IAo+IHYyLi52MzoKPiAtIGlnbm9yZWQgYXV0b3JlcGVhdCBldmVu
dHMgaW4gaW5wdXRfZ2V0X2Rpc3Bvc2l0aW9uKCkgaWYgYSBrZXkgaXMgbm90Cj4gcHJlc3NlZCAo
SGFucykKPiAtIGRyb3BwZWQgaW5oaWJpdCgpL3VuaW5oaWJpdCgpIGRyaXZlciBjYWxsYmFja3Mg
KEhhbnMpCj4gLSBzcGxpdCBBQ1BJIGJ1dHRvbiBwYXRjaCBpbnRvIHRha2luZyB0aGUgbG9jayBh
bmQgdXNpbmcgdGhlIGhlbHBlciAoUmFmYWVsKQo+IC0gZHJvcHBlZCB0aGUgZWxhbl9pMmMgY29u
dmVyc2lvbgo+IC0gZml4ZWQgdHlwb3MgaW4gZXh5bm9zIGFkYwo+IAo+IHYxLi52MjoKPiAtIGFk
ZGVkIGlucHV0X2RldmljZV9lbmFibGVkKCkgaGVscGVyIGFuZCB1c2VkIGl0IGluIGRyaXZlcnMg
KERtaXRyeSkKPiAtIHRoZSBmYWN0IG9mIG9wZW4oKSBhbmQgY2xvc2UoKSBiZWluZyBjYWxsZWQg
aW4gaW5oaWJpdC91bmluaGliaXQgcGF0aHMgaGFzCj4gYmVlbiBlbXBoYXNpemVkIGluIHRoZSBj
b21taXQgbWVzc2FnZSBvZiBQQVRDSCA2LzcgKERtaXRyeSkKPiAKPiBBbmRyemVqIFBpZXRyYXNp
ZXdpY3ogKDYpOgo+ICAgIElucHV0OiBhZGQgaW5wdXRfZGV2aWNlX2VuYWJsZWQoKQo+ICAgIElu
cHV0OiB1c2UgaW5wdXRfZGV2aWNlX2VuYWJsZWQoKQo+ICAgIEFDUEk6IGJ1dHRvbjogQWNjZXNz
IGlucHV0IGRldmljZSdzIHVzZXJzIHVuZGVyIGFwcHJvcHJpYXRlIG11dGV4Cj4gICAgQUNQSTog
YnV0dG9uOiBVc2UgaW5wdXRfZGV2aWNlX2VuYWJsZWQoKSBoZWxwZXIKPiAgICBpaW86IGFkYzog
ZXh5bm9zOiBVc2UgaW5wdXRfZGV2aWNlX2VuYWJsZWQoKQo+ICAgIHBsYXRmb3JtL3g4NjogdGhp
bmtwYWRfYWNwaTogVXNlIGlucHV0X2RldmljZV9lbmFibGVkKCkKPiAKPiBQYXRyaWsgRmltbWwg
KDEpOgo+ICAgIElucHV0OiBBZGQgImluaGliaXRlZCIgcHJvcGVydHkKClRoZSBlbnRpcmUgc2Vy
aWVzIGxvb2tzIGdvb2QgdG8gbWU6CgpBY2tlZC1ieTogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVA
cmVkaGF0LmNvbT4KClJlZ2FyZHMsCgpIYW5zCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
