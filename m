Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A49A21191F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:30:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYEMM5l9AAInAOg8HiDdSpSAKtnOrzzHu7tIiIBE1Wo=; b=UHG1c6G2kg1jv6
	QV5SXGD2B3lVVX5Uf1yEd0GVCUG7xMfk1dzVrCytrOOr3xTM4B93FF0h8zFYsvktOcmU+x0+7baWS
	i9RkCk2UeBmH6ql2qrVySUc1gHmt9xlTLkwHuOWH24yrMlR/KjNv9lPBEsVk/tv3G5wYsRE3YzDsI
	pBb7yZzBDvZznNLicMTsFBjss0TymZa7n0IusbdaIvTqU4baLYChFmrnzBKYXtc93hOyWjllryCgb
	pQhD8k9SroBodK3sCADA5H5X+Gip4pjibgjubCZTnJU1v4zb3mG4yK3fm8B1ZBXST9elYWSAXqTEB
	7kCZejUskcsQJTK0O8Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iem8r-0007kT-1J; Tue, 10 Dec 2019 20:29:57 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iem8g-0007jb-AD
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:29:47 +0000
Received: by mail-lj1-x241.google.com with SMTP id k8so21347829ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 12:29:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KEQbedRJyV3kaY0bY3SYW8Od0asqs0FkLyw8Zhvxzd4=;
 b=Ipv4T2X6vXrrVNPz9bzhMBYtngakhwsBD1FWA8f7Jw3TPHpi1gDgH4wNd4wvF0YSiL
 yStMDzgkUy3hx1f20jKf/hBS/Ul6qvLQqQM0YXJQuTjOlCUhdbIG9yJD/11XG0YZC+y9
 +l3RelZoKm846drRb0NpOR+ljyFMbiMl3Z/ITigEppOkjuGqFGSSTGDEwTcBHX1TGiRx
 KgYru410NofD0rViBTduX84tB68NNC70pYiV1HZUcVMMKxi6hryX6m5/Uf9Jumu6Ev1Z
 JxlZx6fl61E7l1AEqE7Sm5ygzHoj/sITvhLe1Jnj1csirdrGP7bc2aN0yBpAsvbp2AAR
 Ta3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KEQbedRJyV3kaY0bY3SYW8Od0asqs0FkLyw8Zhvxzd4=;
 b=ajAAHFYAX2ruJXHaNzldWe+vZ0bCDjmsTzzP+Zn9BkxErhitW6jkWcuaVfU7SPB7dT
 wIug79dnHsiBVzN3Ioa2BTNUA/tswb63kS8Ys+t5noeksxju32wIZYyMWSDyGomd3wrq
 2eUyV9v8MffOKD+9idCyKAVYd2namhjJ6qWIfPgm3xhn3oQm952KucDVnXcsIcftxTZK
 fX2IedY3QV+H6ZZU/q4im4vIUw2egbkR6w7dmc834VvNdF3prLURTXGGGsfWo6P4udN6
 c3CUe1ekClF4wbsUJz/1q87LybnVlxGPJtT3TzqA5U0QAfmCpuHClciwwkwx0auoMcj1
 Bl8w==
X-Gm-Message-State: APjAAAWpZlTqeUiVrwzvmCslR1eoo824Pm4OChSNsPAujxynSckA1apY
 hhhhkQd81cWED8qJ0P96G/M=
X-Google-Smtp-Source: APXvYqyGr7S/zIkZiW33zhiNeA1BPBdImDRPF4LUUjnKOpKC3TsdQaj51vj30d8WrNyZxaY5E/uPBg==
X-Received: by 2002:a2e:6e10:: with SMTP id j16mr21926270ljc.202.1576009784312; 
 Tue, 10 Dec 2019 12:29:44 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id p18sm2503709ljp.39.2019.12.10.12.29.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Dec 2019 12:29:43 -0800 (PST)
Subject: Re: [PATCH] ARM: tegra: Fix restoration of PLLM when exiting suspend
From: Dmitry Osipenko <digetx@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>
References: <20191210103708.7023-1-jonathanh@nvidia.com>
 <1f2a4f23-5be5-aa7e-6eb4-2aeb4058481d@gmail.com>
