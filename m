Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E45791D7882
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 14:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=veILajYsLjoim9jByy516AKAms12/G3YbG7sTO2YaSs=; b=OuBf+MHshmglaPy60Imyxk5fr
	usQaun9fsjSXJTpPzx+2q21Q+UPzdw39VR9gCbtx63tjPgReGbEPvfBTEwnVSZQdwVgaLuTZDC4HU
	WJynvz5J6wsnwFIpznlUE2HP45H5BIfHlq1Kj/PvblUkuudWwBsmN0j7/humTFWQISY6DpczULcdo
	PpOxVns9BodQFPEd6U3wax1o0lCyX3hiYoygC3B1BUmngDUCCvAVvid0Mex1lbzNF11r9orD0Topx
	/Za5s31RzSATCT+fXZYK6sphp4DGFnmGGXi9G5JtyB7xVHdp27GQQMayFqkE3b1OKMrRFbuobvdZf
	tFDOILC5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaeoh-00026T-Lh; Mon, 18 May 2020 12:24:23 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaeoY-000246-DD
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 12:24:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589804650;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aNddrvnjvVAzGmBCFtMQ5iaiY8jsBoqXulJlnAFXCC4=;
 b=hAhm+jG5rGh2nAQ2FNGBPLt0oUriF55/gzk/OJOewa2uJHglxZM8RT4qXSuBTi0e9+dzbg
 FPgYAlp7JljPdx5OhZ1T2+Lk0pJJYJW+PbwwFE3QHNPkFdrU6L2tttWjBCENYkYHRGmEGl
 ZetyaI0wYaKxavw6rXWA5qzD48yQd6U=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-182-IiRNywhwPXu8ofTioU6KxQ-1; Mon, 18 May 2020 08:24:08 -0400
X-MC-Unique: IiRNywhwPXu8ofTioU6KxQ-1
Received: by mail-wm1-f69.google.com with SMTP id l26so3022529wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 05:24:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aNddrvnjvVAzGmBCFtMQ5iaiY8jsBoqXulJlnAFXCC4=;
 b=GJDx4mgVxIrsNisH/lYi1qpCCg/c3Hzu0kF9RpXWdWQNdNNNF7wk3TMuD86JAu/JHZ
 LR6EtUsFVqo3pE4vL7FskfGnt14ymoCVjTOTH32Iz4BUS7CyjVOKHqAm7eCyG28+8NRl
 uYEWAyJXr2pLiWtj4eiMxSLil8wNkdcb+EtrYDNdejS/volbrgw2WYKgkeC7AoxxHydR
 6KAK/+Qi8uavEEK9ukh17JC6RIopUu53M3TBBk0ktuG0evpYkyxe6nN64et9zau0D6GS
 ey/Nkjcqmp/yxEWvjfgZjyn2Tz2ecI/3VmsU6cAiKM8FS8rXjDA0iB8SAaTkPnfMrJw+
 WiYQ==
X-Gm-Message-State: AOAM532v5imFGxvHaz5Do4uBzn8cgk7nBwZhrHQiw2j/XTwvJvFaWSAP
 VeGOEzIofhSKLC0mS0nUJS4NDbQDnxxMsCJ7hZFfL0G524l+yPQte9+FoW38FJKVb5SQtSMEO6l
 anclO3WVim/MgqU0qS7mYicvUl7V1rUBBiIA=
X-Received: by 2002:adf:eac8:: with SMTP id o8mr19377374wrn.268.1589804647150; 
 Mon, 18 May 2020 05:24:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwLe3p91ExNY6QGf1SRfv5g2doyaKilcFhk73/bWJl/jln6ZVFltTOdpBm/OQccJvw+caL9KA==
