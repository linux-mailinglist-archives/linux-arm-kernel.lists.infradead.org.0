Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B050E119096
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 20:28:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yf6SCfZumpquqBKvzmK/EeBhESlacCTzYiiFERvNxNQ=; b=rSVIsDWPRBzNmd
	sWmMYIr37iPntcuGwNGXKsrJY4oCaXH89xJ04sSWP6e2R8MHBcC5rh8FkCmc7s6fz/XwyhOd3zn/W
	11kHS3FuLbeQ+Edz82NH8yogbAVryWMiW4KriDvsHQ0MreNR0MJx+iM/hqCCK82N4Mf816/pFRSur
	86LjAX3zQPhtG/WAb4iuVaTNa/ST/KH+2t5H34NXr492UXfvkkYaAqaJNbGyMDOb1TXG3ASXERNw+
	p5Wr6uXY3XAWdsDbxxCHswtxL2Yup19A3je2UXBeNDZiBSoJcq1sQCjA5P3ygD+YsxubziolPSCwg
	ZSlqNv71DDJb4UlaMB1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielBW-0003Bb-4H; Tue, 10 Dec 2019 19:28:38 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielBO-0003Ar-4j
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 19:28:31 +0000
Received: by mail-lj1-x243.google.com with SMTP id u17so21215483lja.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 11:28:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:newsgroups:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KzrNKcEOiU1kNGyhfhhVTJTy6mwRVVvr+Rcn9qUurw8=;
 b=QNz7LqTYmVb9Aun7hEf0jLOYMlUfOiJuHQCLY3kkVkHM+T2cbdU3feFVwNjxfXYTx5
 6dX859cw10yoxlm375M6kKNRDA9uLd7wNnFtS4T8lQntSzd4PHol+m/6MpAzsAcdl8r3
 PoAAMrtynBsYvr4Mim7TnoL3Rh5i4MbCW/mXDpv++/UK0O8ojl2cYu1yYmWB0TG5z22R
 1IX3wuDmLuBYGM3/B5FKAVcK6edYkjGgMGrPXcMOwySXPzMaX3WLhwFKoCXgoVpJbqas
 ic5l6MR2VHaXdqKIwHDLHhkaLMdhlhqr9UPbISdjXyyiOjE4mGzE619pZ5FPG9eLD+Wb
 Tfyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:newsgroups:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=KzrNKcEOiU1kNGyhfhhVTJTy6mwRVVvr+Rcn9qUurw8=;
 b=D74e5BoZEHf/1cuGisK/Sgf3D+BE0H3xczbcy8ciS369uGsD4qsXCKE2UCzBo/6WIc
 3dFo8KNfUJld3ydpm1ckFPERlEdmZdrwKPsLtG1mwU1nH3bausJpPBqnLhG/HwDFKs/V
 ZuQJpa5e7dJRMaP0nv4S8Le6fY0UFlCTrEFNVr8S9ltWFmqsJjSpl7k1Fx0DJul8RdMP
 8hSi5kFw4L3gOCn1QMY8BcY0Su1hDSlL1bz69eSSmXwEhXt1xGSEBCzEbNLA95nYTwq3
 A9nk/M6gWdqyaoc1/8WtZxc7mbUOoW1iRPrS1MxEuS9qHdECBXN5wrr/Oc5UJj55uNjl
 ACtQ==
X-Gm-Message-State: APjAAAWfywMyi3Ivym+kBi8E8Rtip6l7/7Aj3h7YS6SQZXtWWCgOzaes
 9nwz+FsNQ2FRpgaGXlYacYs=
X-Google-Smtp-Source: APXvYqyGNckK5y5s9f8Jo3dSVgNxZdC7RHTTL3IKb5a7ys0PqCMlBLRFvvJWSZCZJGsvb+557NSYEA==
X-Received: by 2002:a2e:91c1:: with SMTP id u1mr21608748ljg.181.1576006101841; 
 Tue, 10 Dec 2019 11:28:21 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id c9sm2302940ljd.28.2019.12.10.11.28.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Dec 2019 11:28:21 -0800 (PST)
