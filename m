Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0581D9371
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nP23e+dptnUnq+7rN1V7bd1kEKzDG1tq0rFQhLizuec=; b=Jjpdm/LDBuLzxOCzF8faO9q1T
	yyEdvYE16n1OV/G5iywm9KoIChz4BTXHjpJqThM67qOoV90N2n0uQssMdiicG/MxDvBkVxho5Ebis
	MlwLITx7NWs2YwQZHwXTmF8MizRe9hPqKX0oMWucbDFUHaJ4lwMUXS21QxCseZP5tnWHNtakhOS8J
	+dDVe0yvHblMhM+5GtpsOkga9c6WSvN+B/fKe3xb/yzBCkKcUlxdx6yo4tPMkM2haekqmsrpZAMgz
	+BG9H9Dfxqxk9VJhiH70Gqp5qZkm8YOYz57hAna9TS+H9eJHOpo4yiHGT5SuwvYmrtef4xWLBiwjC
	Pe707wT7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaygC-0000mL-V8; Tue, 19 May 2020 09:36:56 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayg2-0000lG-DR
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:36:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589881002;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zx1xwU2hx8pVoq/x6eR5o+QLPp4w7KqD0sx7jmQ5IaM=;
 b=N74cweqntf3HgPn2ectSopUfn01A8F4gFlxdIkWzW0CJtY7W8ELq0jdTyyq2oQC+NzCr2B
 fl4xli0QYua4SjOJmWYDRqpj1wyLpFCr6SWNvAW8us+7ID6Rle+5FOyJPYQ04dm81r0Je5
 lJfmkVbhQ+/R2oZTUy2A7HKQLz3jQIM=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-385-zdN6A-2VMz-xJrDDQ4viIQ-1; Tue, 19 May 2020 05:36:40 -0400
X-MC-Unique: zdN6A-2VMz-xJrDDQ4viIQ-1
Received: by mail-wr1-f69.google.com with SMTP id r14so7005571wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 02:36:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zx1xwU2hx8pVoq/x6eR5o+QLPp4w7KqD0sx7jmQ5IaM=;
 b=FuZKyOeZxCUSV9fyFpHM+CwFWu4eStjFn0WKWaIK4puZh1BkaMsqh0G4It0XVPp3jG
 5bUbc5sCI4dZIeDUAd2T/z0HMIj0ymIPGvx3xAk30crYX3IvtdnyTmJlZA4OGM6zDRJ6
 CLolo43qApd6F8o1wrajwgcqNrE0KoqQ1J8c/lqJSA+SdRpNONM5Q42peZQKM32qJG2j
 X6T7yYifMRb2dcUAwWQwkK3VAhFXot5h43SfkcZ7c3EynUHTh5mtrAmy3EbvNuSqEO+X
 Fj7c48s0LrIot/YgzdfbaUOUjRchZrqXBSwX4FeZjqlPV4OS+ISbxxuP6Tt8QnXUEW1H
 LxrA==
X-Gm-Message-State: AOAM532ExkCGDgifnIZo7g4TfpIWns6swes5tyYOaT+UdGQTjdvMUWny
 ff85XlUPr9NTmzKH2UJB+O+MWFBFE5kxS43BdYx6aAlB1/b/mdvEsFUl7dooZJYzOIQcc1H0OUg
 1gSRASwLROqnoOx/x40KChd4Rd7D4YW8ZLtQ=
X-Received: by 2002:a1c:444:: with SMTP id 65mr4608078wme.21.1589880996790;
 Tue, 19 May 2020 02:36:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwqcjizbgXFRvjt4WsCNNW18OC7P3zc0FNfH6PxsI9rxtfI7F0v+PkL9hUz5wI4ZZq7PkCtaQ==
X-Received: by 2002:a1c:444:: with SMTP id 65mr4608023wme.21.1589880996492;
 Tue, 19 May 2020 02:36:36 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id i6sm3566852wmb.41.2020.05.19.02.36.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 02:36:35 -0700 (PDT)
