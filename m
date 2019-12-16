Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AED120767
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 14:41:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRKK0k5VJtQ52OGDVZ16KffbpBMtBB19gXG53BtB+7o=; b=byQ0uaxbVZDY/r
	INwLe6ZuVUHymjkaad7DHzZ2upZv78nN8M91fKgTVEfImniKYbJFrX0MSdhR2YtRw41FNWbHegib1
	eCBfEFd6RkcsqVOg11EacmV53Rn7AXz92axNUvjk8VRg6R7p5a+7VHrW8qapmOGMvF7GSp7I/7mv0
	76UrLXIQxna7GMkY5Kq0D93Q2iHNpNiFdGatVQ1PcCYEur4/tIdzd07sz0TeeXJ4evjdq0E7JyM6n
	+GUphkzC4aYQdz3++pbmD1LPtLv+8FdNLY6ZgdyvBkHy0ME8e6fzcLCzJ/0RfHeXidtKe7LZ1bTvn
	7Ya++VmJXKhztGUEO/iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqcp-00088e-Le; Mon, 16 Dec 2019 13:41:27 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqcf-000889-Cs
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 13:41:19 +0000
Received: by mail-wr1-x443.google.com with SMTP id y17so7308175wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 05:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CyxWhxmr43Rw57Br2YlZyS8fg23uDDYjv1gKLcIX0Gg=;
 b=jZrCysa7xhNAVELwLj7HTQW3rjdnBPXr0xDrPFVzCKdm7g+BtQcAQ00QqLlq4K6SYn
 K4ML1A335XdJFwGkBAvLIXMzmQrHGSbSLesuQ6yAfyzL+WTBH5WKOX0GRQt90k4l3RI4
 lVegjx2icdy3s/hFtVUnafWjQ9ooldhllaRim5cQXSm6CDtYxuGhypimZJx37H3MG2gg
 DC/w/gbHefgLoYvuNYbq4kFOwtja+jGfJwG/GQKmmUmk9YULMnLCtHCfymkLpDnTv73X
 GMDB4I+URSl5twrq0vIX6D6d/DKlqCK4DVD0MA+fIeCKudX0jg/54IW0cF5JKHiDoRct
 O1RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=CyxWhxmr43Rw57Br2YlZyS8fg23uDDYjv1gKLcIX0Gg=;
 b=SVfZVaYjBG6/IktHgsHzVmrTGT3g48FxT4a4/o5gEgz2IuAo5D7vkKy4Ih8IgYbZYQ
 0ttESDBzvOQhTg5cbPDNlAuEGuW0xH2aCvLLiPEb95N1HyzOjrWWVIajeZiYymr0MqlM
 Bnk4EIjwHsqWrFQtNrHg8FAARJPDt/pXOGUc41rPatntc0YYCEs1ylyrTdrtXUZYeb/h
 6NiIteAvReTpjfxgdkIoQXaSt4WhlttKVRIUHUR9SJ0T8M/yP6JXZ891yUPqvjb/3GvN
 btnxkc0kHyAGaDIDU/cdQBfIW8x9TrmxhZU26Tu8fveM+203mK5yUL9HDif/5jH1RX7L
 uXDQ==
X-Gm-Message-State: APjAAAUOvfsIKhmJKT/hdg7VWK1IUJwow87OHaupUtmHlOYVZOCMHNg8
 SKb+9DtQkUznam96271itjC2FQ==
X-Google-Smtp-Source: APXvYqwjni0nm6nIPcsccCY1hCZaURKwpDGZl8+tg6HvU3CBTlkbhSCaKoIWjsLrdv+5wynLESfxPg==
X-Received: by 2002:a05:6000:1288:: with SMTP id
 f8mr30201689wrx.66.1576503674890; 
 Mon, 16 Dec 2019 05:41:14 -0800 (PST)
Received: from [192.168.43.165] ([37.173.129.140])
 by smtp.googlemail.com with ESMTPSA id e16sm21369575wrs.73.2019.12.16.05.41.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 05:41:14 -0800 (PST)
Subject: Re: [PATCH] clocksource/drivers: Fix error handling in
 ttc_setup_clocksource
To: Navid Emamdoost <navid.emamdoost@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>
References: <2a6cdb63-397b-280a-7379-740e8f43ddf6@xilinx.com>
 <20191023044737.2824-1-navid.emamdoost@gmail.com>
 <CAEkB2ETvi=Zryh+3UnSddrprnB+MzSObAbsms+6LHHLuiRwZjw@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <26da3a6b-60f3-d09b-6eff-7a3db8234d64@linaro.org>