Subject: Re: [PATCH] ARM: tegra: Fix restoration of PLLM when exiting suspend
To: Jon Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>
Newsgroups: gmane.linux.kernel.stable, gmane.linux.ports.arm.kernel,
 gmane.linux.ports.tegra
References: <20191210103708.7023-1-jonathanh@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <1f2a4f23-5be5-aa7e-6eb4-2aeb4058481d@gmail.com>
Date: Tue, 10 Dec 2019 22:28:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191210103708.7023-1-jonathanh@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_112830_210774_C6F28736 
X-CRM114-Status: GOOD (  26.99  )
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
Cc: linux-tegra@vger.kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gSm9uLAoKMTAuMTIuMjAxOSAxMzozNywgSm9uIEh1bnRlciDQv9C40YjQtdGCOgo+IFRo
ZSBzdXNwZW5kIGVudHJ5IGFuZCBleGl0IGNvZGUgZm9yIDMyLWJpdCBUZWdyYSBkZXZpY2VzIGFz
c3VtZXMgdGhhdAo+IHRoZSBQTExNICh3aGljaCBpcyB1c2VkIHRvIHByb3ZpZGUgdGhlIGNsb2Nr
IGZvciBleHRlcm5hbCBtZW1vcnkpCj4gaXMgYWx3YXlzIGVuYWJsZWQgb24gZW50cnkgdG8gc3Vz
cGVuZC4gSGVuY2UsIHRoZSBjdXJyZW50IGNvZGUgYWx3YXlzCj4gZGlzYWJsZXMgdGhlIFBMTE0g
b24gZW50cnkgdG8gc3VzcGVuZCBhbmQgcmUtZW5hYmxlcyB0aGUgUExMTSBvbiBleGl0Cj4gZnJv
bSBzdXNwZW5kLgo+IAo+IFNpbmNlIHRoZSBpbnRyb2R1Y3Rpb24gb2YgdGhlIFRlZ3JhMTI0IEVN
QyBkcml2ZXIgYnkgY29tbWl0IDczYTdmMGE5MDY0MQo+ICgibWVtb3J5OiB0ZWdyYTogQWRkIEVN
QyAoZXh0ZXJuYWwgbWVtb3J5IGNvbnRyb2xsZXIpIGRyaXZlciIpLCB3aGljaCBpcwo+IHVzZWQg
dG8gc2NhbGUgdGhlIEVNQyBmcmVxdWVuY3ksIFBMTE0gbWF5IG5vdCBiZSB0aGUgY3VycmVudCBj
bG9jawo+IHNvdXJjZSBmb3IgdGhlIEVNQyBvbiBlbnRyeSB0byBzdXNwZW5kIGFuZCBoZW5jZSBt
YXkgbm90IGJlIGVuYWJsZWQuCj4gQWx3YXlzIGVuYWJsaW5nIHRoZSBQTExNIG9uIGV4aXQgZnJv
bSBzdXNwZW5kIGNhbiBjYXVzZSB0aGUgYWN0dWFsCj4gc3RhdHVzIG9uIHRoZSBQTEwgdG8gYmUg
ZGlmZmVyZW50IGZyb20gdGhhdCByZXBvcnRlZCBieSB0aGUgY29tbW9uIGNsb2NrCj4gZnJhbWV3
b3JrLgo+IAo+IE9uIGtlcm5lbHMgcHJpb3IgdG8gdjQuNSwgdGhlIGNvZGUgdG8gc2V0IHRoZSBy
YXRlIG9mIHRoZSBQTExNIGhhZCBhCj4gdGVzdCB0byB2ZXJpZnkgaWYgdGhlIFBMTCB3YXMgZW5h
YmxlZCBhbmQgaWYgdGhlIFBMTCB3YXMgZW5hYmxlZCwKPiBzZXR0aW5nIHRoZSByYXRlIHdvdWxk
IGZhaWwuIFNpbmNlIGNvbW1pdCAyNjdiNjJhOTY5NTEKPiAoImNsazogdGVncmE6IHBsbDogVXBk
YXRlIFBMTE0gaGFuZGxpbmciKSB0aGUgdGVzdCB0byBzZWUgaWYgUExMTSBpcwo+IGVuYWJsZWQg
d2FzIHJlbW92ZWQuCj4gCj4gV2l0aCB0aGVzZSBlYXJsaWVyIGtlcm5lbHMsIGlmIHRoZSBQTExN
IGlzIGRpc2FibGVkIG9uIGVudGVyaW5nIHN1c3BlbmQKPiBhbmQgdGhlIEVNQyBkcml2ZXIgYXR0
ZW1wdHMgdG8gc2V0IHRoZSBwYXJlbnQgb2YgdGhlIEVNQyBjbG9jayB0byB0aGUKPiBQTExNIG9u
IGV4aXRpbmcgc3VzcGVuZCwgdGhlbiB0aGUgc2V0IHJhdGUgZm9yIHRoZSBQTExNIHdpbGwgZmFp
bCBhbmQgaW4KPiB0dXJuIGNhdXNlIHRoZSByZXN1bWUgdG8gZmFpbC4KPiAKPiBXZSBzaG91bGQg
bm90IGJlIHJlLWVuYWJsaW5nIHRoZSBQTExNIG9uIHJlc3VtZSBmcm9tIHN1c3BlbmQgdW5sZXNz
IGl0Cj4gd2FzIGVuYWJsZWQgb24gZW50cnkgdG8gc3VzcGVuZC4gVGhlcmVmb3JlLCBmaXggdGhp
cyBieSBzYXZpbmcgdGhlIHN0YXRlCj4gb2YgUExMTSBvbiBlbnRyeSB0byBzdXNwZW5kIGFuZCBv
bmx5IHJlLWVuYWJsZSBpdCwgaWYgaXQgd2FzIGFscmVhZHkKPiBlbmFibGVkLgo+IAo+IEZpeGVz
OiA3M2E3ZjBhOTA2NDEgKCJtZW1vcnk6IHRlZ3JhOiBBZGQgRU1DIChleHRlcm5hbCBtZW1vcnkg
Y29udHJvbGxlcikgZHJpdmVyIikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IAo+IFNp
Z25lZC1vZmYtYnk6IEpvbiBIdW50ZXIgPGpvbmF0aGFuaEBudmlkaWEuY29tPgo+IC0tLQo+ICBh
cmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLXRlZ3JhMzAuUyB8IDMzICsrKysrKysrKysrKysrKysr
KysrKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLXRlZ3Jh
MzAuUyBiL2FyY2gvYXJtL21hY2gtdGVncmEvc2xlZXAtdGVncmEzMC5TCj4gaW5kZXggMzM0MWEx
MmJiYjljLi5jMmYwNzkzYTQyNGYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vbWFjaC10ZWdyYS9z
bGVlcC10ZWdyYTMwLlMKPiArKysgYi9hcmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLXRlZ3JhMzAu
Uwo+IEBAIC0zMzcsMjYgKzMzNyw0MiBAQCBFTlRSWSh0ZWdyYTMwX2xwMV9yZXNldCkKPiAgCWFk
ZAlyMSwgcjEsICMyCj4gIAl3YWl0X3VudGlsIHIxLCByNywgcjMKPiAgCj4gLQkvKiBlbmFibGUg
UExMTSB2aWEgUE1DICovCj4gKwkvKiByZXN0b3JlIFBMTE0gc3RhdGUgKi8KPiAgCW1vdjMyCXIy
LCBURUdSQV9QTUNfQkFTRQo+ICsJYWRyCXI3LCB0ZWdyYV9wbGxtX3N0YXR1cwo+ICsJbGRyCXIx
LCBbcjddCj4gKwljbXAJcjIsICMoMSA8PCAxMikKPiArCWJuZQlfc2tpcF9wbGxtCj4gKwo+ICAJ
bGRyCXIxLCBbcjIsICNQTUNfUExMUF9XQjBfT1ZFUlJJREVdCj4gIAlvcnIJcjEsIHIxLCAjKDEg
PDwgMTIpCj4gIAlzdHIJcjEsIFtyMiwgI1BNQ19QTExQX1dCMF9PVkVSUklERV0KPiAgCj4gIAlw
bGxfZW5hYmxlIHIxLCByMCwgQ0xLX1JFU0VUX1BMTE1fQkFTRSwgMAo+ICsJcGxsX2xvY2tlZCBy
MSwgcjAsIENMS19SRVNFVF9QTExNX0JBU0UKPiArCj4gK19za2lwX3BsbG06Cj4gIAlwbGxfZW5h
YmxlIHIxLCByMCwgQ0xLX1JFU0VUX1BMTENfQkFTRSwgMAo+ICAJcGxsX2VuYWJsZSByMSwgcjAs
IENMS19SRVNFVF9QTExYX0JBU0UsIDAKPiAgCj4gIAliCV9wbGxfbV9jX3hfZG9uZQo+ICAKPiAg
X25vX3BsbF9pZGRxX2V4aXQ6Cj4gLQkvKiBlbmFibGUgUExMTSB2aWEgUE1DICovCj4gKwkvKiBy
ZXN0b3JlIFBMTE0gc3RhdGUgKi8KPiAgCW1vdjMyCXIyLCBURUdSQV9QTUNfQkFTRQo+ICsJYWRy
CXI3LCB0ZWdyYV9wbGxtX3N0YXR1cwo+ICsJbGRyCXIxLCBbcjddCj4gKwljbXAJcjIsICMoMSA8
PCAxMikKPiArCWJuZQlfc2tpcF9wbGxtX25vX2lkZHEKPiArCj4gIAlsZHIJcjEsIFtyMiwgI1BN
Q19QTExQX1dCMF9PVkVSUklERV0KPiAgCW9ycglyMSwgcjEsICMoMSA8PCAxMikKPiAgCXN0cgly
MSwgW3IyLCAjUE1DX1BMTFBfV0IwX09WRVJSSURFXQo+ICAKPiAgCXBsbF9lbmFibGUgcjEsIHIw
LCBDTEtfUkVTRVRfUExMTV9CQVNFLCBDTEtfUkVTRVRfUExMTV9NSVNDCj4gKwlwbGxfbG9ja2Vk
IHIxLCByMCwgQ0xLX1JFU0VUX1BMTE1fQkFTRQo+ICsKPiArX3NraXBfcGxsbV9ub19pZGRxOgo+
ICAJcGxsX2VuYWJsZSByMSwgcjAsIENMS19SRVNFVF9QTExDX0JBU0UsIENMS19SRVNFVF9QTExD
X01JU0MKPiAgCXBsbF9lbmFibGUgcjEsIHIwLCBDTEtfUkVTRVRfUExMWF9CQVNFLCBDTEtfUkVT
RVRfUExMWF9NSVNDCj4gIAo+IEBAIC0zNjQsNyArMzgwLDYgQEAgX3BsbF9tX2NfeF9kb25lOgo+
ICAJcGxsX2VuYWJsZSByMSwgcjAsIENMS19SRVNFVF9QTExQX0JBU0UsIENMS19SRVNFVF9QTExQ
X01JU0MKPiAgCXBsbF9lbmFibGUgcjEsIHIwLCBDTEtfUkVTRVRfUExMQV9CQVNFLCBDTEtfUkVT
RVRfUExMQV9NSVNDCj4gIAo+IC0JcGxsX2xvY2tlZCByMSwgcjAsIENMS19SRVNFVF9QTExNX0JB
U0UKPiAgCXBsbF9sb2NrZWQgcjEsIHIwLCBDTEtfUkVTRVRfUExMUF9CQVNFCj4gIAlwbGxfbG9j
a2VkIHIxLCByMCwgQ0xLX1JFU0VUX1BMTEFfQkFTRQo+ICAJcGxsX2xvY2tlZCByMSwgcjAsIENM
S19SRVNFVF9QTExDX0JBU0UKPiBAQCAtNTI2LDYgKzU0MSw4IEBAIF9fbm9fZHVhbF9lbWNfY2hh
bmw6Cj4gIEVORFBST0ModGVncmEzMF9scDFfcmVzZXQpCj4gIAo+ICAJLmFsaWduCUwxX0NBQ0hF
X1NISUZUCj4gK3RlZ3JhX3BsbG1fc3RhdHVzOgo+ICsJLndvcmQJMAo+ICB0ZWdyYTMwX3NkcmFt
X3BhZF9hZGRyZXNzOgo+ICAJLndvcmQJVEVHUkFfRU1DX0JBU0UgKyBFTUNfQ0ZHCQkJCUAweDAK
PiAgCS53b3JkCVRFR1JBX0VNQ19CQVNFICsgRU1DX1pDQUxfSU5URVJWQUwJCQlAMHg0Cj4gQEAg
LTYyNCwxMCArNjQxLDE0IEBAIHRlZ3JhMzBfc3dpdGNoX2NwdV90b19jbGszMms6Cj4gIAlhZGQJ
cjEsIHIxLCAjMgo+ICAJd2FpdF91bnRpbCByMSwgcjcsIHI5CgoKPiAtCS8qIGRpc2FibGUgUExM
TSB2aWEgUE1DIGluIExQMSAqLwo+ICsJLyogZGlzYWJsZSBQTExNLCBpZiBlbmFibGVkLCB2aWEg
UE1DIGluIExQMSAqLwo+ICsJYWRyCXIxLCB0ZWdyYV9wbGxtX3N0YXR1cwo+ICAJbGRyCXIwLCBb
cjQsICNQTUNfUExMUF9XQjBfT1ZFUlJJREVdCj4gLQliaWMJcjAsIHIwLCAjKDEgPDwgMTIpCj4g
LQlzdHIJcjAsIFtyNCwgI1BNQ19QTExQX1dCMF9PVkVSUklERV0KPiArCWFuZAlyMiwgcjAsICMo
MSA8PCAxMikKPiArCXN0ciAgICAgcjIsIFtyMV0KPiArCWNtcAlyMiwgIygxIDw8IDEyKQo+ICsJ
YmljZXEJcjAsIHIwLCAjKDEgPDwgMTIpCj4gKwlzdHJlcQlyMCwgW3I0LCAjUE1DX1BMTFBfV0Iw
X09WRVJSSURFXQo+ICAKPiAgCS8qIGRpc2FibGUgUExMUCwgUExMQSwgUExMQyBhbmQgUExMWCAq
Lwo+ICAJbGRyCXIwLCBbcjUsICNDTEtfUkVTRVRfUExMUF9CQVNFXQoKUExMTSdzIGVuYWJsZS1z
dGF0dXMgY291bGQgYmUgZGVmaW5lZCBlaXRoZXIgYnkgUE1DIG9yIENhUi4gVGh1cyBhdApmaXJz
dCB5b3UgbmVlZCB0byBjaGVjayB3aGV0aGVyIFBNQyBvdmVycmlkZXMgQ2FSJ3MgZW5hYmxlIGFu
ZCB0aGVuCmp1ZGdlIHRoZSBlbmFibGUgc3RhdGUgYmFzZWQgb24gUE1DIG9yIENhUiBzdGF0ZSBy
ZXNwZWN0aXZlbHkuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
