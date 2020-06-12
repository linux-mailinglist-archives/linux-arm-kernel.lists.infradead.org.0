Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6111F7AA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 17:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwrVgd4PTCun7qZr48Z6D4CxQt6wo3jGDyxsZ6CtIrM=; b=q9/2zIDCWDqxVn
	I2Ua+ItL8nEp7HZBODgssmppB5z3V4WE7paNiG6Ul9kYxgT2eDmlZegFjbv7nTRXkH8FSF/Yh6qCe
	EFHRVD+SYTB6qmnt/s5EA7TK8gfJOMM1Fp+q4W4MrWcofVJbtNo8yhZyYUpLvr1+QBm2E8oY0K1Bl
	r0v+T9+2x5Q0tlhbmHz0BY0LlBXDhlVDNQfq5TL0tZjPi3vaiHBDtem3mY156wOaGwhD6zOz5Hh0U
	Z3EKCa6Pqu8eC+mjjU2/2fQWIrkcfbtiUcDfknQESaJuiZllQFC5rYDgwRlXPxj2PeNJ1P8g6FqiA
	iagMNUc2Wr/o/648ppng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjlUL-0001WU-Ez; Fri, 12 Jun 2020 15:21:01 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjlUD-0001Vv-8r
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 15:20:55 +0000
Received: by mail-lf1-x144.google.com with SMTP id d27so1114363lfq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 08:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uU8wuKx8q16hr+N4pD656D/ncTAnO8D0+HBS47NTVlk=;
 b=CMbX/XIOibfeHFK0ZrIL9r0jaGmNrMWtt0AsoMiJ+m2Dfln/Hq/FsvamCrgjvPPi47
 rNnB+U8rucjYWkr0HS7GI9xbfyS9StZNTg4T/fF/5fsZFQcKz+QkfJD1wyNDQcHNIix1
 IQLQLTO8yxKi1i3jfIg3WY+MLlBkHMQBl00Hf6h/kBUjQ5JwcOUbtsaVMi4ERgTgl4o4
 7vQP1FuU9FU0wmsBDaqIjyPp8hGaYCO7Gon8At8osU38M6diG0ph1Qfo9gHO7z6iWM/s
 WReL4w0hQcB+yKCvJb+wgc/GsRtoj+bzeWDaK8RjjRlK2gV51QWdTHbGrSqV5rCAonHm
 FUQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uU8wuKx8q16hr+N4pD656D/ncTAnO8D0+HBS47NTVlk=;
 b=SqVWbfYNCukW/e/q3WhnT4+6m5TNpNLBUS9IAb51xuKuN0pT8Lg6Y+/zz9nHZ98W7Z
 YRyQFReYInmoM8l7xtYq2LXwv55FvtQWUWM/jScE6XtXFOi+Up+VIdtUOR4ubo/seYir
 EPjOP+2IF5913tU3/kMThsAthl4e61hbVsaGGtoeKDwsP7JxwnpmhgK4QhjxxY23+dMI
 DEFxa8zSxtA4li4RW9Kmnkt7wcaXBUFfqtoJcN+iqgeDZCCIgQefjBVVYvdsCkGmi5mV
 q+Uzy8gKCk0tT4owoxreNJ6NdGW1P0mynkJtvBtWMAN2xHTFLAk4Ug1yOhMA7+cd85/g
 RbJg==
X-Gm-Message-State: AOAM531wIvGNv8wXUVFYCR8g88xtQMIoJdJ2JIjDdNZ5BkRRF0KApct4
 BaqbKeUTCHcdQa9KoA2P7zU=
X-Google-Smtp-Source: ABdhPJz65emQ8x+AkxyvE8yGEA4d1ei1exd+Pf2EKZFz36XiLi75TAboMpZIiXvssKJbEkLWBmFDww==
X-Received: by 2002:a19:356:: with SMTP id 83mr7181307lfd.179.1591975251131;
 Fri, 12 Jun 2020 08:20:51 -0700 (PDT)
