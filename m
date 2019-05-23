Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ECB27E12
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 15:26:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dhhykiSdjnRbVTYmb8hKmbj7L6+fT4a4SwiAhtGwy98=; b=TnMwSeFeaAWruR
	6pGEvq+eC7QAZHqJgJ/wO5bYx5gClihVlOOCVB45fmtWKETbISLr5zIGtvdNfc2eXlo3WSSsu3gdw
	isCrbJS1f7b2TG5kXqB+D07DPuzRSqGX7eJ/rR7aqiFYzKeQo9Cz8QeOiHDTGRuN1/r/dHgqpSqru
	wRPHH8+lgpJs7Dvcc0PUeswfoQmPyOhFufh6cUEJZ3ODNoeZea7q+Zdh4N3ooKbhuXxK/nvg1+ShN
	orzTy09xks+j51tianUfKHTEygLQLH4wrqESnyvPAu2uVCuaCkytWWSoq6T6otPvMFjerTFGYK0ds
	qeL7HSTkAG2VtvscgrHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTnjM-0000SO-0G; Thu, 23 May 2019 13:26:00 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTnjE-0000Ri-9B
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 13:25:53 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so6254710wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 06:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wbRasSgTQa32t2jIb/yGrsi9dG9VweUBHx1lryI7rqs=;
 b=ISreeSU5fm64y5nIINtKesjdhpNNQjNJFes6JFFmqw2RTwqpmqba4CaUrIGrMmsMgb
 PGTpmonHdvY8tbDzNL48mosdHzvMILM+WZ+u8LAfxpM5dfuVnVS+PLc54nQFYy9PEeAh
 umy04EHHnPoC92T+JXk10eBzOuWo4T1TmC/fobAcusXG4c95E9IoN0QnCBj3zfgyzGIw
 x51u3gB4tyXnzTJLt/FHTGowCi3ufFXfS/qtJ25+oV1rH0qqMV2nqRWsqehKmEXhXvhk
 tf2PBbQF1uB3DJO7H4jYxg53SFoPBmEO6/m7VeC65w5z2oqZVpC4m7XnUym883xHAxmo
 FPFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wbRasSgTQa32t2jIb/yGrsi9dG9VweUBHx1lryI7rqs=;
 b=ohVwpQtwoUx4WnIQs9WNMAa39qdmMpG+5Y8yaP2Ozb9sdMY0zLJhPCvFLJ3rIbvo1t
 kZNjWip8UkyPePlFBqCA47L1GFecR4ZgIrx8mpl76Zrlk2EPdxRMyFf/rDWPsN5ir/9B
 AZzWfwfEmh0KY9f9+hrqK2YffbSHGW67jY6q7dkIfo7Kl0CTHy2mwhoV4EiaB2h65elX
 tjsAhphwb9cdKAivF+TTG8XyK91BWvocH4mLPuJduiHcrguS0QB8pEiNW/Hb9vdUlhxD
 d0uu7x4uZU8zu6KRDityXgjOd+XeZhPcwUvtA034XDQBwGxQPPxFsnERTywN4sXRcqne
 h9Pw==
X-Gm-Message-State: APjAAAVQZ18NTU1I3kz2IDwOuAiB45N8M5Diuz/LmcAOGycyXAjlFOEJ
 X8rsWu6Oy7MqUzYuK3QJbYiZvg==
X-Google-Smtp-Source: APXvYqzgjoLbtDHSUM0BbzPB/AEW11R/JZZOjqkDy1w4+S9jeqCNZbxcnwc7bmnodJXUt/zG5+zp9Q==
X-Received: by 2002:adf:cc8b:: with SMTP id p11mr44444965wrj.13.1558617949630; 
 Thu, 23 May 2019 06:25:49 -0700 (PDT)
Received: from [192.168.43.165] ([37.170.117.75])
 by smtp.googlemail.com with ESMTPSA id i125sm17099647wmi.2.2019.05.23.06.25.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 06:25:49 -0700 (PDT)
Subject: Re: [RFC 1/2] clocksource: davinci-timer: add support for clockevents
To: Bartosz Golaszewski <brgl@bgdev.pl>
References: <20190417144709.19588-1-brgl@bgdev.pl>
 <20190417144709.19588-2-brgl@bgdev.pl>
 <187fdcd8-4cc8-3871-ee66-1ebd7408b1fe@linaro.org>
 <CAMRc=MdQ_GORGaw1szwvBRqKzkZQCZNnEcwkNzmGduEbiDR4Lw@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <ca00f49f-0fa2-1907-feac-ba798dce365b@linaro.org>