Date: Mon, 16 Dec 2019 14:41:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAEkB2ETvi=Zryh+3UnSddrprnB+MzSObAbsms+6LHHLuiRwZjw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_054117_536701_00311B94 
X-CRM114-Status: GOOD (  19.05  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Navid Emamdoost <emamd001@umn.edu>,
 LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIE5hdmlkLAoKT24gMTQvMTIvMjAxOSAyMzo1NCwgTmF2aWQgRW1hbWRvb3N0IHdyb3RlOgo+
IFdvdWxkIHlvdSByZXZpZXcgdGhpcyBwYXRjaCwgcGxlYXNlPwoKcGxlYXNlIGZpeCB0aGUgdmVy
c2lvbiBudW1iZXIsIHNlbmQgd2l0aG91dCBpbi1yZXBseS10by4KCkRvIHRoZSBzYW1lIGZvciB0
aGUgb3RoZXIgcGF0Y2g6CgpjbG9ja3NvdXJjZS9kcml2ZXJzOiBGaXggbWVtb3J5IGxlYWsgaW4g
dHRjX3NldHVwX2Nsb2NrZXZlbnQKCkl0IGlzIGEgYml0IGNvbmZ1c2Ugd2hhdCBwYXRjaCBpcyBv
ayBvciBub3QuCgpUaGFua3MKCiAgLS0gRGFuaWVsCgo+IE9uIFR1ZSwgT2N0IDIyLCAyMDE5IGF0
IDExOjQ3IFBNIE5hdmlkIEVtYW1kb29zdAo+IDxuYXZpZC5lbWFtZG9vc3RAZ21haWwuY29tPiB3
cm90ZToKPj4KPj4gSW4gdGhlIGltcGxlbWVudGF0aW9uIG9mIHR0Y19zZXR1cF9jbG9ja3NvdXJj
ZSgpIHdoZW4KPj4gY2xrX25vdGlmaWVyX3JlZ2lzdGVyKCkgZmFpbHMgdGhlIGV4ZWN1dGlvbiBz
aG91bGQgZ28gdG8gZXJyb3IgaGFuZGxpbmcuCj4+IEFkZGl0aW9uYWxseSwgdG8gYXZvaWQgbWVt
b3J5IGxlYWsgdGhlIGFsbG9jYXRlZCBtZW1vcnkgZm9yIHR0Y2NzIHNob3VsZAo+PiBiZSByZWxl
YXNlZCwgdG9vLiBTbywgZ290byBlcnJvciBoYW5kbGluZyB0byByZWxlYXNlIHRoZSBtZW1vcnkg
YW5kCj4+IHJldHVybi4KPj4KPj4gRml4ZXM6IGU5MzI5MDBhMzI3OSAoImFybTogenlucTogVXNl
IHN0YW5kYXJkIHRpbWVyIGJpbmRpbmciKQo+PiBTaWduZWQtb2ZmLWJ5OiBOYXZpZCBFbWFtZG9v
c3QgPG5hdmlkLmVtYW1kb29zdEBnbWFpbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9jbG9ja3Nv
dXJjZS90aW1lci1jYWRlbmNlLXR0Yy5jIHwgMjAgKysrKysrKysrKystLS0tLS0tLS0KPj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1jYWRlbmNlLXR0Yy5jIGIvZHJpdmVy
cy9jbG9ja3NvdXJjZS90aW1lci1jYWRlbmNlLXR0Yy5jCj4+IGluZGV4IDg4ZmUyZTliYTlhMy4u
MDM1ZTE2YmMxN2QzIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLWNh
ZGVuY2UtdHRjLmMKPj4gKysrIGIvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1jYWRlbmNlLXR0
Yy5jCj4+IEBAIC0zMjgsMTAgKzMyOCw4IEBAIHN0YXRpYyBpbnQgX19pbml0IHR0Y19zZXR1cF9j
bG9ja3NvdXJjZShzdHJ1Y3QgY2xrICpjbGssIHZvaWQgX19pb21lbSAqYmFzZSwKPj4gICAgICAg
ICB0dGNjcy0+dHRjLmNsayA9IGNsazsKPj4KPj4gICAgICAgICBlcnIgPSBjbGtfcHJlcGFyZV9l
bmFibGUodHRjY3MtPnR0Yy5jbGspOwo+PiAtICAgICAgIGlmIChlcnIpIHsKPj4gLSAgICAgICAg
ICAgICAgIGtmcmVlKHR0Y2NzKTsKPj4gLSAgICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4+IC0g
ICAgICAgfQo+PiArICAgICAgIGlmIChlcnIpCj4+ICsgICAgICAgICAgICAgICBnb3RvIHJlbGVh
c2VfdHRjY3M7Cj4+Cj4+ICAgICAgICAgdHRjY3MtPnR0Yy5mcmVxID0gY2xrX2dldF9yYXRlKHR0
Y2NzLT50dGMuY2xrKTsKPj4KPj4gQEAgLTM0MSw4ICszMzksMTAgQEAgc3RhdGljIGludCBfX2lu
aXQgdHRjX3NldHVwX2Nsb2Nrc291cmNlKHN0cnVjdCBjbGsgKmNsaywgdm9pZCBfX2lvbWVtICpi
YXNlLAo+Pgo+PiAgICAgICAgIGVyciA9IGNsa19ub3RpZmllcl9yZWdpc3Rlcih0dGNjcy0+dHRj
LmNsaywKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnR0Y2NzLT50dGMu
Y2xrX3JhdGVfY2hhbmdlX25iKTsKPj4gLSAgICAgICBpZiAoZXJyKQo+PiArICAgICAgIGlmIChl
cnIpIHsKPj4gICAgICAgICAgICAgICAgIHByX3dhcm4oIlVuYWJsZSB0byByZWdpc3RlciBjbG9j
ayBub3RpZmllci5cbiIpOwo+PiArICAgICAgICAgICAgICAgZ290byByZWxlYXNlX3R0Y2NzOwo+
PiArICAgICAgIH0KPj4KPj4gICAgICAgICB0dGNjcy0+dHRjLmJhc2VfYWRkciA9IGJhc2U7Cj4+
ICAgICAgICAgdHRjY3MtPmNzLm5hbWUgPSAidHRjX2Nsb2Nrc291cmNlIjsKPj4gQEAgLTM2Mywx
NiArMzYzLDE4IEBAIHN0YXRpYyBpbnQgX19pbml0IHR0Y19zZXR1cF9jbG9ja3NvdXJjZShzdHJ1
Y3QgY2xrICpjbGssIHZvaWQgX19pb21lbSAqYmFzZSwKPj4gICAgICAgICAgICAgICAgICAgICAg
dHRjY3MtPnR0Yy5iYXNlX2FkZHIgKyBUVENfQ05UX0NOVFJMX09GRlNFVCk7Cj4+Cj4+ICAgICAg
ICAgZXJyID0gY2xvY2tzb3VyY2VfcmVnaXN0ZXJfaHooJnR0Y2NzLT5jcywgdHRjY3MtPnR0Yy5m
cmVxIC8gUFJFU0NBTEUpOwo+PiAtICAgICAgIGlmIChlcnIpIHsKPj4gLSAgICAgICAgICAgICAg
IGtmcmVlKHR0Y2NzKTsKPj4gLSAgICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4+IC0gICAgICAg
fQo+PiArICAgICAgIGlmIChlcnIpCj4+ICsgICAgICAgICAgICAgICBnb3RvIHJlbGVhc2VfdHRj
Y3M7Cj4+Cj4+ICAgICAgICAgdHRjX3NjaGVkX2Nsb2NrX3ZhbF9yZWcgPSBiYXNlICsgVFRDX0NP
VU5UX1ZBTF9PRkZTRVQ7Cj4+ICAgICAgICAgc2NoZWRfY2xvY2tfcmVnaXN0ZXIodHRjX3NjaGVk
X2Nsb2NrX3JlYWQsIHRpbWVyX3dpZHRoLAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHR0Y2NzLT50dGMuZnJlcSAvIFBSRVNDQUxFKTsKPj4KPj4gICAgICAgICByZXR1cm4gMDsKPj4g
Kwo+PiArcmVsZWFzZV90dGNjczoKPj4gKyAgICAgICBrZnJlZSh0dGNjcyk7Cj4+ICsgICAgICAg
cmV0dXJuIGVycjsKPj4gIH0KPj4KPj4gIHN0YXRpYyBpbnQgdHRjX3JhdGVfY2hhbmdlX2Nsb2Nr
ZXZlbnRfY2Ioc3RydWN0IG5vdGlmaWVyX2Jsb2NrICpuYiwKPj4gLS0KPj4gMi4xNy4xCj4+Cj4g
Cj4gCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cu
ZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29t
LyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJs
b2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
