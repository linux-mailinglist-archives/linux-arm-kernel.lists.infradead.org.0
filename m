Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26B567339
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 18:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O8TwjZ/8kipLpb/mAkZLkldCBz/5Zj6P3pEbr0uOIIc=; b=rtZBnizYzWDVNE
	KvSv8PzycAFJJ3l8xh69rGE6Ek2A4JzKnVgL0MLWZIk25T702W8xs3A6Rmmimh6kk4/eAfIGvFJsO
	02+hPnfBeO43NEOxWHEe/DGfjJe7xKRHuJGzz1AEG6UIAex6VS86r8muFl2b6NEOwjzKe+sQ6nmTs
	duVMplauD4ESupZ8z8YfMJVlnok8WZfI3jP3d1DjjNLX9mnhPr+C/B4C8wveU2SN3DtW11FeyLgt3
	RtpVjAFhNHcCsF/Irr8nIXjZgctONJE+OvrM1VhrFGz1Olb/4TdAc4rz/F0JuhcyROCKBU/kDHSlp
	8MbGglks/G2RkjtMXfyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlyL5-0008RT-5G; Fri, 12 Jul 2019 16:24:03 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlyKr-0008Qz-Qq
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 16:23:51 +0000
Received: by mail-lj1-x243.google.com with SMTP id r9so9910434ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 09:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8YX2LaoIpYXot2QMtvHwy8R8N2TUvBM9RDNiIQ4cQ7Q=;
 b=nltokVSSN/p/Xkq4jRStuN4Lk6uX7ML12OYVy4WMZHboGjVH5zflEh5vOBKm3BAFs1
 7N0nc0uuadGFPHi7NcI6dYRDU+LyFG6K6hsnQF0mGD/QC9lY8Xnr0UPWBwayvB8V4e+e
 hLON9HJcfPfaQ4O6CAPQlsrDbSFvRbKrCUP8QS9fOxWn6gEpjfVH8bVs5HwzhpDkIkao
 xXp3tdv1I/5AojtEDHVDj7NLqvajgZyzH4mLRg9EY9ET6t6x+BSQPtjtJeIVBpDQYUyv
 cWEYG0ZKwcf+HQ+w10g+gOGCTHuBfgAMYQuKrSGGy0PTcfYLEYL63nj8tY4KgW+IMUlg
 pMTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8YX2LaoIpYXot2QMtvHwy8R8N2TUvBM9RDNiIQ4cQ7Q=;
 b=GDIFLpuXxjwCVh+nBeDaWBPlL+ziSyf7et5VX5xty/rdOuqCKHz2a8p9dAJrJaf9az
 e4BgecG994UjbsjNbHSGR+wmwxMW64LjsZWK5LKr1wSli0mDwI2I7B4qwmkRynTHVqe3
 S54KQTA+Jgk/LlTSp7on9XBONbWn4rDcljR+k2pbfp8WxE3dorr+8uP449Nh/wbqfKou
 UdMyWmZ/p1Vj8SVAcOLQWNwmWrIgW2njWdiLJY6W/baCuxMbTLJgp9Kk4f+T66k+M4ZB
 xTSstxHv9bPDiu51mdPZYgcVxiTr7+b3Wj2m7I+uViyty3nuhGRFE7Ixix27y+dbSCWb
 79hw==
X-Gm-Message-State: APjAAAVOIzWIGglntK1ovPJ3eLWGbT68OmsGRzEjFNb1f2+dq8JFRG+n
 +odO5cZsfjdlqk2wU5mRfKE=
X-Google-Smtp-Source: APXvYqwVVpBQgAJ+iBwLONW4YShysAZHExOb7cuYCRG3sez9mFiaH1eutiGR89WwWo+77OdA1NyzaQ==
X-Received: by 2002:a2e:4794:: with SMTP id u142mr6521643lja.222.1562948627718; 
 Fri, 12 Jul 2019 09:23:47 -0700 (PDT)