Message-ID: <1fe9cd2d-50a2-aae5-95fa-0329acce4c4c@gmail.com>
Date: Tue, 10 Dec 2019 23:29:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <1f2a4f23-5be5-aa7e-6eb4-2aeb4058481d@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_122946_357526_E34D8874 
X-CRM114-Status: GOOD (  24.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, Peter De Schrijver <pdeschrijver@nvidia.com>,
 stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTAuMTIuMjAxOSAyMjoyOCwgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gSGVsbG8gSm9u
LAo+IAo+IDEwLjEyLjIwMTkgMTM6MzcsIEpvbiBIdW50ZXIg0L/QuNGI0LXRgjoKPj4gVGhlIHN1
c3BlbmQgZW50cnkgYW5kIGV4aXQgY29kZSBmb3IgMzItYml0IFRlZ3JhIGRldmljZXMgYXNzdW1l
cyB0aGF0Cj4+IHRoZSBQTExNICh3aGljaCBpcyB1c2VkIHRvIHByb3ZpZGUgdGhlIGNsb2NrIGZv
ciBleHRlcm5hbCBtZW1vcnkpCj4+IGlzIGFsd2F5cyBlbmFibGVkIG9uIGVudHJ5IHRvIHN1c3Bl
bmQuIEhlbmNlLCB0aGUgY3VycmVudCBjb2RlIGFsd2F5cwo+PiBkaXNhYmxlcyB0aGUgUExMTSBv
biBlbnRyeSB0byBzdXNwZW5kIGFuZCByZS1lbmFibGVzIHRoZSBQTExNIG9uIGV4aXQKPj4gZnJv
bSBzdXNwZW5kLgo+Pgo+PiBTaW5jZSB0aGUgaW50cm9kdWN0aW9uIG9mIHRoZSBUZWdyYTEyNCBF
TUMgZHJpdmVyIGJ5IGNvbW1pdCA3M2E3ZjBhOTA2NDEKPj4gKCJtZW1vcnk6IHRlZ3JhOiBBZGQg
RU1DIChleHRlcm5hbCBtZW1vcnkgY29udHJvbGxlcikgZHJpdmVyIiksIHdoaWNoIGlzCj4+IHVz
ZWQgdG8gc2NhbGUgdGhlIEVNQyBmcmVxdWVuY3ksIFBMTE0gbWF5IG5vdCBiZSB0aGUgY3VycmVu
dCBjbG9jawo+PiBzb3VyY2UgZm9yIHRoZSBFTUMgb24gZW50cnkgdG8gc3VzcGVuZCBhbmQgaGVu
Y2UgbWF5IG5vdCBiZSBlbmFibGVkLgo+PiBBbHdheXMgZW5hYmxpbmcgdGhlIFBMTE0gb24gZXhp
dCBmcm9tIHN1c3BlbmQgY2FuIGNhdXNlIHRoZSBhY3R1YWwKPj4gc3RhdHVzIG9uIHRoZSBQTEwg
dG8gYmUgZGlmZmVyZW50IGZyb20gdGhhdCByZXBvcnRlZCBieSB0aGUgY29tbW9uIGNsb2NrCj4+
IGZyYW1ld29yay4KPj4KPj4gT24ga2VybmVscyBwcmlvciB0byB2NC41LCB0aGUgY29kZSB0byBz
ZXQgdGhlIHJhdGUgb2YgdGhlIFBMTE0gaGFkIGEKPj4gdGVzdCB0byB2ZXJpZnkgaWYgdGhlIFBM
TCB3YXMgZW5hYmxlZCBhbmQgaWYgdGhlIFBMTCB3YXMgZW5hYmxlZCwKPj4gc2V0dGluZyB0aGUg
cmF0ZSB3b3VsZCBmYWlsLiBTaW5jZSBjb21taXQgMjY3YjYyYTk2OTUxCj4+ICgiY2xrOiB0ZWdy
YTogcGxsOiBVcGRhdGUgUExMTSBoYW5kbGluZyIpIHRoZSB0ZXN0IHRvIHNlZSBpZiBQTExNIGlz
Cj4+IGVuYWJsZWQgd2FzIHJlbW92ZWQuCj4+Cj4+IFdpdGggdGhlc2UgZWFybGllciBrZXJuZWxz
LCBpZiB0aGUgUExMTSBpcyBkaXNhYmxlZCBvbiBlbnRlcmluZyBzdXNwZW5kCj4+IGFuZCB0aGUg
RU1DIGRyaXZlciBhdHRlbXB0cyB0byBzZXQgdGhlIHBhcmVudCBvZiB0aGUgRU1DIGNsb2NrIHRv
IHRoZQo+PiBQTExNIG9uIGV4aXRpbmcgc3VzcGVuZCwgdGhlbiB0aGUgc2V0IHJhdGUgZm9yIHRo
ZSBQTExNIHdpbGwgZmFpbCBhbmQgaW4KPj4gdHVybiBjYXVzZSB0aGUgcmVzdW1lIHRvIGZhaWwu
Cj4+Cj4+IFdlIHNob3VsZCBub3QgYmUgcmUtZW5hYmxpbmcgdGhlIFBMTE0gb24gcmVzdW1lIGZy
b20gc3VzcGVuZCB1bmxlc3MgaXQKPj4gd2FzIGVuYWJsZWQgb24gZW50cnkgdG8gc3VzcGVuZC4g
VGhlcmVmb3JlLCBmaXggdGhpcyBieSBzYXZpbmcgdGhlIHN0YXRlCj4+IG9mIFBMTE0gb24gZW50
cnkgdG8gc3VzcGVuZCBhbmQgb25seSByZS1lbmFibGUgaXQsIGlmIGl0IHdhcyBhbHJlYWR5Cj4+
IGVuYWJsZWQuCj4+Cj4+IEZpeGVzOiA3M2E3ZjBhOTA2NDEgKCJtZW1vcnk6IHRlZ3JhOiBBZGQg
RU1DIChleHRlcm5hbCBtZW1vcnkgY29udHJvbGxlcikgZHJpdmVyIikKPj4gQ2M6IHN0YWJsZUB2
Z2VyLmtlcm5lbC5vcmcKPj4KPj4gU2lnbmVkLW9mZi1ieTogSm9uIEh1bnRlciA8am9uYXRoYW5o
QG52aWRpYS5jb20+Cj4+IC0tLQo+PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9zbGVlcC10ZWdyYTMw
LlMgfCAzMyArKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQs
IDI3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNo
L2FybS9tYWNoLXRlZ3JhL3NsZWVwLXRlZ3JhMzAuUyBiL2FyY2gvYXJtL21hY2gtdGVncmEvc2xl
ZXAtdGVncmEzMC5TCj4+IGluZGV4IDMzNDFhMTJiYmI5Yy4uYzJmMDc5M2E0MjRmIDEwMDY0NAo+
PiAtLS0gYS9hcmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLXRlZ3JhMzAuUwo+PiArKysgYi9hcmNo
L2FybS9tYWNoLXRlZ3JhL3NsZWVwLXRlZ3JhMzAuUwo+PiBAQCAtMzM3LDI2ICszMzcsNDIgQEAg
RU5UUlkodGVncmEzMF9scDFfcmVzZXQpCj4+ICAJYWRkCXIxLCByMSwgIzIKPj4gIAl3YWl0X3Vu
dGlsIHIxLCByNywgcjMKPj4gIAo+PiAtCS8qIGVuYWJsZSBQTExNIHZpYSBQTUMgKi8KPj4gKwkv
KiByZXN0b3JlIFBMTE0gc3RhdGUgKi8KPj4gIAltb3YzMglyMiwgVEVHUkFfUE1DX0JBU0UKPj4g
KwlhZHIJcjcsIHRlZ3JhX3BsbG1fc3RhdHVzCj4+ICsJbGRyCXIxLCBbcjddCj4+ICsJY21wCXIy
LCAjKDEgPDwgMTIpCj4+ICsJYm5lCV9za2lwX3BsbG0KPj4gKwo+PiAgCWxkcglyMSwgW3IyLCAj
UE1DX1BMTFBfV0IwX09WRVJSSURFXQo+PiAgCW9ycglyMSwgcjEsICMoMSA8PCAxMikKPj4gIAlz
dHIJcjEsIFtyMiwgI1BNQ19QTExQX1dCMF9PVkVSUklERV0KPj4gIAo+PiAgCXBsbF9lbmFibGUg
cjEsIHIwLCBDTEtfUkVTRVRfUExMTV9CQVNFLCAwCj4+ICsJcGxsX2xvY2tlZCByMSwgcjAsIENM
S19SRVNFVF9QTExNX0JBU0UKPj4gKwo+PiArX3NraXBfcGxsbToKPj4gIAlwbGxfZW5hYmxlIHIx
LCByMCwgQ0xLX1JFU0VUX1BMTENfQkFTRSwgMAo+PiAgCXBsbF9lbmFibGUgcjEsIHIwLCBDTEtf
UkVTRVRfUExMWF9CQVNFLCAwCj4+ICAKPj4gIAliCV9wbGxfbV9jX3hfZG9uZQo+PiAgCj4+ICBf
bm9fcGxsX2lkZHFfZXhpdDoKPj4gLQkvKiBlbmFibGUgUExMTSB2aWEgUE1DICovCj4+ICsJLyog
cmVzdG9yZSBQTExNIHN0YXRlICovCj4+ICAJbW92MzIJcjIsIFRFR1JBX1BNQ19CQVNFCj4+ICsJ
YWRyCXI3LCB0ZWdyYV9wbGxtX3N0YXR1cwo+PiArCWxkcglyMSwgW3I3XQo+PiArCWNtcAlyMiwg
IygxIDw8IDEyKQo+PiArCWJuZQlfc2tpcF9wbGxtX25vX2lkZHEKPj4gKwo+PiAgCWxkcglyMSwg
W3IyLCAjUE1DX1BMTFBfV0IwX09WRVJSSURFXQo+PiAgCW9ycglyMSwgcjEsICMoMSA8PCAxMikK
Pj4gIAlzdHIJcjEsIFtyMiwgI1BNQ19QTExQX1dCMF9PVkVSUklERV0KPj4gIAo+PiAgCXBsbF9l
bmFibGUgcjEsIHIwLCBDTEtfUkVTRVRfUExMTV9CQVNFLCBDTEtfUkVTRVRfUExMTV9NSVNDCj4+
ICsJcGxsX2xvY2tlZCByMSwgcjAsIENMS19SRVNFVF9QTExNX0JBU0UKPj4gKwo+PiArX3NraXBf
cGxsbV9ub19pZGRxOgo+PiAgCXBsbF9lbmFibGUgcjEsIHIwLCBDTEtfUkVTRVRfUExMQ19CQVNF
LCBDTEtfUkVTRVRfUExMQ19NSVNDCj4+ICAJcGxsX2VuYWJsZSByMSwgcjAsIENMS19SRVNFVF9Q
TExYX0JBU0UsIENMS19SRVNFVF9QTExYX01JU0MKPj4gIAo+PiBAQCAtMzY0LDcgKzM4MCw2IEBA
IF9wbGxfbV9jX3hfZG9uZToKPj4gIAlwbGxfZW5hYmxlIHIxLCByMCwgQ0xLX1JFU0VUX1BMTFBf
QkFTRSwgQ0xLX1JFU0VUX1BMTFBfTUlTQwo+PiAgCXBsbF9lbmFibGUgcjEsIHIwLCBDTEtfUkVT
RVRfUExMQV9CQVNFLCBDTEtfUkVTRVRfUExMQV9NSVNDCj4+ICAKPj4gLQlwbGxfbG9ja2VkIHIx
LCByMCwgQ0xLX1JFU0VUX1BMTE1fQkFTRQo+PiAgCXBsbF9sb2NrZWQgcjEsIHIwLCBDTEtfUkVT
RVRfUExMUF9CQVNFCj4+ICAJcGxsX2xvY2tlZCByMSwgcjAsIENMS19SRVNFVF9QTExBX0JBU0UK
Pj4gIAlwbGxfbG9ja2VkIHIxLCByMCwgQ0xLX1JFU0VUX1BMTENfQkFTRQo+PiBAQCAtNTI2LDYg
KzU0MSw4IEBAIF9fbm9fZHVhbF9lbWNfY2hhbmw6Cj4+ICBFTkRQUk9DKHRlZ3JhMzBfbHAxX3Jl
c2V0KQo+PiAgCj4+ICAJLmFsaWduCUwxX0NBQ0hFX1NISUZUCj4+ICt0ZWdyYV9wbGxtX3N0YXR1
czoKPj4gKwkud29yZAkwCj4+ICB0ZWdyYTMwX3NkcmFtX3BhZF9hZGRyZXNzOgo+PiAgCS53b3Jk
CVRFR1JBX0VNQ19CQVNFICsgRU1DX0NGRwkJCQlAMHgwCj4+ICAJLndvcmQJVEVHUkFfRU1DX0JB
U0UgKyBFTUNfWkNBTF9JTlRFUlZBTAkJCUAweDQKPj4gQEAgLTYyNCwxMCArNjQxLDE0IEBAIHRl
Z3JhMzBfc3dpdGNoX2NwdV90b19jbGszMms6Cj4+ICAJYWRkCXIxLCByMSwgIzIKPj4gIAl3YWl0
X3VudGlsIHIxLCByNywgcjkKPiAKPiAKPj4gLQkvKiBkaXNhYmxlIFBMTE0gdmlhIFBNQyBpbiBM
UDEgKi8KPj4gKwkvKiBkaXNhYmxlIFBMTE0sIGlmIGVuYWJsZWQsIHZpYSBQTUMgaW4gTFAxICov
Cj4+ICsJYWRyCXIxLCB0ZWdyYV9wbGxtX3N0YXR1cwo+PiAgCWxkcglyMCwgW3I0LCAjUE1DX1BM
TFBfV0IwX09WRVJSSURFXQo+PiAtCWJpYwlyMCwgcjAsICMoMSA8PCAxMikKPj4gLQlzdHIJcjAs
IFtyNCwgI1BNQ19QTExQX1dCMF9PVkVSUklERV0KPj4gKwlhbmQJcjIsIHIwLCAjKDEgPDwgMTIp
Cj4+ICsJc3RyICAgICByMiwgW3IxXQo+PiArCWNtcAlyMiwgIygxIDw8IDEyKQo+PiArCWJpY2Vx
CXIwLCByMCwgIygxIDw8IDEyKQo+PiArCXN0cmVxCXIwLCBbcjQsICNQTUNfUExMUF9XQjBfT1ZF
UlJJREVdCj4+ICAKPj4gIAkvKiBkaXNhYmxlIFBMTFAsIFBMTEEsIFBMTEMgYW5kIFBMTFggKi8K
Pj4gIAlsZHIJcjAsIFtyNSwgI0NMS19SRVNFVF9QTExQX0JBU0VdCj4gCj4gUExMTSdzIGVuYWJs
ZS1zdGF0dXMgY291bGQgYmUgZGVmaW5lZCBlaXRoZXIgYnkgUE1DIG9yIENhUi4gVGh1cyBhdAo+
IGZpcnN0IHlvdSBuZWVkIHRvIGNoZWNrIHdoZXRoZXIgUE1DIG92ZXJyaWRlcyBDYVIncyBlbmFi
bGUgYW5kIHRoZW4KPiBqdWRnZSB0aGUgZW5hYmxlIHN0YXRlIGJhc2VkIG9uIFBNQyBvciBDYVIg
c3RhdGUgcmVzcGVjdGl2ZWx5Lgo+IAoKQWN0dWFsbHksIG5vdyBJIHRoaW5rIHRoYXQgaXQgZG9l
c24ndCBtYWtlIHNlbnNlIHRvIGNoZWNrIFBNQyBXQjAgc3RhdGUKYXQgYWxsLiBJSVVDLCBQTExN
J3Mgc3RhdGUgb2YgdGhlIFdCMCByZWdpc3RlciBkZWZpbmVzIHdoZXRoZXIgQm9vdCBST00Kc2hv
dWxkIGVuYWJsZSBQTExNIG9uIHJlc3VtZSBmcm9tIHN1c3BlbmQuIFRodXMgaXQgd2lsbCBiZSBj
b3JyZWN0IHRvCmNoZWNrIG9ubHkgdGhlIENhUidzIGVuYWJsZS1zdGF0ZSBvZiBQTExNLgoKSSdt
IG5vdCBzdXJlIHdoYXQncyB0aGUgaWRlYSBvZiBXQjAgb3ZlcnJpZGluZywgbWF5YmUgdG8gcmVz
dW1lIGZhc3Rlci4KUGV0ZXIsIGNvdWxkIHlvdSBwbGVhc2UgY2xhcmlmeSB0aGF0PwoKTG9va3Mg
bGlrZSBpdCBpcyBhIGJpdCBvZiBub25zZW5zZSB0aGF0IGNsa19wbGxfaXNfZW5hYmxlZCgpIGNo
ZWNrcwpQTUNfUExMUF9XQjBfT1ZFUlJJREVfUExMTV9FTkFCTEUgZm9yIGp1ZGdpbmcgb2YgdGhl
IGVuYWJsZS1zdGF0ZS4gVGhpcwppcyBub3QgdGhlIGZpcnN0IHRpbWUgSSdtIGdldHRpbmcgY29u
ZnVzZWQgYnkgaXQsIHBlcmhhcHMgd2lsbCBiZQp3b3J0aHdoaWxlIHRvIGNsZWFuIHVwIHRoYXQg
cGFydCBvZiB0aGUgY2xrIGRyaXZlcidzIGNvZGUgKGlmIEknbSBub3QKbWlzc2luZyBzb21ldGhp
bmcpLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
