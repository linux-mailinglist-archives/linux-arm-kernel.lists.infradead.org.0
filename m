Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C46F1F55A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 15:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rCHzdDBrXaj5YICTRg7aAfRlZIuS4oGXy6KyWepqbws=; b=syiua12zajUI+VnXwlKWCWRTj
	BcLgQfW4XcrqljBgymxOvpaTeKjzwE3KQmRGmJ4xc8JGPE3hDFfgQ8IrrBs6eBUhf7msU2QHvslx5
	rgwIcvWUtqlkWE9P3nHvC1WFi3TwrJyrRiZ+yV2idHDI7Yz2bwhBa8TxpViYzuhC879hAXNYgxDyH
	qbzEMP7b1nFtd4aG56kWS8OWtt2ZjtTfzBhHh2iaWYzdvLIxcot+6H2LK9Etk1+ReEsJQknYEgjCY
	SduvcK9j+1YWAaheFZq3HYQ6BQ4c5qNpoXaGG5UgAcwgfyXvbmNzgDsPh4q8ErQWV3OouI2QDCS8z
	s+LcEXwxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj0fv-00085s-5c; Wed, 10 Jun 2020 13:21:51 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj0fl-00085R-PV
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 13:21:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591795300;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DlplkVPrHKzwqp9XQ8hCr9mQJfW4CL7+sK6OIcyqTu0=;
 b=KAb3br+I2I5a0Z7h6Dzyi8ZrPq+FEnIVABKTn6tKvCRoGvW28ganszq9WukPVjl6gT14FF
 SyRW/Y3873xh9QEZLoevM7dI60dtjFFgJok+25f1KJqNqDh+exRZ681Ujq541Oj+ak8eiM
 l+dsUYVqD72vfe6qU4xggT9unZx9fRU=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-37-3RbOcM6mPmCxyzqGQ4kAVg-1; Wed, 10 Jun 2020 09:21:38 -0400
X-MC-Unique: 3RbOcM6mPmCxyzqGQ4kAVg-1
Received: by mail-ed1-f71.google.com with SMTP id 92so648515edl.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 06:21:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DlplkVPrHKzwqp9XQ8hCr9mQJfW4CL7+sK6OIcyqTu0=;
 b=pbnC08qaeIDUvXAgYe83gbI4NArQ/se7CpRgliF2NAsJFiBDuQqkCEWBNMXg8SbedS
 VNeLmallJcxhIC+tuT9tbmBBtJkQZYW4686yvvgx6rdR6yrKfoB55a2WWU5m4Z0gor2w
 9EAVLw68xaM+ktLoqoMoP7rTdb9/jaWiKPqMDlr3M1dQRdQZXJIvjP80TdxG3VDXbC5n
 K495TbzOfTYVRMbt/GR7SwUwGEZr/tFZPRjndq6B5K48D6dSrIj5zCeV3HsnBNRqxn1+
 LaRAVcZ8YpNah4HOrL3B21GVxaGs9fNT9Z3qeIUZu97V4si2dCWBfaAm2Pd85o/QhnTP
 wBag==
X-Gm-Message-State: AOAM531tWkkZnWDDyqhVQOUTvTgC9WqL2EiP5r25ws7wmSv6xLZOPyWZ
 2iS/jVYTX8IUFBVWpM/k7lhBbO0bNR1/ZvIyjAIFaKHZ7dC0p6v2YU/VrJXZsNYuJm4+nxCaCAd
 OaUt2IZhS1R+jjCOEz437LHXzAgwQvfmz3do=
X-Received: by 2002:a50:bf0e:: with SMTP id f14mr2520517edk.37.1591795296914; 
 Wed, 10 Jun 2020 06:21:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz3Kk79EA+wXpXk6yhNsxocbwWxoup7cqkJV7mK6aQdCYbcNsTWoysAMZWDcdRtd0q1XzbZ6w==
X-Received: by 2002:a50:bf0e:: with SMTP id f14mr2520475edk.37.1591795296587; 
 Wed, 10 Jun 2020 06:21:36 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id l8sm15626086ejz.52.2020.06.10.06.21.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 06:21:35 -0700 (PDT)
Subject: Re: [PATCH v4 0/7] Support inhibiting input devices
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
 <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
 <6136f26c-e090-e025-af55-4c5f3a6aec92@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <3e61c9c1-b211-da9f-c55b-b44eb6522f2a@redhat.com>