Date: Thu, 23 May 2019 15:25:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMRc=MdQ_GORGaw1szwvBRqKzkZQCZNnEcwkNzmGduEbiDR4Lw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_062552_325423_30EF9DD6 
X-CRM114-Status: GOOD (  24.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIEJhcnRvc3osCgoKCk9uIDIzLzA1LzIwMTkgMTQ6NTgsIEJhcnRvc3ogR29sYXN6ZXdza2kg
d3JvdGU6CgpbIC4uLiBdCgo+Pj4gKysrIGIvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1kYXZp
bmNpLmMKPj4+IEBAIC0wLDAgKzEsMjcyIEBACj4+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjAtb25seQo+Pj4gKy8vCj4+PiArLy8gVEkgRGFWaW5jaSBjbG9ja3NvdXJjZSBk
cml2ZXIKPj4+ICsvLwo+Pj4gKy8vIENvcHlyaWdodCAoQykgMjAxOSBUZXhhcyBJbnN0cnVtZW50
cwo+Pj4gKy8vIEF1dGhvcjogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3c2tpQGJheWxp
YnJlLmNvbT4KPj4+ICsvLyAod2l0aCB0aW55IHBhcnRzIGFkb3B0ZWQgZnJvbSBjb2RlIGJ5IEtl
dmluIEhpbG1hbiA8a2hpbG1hbkBiYXlsaWJyZS5jb20+KQo+Pgo+PiBUaGUgaGVhZGVyIGZvcm1h
dCBpcyB3cm9uZywgaXQgc2hvdWxkIGJlOgo+Pgo+PiAvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMC1vbmx5Cj4+IC8qCj4+ICAqIFRJIERhVmluY2kgY2xvY2tzb3VyY2UgZHJpdmVy
Cj4+ICAqCj4+ICAqIC4uLgo+PiAgKiAuLi4KPj4gICoKPj4gICovCj4gCj4gSXQncyBub3Qgd3Jv
bmcuIEl0IGxvb2tzIGxpa2UgaXQncyBhdCB0aGUgbWFpbnRhaW5lcnMgZGlzY3JldGlvbiBhbmQK
PiBJJ3ZlIGJlZW4gYXNrZWQgdG8gdXNlIGJvdGggZm9ybXMgYnkgZGlmZmVyZW50IG1haW50YWlu
ZXJzLiBTZWVtcyB5b3UKPiBqdXN0IGNhbid0IGdldCBpdCByaWdodC4gOikgSSd2ZSBjaGFuZ2Vk
IGl0IGluIHYyIHRob3VnaC4KClJpZ2h0LCBJJ3ZlIGJlZW4gdGhyb3VnaCB0aGUgZG9jdW1lbnRh
dGlvbiBidXQgaXQgaXMgc3RpbGwgdW5jbGVhciBmb3IKbWUuIFNvIGxldCdzIHN0aWNrIHRvIHdo
YXRldmVyIHlvdSB3YW50IGZvciBub3cuCgpbIC4uLiBdCgo+Pj4gK3N0YXRpYyBpbnQKPj4+ICtk
YXZpbmNpX2Nsb2NrZXZlbnRfc2V0X25leHRfZXZlbnRfc3RkKHVuc2lnbmVkIGxvbmcgY3ljbGVz
LAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGNsb2NrX2V2
ZW50X2RldmljZSAqZGV2KQo+Pj4gK3sKPj4+ICsgICAgIHN0cnVjdCBkYXZpbmNpX2Nsb2NrZXZl
bnQgKmNsb2NrZXZlbnQ7Cj4+PiArICAgICB1bnNpZ25lZCBpbnQgZW5hbW9kZTsKPj4+ICsKPj4+
ICsgICAgIGNsb2NrZXZlbnQgPSB0b19kYXZpbmNpX2Nsb2NrZXZlbnQoZGV2KTsKPj4+ICsgICAg
IGVuYW1vZGUgPSBjbG9ja2V2ZW50LT5lbmFtb2RlX2Rpc2FibGVkOwo+Pj4gKwo+Pj4gKyAgICAg
ZGF2aW5jaV9jbG9ja2V2ZW50X3VwZGF0ZShjbG9ja2V2ZW50LCBEQVZJTkNJX1RJTUVSX1JFR19U
Q1IsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrZXZlbnQtPmVuYW1v
ZGVfbWFzaywKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tldmVudC0+
ZW5hbW9kZV9kaXNhYmxlZCk7Cj4+Cj4+IFdoYXQgaXMgZm9yIHRoaXMgZnVuY3Rpb24gd2l0aCB0
aGUgREFWSU5DSV9USU1FUl9SRUdfVENSIHBhcmFtZXRlcj8KPiAKPiBJJ20gbm90IHN1cmUgSSB1
bmRlcnN0YW5kIHRoZSBxdWVzdGlvbi4gOigKCkkgbWVhbnQgZGF2aW5jaV9jbG9ja2V2ZW50X3Vw
ZGF0ZSBpcyBhbHdheXMgY2FsbGVkIHdpdGggdGhlCkRBVklOQ0lfVElNRVJfUkVHX1RDUiBwYXJh
bWV0ZXIuCgpTbyBpdCBjYW4gYmUgY2hhbmdlZCB0bzoKc3RhdGljIHZvaWQgZGF2aW5jaV9jbG9j
a2V2ZW50X3VwZGF0ZShzdHJ1Y3QgZGF2aW5jaV9jbG9ja2V2ZW50IAkKCQkJCQkJKmNsb2NrZXZl
bnQsCgkJCQkJdW5zaWduZWQgaW50IG1hc2ssCgkJCQkJdW5zaWduZWQgaW50IHZhbCkKewoJZGF2
aW5jaV9yZWdfdXBkYXRlKGNsb2NrZXZlbnQtPmJhc2UsIERBVklOQ0lfVElNRVJfUkVHX1RDUiwK
CQkJCSBtYXNrLCB2YWwpOwp9CgoKQWx0ZXJuYXRpdmVseSBkYXZpbmNpX2Nsb2NrZXZlbnRfdXBk
YXRlIGNhbiBiZSByZXBsYWNlZCBieSBhIGRpcmVjdCBjYWxsCnRvIGRhdmluY2lfcmVnX3VwZGF0
ZS4KClsgLi4uIF0KCj4+PiArICAgICBjbG9ja2V2ZW50LT5kZXYuY3B1bWFzayA9IGNwdW1hc2tf
b2YoMCk7Cj4+PiArCj4+PiArICAgICBjbG9ja2V2ZW50LT5iYXNlID0gYmFzZTsKPj4+ICsgICAg
IGNsb2NrZXZlbnQtPnRpbV9vZmYgPSBEQVZJTkNJX1RJTUVSX1JFR19USU0xMjsKPj4+ICsgICAg
IGNsb2NrZXZlbnQtPnByZF9vZmYgPSBEQVZJTkNJX1RJTUVSX1JFR19QUkQxMjsKPj4+ICsKPj4+
ICsgICAgIHNoaWZ0ID0gREFWSU5DSV9USU1FUl9FTkFNT0RFX1NISUZUX1RJTTEyOwo+Pj4gKyAg
ICAgY2xvY2tldmVudC0+ZW5hbW9kZV9kaXNhYmxlZCA9IERBVklOQ0lfVElNRVJfRU5BTU9ERV9E
SVNBQkxFRCA8PCBzaGlmdDsKPj4+ICsgICAgIGNsb2NrZXZlbnQtPmVuYW1vZGVfb25lc2hvdCA9
IERBVklOQ0lfVElNRVJfRU5BTU9ERV9PTkVTSE9UIDw8IHNoaWZ0Owo+Pj4gKyAgICAgY2xvY2tl
dmVudC0+ZW5hbW9kZV9wZXJpb2RpYyA9IERBVklOQ0lfVElNRVJfRU5BTU9ERV9QRVJJT0RJQyA8
PCBzaGlmdDsKPj4+ICsgICAgIGNsb2NrZXZlbnQtPmVuYW1vZGVfbWFzayA9IERBVklOQ0lfVElN
RVJfRU5BTU9ERV9NQVNLIDw8IHNoaWZ0Owo+Pgo+PiBJIGRvbid0IHNlZSB3aGVyZSAnc2hpZnQn
IGNhbiBiZSBkaWZmZXJlbnQgZnJvbSBUSU0xMiBoZXJlIG5laXRoZXIgaW4KPj4gdGhlIHNlY29u
ZCBwYXRjaCBmb3IgdGhvc2UgdmFsdWVzLiBXaHkgY3JlYXRlIHRoZXNlIGZpZWxkcyBpbnN0ZWFk
IG9mCj4+IHByZS1jb21wdXRlZCBtYWNyb3M/Cj4+Cj4gCj4gVGhlIHZhcmlhYmxlICdzaGlmdCcg
aGVyZSBpcyBvbmx5IHRvIGF2b2lkIGJyZWFraW5nIHRoZSBsaW5lcyAoanVzdCBhIGhlbHBlciku
Cj4gCj4gVGhlIHNoaWZ0IGl0c2VsZiBjYW4gYmUgZGlmZmVyZW50IHRob3VnaCBpbiB0aGUgc2Vj
b25kIHBhdGNoIC0KPiBzcGVjaWZpY2FsbHkgd2hlbiBjYWxsaW5nIGRhdmluY2lfY2xvY2tzb3Vy
Y2VfaW5pdCgpLgo+IAo+IElmIEkgd2VyZSB0byB1c2UgcHJlZGVmaW5lZCB2YWx1ZXMgZm9yIGNs
b2NrZXZlbnQsIHdlJ2Qgc3RpbGwgbmVlZAo+IGFub3RoZXIgc2V0IG9mIHZhbHVlcyBmb3IgY2xv
Y2tzb3VyY2UuIEkgdGhpbmsgaXQncyBjbGVhcmVyIHRoZSB3YXkgaXQKPiBpcy4KCkFoIHllcywg
SSBzZWUsIGl0IGlzIHBhc3NlZCBhcyBwYXJhbWV0ZXIuIE9rLCBsZXQncyBrZWVwIGl0IHRoaXMg
d2F5IGlmCnlvdSBwcmVmZXIuCgo+Pj4gKyAgICAgaWYgKHRpbWVyX2NmZy0+Y21wX29mZikgewo+
Pj4gKyAgICAgICAgICAgICBjbG9ja2V2ZW50LT5jbXBfb2ZmID0gdGltZXJfY2ZnLT5jbXBfb2Zm
Owo+Pj4gKyAgICAgICAgICAgICBjbG9ja2V2ZW50LT5kZXYuc2V0X25leHRfZXZlbnQgPQo+Pj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGF2aW5jaV9jbG9ja2V2ZW50X3NldF9uZXh0
X2V2ZW50X2NtcDsKPj4+ICsgICAgIH0gZWxzZSB7Cj4+PiArICAgICAgICAgICAgIGNsb2NrZXZl
bnQtPmRldi5zZXRfbmV4dF9ldmVudCA9Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBkYXZpbmNpX2Nsb2NrZXZlbnRfc2V0X25leHRfZXZlbnRfc3RkOwo+Pj4gKyAgICAgfQo+Pj4g
Kwo+Pj4gKyAgICAgcnYgPSByZXF1ZXN0X2lycSh0aW1lcl9jZmctPmlycVtEQVZJTkNJX1RJTUVS
X0NMT0NLRVZFTlRfSVJRXS5zdGFydCwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgZGF2aW5j
aV90aW1lcl9pcnFfdGltZXIsIElSUUZfVElNRVIsCj4+PiArICAgICAgICAgICAgICAgICAgICAg
ICJjbG9ja2V2ZW50IiwgY2xvY2tldmVudCk7Cj4+Cj4+IE1heSBiZSByZXBsYWNlICJjbG9ja2V2
ZW50IiBieSBlZy4gInRpbTEyIj8KPj4KPiAKPiBJIGRvbid0IHRoaW5rIHRoaXMgaXMgYSBnb29k
IGlkZWEuIE5vdyBpZiB5b3UgbG9vayBhdCAvcHJvYy9pbnRlcnJ1cHRzCj4geW91IGNhbiB0ZWxs
IGltbWVkaWF0ZWx5IHdoYXQgdGhlIGludGVycnVwdCBpcyBmb3IgKCJjbG9ja2V2ZW50IikuCj4g
V2l0aCAidGltMTIiIGl0J3Mgbm8gbG9uZ2VyIHRoYXQgY2xlYXIuCgpZZXMsICJ0aW0xMiIgY2Fu
IGJlIGNvbmZ1c2luZy4gSG93ZXZlciwgaXQgaXMgZ29vZCBwcmFjdGljZSB0byBhZGQgYQpkZXZp
Y2UgbmFtZSBhc2lkZSB3aXRoIGl0cyBwdXJwb3NlIGluIGNhc2UgdGhlcmUgYXJlIHNldmVyYWwg
dGltZXJzCmRlZmluZWQgb24gdGhlIHN5c3RlbS4gImNsb2NrZXZlbnQiIGlzIGEga2VybmVsIGlu
dGVybmFsIHJlcHJlc2VudGF0aW9uCm9mIGEgdGltZXIsIHNvIG1heSBiZSBhIG5hbWUgbGlrZSAi
dGltZXIvdGltMTIiIG9yIHNvbWV0aGluZyBpbiB0aGUgc2FtZQpzcGlyaXQgd291bGQgYmUgbW9y
ZSBhZGVxdWF0ZS4KCgoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg
4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxo
dHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90
d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3Jn
L2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