X-Received: by 2002:adf:eac8:: with SMTP id o8mr19377325wrn.268.1589804646888; 
 Mon, 18 May 2020 05:24:06 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id 18sm15993570wmj.19.2020.05.18.05.24.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 05:24:06 -0700 (PDT)
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
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <6d9921fc-5c2f-beda-4dcd-66d6970a22fe@redhat.com>
Date: Mon, 18 May 2020 14:24:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <e6030957-97dc-5b04-7855-bc14a78164c8@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_052414_522082_C516672C 
X-CRM114-Status: GOOD (  23.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

SGksCgpPbiA1LzE4LzIwIDEyOjQ4IFBNLCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4g
SGkgSGFucywKPiAKPiBXIGRuaXUgMTUuMDUuMjAyMCBvwqAyMDoxOSwgSGFucyBkZSBHb2VkZSBw
aXN6ZToKPj4gSGkgQW5kcmV6aiwKPj4KPj4gT24gNS8xNS8yMCA2OjQ5IFBNLCBBbmRyemVqIFBp
ZXRyYXNpZXdpY3ogd3JvdGU6Cj4+PiBVc2Vyc3BhY2UgbWlnaHQgd2FudCB0byBpbXBsZW1lbnQg
YSBwb2xpY3kgdG8gdGVtcG9yYXJpbHkgZGlzcmVnYXJkIGlucHV0Cj4+PiBmcm9tIGNlcnRhaW4g
ZGV2aWNlcywgaW5jbHVkaW5nIG5vdCB0cmVhdGluZyB0aGVtIGFzIHdha2V1cCBzb3VyY2VzLgo+
Pj4KPj4+IEFuIGV4YW1wbGUgdXNlIGNhc2UgaXMgYSBsYXB0b3AsIHdob3NlIGtleWJvYXJkIGNh
biBiZSBmb2xkZWQgdW5kZXIgdGhlCj4+PiBzY3JlZW4gdG8gY3JlYXRlIHRhYmxldC1saWtlIGV4
cGVyaWVuY2UuIFRoZSB1c2VyIHRoZW4gbXVzdCBob2xkIHRoZSBsYXB0b3AKPj4+IGluIHN1Y2gg
YSB3YXkgdGhhdCBpdCBpcyBkaWZmaWN1bHQgdG8gYXZvaWQgcHJlc3NpbmcgdGhlIGtleWJvYXJk
IGtleXMuIEl0Cj4+PiBpcyB0aGVyZWZvcmUgZGVzaXJhYmxlIHRvIHRlbXBvcmFyaWx5IGRpc3Jl
Z2FyZCBpbnB1dCBmcm9tIHRoZSBrZXlib2FyZCwKPj4+IHVudGlsIGl0IGlzIGZvbGRlZCBiYWNr
LiBUaGlzIG9idmlvdXNseSBpcyBhIHBvbGljeSB3aGljaCBzaG91bGQgYmUga2VwdAo+Pj4gb3V0
IG9mIHRoZSBrZXJuZWwsIGJ1dCB0aGUga2VybmVsIG11c3QgcHJvdmlkZSBzdWl0YWJsZSBtZWFu
cyB0byBpbXBsZW1lbnQKPj4+IHN1Y2ggYSBwb2xpY3kuCj4+Cj4+IEFjdHVhbGx5IGxpYmlucHV0
IGFscmVhZHkgYmluZHMgdG9nZXRoZXIgKGluc2lkZSBsaWJpbnB1dCkgU1dfVEFCTEVUX01PREUK
Pj4gZ2VuZXJhdGluZyBldmRldiBub2RlcyBhbmQgZS5nLiBpbnRlcm5hbCBrZXlib2FyZHMgb24g
ZGV2aWNlcyB3aXRoIDM2MMKwCj4+IGhpbmdlcyBmb3IgdGhpcyByZWFzb24uIGxpYmlucHV0IHNp
bXBseSBjbG9zZXMgdGhlIC9kZXYvaW5wdXQvZXZlbnQjCj4+IG5vZGUgd2hlbiBmb2xkZWQgYW5k
IHJlLW9wZW5zIGl0IHdoZW4gdGhlIGtleWJvYXJkIHNob3VsZCBiZWNvbWUgYWN0aXZlCj4+IGFn
YWluLiBUaHVzIG5vdCBvbmx5IHN1cHByZXNzZXMgZXZlbnRzIGJ1dCBhbGxvd3MgZS5nLiB0b3Vj
aHBhZHMgdG8KPj4gZW50ZXIgcnVudGltZSBzdXNwZW5kIG1vZGUgd2hpY2ggc2F2ZXMgcG93ZXIu
IFR5cGljYWxseSBjbG9zaW5nIHRoZQo+PiAvZGV2L2lucHV0L2V2ZW50IyBub2RlIHdpbGwgYWxz
byBkaXNhYmxlIHRoZSBkZXZpY2UgYXMgd2FrZXVwIHNvdXJjZS4KPj4KPj4gU28gSSB3b25kZXIg
d2hhdCB0aGlzIHNlcmllcyBhY3R1YWxseSBhZGRzIGZvciBmdW5jdGlvbmFsaXR5IGZvcgo+PiB1
c2Vyc3BhY2Ugd2hpY2ggY2FuIG5vdCBhbHJlYWR5IGJlIGFjaGlldmVkIHRoaXMgd2F5Pwo+Pgo+
PiBJIGFsc28gbm90aWNlZCB0aGF0IHlvdSBrZWVwIHRoZSBkZXZpY2Ugb3BlbiAoZG8gbm90IGNh
bGwgdGhlCj4+IGlucHV0X2RldmljZSdzIGNsb3NlIGNhbGxiYWNrKSB3aGVuIGluaGliaXRlZCBh
bmQganVzdCB0aHJvdyBhd2F5Cj4gCj4gSSdtIG5vdCBzdXJlIGlmIEkgdW5kZXJzdGFuZCB5b3Ug
Y29ycmVjdGx5LCBpdCBpcyBjYWxsZWQ6Cj4gCj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBpbnB1dF9z
dG9wKHN0cnVjdCBpbnB1dF9kZXYgKmRldikKPiArewo+ICvCoMKgwqAgaWYgKGRldi0+cG9sbGVy
KQo+ICvCoMKgwqDCoMKgwqDCoCBpbnB1dF9kZXZfcG9sbGVyX3N0b3AoZGV2LT5wb2xsZXIpOwo+
ICvCoMKgwqAgaWYgKGRldi0+Y2xvc2UpCj4gK8KgwqDCoMKgwqDCoMKgIGRldi0+Y2xvc2UoZGV2
KTsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5eXl5eXl5eXl5eXl5eXl4KPiAr
c3RhdGljIGludCBpbnB1dF9pbmhpYml0KHN0cnVjdCBpbnB1dF9kZXYgKmRldikKPiArewo+ICvC
oMKgwqAgaW50IHJldCA9IDA7Cj4gKwo+ICvCoMKgwqAgbXV0ZXhfbG9jaygmZGV2LT5tdXRleCk7
Cj4gKwo+ICvCoMKgwqAgaWYgKGRldi0+aW5oaWJpdGVkKQo+ICvCoMKgwqDCoMKgwqDCoCBnb3Rv
IG91dDsKPiArCj4gK8KgwqDCoCBpZiAoZGV2LT51c2Vycykgewo+ICvCoMKgwqDCoMKgwqDCoCBp
ZiAoZGV2LT5pbmhpYml0KSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gZGV2LT5p
bmhpYml0KGRldik7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+ICvCoMKgwqDCoMKgwqDCoCB9Cj4g
K8KgwqDCoMKgwqDCoMKgIGlucHV0X3N0b3AoZGV2KTsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIF5eXl5eXl5eXl5eXl5eXl4KPiAKPiBJdCB3aWxsIG5vdCBiZSBjYWxsZWQgd2hl
biBkZXYtPnVzZXJzIGlzIHplcm8sIGJ1dCBpZiBpdCBpcyB6ZXJvLAo+IHRoZW4gbm9ib2R5IGhh
cyBvcGVuZWQgdGhlIGRldmljZSB5ZXQgc28gdGhlcmUgaXMgbm90aGluZyB0byBjbG9zZS4KCkFo
LCBJIG1pc3NlZCB0aGF0LgoKU28gaWYgdGhlIGRldmljZSBpbXBsZW1lbnRzIHRoZSBpbmhpYml0
IGNhbGwgYmFjayB0aGVuIG9uCmluaGliaXQgaXQgd2lsbCBnZXQgYm90aCB0aGUgaW5oaWJpdCBh
bmQgY2xvc2UgY2FsbGJhY2sgY2FsbGVkPwoKQW5kIHdoYXQgaGFwcGVucyBpZiB0aGUgbGFzdCB1
c2VyIGdvZXMgYXdheSBhbmQgdGhlIGRldmljZQppcyBub3QgaW5oaWJpdGVkPwoKSSdtIHRyeWlu
ZyB0byB1bmRlcnN0YW5kIGhlcmUgd2hhdCB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSAyCmlz
IC8gd2hhdCB0aGUgZ29hbCBvZiBoYXZpbmcgYSBzZXBhcmF0ZSBpbmhpYml0IGNhbGxiYWNrID8K
CklPVyBpcyB0aGVyZSBzb21ldGhpbmcgd2hpY2ggd2Ugd2FudCB0byBkbyBvbiBjbG9zZSB3aGVu
CnRoZSBjbG9zZSBpcyBiZWluZyBkb25lIHRvIGluaGliaXQgdGhlIGRldmljZSwgd2hpY2ggd2Ug
ZG8Kbm90IHdhbnQgdG8gZG8gb24gYSBub3JtYWwgY2xvc2UgPwoKUmVnYXJkcywKCkhhbnMKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