Date: Wed, 10 Jun 2020 15:21:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <6136f26c-e090-e025-af55-4c5f3a6aec92@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_062141_906243_1ADF966B 
X-CRM114-Status: GOOD (  30.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Collabora Kernel ML <kernel@collabora.com>, Nick Dyer <nick@shmanahar.org>,
 linux-iio@vger.kernel.org,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Linux Samsung SoC <linux-samsung-soc@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-input@vger.kernel.org, Len Brown <lenb@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Linux PM <linux-pm@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiA2LzEwLzIwIDM6MTIgUE0sIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPiBI
aSBBbGwsCj4gCj4gVyBkbml1IDEwLjA2LjIwMjAgb8KgMTI6MzgsIFJhZmFlbCBKLiBXeXNvY2tp
IHBpc3plOgo+PiBPbiBXZWQsIEp1biAxMCwgMjAyMCBhdCAxMTo1MCBBTSBIYW5zIGRlIEdvZWRl
IDxoZGVnb2VkZUByZWRoYXQuY29tPiB3cm90ZToKPj4+Cj4+PiBIaSBBbGwsCj4+Pgo+Pj4gT24g
Ni84LzIwIDE6MjIgUE0sIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPj4+PiBUaGlzIGlz
IGEgcXVpY2sgcmVzcGluIG9mIHYzLCB3aXRoIGp1c3QgdHdvIHNtYWxsIGNoYW5nZXMsIHBsZWFz
ZSBzZWUKPj4+PiB0aGUgY2hhbmdlbG9nIGJlbG93Lgo+Pj4+Cj4+Pj4gVXNlcnNwYWNlIG1pZ2h0
IHdhbnQgdG8gaW1wbGVtZW50IGEgcG9saWN5IHRvIHRlbXBvcmFyaWx5IGRpc3JlZ2FyZCBpbnB1
dAo+Pj4+IGZyb20gY2VydGFpbiBkZXZpY2VzLgo+Pj4+Cj4+Pj4gQW4gZXhhbXBsZSB1c2UgY2Fz
ZSBpcyBhIGNvbnZlcnRpYmxlIGxhcHRvcCwgd2hvc2Uga2V5Ym9hcmQgY2FuIGJlIGZvbGRlZAo+
Pj4+IHVuZGVyIHRoZSBzY3JlZW4gdG8gY3JlYXRlIHRhYmxldC1saWtlIGV4cGVyaWVuY2UuIFRo
ZSB1c2VyIHRoZW4gbXVzdCBob2xkCj4+Pj4gdGhlIGxhcHRvcCBpbiBzdWNoIGEgd2F5IHRoYXQg
aXQgaXMgZGlmZmljdWx0IHRvIGF2b2lkIHByZXNzaW5nIHRoZSBrZXlib2FyZAo+Pj4+IGtleXMu
IEl0IGlzIHRoZXJlZm9yZSBkZXNpcmFibGUgdG8gdGVtcG9yYXJpbHkgZGlzcmVnYXJkIGlucHV0
IGZyb20gdGhlCj4+Pj4ga2V5Ym9hcmQsIHVudGlsIGl0IGlzIGZvbGRlZCBiYWNrLiBUaGlzIG9i
dmlvdXNseSBpcyBhIHBvbGljeSB3aGljaCBzaG91bGQKPj4+PiBiZSBrZXB0IG91dCBvZiB0aGUg
a2VybmVsLCBidXQgdGhlIGtlcm5lbCBtdXN0IHByb3ZpZGUgc3VpdGFibGUgbWVhbnMgdG8KPj4+
PiBpbXBsZW1lbnQgc3VjaCBhIHBvbGljeS4KPj4+Cj4+PiBGaXJzdCBvZiBhbGwgc29ycnkgdG8g
c3RhcnQgYSBzb21ld2hhdCBuZXcgZGlzY3Vzc2lvbiBhYm91dCB0aGlzCj4+PiB3aGlsZSB0aGlz
IHBhdGNoIHNldCBpcyBhbHNvIHNvbWV3aGF0IGZhciBhbG9uZyBpbiB0aGUgcmV2aWV3IHByb2Nl
c3MsCj4+PiBidXQgSSBiZWxpZXZlIHdoYXQgSSBkaXNjdXNzIGJlbG93IG5lZWRzIHRvIGJlIHRh
a2VuIGludG8gYWNjb3VudC4KPj4+Cj4+PiBZZXN0ZXJkYXkgSSBoYXZlIGJlZW4gbG9va2luZyBp
bnRvIHdoeSBhbiBBc3VzIFQxMDFIQSB3b3VsZCBub3Qgc3RheQo+Pj4gc3VzcGVuZGVkIHdoZW4g
dGhlIExJRCBpcyBjbG9zZWQuIFRoZSBjYXVzZSBpcyB0aGF0IHRoZSBVU0IgSElEIG11bHRpLXRv
dWNoCj4+PiB0b3VjaHBhZCBpbiB0aGUgYmFzZSBvZiB0aGUgZGV2aWNlIHN0YXJ0cyBzZW5kaW5n
IGV2ZW50cyB3aGVuIHRoZSBzY3JlZW4KPj4+IGdldHMgY2xvc2UgdG8gdGhlIHRvdWNocGFkIChz
byB3aGVuIHRoZSBMSUQgaXMgZnVsbHkgY2xvc2VkKSBhbmQgdGhlc2UKPj4+IGV2ZW50cyBhcmUg
Y2F1c2luZyBhIHdha2V1cCBmcm9tIHN1c3BlbmQuIEhJRCBtdWx0aS10b3VjaCBkZXZpY2VzCj4+
PiBkbyBoYXZlIGEgd2F5IHRvIHRlbGwgdGhlbSB0byBmdWxseSBzdG9wIHNlbmRpbmcgZXZlbnRz
LCBhbHNvIGRpc2FibGluZwo+Pj4gdGhlIFVTQiByZW1vdGUgd2FrZXVwIHRoZSBkZXZpY2UgaXMg
ZG9pbmcuIFRoZSBxdWVzdGlvbiBpcyB3aGVuIHRvIHRlbGwKPj4+IGl0IHRvIG5vdCBzZW5kIGV2
ZW50cyB0aG91Z2ggLi4uCj4+Pgo+Pj4gU28gbm93IEkndmUgYmVlbiB0aGlua2luZyBhYm91dCBo
b3cgdG8gZml4IHRoaXMgYW5kIEkgYmVsaWV2ZSB0aGF0IHRoZXJlCj4+PiBpcyBzb21lIGludGVy
YWN0aW9uIGJldHdlZW4gdGhpcyBwcm9ibGVtIGFuZCB0aGlzIHBhdGNoLXNldC4KPj4+Cj4+PiBU
aGUgcHJvYmxlbSBJJ20gc2VlaW5nIG9uIHRoZSBUMTAxSEEgaXMgYWJvdXQgd2FrZXVwcywgc28g
dGhlIHF1ZXN0aW9uCj4+PiB3aGljaCBJIHdhbnQgdG8gZGlzY3VzcyBpczoKPj4+Cj4+PiAxLiBI
b3cgZG9lcyBpbmhpYml0aW5nIGludGVyYWN0IHdpdGggZW5hYmxpbmcgLwo+Pj4gZGlzYWJsaW5n
IHRoZSBkZXZpY2UgYXMgYSB3YWtldXAgc291cmNlID8KPj4+Cj4+PiAyLiBTaW5jZSB3ZSBoYXZl
IG5vdyBtYWRlIGluaGliaXRpbmcgZXF1YWwgb3Blbi9jbG9zZSBob3cgZG9lcyBvcGVuL2Nsb3Nl
Cj4+PiBpbnRlcmFjdCB3aXRoIGEgZGV2aWNlIGJlaW5nIGEgd2FrZXVwIHNvdXJjZSA/Cj4+Pgo+
Pj4gQW5kIG15IG93biBpbml0aWFsICh0byBiZSBkaXNjdXNzZWQpIGFuc3dlcnMgdG8gdGhlc2Ug
cXVlc3Rpb25zOgo+Pj4KPj4+IDEuIEl0IHNlZW1zIHRvIG1lIHRoYXQgd2hlbiBhIGRldmljZSBp
cyBpbmhpYml0ZWQgaXQgc2hvdWxkIG5vdCBiZSBhCj4+PiB3YWtldXAgc291cmNlLCBzbyB3aGVy
ZSBwb3NzaWJsZSBhIGlucHV0LWRldmljZS1kcml2ZXIgc2hvdWxkIGRpc2FibGUKPj4+IGEgZGV2
aWNlJ3Mgd2FrZXVwIGNhcGFiaWxpdGllcyBvbiBzdXNwZW5kIGlmIGluaGliaXRlZAo+Pgo+PiBJ
ZiAiaW5oaWJpdCIgbWVhbnMgImRvIG5vdCBnZW5lcmF0ZSBhbnkgZXZlbnRzIGdvaW5nIGZvcndh
cmQiLCB0aGVuCj4+IHRoaXMgbXVzdCBhbHNvIGNvdmVyIHdha2V1cCBldmVudHMsIHNvIEkgYWdy
ZWUuCj4gCj4gSSBhZ3JlZSwgdG9vLgo+IAo+Pgo+Pj4gMi4gVGhpcyBvbmUgaXMgdHJpY2tpZXIg
SSBkb24ndCB0aGluayB3ZSBoYXZlIHJlYWxseSBjbGVhcmx5IHNwZWNpZmllZAo+Pj4gYW55IGJl
aGF2aW9yIGhlcmUuIFRoZSBkZWZhdWx0IGJlaGF2aW9yIG9mIG1vc3QgZHJpdmVycyBzZWVtcyB0
byBiZQo+Pj4gdXNpbmcgc29tZXRoaW5nIGxpa2UgdGhpcyBpbiB0aGVpciBzdXNwZW5kIGNhbGxi
YWNrOgo+Pj4KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoZGV2aWNlX21heV93YWtldXAoZGV2
KSkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW5hYmxlX2lycV93YWtl
KGRhdGEtPmlycSk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZWxzZSBpZiAoaW5wdXQtPnVzZXJz
KQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmb29fc3RvcF9yZWNlaXZp
bmdfZXZlbnRzKGRhdGEpOwo+Pj4KPj4+IFNpbmNlIHRoaXMgaXMgd2hhdCBtb3N0IGRyaXZlcnMg
c2VlbSB0byBkbyBJIGJlbGlldmUgd2Ugc2hvdWxkIGtlZXAKPj4+IHRoaXMgYXMgaXMgYW5kIHRo
YXQgd2Ugc2hvdWxkIGp1c3QgY2xlYXJseSBkb2N1bWVudCB0aGF0IGlmIHRoZQo+Pj4gaW5wdXRf
ZGV2aWNlIGhhcyB1c2VycyAoaGFzIGJlZW4gb3BlbmVkKSBvciBub3QgZG9lcyBub3QgbWF0dGVy
Cj4+PiBmb3IgaXRzIHdha2V1cCBiZWhhdmlvci4KPj4+Cj4+PiBDb21iaW5pbmcgdGhlc2UgMiBh
bnN3ZXJzIGxlYWRzIHRvIHRoaXMgbmV3IHBzZXVkbyBjb2RlIHRlbXBsYXRlCj4+PiBmb3IgYW4g
aW5wdXQtZGV2aWNlJ3Mgc3VzcGVuZCBtZXRob2Q6Cj4+Pgo+Pj4gwqDCoMKgwqDCoMKgwqDCoCAv
Kgo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgICogSWYgaW5oaWJpdGVkIHdlIGhhdmUgYWxyZWFkeSBk
aXNhYmxlZCBldmVudHMgYW5kCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgKiB3ZSBkbyBOT1Qgd2Fu
dCB0byBzZXR1cCB0aGUgZGV2aWNlIGFzIHdha2Ugc291cmNlLgo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgICovCj4+PiDCoMKgwqDCoMKgwqDCoMKgIGlmIChpbnB1dC0+aW5oaWJpdGVkKQo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4gCj4gUmlnaHQsIGlmIGEg
ZGV2aWNlIGlzIGluaGliaXRlZCBpdCBzaG91bGRuJ3QgYmVjb21lIGEgd2FrZXVwIHNvdXJjZSwK
PiBiZWNhdXNlIHRoYXQgd291bGQgY29udHJhZGljdCB0aGUgcHVycG9zZSBvZiBiZWluZyBpbmhp
Yml0ZWQuCgpBY2suIE5vdGUgSSBkbyB0aGluayB0aGF0IHdlIG5lZWQgdG8gZG9jdW1lbnQgdGhp
cyAoYW5kIG1vcmUKaW4gZ2VuZXJhbCB0aGUgYW5zd2VyIHRvIGJvdGggcXVlc3Rpb25zIGZyb20g
YWJvdmUpIGNsZWFybHkgc28KdGhhdCBnb2luZyBmb3J3YXJkIGlmIHRoZXJlIGFyZSBhbnkgcXVl
c3Rpb25zIGFib3V0IGhvdyB0aGlzIGlzCnN1cHBvc2VkIHRvIHdvcmsgd2UgY2FuIGp1c3QgcG9p
bnQgdG8gdGhlIGRvY3MuCgpDYW4geW91IGRvIGEgZm9sbG93LXVwIHBhdGNoLCBvciBpbmNsdWRl
IGEgcGF0Y2ggaW4geW91ciBuZXh0CnZlcnNpb24gd2hpY2ggZG9jdW1lbnRzIHRoaXMgKG9uY2Ug
d2UgYWdyZWUgb24gd2hhdCAidGhpcyIKZXhhY3RseSBpcykgPwoKPj4+Cj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgaWYgKGRldmljZV9tYXlfd2FrZXVwKGRldikpCj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGVuYWJsZV9pcnFfd2FrZShkYXRhLT5pcnEpOwo+IAo+IFdoYXQg
d291bGQgaXQgbWVhbiB0byBiZWNvbWUgYSB3YWtldXAgc291cmNlIGlmIHRoZXJlIGFyZSBubyB1
c2VycywKPiBvciBub2JvZHkgaGFzIGV2ZXIgb3BlbmVkIHRoZSBkZXZpY2U/IFRoZXJlIGFyZSBu
byBpbnRlcmVzdGVkCj4gaW5wdXQgaGFuZGxlcnMgKHVzZXJzKSBzbyB3aGF0J3MgdGhlIHBvaW50
IG9mIGJlY29taW5nIGEgd2FrZXVwCj4gc291cmNlPyBXaHkgd291bGQgdGhlIHN5c3RlbSBuZWVk
IHRvIHdha2UgdXA/CgpXZWxsIHRoaXMgaXMgd2hhdCB3ZSBoYXZlIGJlZW4gZG9pbmcgc28gZmFy
LCBzbyBhcmd1YWJseSB3ZQpuZWVkIHRvIGtlZXAgZG9pbmcgaXQgdG8gYXZvaWQgcmVncmVzc2lv
bnMgLyBicmVha2luZyBvdXIgQUJJLgoKTGV0cyBmb3IgZXhhbXBsZSB0YWtlIGEgbGFwdG9wLCB3
aGVyZSB3aGVuIHN1c3BlbmRlZCB0aGUKcG93ZXItYnV0dG9uIGlzIHRoZSBvbmx5IHZhbGlkIHdh
a2V1cC1zb3VyY2UgYW5kIHRoaXMgaXMKcnVubmluZyBnb29kIG9sZCBzbGFja3dhcmUgd2l0aCBm
dndtMiBvciB3aW5kb3dtYWtlciBhcwoiZGVza3RvcCBlbnZpcm9ubWVudCIsIHRoZW4gbGlrZWx5
IG5vIHByb2Nlc3Mgd2lsbCBoYXZlCnRoZSBwb3dlci1idXR0b24gaW5wdXQgZXZkZXYgbm9kZSBv
cGVuLiAgU3RpbGwgd2Ugc2hvdWxkCndha2V1cCB0aGUgbGFwdG9wIG9uIHRoZSBwb3dlci1idXR0
b24gcHJlc3MsIG90aGVyd2lzZQppdCB3aWxsIG5ldmVyIHdha2V1cC4KCk5vdGUgSSBhZ3JlZSB3
aXRoIHlvdSB0aGF0IHRoZSB3YXkgdGhpcyB3b3JrcyBpcyBub3QKaWRlYWwsIEkganVzdCBkbyBu
b3QgdGhpbmsgdGhhdCB3ZSBjYW4gY2hhbmdlIGl0LgoKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBl
bHNlIGlmIChpbnB1dC0+dXNlcnMpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGZvb19zdG9wX3JlY2VpdmluZ19ldmVudHMoZGF0YSk7Cj4+Pgo+Pj4gIyMjCgo8c25pcD4K
ClJlZ2FyZHMsCgpIYW5zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
