Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6EB49BB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 10:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTtC2am1JnpzPKoTLV93L+r7f3B0QPv0S92trucrS8U=; b=BCNwvtDankFpGp
	hQwLCc7+g15qyhidJkqeYhhmiAN0cLcjXQWME/wbltNZgZT6VA1yjIzmtHZkBJ4IQVHYeAtF/FuxC
	5DA7/ME3VZFVT1vIWcsL3AvInhuM9/McoCRjALDyr7fvJyGGWrmZAv5tR/+/tTskDP+sRNE7PQwqe
	3a7CRv1kaenwriSv89085H3MKe5Xc71CF51VdZQ/uutkX+8yavXnG4PtiF7FuBZcgyh3ocXwbFD7N
	Dzcoh6dgwwjGfzb3uemlZN+Kz2H6rZAxLc16BtK84TuKaZfCsc+ZfPlBKkEawdb858BY3J4ynHx38
	Qo0h8rpX86CXP5oPSllQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd9Ab-0000eR-8Y; Tue, 18 Jun 2019 08:08:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd9AO-0000dz-Rc
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 08:08:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id c2so12831308wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 01:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=7+XK6aLqdHyJuqOe/EfmAFxcldVywlvsw3biHLfZdLw=;
 b=gWDuvQB1k7LXKzanxGhj67D7H2ev4dYzEfTQ9KTyJRTWMdc5WSxApc3f4CP8NDTKhJ
 B8tWsYPT6QZSzZvMPpOMdrqBMgSe5tgrwPeo9jRnINZ/gE8v9sbghFhTtRBHDbVQwkKs
 XGCjKTg6jhxby7RolexfP1MlSuKwvQa1siLhAU4ruK72qWSaXccSv8Jx6TLYTPKQKSmI
 fyLIZ7BpGyAJyNzkYgsfnbkNw2SnmGMhcHIAzg3YQbDGv+gkFVbJrHSD6FOF3VwOnWkU
 ksZhmV+fozc465sMggqlacQxZ5PxwKbkyv1FicFLoqEr3m1UT3BFVTdfwHcBZDS4fx9Z
 djmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=7+XK6aLqdHyJuqOe/EfmAFxcldVywlvsw3biHLfZdLw=;
 b=UGdrAYR8rmHiD7L0XAlRwxZa2iQy5u/GPZE49jfEVBLEhMlYZKKx3VgFDJ3hOFW6zA
 CfOvcPEzSA/0HKamPBdypkh3rxrqq6U56ONsOdyiddxKwJyD1Uo3f8l043NYQX9fECmH
 UcaRsqBpuk7cxpuFGOWdy1AYHAucluBDI/1DgRONYXrYGC+SmLau+5wYNO9isnCNiMz+
 ZOTotWjt6fZAeEv40oLlrLn0vJJUlJxCiS0jL1g6Ib4O71xEu0cG0Cpps23ezvi8mizb
 NLbop8qi+1bE4qrHKYobcxsuUmaI7xMRdooTnIkcS7peBF+AKXeidEMn2ayZxNU04Amx
 HxTw==
X-Gm-Message-State: APjAAAUBPdIYBMpNEbrH6y2LW83VcvhADeArcEVzx06kl/99vq+bn5fD
 ZN8K/oKxt/opJMVxdsmOYD3j+Q==
X-Google-Smtp-Source: APXvYqwd2z7gnkyuKgUH4Vl+EJ9hNK/zuX63Cwe+vVbNOvf+uFKnW+PiW9RWY9rA+O5VoFiGEdAh0g==
X-Received: by 2002:adf:dc45:: with SMTP id m5mr12897113wrj.148.1560845311283; 
 Tue, 18 Jun 2019 01:08:31 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id u13sm9755253wrq.62.2019.06.18.01.08.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Jun 2019 01:08:30 -0700 (PDT)
Date: Tue, 18 Jun 2019 09:08:28 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Felipe Balbi <balbi@kernel.org>
Subject: Re: [RESEND v4 0/4] I2C: DWC3 USB: Add support for ACPI based
 AArch64 Laptops
Message-ID: <20190618080828.GJ16364@dell>
References: <20190617125105.6186-1-lee.jones@linaro.org>
 <87lfy0gym0.fsf@linux.intel.com> <20190617132349.GI16364@dell>
 <87a7efgxw7.fsf@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87a7efgxw7.fsf@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_010832_897743_95CC5FCB 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, ard.biesheuvel@linaro.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, agross@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org, alokc@codeaurora.org,
 linux-arm-msm@vger.kernel.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxOCBKdW4gMjAxOSwgRmVsaXBlIEJhbGJpIHdyb3RlOgo+IExlZSBKb25lcyA8bGVl