Received: from [192.168.2.145] (79-139-237-54.dynamic.spd-mgts.ru.
 [79.139.237.54])
 by smtp.googlemail.com with ESMTPSA id a16sm1739308ljb.107.2020.06.12.08.20.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 08:20:50 -0700 (PDT)
Subject: Re: [PATCH] ARM: tegra: Fix restoration of PLLM when exiting suspend
From: Dmitry Osipenko <digetx@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>
References: <20191210103708.7023-1-jonathanh@nvidia.com>
 <1f2a4f23-5be5-aa7e-6eb4-2aeb4058481d@gmail.com>
 <1fe9cd2d-50a2-aae5-95fa-0329acce4c4c@gmail.com>
 <6ee48145-7315-4283-ae56-fbf00b00f16b@nvidia.com>
 <57264acd-2623-9e9f-53c6-3b4cd3991315@gmail.com>
Message-ID: <ce82c0c9-2396-136c-a4d5-e5530295e593@gmail.com>
Date: Fri, 12 Jun 2020 18:20:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <57264acd-2623-9e9f-53c6-3b4cd3991315@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_082053_331138_6EC16E96 
X-CRM114-Status: GOOD (  25.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Peter De Schrijver <pdeschrijver@nvidia.com>,
 stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTcuMTIuMjAxOSAxNzoyOCwgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gMTcuMTIuMjAx
OSAxNzoxOSwgSm9uIEh1bnRlciDQv9C40YjQtdGCOgo+Pgo+PiBPbiAxMC8xMi8yMDE5IDIwOjI5
LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+PiAxMC4xMi4yMDE5IDIyOjI4LCBEbWl0cnkgT3Np
cGVua28g0L/QuNGI0LXRgjoKPj4+PiBIZWxsbyBKb24sCj4+Pj4KPj4+PiAxMC4xMi4yMDE5IDEz
OjM3LCBKb24gSHVudGVyINC/0LjRiNC10YI6Cj4+Pj4+IFRoZSBzdXNwZW5kIGVudHJ5IGFuZCBl
eGl0IGNvZGUgZm9yIDMyLWJpdCBUZWdyYSBkZXZpY2VzIGFzc3VtZXMgdGhhdAo+Pj4+PiB0aGUg
UExMTSAod2hpY2ggaXMgdXNlZCB0byBwcm92aWRlIHRoZSBjbG9jayBmb3IgZXh0ZXJuYWwgbWVt
b3J5KQo+Pj4+PiBpcyBhbHdheXMgZW5hYmxlZCBvbiBlbnRyeSB0byBzdXNwZW5kLiBIZW5jZSwg
dGhlIGN1cnJlbnQgY29kZSBhbHdheXMKPj4+Pj4gZGlzYWJsZXMgdGhlIFBMTE0gb24gZW50cnkg
dG8gc3VzcGVuZCBhbmQgcmUtZW5hYmxlcyB0aGUgUExMTSBvbiBleGl0Cj4+Pj4+IGZyb20gc3Vz
cGVuZC4KPj4+Pj4KPj4+Pj4gU2luY2UgdGhlIGludHJvZHVjdGlvbiBvZiB0aGUgVGVncmExMjQg
RU1DIGRyaXZlciBieSBjb21taXQgNzNhN2YwYTkwNjQxCj4+Pj4+ICgibWVtb3J5OiB0ZWdyYTog
QWRkIEVNQyAoZXh0ZXJuYWwgbWVtb3J5IGNvbnRyb2xsZXIpIGRyaXZlciIpLCB3aGljaCBpcwo+
Pj4+PiB1c2VkIHRvIHNjYWxlIHRoZSBFTUMgZnJlcXVlbmN5LCBQTExNIG1heSBub3QgYmUgdGhl
IGN1cnJlbnQgY2xvY2sKPj4+Pj4gc291cmNlIGZvciB0aGUgRU1DIG9uIGVudHJ5IHRvIHN1c3Bl
bmQgYW5kIGhlbmNlIG1heSBub3QgYmUgZW5hYmxlZC4KPj4+Pj4gQWx3YXlzIGVuYWJsaW5nIHRo
ZSBQTExNIG9uIGV4aXQgZnJvbSBzdXNwZW5kIGNhbiBjYXVzZSB0aGUgYWN0dWFsCj4+Pj4+IHN0
YXR1cyBvbiB0aGUgUExMIHRvIGJlIGRpZmZlcmVudCBmcm9tIHRoYXQgcmVwb3J0ZWQgYnkgdGhl
IGNvbW1vbiBjbG9jawo+Pj4+PiBmcmFtZXdvcmsuCj4+Pj4+Cj4+Pj4+IE9uIGtlcm5lbHMgcHJp
b3IgdG8gdjQuNSwgdGhlIGNvZGUgdG8gc2V0IHRoZSByYXRlIG9mIHRoZSBQTExNIGhhZCBhCj4+
Pj4+IHRlc3QgdG8gdmVyaWZ5IGlmIHRoZSBQTEwgd2FzIGVuYWJsZWQgYW5kIGlmIHRoZSBQTEwg
d2FzIGVuYWJsZWQsCj4+Pj4+IHNldHRpbmcgdGhlIHJhdGUgd291bGQgZmFpbC4gU2luY2UgY29t
bWl0IDI2N2I2MmE5Njk1MQo+Pj4+PiAoImNsazogdGVncmE6IHBsbDogVXBkYXRlIFBMTE0gaGFu
ZGxpbmciKSB0aGUgdGVzdCB0byBzZWUgaWYgUExMTSBpcwo+Pj4+PiBlbmFibGVkIHdhcyByZW1v
dmVkLgo+Pj4+Pgo+Pj4+PiBXaXRoIHRoZXNlIGVhcmxpZXIga2VybmVscywgaWYgdGhlIFBMTE0g
aXMgZGlzYWJsZWQgb24gZW50ZXJpbmcgc3VzcGVuZAo+Pj4+PiBhbmQgdGhlIEVNQyBkcml2ZXIg
YXR0ZW1wdHMgdG8gc2V0IHRoZSBwYXJlbnQgb2YgdGhlIEVNQyBjbG9jayB0byB0aGUKPj4+Pj4g
UExMTSBvbiBleGl0aW5nIHN1c3BlbmQsIHRoZW4gdGhlIHNldCByYXRlIGZvciB0aGUgUExMTSB3
aWxsIGZhaWwgYW5kIGluCj4+Pj4+IHR1cm4gY2F1c2UgdGhlIHJlc3VtZSB0byBmYWlsLgo+Pj4+
Pgo+Pj4+PiBXZSBzaG91bGQgbm90IGJlIHJlLWVuYWJsaW5nIHRoZSBQTExNIG9uIHJlc3VtZSBm
cm9tIHN1c3BlbmQgdW5sZXNzIGl0Cj4+Pj4+IHdhcyBlbmFibGVkIG9uIGVudHJ5IHRvIHN1c3Bl
bmQuIFRoZXJlZm9yZSwgZml4IHRoaXMgYnkgc2F2aW5nIHRoZSBzdGF0ZQo+Pj4+PiBvZiBQTExN
IG9uIGVudHJ5IHRvIHN1c3BlbmQgYW5kIG9ubHkgcmUtZW5hYmxlIGl0LCBpZiBpdCB3YXMgYWxy
ZWFkeQo+Pj4+PiBlbmFibGVkLgo+Pj4+Pgo+Pj4+PiBGaXhlczogNzNhN2YwYTkwNjQxICgibWVt
b3J5OiB0ZWdyYTogQWRkIEVNQyAoZXh0ZXJuYWwgbWVtb3J5IGNvbnRyb2xsZXIpIGRyaXZlciIp
Cj4+Pj4+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYt
Ynk6IEpvbiBIdW50ZXIgPGpvbmF0aGFuaEBudmlkaWEuY29tPgo+Pj4+PiAtLS0KPj4+Pj4gIGFy
Y2gvYXJtL21hY2gtdGVncmEvc2xlZXAtdGVncmEzMC5TIHwgMzMgKysrKysrKysrKysrKysrKysr
KysrKystLS0tLS0KPj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC10ZWdyYS9z
bGVlcC10ZWdyYTMwLlMgYi9hcmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLXRlZ3JhMzAuUwo+Pj4+
PiBpbmRleCAzMzQxYTEyYmJiOWMuLmMyZjA3OTNhNDI0ZiAxMDA2NDQKPj4+Pj4gLS0tIGEvYXJj
aC9hcm0vbWFjaC10ZWdyYS9zbGVlcC10ZWdyYTMwLlMKPj4+Pj4gKysrIGIvYXJjaC9hcm0vbWFj
aC10ZWdyYS9zbGVlcC10ZWdyYTMwLlMKPj4+Pj4gQEAgLTMzNywyNiArMzM3LDQyIEBAIEVOVFJZ
KHRlZ3JhMzBfbHAxX3Jlc2V0KQo+Pj4+PiAgCWFkZAlyMSwgcjEsICMyCj4+Pj4+ICAJd2FpdF91
bnRpbCByMSwgcjcsIHIzCj4+Pj4+ICAKPj4+Pj4gLQkvKiBlbmFibGUgUExMTSB2aWEgUE1DICov
Cj4+Pj4+ICsJLyogcmVzdG9yZSBQTExNIHN0YXRlICovCj4+Pj4+ICAJbW92MzIJcjIsIFRFR1JB
X1BNQ19CQVNFCj4+Pj4+ICsJYWRyCXI3LCB0ZWdyYV9wbGxtX3N0YXR1cwo+Pj4+PiArCWxkcgly
MSwgW3I3XQo+Pj4+PiArCWNtcAlyMiwgIygxIDw8IDEyKQo+Pj4+PiArCWJuZQlfc2tpcF9wbGxt
Cj4+Pj4+ICsKPj4+Pj4gIAlsZHIJcjEsIFtyMiwgI1BNQ19QTExQX1dCMF9PVkVSUklERV0KPj4+
Pj4gIAlvcnIJcjEsIHIxLCAjKDEgPDwgMTIpCj4+Pj4+ICAJc3RyCXIxLCBbcjIsICNQTUNfUExM
UF9XQjBfT1ZFUlJJREVdCj4+Pj4+ICAKPj4+Pj4gIAlwbGxfZW5hYmxlIHIxLCByMCwgQ0xLX1JF
U0VUX1BMTE1fQkFTRSwgMAo+Pj4+PiArCXBsbF9sb2NrZWQgcjEsIHIwLCBDTEtfUkVTRVRfUExM
TV9CQVNFCj4+Pj4+ICsKPj4+Pj4gK19za2lwX3BsbG06Cj4+Pj4+ICAJcGxsX2VuYWJsZSByMSwg
cjAsIENMS19SRVNFVF9QTExDX0JBU0UsIDAKPj4+Pj4gIAlwbGxfZW5hYmxlIHIxLCByMCwgQ0xL
X1JFU0VUX1BMTFhfQkFTRSwgMAo+Pj4+PiAgCj4+Pj4+ICAJYglfcGxsX21fY194X2RvbmUKPj4+
Pj4gIAo+Pj4+PiAgX25vX3BsbF9pZGRxX2V4aXQ6Cj4+Pj4+IC0JLyogZW5hYmxlIFBMTE0gdmlh
IFBNQyAqLwo+Pj4+PiArCS8qIHJlc3RvcmUgUExMTSBzdGF0ZSAqLwo+Pj4+PiAgCW1vdjMyCXIy
LCBURUdSQV9QTUNfQkFTRQo+Pj4+PiArCWFkcglyNywgdGVncmFfcGxsbV9zdGF0dXMKPj4+Pj4g
KwlsZHIJcjEsIFtyN10KPj4+Pj4gKwljbXAJcjIsICMoMSA8PCAxMikKPj4+Pj4gKwlibmUJX3Nr
aXBfcGxsbV9ub19pZGRxCj4+Pj4+ICsKPj4+Pj4gIAlsZHIJcjEsIFtyMiwgI1BNQ19QTExQX1dC
MF9PVkVSUklERV0KPj4+Pj4gIAlvcnIJcjEsIHIxLCAjKDEgPDwgMTIpCj4+Pj4+ICAJc3RyCXIx
LCBbcjIsICNQTUNfUExMUF9XQjBfT1ZFUlJJREVdCj4+Pj4+ICAKPj4+Pj4gIAlwbGxfZW5hYmxl
IHIxLCByMCwgQ0xLX1JFU0VUX1BMTE1fQkFTRSwgQ0xLX1JFU0VUX1BMTE1fTUlTQwo+Pj4+PiAr
CXBsbF9sb2NrZWQgcjEsIHIwLCBDTEtfUkVTRVRfUExMTV9CQVNFCj4+Pj4+ICsKPj4+Pj4gK19z
a2lwX3BsbG1fbm9faWRkcToKPj4+Pj4gIAlwbGxfZW5hYmxlIHIxLCByMCwgQ0xLX1JFU0VUX1BM
TENfQkFTRSwgQ0xLX1JFU0VUX1BMTENfTUlTQwo+Pj4+PiAgCXBsbF9lbmFibGUgcjEsIHIwLCBD
TEtfUkVTRVRfUExMWF9CQVNFLCBDTEtfUkVTRVRfUExMWF9NSVNDCj4+Pj4+ICAKPj4+Pj4gQEAg
LTM2NCw3ICszODAsNiBAQCBfcGxsX21fY194X2RvbmU6Cj4+Pj4+ICAJcGxsX2VuYWJsZSByMSwg
cjAsIENMS19SRVNFVF9QTExQX0JBU0UsIENMS19SRVNFVF9QTExQX01JU0MKPj4+Pj4gIAlwbGxf
ZW5hYmxlIHIxLCByMCwgQ0xLX1JFU0VUX1BMTEFfQkFTRSwgQ0xLX1JFU0VUX1BMTEFfTUlTQwo+
Pj4+PiAgCj4+Pj4+IC0JcGxsX2xvY2tlZCByMSwgcjAsIENMS19SRVNFVF9QTExNX0JBU0UKPj4+
Pj4gIAlwbGxfbG9ja2VkIHIxLCByMCwgQ0xLX1JFU0VUX1BMTFBfQkFTRQo+Pj4+PiAgCXBsbF9s
b2NrZWQgcjEsIHIwLCBDTEtfUkVTRVRfUExMQV9CQVNFCj4+Pj4+ICAJcGxsX2xvY2tlZCByMSwg
cjAsIENMS19SRVNFVF9QTExDX0JBU0UKPj4+Pj4gQEAgLTUyNiw2ICs1NDEsOCBAQCBfX25vX2R1
YWxfZW1jX2NoYW5sOgo+Pj4+PiAgRU5EUFJPQyh0ZWdyYTMwX2xwMV9yZXNldCkKPj4+Pj4gIAo+
Pj4+PiAgCS5hbGlnbglMMV9DQUNIRV9TSElGVAo+Pj4+PiArdGVncmFfcGxsbV9zdGF0dXM6Cj4+
Pj4+ICsJLndvcmQJMAo+Pj4+PiAgdGVncmEzMF9zZHJhbV9wYWRfYWRkcmVzczoKPj4+Pj4gIAku
d29yZAlURUdSQV9FTUNfQkFTRSArIEVNQ19DRkcJCQkJQDB4MAo+Pj4+PiAgCS53b3JkCVRFR1JB
X0VNQ19CQVNFICsgRU1DX1pDQUxfSU5URVJWQUwJCQlAMHg0Cj4+Pj4+IEBAIC02MjQsMTAgKzY0
MSwxNCBAQCB0ZWdyYTMwX3N3aXRjaF9jcHVfdG9fY2xrMzJrOgo+Pj4+PiAgCWFkZAlyMSwgcjEs
ICMyCj4+Pj4+ICAJd2FpdF91bnRpbCByMSwgcjcsIHI5Cj4+Pj4KPj4+Pgo+Pj4+PiAtCS8qIGRp
c2FibGUgUExMTSB2aWEgUE1DIGluIExQMSAqLwo+Pj4+PiArCS8qIGRpc2FibGUgUExMTSwgaWYg
ZW5hYmxlZCwgdmlhIFBNQyBpbiBMUDEgKi8KPj4+Pj4gKwlhZHIJcjEsIHRlZ3JhX3BsbG1fc3Rh
dHVzCj4+Pj4+ICAJbGRyCXIwLCBbcjQsICNQTUNfUExMUF9XQjBfT1ZFUlJJREVdCj4+Pj4+IC0J
YmljCXIwLCByMCwgIygxIDw8IDEyKQo+Pj4+PiAtCXN0cglyMCwgW3I0LCAjUE1DX1BMTFBfV0Iw
X09WRVJSSURFXQo+Pj4+PiArCWFuZAlyMiwgcjAsICMoMSA8PCAxMikKPj4+Pj4gKwlzdHIgICAg
IHIyLCBbcjFdCj4+Pj4+ICsJY21wCXIyLCAjKDEgPDwgMTIpCj4+Pj4+ICsJYmljZXEJcjAsIHIw
LCAjKDEgPDwgMTIpCj4+Pj4+ICsJc3RyZXEJcjAsIFtyNCwgI1BNQ19QTExQX1dCMF9PVkVSUklE
RV0KPj4+Pj4gIAo+Pj4+PiAgCS8qIGRpc2FibGUgUExMUCwgUExMQSwgUExMQyBhbmQgUExMWCAq
Lwo+Pj4+PiAgCWxkcglyMCwgW3I1LCAjQ0xLX1JFU0VUX1BMTFBfQkFTRV0KPj4+Pgo+Pj4+IFBM
TE0ncyBlbmFibGUtc3RhdHVzIGNvdWxkIGJlIGRlZmluZWQgZWl0aGVyIGJ5IFBNQyBvciBDYVIu
IFRodXMgYXQKPj4+PiBmaXJzdCB5b3UgbmVlZCB0byBjaGVjayB3aGV0aGVyIFBNQyBvdmVycmlk
ZXMgQ2FSJ3MgZW5hYmxlIGFuZCB0aGVuCj4+Pj4ganVkZ2UgdGhlIGVuYWJsZSBzdGF0ZSBiYXNl
ZCBvbiBQTUMgb3IgQ2FSIHN0YXRlIHJlc3BlY3RpdmVseS4KPj4+Pgo+Pj4KPj4+IEFjdHVhbGx5
LCBub3cgSSB0aGluayB0aGF0IGl0IGRvZXNuJ3QgbWFrZSBzZW5zZSB0byBjaGVjayBQTUMgV0Iw
IHN0YXRlCj4+PiBhdCBhbGwuIElJVUMsIFBMTE0ncyBzdGF0ZSBvZiB0aGUgV0IwIHJlZ2lzdGVy
IGRlZmluZXMgd2hldGhlciBCb290IFJPTQo+Pj4gc2hvdWxkIGVuYWJsZSBQTExNIG9uIHJlc3Vt
ZSBmcm9tIHN1c3BlbmQuIFRodXMgaXQgd2lsbCBiZSBjb3JyZWN0IHRvCj4+PiBjaGVjayBvbmx5
IHRoZSBDYVIncyBlbmFibGUtc3RhdGUgb2YgUExMTS4KPj4KPj4gVGhhbmtzIGZvciBwb2ludGlu
ZyB0aGlzIG91dCBhbmQgc29ycnkgZm9yIHRoZSBkZWxheS4gSG93ZXZlciwgSSBhbSBub3QKPj4g
c3VyZSBJIGFncmVlIHRoYXQgd2Ugc2hvdWxkIG5vdCBjaGVjayB0aGlzIGF0IGFsbC4gSWYgdGhl
IG92ZXJyaWRlIGJpdAo+PiBpcyBzZXQsIHRoZW4gd2UgZG8gd2FudCB0byBjaGVjayB0aGUgc3Rh
dGUgZnJvbSB0aGUgUE1DIHJlZ2lzdGVyIGFuZCBpZgo+PiBpdCBpcyBub3QgdGhlbiB3ZSBzaG91
bGQganVzdCB1c2UgdGhlIFBMTE0gcmVnaXN0ZXIgaXRzZWxmLgo+IAo+IFNvcnJ5IGlmIEkgd2Fz
bid0IGNsZWFyLi4gbXkgcG9pbnQgaXMgdGhhdCB0aGUgUE1DJ3Mgb3ZlcnJpZGUgcmVnaXN0ZXIK
PiBiaXQgZG9lc24ndCByZWZsZWN0IHRoZSBQTExNJ3MgZW5hYmxlLXN0YXRlLiBUaGUgUExMTSBj
b3VsZCBiZSBkaXNhYmxlZAo+IHdoaWxlIFBNQ19QTExQX1dCMF9PVkVSUklERV9QTExNX0VOQUJM
RSBiaXQgaXMgc2V0Lgo+IAo+IFRoZSBDYVIncyBQTExNIGVuYWJsZS1zdGF0ZSByZWZsZWN0cyB0
aGUgYWN0dWFsIGhhcmR3YXJlIHN0YXRlLiBBdCBsZWFzdAo+IHRoYXQncyB3aGF0IEkgc2VlIG9u
IFQzMC4KPiAKPj4+IExvb2tzIGxpa2UgaXQgaXMgYSBiaXQgb2Ygbm9uc2Vuc2UgdGhhdCBjbGtf
cGxsX2lzX2VuYWJsZWQoKSBjaGVja3MKPj4+IFBNQ19QTExQX1dCMF9PVkVSUklERV9QTExNX0VO
QUJMRSBmb3IganVkZ2luZyBvZiB0aGUgZW5hYmxlLXN0YXRlLiBUaGlzCj4+PiBpcyBub3QgdGhl
IGZpcnN0IHRpbWUgSSdtIGdldHRpbmcgY29uZnVzZWQgYnkgaXQsIHBlcmhhcHMgd2lsbCBiZQo+
Pj4gd29ydGh3aGlsZSB0byBjbGVhbiB1cCB0aGF0IHBhcnQgb2YgdGhlIGNsayBkcml2ZXIncyBj
b2RlIChpZiBJJ20gbm90Cj4+PiBtaXNzaW5nIHNvbWV0aGluZykuCj4+Cj4+IFRoYXQgY29kZSBs
b29rcyBmaW5lIHRvIG1lLiBJIGp1c3QgdGhpbmsgdGhpcyBjb2RlIGVudGVyaW5nIGFuZCBleGl0
aW5nCj4+IHN1c3BlbmQgbmVlZHMgdG8gYmUgZml4ZWQuIEkgd2lsbCByZS13b3JrIHRoaXMgZml4
LgoKSGVsbG8sIEpvbiEgRG8geW91IGhhdmUgYW55IHBsYW5zIHRvIGNvbnRpbnVlIHdvcmtpbmcg
b24gdGhpcyBwYXRjaD8gQQpkYXkgYWdvIEkgc2VudCBvdXQgcGF0Y2ggdGhhdCBpbXByb3ZlcyBQ
TExNIGhhbmRsaW5nIHdpdGhpbiB0aGUgY2xrCmRyaXZlciBbMV0sIHdpbGwgYmUgZ3JlYXQgaWYg
dGhlIHJlc3VtZSBmcm9tIHN1c3BlbmQgY291bGQgYmUgaW1wcm92ZWQKYXMgd2VsbCEgOikKClsx
XQpodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2plY3QvbGludXgtdGVncmEvcGF0Y2gv
MjAyMDA2MTAxNjM3MzguMjkzMDQtMS1kaWdldHhAZ21haWwuY29tLwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