Subject: Re: [PATCHv2 0/7] Support inhibiting input devices
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-input@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
References: <20200506002746.GB89269@dtor-ws>
 <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
 <e6030957-97dc-5b04-7855-bc14a78164c8@collabora.com>
 <6d9921fc-5c2f-beda-4dcd-66d6970a22fe@redhat.com>
 <09679de4-75d3-1f29-ec5f-8d42c84273dd@collabora.com>
 <f674ba4f-bd83-0877-c730-5dc6ea09ae4b@redhat.com>
 <2d224833-3a7e-bc7c-af15-1f803f466697@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <aa2ce2ab-e5bc-9cb4-8b53-c1ef9348b646@redhat.com>
Date: Tue, 19 May 2020 11:36:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <2d224833-3a7e-bc7c-af15-1f803f466697@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_023646_532289_43858244 
X-CRM114-Status: GOOD (  34.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Nick Dyer <nick@shmanahar.org>, Benjamin Tissoires <btissoir@redhat.com>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Len Brown <lenb@kernel.org>,
 Peter Hutterer <peter.hutterer@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
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

SGksCgpPbiA1LzE5LzIwIDExOjAyIEFNLCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4g
SGkgSGFucywgSGkgRG1pdHJ5LAo+IAo+IFcgZG5pdSAxOC4wNS4yMDIwIG/CoDE2OjIzLCBIYW5z
IGRlIEdvZWRlIHBpc3plOgo+PiBIaSwKPiAKPiA8c25pcD4KPiAKPj4+Pj4+Cj4+Pj4+PiBTbyBJ
IHdvbmRlciB3aGF0IHRoaXMgc2VyaWVzIGFjdHVhbGx5IGFkZHMgZm9yIGZ1bmN0aW9uYWxpdHkg
Zm9yCj4+Pj4+PiB1c2Vyc3BhY2Ugd2hpY2ggY2FuIG5vdCBhbHJlYWR5IGJlIGFjaGlldmVkIHRo
aXMgd2F5Pwo+Pj4+Pj4KPj4+Pj4+IEkgYWxzbyBub3RpY2VkIHRoYXQgeW91IGtlZXAgdGhlIGRl
dmljZSBvcGVuIChkbyBub3QgY2FsbCB0aGUKPj4+Pj4+IGlucHV0X2RldmljZSdzIGNsb3NlIGNh
bGxiYWNrKSB3aGVuIGluaGliaXRlZCBhbmQganVzdCB0aHJvdyBhd2F5Cj4+Pj4+Cj4+Pj4+IEkn
bSBub3Qgc3VyZSBpZiBJIHVuZGVyc3RhbmQgeW91IGNvcnJlY3RseSwgaXQgaXMgY2FsbGVkOgo+
Pj4+Pgo+Pj4+PiArc3RhdGljIGlubGluZSB2b2lkIGlucHV0X3N0b3Aoc3RydWN0IGlucHV0X2Rl
diAqZGV2KQo+Pj4+PiArewo+Pj4+PiArwqDCoMKgIGlmIChkZXYtPnBvbGxlcikKPj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGlucHV0X2Rldl9wb2xsZXJfc3RvcChkZXYtPnBvbGxlcik7Cj4+Pj4+ICvC
oMKgwqAgaWYgKGRldi0+Y2xvc2UpCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBkZXYtPmNsb3NlKGRl
dik7Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5eXl5eXl5eXl5eXl5e
Xl4KPj4+Pj4gK3N0YXRpYyBpbnQgaW5wdXRfaW5oaWJpdChzdHJ1Y3QgaW5wdXRfZGV2ICpkZXYp
Cj4+Pj4+ICt7Cj4+Pj4+ICvCoMKgwqAgaW50IHJldCA9IDA7Cj4+Pj4+ICsKPj4+Pj4gK8KgwqDC
oCBtdXRleF9sb2NrKCZkZXYtPm11dGV4KTsKPj4+Pj4gKwo+Pj4+PiArwqDCoMKgIGlmIChkZXYt
PmluaGliaXRlZCkKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+Pj4+PiArCj4+Pj4+
ICvCoMKgwqAgaWYgKGRldi0+dXNlcnMpIHsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChkZXYt
PmluaGliaXQpIHsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gZGV2LT5pbmhp
Yml0KGRldik7Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBvdXQ7Cj4+Pj4+ICvCoMKgwqDCoMKg
wqDCoCB9Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBpbnB1dF9zdG9wKGRldik7Cj4+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5eXl5eXl5eXl5eXl5eXl4KPj4+Pj4KPj4+Pj4g
SXQgd2lsbCBub3QgYmUgY2FsbGVkIHdoZW4gZGV2LT51c2VycyBpcyB6ZXJvLCBidXQgaWYgaXQg
aXMgemVybywKPj4+Pj4gdGhlbiBub2JvZHkgaGFzIG9wZW5lZCB0aGUgZGV2aWNlIHlldCBzbyB0
aGVyZSBpcyBub3RoaW5nIHRvIGNsb3NlLgo+Pj4+Cj4+Pj4gQWgsIEkgbWlzc2VkIHRoYXQuCj4+
Pj4KPj4+PiBTbyBpZiB0aGUgZGV2aWNlIGltcGxlbWVudHMgdGhlIGluaGliaXQgY2FsbCBiYWNr
IHRoZW4gb24KPj4+PiBpbmhpYml0IGl0IHdpbGwgZ2V0IGJvdGggdGhlIGluaGliaXQgYW5kIGNs
b3NlIGNhbGxiYWNrIGNhbGxlZD8KPj4+Pgo+Pj4KPj4+IFRoYXQncyByaWdodC4gQW5kIGNvbnZl
cnNlbHksIHVwb24gdW5pbmhpYml0IG9wZW4oKSBhbmQgdW5pbmhpYml0KCkKPj4+IGNhbGxiYWNr
cyB3aWxsIGJlIGludm9rZWQuIFBsZWFzZSBub3RlIHRoYXQganVzdCBhcyB3aXRoIG9wZW4oKS9j
bG9zZSgpLAo+Pj4gcHJvdmlkaW5nIGluaGliaXQoKS91bmluaGliaXQoKSBpcyBvcHRpb25hbC4K
Pj4KPj4gQWNrLgo+Pgo+Pj4+IEFuZCB3aGF0IGhhcHBlbnMgaWYgdGhlIGxhc3QgdXNlciBnb2Vz
IGF3YXkgYW5kIHRoZSBkZXZpY2UKPj4+PiBpcyBub3QgaW5oaWJpdGVkPwo+Pj4KPj4+IGNsb3Nl
KCkgaXMgY2FsbGVkIGFzIHVzdWFsbHkuCj4+Cj4+IEJ1dCBub3QgaW5oaWJpdCwgaG1tLCBzZWUg
YmVsb3cuCj4+Cj4+Pj4gSSdtIHRyeWluZyB0byB1bmRlcnN0YW5kIGhlcmUgd2hhdCB0aGUgZGlm
ZmVyZW5jZSBiZXR3ZWVuIHRoZSAyCj4+Pj4gaXMgLyB3aGF0IHRoZSBnb2FsIG9mIGhhdmluZyBh
IHNlcGFyYXRlIGluaGliaXQgY2FsbGJhY2sgPwo+Pj4+Cj4+Pgo+Pj4gRHJpdmVycyBoYXZlIHZl
cnkgZGlmZmVyZW50IGlkZWFzIGFib3V0IHdoYXQgaXQgbWVhbnMgdG8gc3VzcGVuZC9yZXN1bWUK
Pj4+IGFuZCBvcGVuL2Nsb3NlLiBUaGUgb3B0aW9uYWwgaW5oaWJpdC91bmluaGliaXQgY2FsbGJh
Y2tzIGFyZSBtZWFudCBmb3IKPj4+IHRoZSBkcml2ZXJzIHRvIGtub3cgdGhhdCBpdCBpcyB0aGlz
IHBhcnRpY3VsYXIgYWN0aW9uIGdvaW5nIG9uLgo+Pgo+PiBTbyB0aGUgaW5oaWJpdCgpIGNhbGxi
YWNrIHRyaWdnZXJzIHRoZSAic3VzcGVuZCIgYmVoYXZpb3IgPwo+PiBCdXQgc2hvdWxkbid0IGRy
aXZlcnMgd2hpY2ggYXJlIGNhcGFibGUgb2Ygc3VzcGVuZGluZyB0aGUgZGV2aWNlCj4+IGFsd2F5
cyBkbyBzbyBvbiBjbG9zZSgpID8KPj4KPj4gU2luY2UgeW91ciBjdXJyZW50IHByb3Bvc2FsIGFs
c28gY2FsbHMgY2xvc2UoKSBvbiBpbmhpYml0KCkgSQo+PiByZWFsbHkgc2VlIGxpdHRsZSBkaWZm
ZXJlbmNlIGJldHdlZW4gYW4gaW5oaWJpdCgpIGFuZCB0aGUgbGFzdAo+PiB1c2VyIG9mIHRoZSBk
ZXZpY2UgY2xvc2luZyBpdCBhbmQgSU1ITyB1bmxlc3MgdGhlcmUgaXMgYSBnb29kCj4+IHJlYXNv
biB0byBhY3R1YWxseSBkaWZmZXJlbnRpYXRlIHRoZSAyIGl0IHdvdWxkIGJlIGJldHRlcgo+PiB0
byBvbmx5IHN0aWNrIHdpdGggdGhlIGV4aXN0aW5nIGNsb3NlKCkgYW5kIGluIGNhc2VzIHdoZXJl
Cj4+IHRoYXQgZG9lcyBub3QgcHV0IHRoZSBkZXZpY2UgaW4gYSBsb3ctcG93ZXIgbW9kZSB5ZXQs
IGZpeAo+PiB0aGUgZXhpc3RpbmcgY2xvc2UoKSBjYWxsYmFjayB0byBkbyB0aGUgbG93LXBvd2Vy
IG1vZGUKPj4gc2V0dGluZyBpbnN0ZWFkIG9mIGFkZGluZyBhIG5ldyBjYWxsYmFjay4KPj4KPj4+
IEZvciBpbmhpYml0KCkgdGhlcmUncyBvbmUgbW9yZSBhcmd1bWVudDogY2xvc2UoKSBkb2VzIG5v
dCByZXR1cm4gYSB2YWx1ZSwKPj4+IHNvIGl0cyBtZWFuaW5nIGlzICJkbyBzb21lIGxhc3QgY2xl
YW51cCIgYW5kIGFzIHN1Y2ggaXQgaXMgbm90IGFsbG93ZWQKPj4+IHRvIGZhaWwgLSB3aGF0ZXZl
ciBpdHMgZWZmZWN0IGlzLCB3ZSBtdXN0IGRlZW0gaXQgc3VjY2Vzc2Z1bC4gaW5oaWJpdCgpCj4+
PiBkb2VzIHJldHVybiBhIHZhbHVlIGFuZCBzbyBpdCBpcyBhbGxvd2VkIHRvIGZhaWwuCj4+Cj4+
IFdlbGwsIHdlIGNvdWxkIG1ha2UgY2xvc2UoKSByZXR1cm4gYW4gZXJyb3IgYW5kIGF0IGxlYXN0
IGluIHRoZSBpbmhpYml0KCkKPj4gY2FzZSBwcm9wYWdhdGUgdGhhdCB0byB1c2Vyc3BhY2UuIEkg
d29uZGVyIGlmIHVzZXJzcGFjZSBpcyBnb2luZyB0bwo+PiBkbyBhbnl0aGluZyB1c2VmdWwgd2l0
aCB0aGF0IGVycm9yIHRob3VnaC4uLgo+Pgo+PiBJbiBteSBleHBlcmllbmNlIGVycm9ycyBkdXJp
bmcgY2xlYW51cC9zaHV0ZG93biBhcmUgYmVzdCBsb2dnZWQKPj4gKHVzaW5nIGRldl9lcnIpIGFu
ZCBvdGhlcndpc2UgaWdub3JlZCwgc28gdGhhdCB3ZSB0cnkgdG8gY2xlYW4gdXAKPj4gYXMgbXVj
aCBwb3NzaWJsZS4gVW5sZXNzIHRoZSB2ZXJ5IGZpcnN0IHN0ZXAgb2YgdGhlIHNodXRkb3duIHBy
b2Nlc3MKPj4gZmFpbHMgdGhlIGRldmljZSBpcyBnb2luZyB0byBiZSBpbiBzb21lIHR3aWxpZ2h0
IHpvbmUgc3RhdGUgYW55d2F5cwo+PiBhdCB0aGlzIHBvaW50IHdlIG1pZ2h0IGFzIHdlbGwgdHJ5
IHRvIGNsZWFudXAgYXMgbXVjaCBhcyBwb3NzaWJsZS4KPiAKPiBXaGF0IHlvdSBzYXkgbWFrZXMg
c2Vuc2UgdG8gbWUuCj4gQERtaXRyeT8KPiAKPj4KPj4+IEFsbCBpbiBhbGwsIGl0IGlzIHVwIHRv
IHRoZSBkcml2ZXJzIHRvIGRlY2lkZSB3aGljaCBjYWxsYmFjayB0aGV5Cj4+PiBwcm92aWRlLiBC
YXNlZCBvbiBteSB3b3JrIHNvIGZhciBJIHdvdWxkIHNheSB0aGF0IHRoZXJlIGFyZSB0ZW5zCj4+
PiBvZiBzaW1wbGUgY2FzZXMgd2hlcmUgb3BlbigpIGFuZCBjbG9zZSgpIGFyZSBzdWZmaWNpZW50
LCBvdXQgb2YgdG90YWwKPj4+IH40MDAgdXNlcnMgb2YgaW5wdXRfYWxsb2NhdGVfZGV2aWNlKCk6
Cj4+Pgo+Pj4gJCBnaXQgZ3JlcCAiaW5wdXRfYWxsb2NhdGVfZGV2aWNlKCIgfCBncmVwIC12IF5E
b2N1bWVudGF0aW9uIHwgXAo+Pj4gY3V0IC1mMSAtZDogfCBzb3J0IHwgdW5pcSB8IHdjCj4+PiDC
oMKgwqDCoCAzOTDCoMKgwqDCoCAzOTDCoMKgIDEzNDk2Cj4+Cj4+IFNvIGNhbiB5b3UgZXhwbGFp
biBhIGJpdCBtb3JlIGFib3V0IHRoZSBjYXNlcyB3aGVyZSBvbmx5IGhhdmluZwo+PiBvcGVuL2Ns
b3NlIGlzIG5vdCBzdWZmaWNpZW50P8KgIFNvIGZhciBJIGhhdmUgdGhlIGZlZWxpbmcgdGhhdAo+
PiB0aG9zZSBhcmUgYWxsIHdlIG5lZWQgYW5kIHRoYXQgd2UgcmVhbGx5IGRvIG5vdCBuZWVkIHNl
cGFyYXRlCj4+IFt1bl1pbmhpYml0IGNhbGxiYWNrcy4KPiAKPiBNeSBwcmltYXJ5IGNvbmNlcm4g
d2FzIG5vdCBiZWluZyBhYmxlIHRvIHByb3BhZ2F0ZSBpbmhpYml0KCkgZXJyb3IKPiB0byB1c2Vy
c3BhY2UsIGFuZCB0aGVuIGlmIHdlIGhhdmUgaW5oaWJpdCgpLCB1bmluaGliaXQoKSBzaG91bGQg
YmUKPiB0aGVyZSBmb3IgY29tcGxldGVuZXNzLiBJZiBwcm9wYWdhdGluZyB0aGUgZXJyb3IgdG8g
dXNlcnNwYWNlIGNhbgo+IGJlIG5lZ2xlY3RlZCB0aGVuIHllcywgaXQgc2VlbXMgb3Blbi9jbG9z
ZSBzaG91bGQgYmUgc3VmZmljaWVudCwKPiBldmVuIG1vcmUgYmVjYXVzZSB0aGUgcmVhbCBtZWFu
aW5nIG9mICJvcGVuIiBpcyAicHJlcGFyZSB0aGUgZGV2aWNlCj4gZm9yIGdlbmVyYXRpbmcgaW5w
dXQgZXZlbnRzIi4KPiAKPiBUbyB2YWxpZGF0ZSB0aGUgaWRlYSBvZiBub3QgaW50cm9kdWNpbmcg
aW5oaWJpdCgpL3VuaW5oaWJpdCgpIGNhbGxiYWNrcwo+IHRvIGltcGxlbWVudCBkZXZpY2UgaW5o
aWJpdGluZy91bmluaGliaXRpbmcgbGV0J3MgbG9vayBhdAo+IGRyaXZlcnMvaW5wdXQvbW91c2Uv
ZWxhbl9pMmNfY29yZS5jIChQQVRDSCA3LzcpOgo+IAo+IHN0YXRpYyBpbnQgZWxhbl9pbmhpYml0
KHN0cnVjdCBpbnB1dF9kZXYgKmlucHV0KQo+IHsKPiBbLi4uXQo+IAo+ICDCoMKgwqDCoHJldCA9
IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmZGF0YS0+c3lzZnNfbXV0ZXgpOwo+ICDCoMKgwqDC
oGlmIChyZXQpCj4gIMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4gCj4gIMKgwqDCoMKgZGlz
YWJsZV9pcnEoY2xpZW50LT5pcnEpOwo+IAo+ICDCoMKgwqDCoHJldCA9IGVsYW5fZGlzYWJsZV9w
b3dlcihkYXRhKTsKPiAgwqDCoMKgwqBpZiAocmV0KQo+ICDCoMKgwqDCoMKgwqDCoCBlbmFibGVf
aXJxKGNsaWVudC0+aXJxKTsKPiBbLi4uXQo+IH0KPiAKPiBGaXJzdCwgY2xvc2UoKSBkb2VzIG5v
dCBleGlzdCBpbiB0aGlzIGRyaXZlci4gT2YgY291cnNlIHRoaXMgY2FuIGJlCj4gZml4ZWQuIFRo
ZW4gaXQgZG9lc24ndCByZXR1cm4gYSB2YWx1ZS4gVGhlbiwgaWYgZWl0aGVyIHRha2luZyB0aGUK
PiBtdXRleCBvciBkaXNhYmxpbmcgdGhlIHBvd2VyIGZhaWxzLCB0aGUgY2xvc2UoKSBpcyBzdGls
bCBkZWVtZWQKPiBzdWNjZXNzZnVsLiBJcyBpdCBvaz8KCk5vdGUgSSBhbHNvIG1lbnRpb25lZCBh
bm90aGVyIHNvbHV0aW9uIGZvciB0aGUgZXJyb3IgcHJvcGFnYXRpb24sCndoaWNoIHdvdWxkIHJl
cXVpcmUgYSBiaWcgImZsYWcgZGF5IiBjb21taXQgYWRkaW5nICJyZXR1cm4gMCIKdG8gYWxsIGV4
aXN0aW5nIGNsb3NlIGNhbGxiYWNrcywgYnV0IG90aGVyd2lzZSBzaG91bGQgd29yayBmb3IgeW91
cgpwdXJwb3NlczoKCiA+IFdlbGwsIHdlIGNvdWxkIG1ha2UgY2xvc2UoKSByZXR1cm4gYW4gZXJy
b3IgYW5kIGF0IGxlYXN0IGluIHRoZSBpbmhpYml0KCkKID4gY2FzZSBwcm9wYWdhdGUgdGhhdCB0
byB1c2Vyc3BhY2UuIEkgd29uZGVyIGlmIHVzZXJzcGFjZSBpcyBnb2luZyB0bwogPiBkbyBhbnl0
aGluZyB1c2VmdWwgd2l0aCB0aGF0IGVycm9yIHRob3VnaC4uLgoKQW5kIEkgZ3Vlc3Mgd2UgY291
bGQgbG9nIGFuIGVycm9yIHRoYXQgY2xvc2UgZmFpbGVkIGluIHRoZSBvbGQgY2xvc2UoKSBwYXRo
CndoZXJlIHdlIGNhbm5vdCBwcm9wYWdhdGUgdGhlIGVycm9yLgoKQWxzbyB3aHkgdGhlIG11dGV4
X2xvY2tfaW50ZXJydXB0aWJsZSgpID8gIElmIHlvdSBjaGFuZ2UgdGhhdCB0bwphIG5vcm1hbCBt
dXRleF9sb2NrKCkgeW91IGxvb3NlIG9uZSBvZiB0aGUgcG9zc2libGUgMiBlcnJvciBjYXNlcyBh
bmQKSSBkb3VidCBhbnlvbmUgaXMgZ29pbmcgdG8gZG8gYSBDVFJMLUMgb2YgdGhlIHByb2Nlc3Mg
ZG9pbmcgdGhlCmluaGliaXRpbmcgKG9yIHRoYXQgdGhhdCBwcm9jZXNzIHN0YXJ0cyBhIHRpbWVy
IHVzaW5nIGEgc2lnbmFsCnRvIGVuc3VyZSB0aGUgaW5oaWJpdCBkb2VzIG5vdCB0YWtlIHRvIGxv
bmcgb3Igc29tZSBzdWNoKS4KClJlZ2FyZHMsCgpIYW5zCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