LmpvbmVzQGxpbmFyby5vcmc+IHdyaXRlczoKPiA+IE9uIE1vbiwgMTcgSnVuIDIwMTksIEZlbGlw
ZSBCYWxiaSB3cm90ZToKPiA+Cj4gPj4gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4g
d3JpdGVzOgo+ID4+IAo+ID4+ID4gVGhpcyBwYXRjaC1zZXQgZW5zdXJlcyB0aGUga2VybmVsIGlz
IGJvb3RhYmxlIG9uIHRoZSBuZXdseSByZWxlYXNlZAo+ID4+ID4gQUFyY2g2NCBiYXNlZCBMYXB0
b3BzIHVzaW5nIEFDUEkgY29uZmlndXJhdGlvbiB0YWJsZXMuICBUaGUgUGluY3RybAo+ID4+ID4g
Y2hhbmdlcyBoYXZlIGJlZW4gYWNjZXB0ZWQsIGxlYXZpbmcgb25seSBJMkMgKGtleWJvYXJkLCB0
b3VjaHBhZCwKPiA+PiA+IHRvdWNoc2NyZWVuLCBmaW5nZXJwcmludCwgZXRjLCBISUQgZGV2aWNl
KSBhbmQgVVNCIChyb290IGZpbGVzeXN0ZW0sCj4gPj4gPiBjYW1lcmEsIG5ldHdvcmtpbmcsIGV0
YykgZW5hYmxlbWVudC4KPiA+PiA+Cj4gPj4gPiBSRVNFTkQ6IFN0cmlwcGVkIEkyQyBwYXRjaGVz
IGFzIHRoZXkgaGF2ZSBhbHNvIGJlZW4gbWVyZ2VkIGludG8KPiA+PiA+ICAgICAgICAgdGhlaXIg
cmVzcGVjdGl2ZSBzdWJzeXN0ZW0uCj4gPj4gPgo+ID4+ID4gdjQ6Cj4gPj4gPiAgKiBDb2xsZWN0
aW5nIEFja3MKPiA+PiA+ICAqIEFkZGluZyBBbmR5IEdyb3NzJyBuZXcgZW1haWwKPiA+PiA+ICAq
IFJlbW92aW5nIGFwcGxpZWQgUGluY3RybCBwYXRjaGVzCj4gPj4gPgo+ID4+ID4gTGVlIEpvbmVz
ICg0KToKPiA+PiA+ICAgc29jOiBxY29tOiBnZW5pOiBBZGQgc3VwcG9ydCBmb3IgQUNQSQo+ID4+
ID4gICB1c2I6IGR3YzM6IHFjb206IEFkZCBzdXBwb3J0IGZvciBib290aW5nIHdpdGggQUNQSQo+
ID4+ID4gICB1c2I6IGR3YzM6IHFjb206IFN0YXJ0IFVTQiBpbiAnaG9zdCBtb2RlJyBvbiB0aGUg
U0RNODQ1Cj4gPj4gPiAgIHVzYjogZHdjMzogcWNvbTogSW1wcm92ZSBlcnJvciBoYW5kbGluZwo+
ID4+IAo+ID4+IHB1c2hlZCB0byB0ZXN0aW5nL25leHQKPiA+Cj4gPiBTb3VuZHMgcHJvbWlzaW5n
LCB0aGFua3MgRmVsaXBlLgo+ID4KPiA+IE9PSSwgd2hhdCBpcyB5b3VyIHByb2Nlc3M/Cj4gPgo+
ID4gSG93IGRvZXMgZG8gdGhlIHBhdGNoZXMgdHlwaWNhbGx5IHNpdCBpbiB0aGVyZT8KPiAKPiBJ
J2xsIHByb2JhYmx5IG1lcmdlIHRvIG15ICduZXh0JyBicmFuY2ggdG9kYXkuIEkgbGVhdmUgdGhl
bSBpbgo+IHRlc3RpbmcvbmV4dCBmb3IgYSBjb3VwbGUgZGF5cywgdXN1YWxseSwgc28gMC1kYXkg
Y2FuIHJ1biBpdHMgdGhpbmcgYW5kCj4gSSBnZXQgYSBjaGFuY2Ugb2YgYXQgbGVhc3QgYm9vdCB0
ZXN0aW5nIG9uIG91ciBtYWNoaW5lcyBpbiB0aGUgbGFiIGhlcmUuCj4gCj4gU2luY2UgdGhpcyBk
b2Vzbid0IHRvdWNoIGFueXRoaW5nICJnZW5lcmljIiwgSSBkb24ndCBfaGF2ZV8gdG8gYm9vdAo+
IHRlc3QsIHNvIEknbGwgcHJvYmFibHkgbWVyZ2UgdG8gJ25leHQnIHRvZGF5LgoKWW91J3JlIGEg
c3Rhci4gIFRoYW5rcyBGZWxpcGUuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBT
ZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