Received: from [192.168.2.145] (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.googlemail.com with ESMTPSA id h3sm1549158lja.93.2019.07.12.09.23.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 09:23:46 -0700 (PDT)
Subject: Re: [PATCH v2 1/6] ARM: tegra: Remove cpuidle drivers
To: Jon Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
References: <20190711031312.10038-1-digetx@gmail.com>
 <20190711031312.10038-2-digetx@gmail.com>
 <c087a5cb-2ffa-1cf6-f0bf-631234759a22@nvidia.com>
 <a6e4b43e-369c-c501-6d2e-69d5b940ff9c@gmail.com>
 <73781434-d25a-b17b-aacb-95ace5ac5f95@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <9d79ed3e-a37f-af9c-0696-31dc33bbdefd@gmail.com>
Date: Fri, 12 Jul 2019 19:23:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <73781434-d25a-b17b-aacb-95ace5ac5f95@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_092349_892922_6CC1F67F 
X-CRM114-Status: GOOD (  23.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTIuMDcuMjAxOSAxMjozOSwgSm9uIEh1bnRlciDQv9C40YjQtdGCOgo+IAo+IE9uIDExLzA3LzIw
MTkgMTg6MDMsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4gMTEuMDcuMjAxOSAxMjoyNiwgSm9u
IEh1bnRlciDQv9C40YjQtdGCOgo+Pj4KPj4+IE9uIDExLzA3LzIwMTkgMDQ6MTMsIERtaXRyeSBP
c2lwZW5rbyB3cm90ZToKPj4+PiBSZW1vdmUgdGhlIG9sZCBkcml2ZXJzIHRvIHJlcGxhY2UgdGhl
bSBjbGVhbmx5IHdpdGggYSBuZXcgb25lIGxhdGVyIG9uLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1i
eTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPgo+Pj4+IC0tLQo+Pj4+ICBhcmNo
L2FybS9tYWNoLXRlZ3JhL01ha2VmaWxlICAgICAgICAgICB8ICAxMyAtLQo+Pj4+ICBhcmNoL2Fy
bS9tYWNoLXRlZ3JhL2NwdWlkbGUtdGVncmExMTQuYyB8ICA4OSAtLS0tLS0tLS0tLQo+Pj4+ICBh
cmNoL2FybS9tYWNoLXRlZ3JhL2NwdWlkbGUtdGVncmEyMC5jICB8IDIxMiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4+Pj4gIGFyY2gvYXJtL21hY2gtdGVncmEvY3B1aWRsZS10ZWdyYTMwLmMg
IHwgMTMyIC0tLS0tLS0tLS0tLS0tLQo+Pj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL2NwdWlkbGUu
YyAgICAgICAgICB8ICA1MCAtLS0tLS0KPj4+PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9jcHVpZGxl
LmggICAgICAgICAgfCAgMjEgLS0tCj4+Pj4gIGFyY2gvYXJtL21hY2gtdGVncmEvaXJxLmMgICAg
ICAgICAgICAgIHwgIDE4IC0tLQo+Pj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL2lycS5oICAgICAg
ICAgICAgICB8ICAxMSAtLQo+Pj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL3BtLmMgICAgICAgICAg
ICAgICB8ICAgNyAtCj4+Pj4gIGFyY2gvYXJtL21hY2gtdGVncmEvcG0uaCAgICAgICAgICAgICAg
IHwgICAxIC0KPj4+PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9yZXNldC1oYW5kbGVyLlMgICAgfCAg
MTEgLS0KPj4+PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9yZXNldC5oICAgICAgICAgICAgfCAgIDkg
Ky0KPj4+PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9zbGVlcC10ZWdyYTIwLlMgICAgfCAxOTAgKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLmggICAg
ICAgICAgICB8ICAxMiAtLQo+Pj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL3RlZ3JhLmMgICAgICAg
ICAgICB8ICAgMyAtCj4+Pj4gIGRyaXZlcnMvc29jL3RlZ3JhL0tjb25maWcgICAgICAgICAgICAg
IHwgICAxIC0KPj4+PiAgaW5jbHVkZS9zb2MvdGVncmEvY3B1aWRsZS5oICAgICAgICAgICAgfCAg
IDQgLQo+Pj4+ICAxNyBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDc3OSBkZWxldGlv
bnMoLSkKPj4+PiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21hY2gtdGVncmEvY3B1aWRs
ZS10ZWdyYTExNC5jCj4+Pj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXRlZ3Jh
L2NwdWlkbGUtdGVncmEyMC5jCj4+Pj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNo
LXRlZ3JhL2NwdWlkbGUtdGVncmEzMC5jCj4+Pj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bS9tYWNoLXRlZ3JhL2NwdWlkbGUuYwo+Pj4+ICBkZWxldGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0v
bWFjaC10ZWdyYS9jcHVpZGxlLmgKPj4+PiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21h
Y2gtdGVncmEvaXJxLmgKPj4+Cj4+PiBCeSByZW1vdmluZyBhbGwgdGhlIGFib3ZlLCBpdCBpcyBy
ZWFsbHkgaGFyZCB0byByZXZpZXcgdGhlIGRpZmYuIElzCj4+PiB0aGVyZSBhbnkgd2F5IHlvdSBj
b3VsZCBmaXJzdCBjb25zb2xpZGF0ZSB0aGUgY3B1aWRsZSBkcml2ZXJzIGludG8gc2F5Cj4+PiB0
aGUgZXhpc3RpbmcgYXJjaC9hcm0vbWFjaC10ZWdyYS9jcHVpZGxlLXRlZ3JhMjAuYyBhbmQgdGhl
biBtb3ZlIHRvCj4+PiBkcml2ZXJzL2NwdWlkbGU/Cj4+Cj4+IEknbSBhZnJhaWQgdGhhdCBpdCB3
aWxsIG1ha2UgcmV2aWV3aW5nIGV2ZW4gbW9yZSBkaWZmaWN1bHQgYmVjYXVzZQo+PiBldmVyeXRo
aW5nIHRoYXQgaXMgcmVtb3ZlZCBoZXJlIGlzIG5vdCByZXR1cm5lZCBpbiB0aGUgZnVydGhlciBw
YXRjaGVzLgo+PiBUaGUgbmV3IGRyaXZlciBpcyBiYXNlZCBvbiB0aGUgb2xkZXIgb25lcywgYnV0
IEkgd3JvdGUgaXQgZnJvbSBzY3JhdGNoCj4+IGFuZCBpdCdzIG5vdCBvbmx5IGxvb2tzIGRpZmZl
cmVudCwgYnV0IGFsc28gd29ya3MgYSBiaXQgZGlmZmVyZW50IGFzIHlvdQo+PiBtYXkgc2VlLgo+
Pgo+PiBDb3VsZCB5b3UgcGxlYXNlIGNsYXJpZnkgd2hhdCBleGFjdGx5IG1ha2VzIGl0IGhhcmQg
dG8gcmV2aWV3PyBUaGUgZGlmZgo+PiBsb29rcyBwcmV0dHkgY2xlYW4gdG8gbWUsIHdoaWxlIHNx
dWFzaGluZyBldmVyeXRoaW5nIGludG8gZXhpc3RpbmcKPj4gZHJpdmVyIHNob3VsZCBiZSBxdWl0
ZSBhIG1lc3MuCj4gCj4gSWRlYWxseSBhIHBhdGNoIHNob3VsZCBzdGFuZGFsb25lIGFuZCBjYW4g
YmUgcmV2aWV3ZWQgYnkgaXRzZWxmLgo+IEhvd2V2ZXIsIHRvIHJldmlldyB0aGlzLCB3ZSBuZWVk
IHRvIHJldmlldyBwYXRjaGVzIDEsIDIgYW5kIDMgYXQgdGhlCj4gc2FtZSB0aW1lLiBTbyBJTU8g
aXQgaXMgbm90IHRoYXQgY29udmVuaWVudCBmcm9tIGEgcmV2aWV3ZXJzCj4gcGVyc3BlY3RpdmUu
IEZ1cnRoZXJtb3JlLCBwYXRjaGVzIDEgYW5kIDMgYXJlIGxhcmdlIGFuZCBzbyBlYXN5IHRvIG1p
c3MKPiBzb21ldGhpbmcuCj4gCj4gSXMgdGhlcmUgcmVhbGx5IG5vIHdheSB0byBoYXZlIGEgcGF0
Y2ggdG8gY29tYmluZWQgdGhlIGV4aXN0aW5nIGRyaXZlcnMsCj4gdGhlbiBhIHBhdGNoIHRvIGNv
bnZlcnQgdGhlbSBpbnRvIHRoZSBuZXdlciByZXdyaXR0ZW4gdmVyc2lvbiB5b3UgaGF2ZQo+IGlt
cGxlbWVudGVkLCB0aGVuIG1vdmUgdGhlIGRyaXZlcj8KClByb2JhYmx5IEkgc3BlbnQgYSBiaXQg
dG9vIG11Y2ggdGltZSB3aXRoIHRoYXQgY29kZSwgc28gbm93IHlvdXJzCnN1Z2dlc3Rpb24gbG9v
a3MgdG8gbWUgbGlrZSBhbiB1bm5lY2Vzc2FyeSBzdGVwLiBCdXQgSSB3aWxsIHRyeSBhbmQgc2Vl
CmhvdyBpdCBnb2VzLCBhdCBsZWFzdCBpdCBzaG91bGQgYmUgcG9zc2libGUgdG8gYnJlYWsgZG93
biB0aGUgcGF0Y2ggMSBhCmJpdCBtb3JlLCBob3BlZnVsbHkgaXQgd2lsbCBoZWxwIHRvIGJldHRl
ciB1bmRlcnN0YW5kIHdoYXQncyBnb2luZyBvbiBpbgp0aGUgZnVydGhlciBwYXRjaGVzIGlmIHlv
dSdyZSBub3QgZmFtaWxpYXIgb3IgZG9uJ3QgcmVtZW1iZXIgaG93IGl0IGFsbAp3b3Jrcy4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
