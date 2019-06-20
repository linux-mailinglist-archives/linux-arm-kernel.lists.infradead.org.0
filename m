Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABA24C9E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 10:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UpaT0FfQRNCibxSJdzjTAHjT/W8NVDDCUYfpG82CThs=; b=dAxmdjF3K3IAaf
	V44uCzO2BYoz3WXooGX8od2JLVhBmOO2DmuDlpjZ4UJHD7F8CzNM2bc+KBnEOekdqqz9LmVjc/ekD
	UeVpMRsyjyk79Jn1WCq3RR8PvsnblQIn70p4zfuPt5kGWeySbztjoUmuGn5WKykBBcqnI4MtyFtLn
	u+nbWOj70nHWC7+tAq/yYjpMjohmVWWHgT5jsNj7bmj/ORY++IPe/u2WLgxBpdYVaq1psS6JYNzmk
	65yafggafrLcT5WN7rmf/Nr4CMPGnygYHeRoZ1x0uUveXDSzaZM/j43d8J9Ofc0b739dJs5ODKTie
	PpxnueoNxHe9INBEcFyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdspe-0006aF-2N; Thu, 20 Jun 2019 08:54:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsp9-0006QO-LM
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 08:53:41 +0000
Received: by mail-wr1-x444.google.com with SMTP id p13so2111289wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 01:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LiLmcUhpHRGxOL2KuN6VGifpTBqZvG2xXp+BXvF+dQo=;
 b=T/zVWWSIdlT2hivdrtrV3BSkCnir1TOxf/7E9IO57cbMPV4oWfIQrNgpWJ8U/dN6Ba
 wvuCla8h1ClB6ll5AcUg2y4w2TPRudiXh7poCOLax5JjclHreLKNYNhsB6T5qgY/xV4w
 AIalFx5K5SzuYooclDwnzJfO1nwhbZwVx0pHiG6IbLLg7nC6cggBqdVzDFeLa7nxEJ10
 hJRfRLNXxMbg0EJOfQfXLPS430qJ1bCNpUfAy5TXxhkz1VZyo3P4DoU7vPbvDFR2rXb1
 mvHUywraTZi1tZEGreHLNp4jHU3Q4ChrtopHdZHyS2SMRSRV9feSAL/zLeFI0pewzLXY
 c4UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=LiLmcUhpHRGxOL2KuN6VGifpTBqZvG2xXp+BXvF+dQo=;
 b=T+gV9mgIJKBdrSvJJccolZSyDkenbv80wpGAKHrme8NEmRMTWNzhKSN4Zejd4IZaGo
 4siF0eVc+JpmBcjjBSdp/Pdu+ibzfLPPuDq0tY1ehocPGVlNpa0y1QHtt/C0d3rufAt0
 jWeq3QOhsg2q0gJVo0IS9yaRSgfoUzImcCRohnSepuRI7kX5RAe8AVRo/J12FAOUpB7M
 B0ff152T44Pe8Yp4ypm99AtodWMFnJ7fD44CZbLgWK3JvFsUi8kN7IqtVqMhWtbMjSyC
 nkoKxcP+uY03Sui/OkYdSYgxp2H2UzazvldYLhZMJooIPeDAPuUFFSwSy5KwXZgVs4E/
 ZKpg==
X-Gm-Message-State: APjAAAW/CRaM5Y5n3C8CTw4hlQMdlpPiqqbtOE/Iir9sNLWKfIzK6kj/
 hGhJurdNaqqnph57j41r33KwsoY/9Uc=
X-Google-Smtp-Source: APXvYqzVi0BDSnEz6mJslfR3/SwZBtjLMQNo1LPq9sZVIB0peH+EMzvJBTFrW0ekW4M8qTcoGHV9KA==
X-Received: by 2002:adf:f544:: with SMTP id j4mr19417984wrp.150.1561020817367; 
 Thu, 20 Jun 2019 01:53:37 -0700 (PDT)
Received: from [192.168.0.41] (177.208.130.77.rev.sfr.net. [77.130.208.177])
 by smtp.googlemail.com with ESMTPSA id k82sm4806144wma.15.2019.06.20.01.53.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 01:53:36 -0700 (PDT)
Subject: Re: [PATCH 2/5] clocksource/drivers/timer-microchip-pit64b: add
 Microchip PIT64B support
To: Claudiu.Beznea@microchip.com, alexandre.belloni@bootlin.com
References: <1552580772-8499-1-git-send-email-claudiu.beznea@microchip.com>
 <1552580772-8499-3-git-send-email-claudiu.beznea@microchip.com>
 <a738fce5-1108-34d7-d255-dfcb86f51c56@linaro.org>
 <20190408121141.GK7480@piout.net>
 <88ab46de-c3b6-6dd2-3fa2-f2d0075e969f@microchip.com>
 <7267f37b-4f80-97e3-7a8e-bc1a9a28b995@linaro.org>
 <5e3d783e-7bcc-64c1-c814-eaf99a6aa205@microchip.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <845acd59-665a-4d0a-3da8-2ba605600928@linaro.org>
Date: Thu, 20 Jun 2019 10:53:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5e3d783e-7bcc-64c1-c814-eaf99a6aa205@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_015339_824778_B5DEC1E3 
X-CRM114-Status: GOOD (  22.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, tglx@linutronix.de, arnd.bergmann@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIENsYXVkaXUsCgpzb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHkuCgoKT24gMTMvMDYvMjAxOSAx
NjoxMiwgQ2xhdWRpdS5CZXpuZWFAbWljcm9jaGlwLmNvbSB3cm90ZToKPiBIaSBEYW5pZWwsCj4g
Cj4gT24gMzEuMDUuMjAxOSAxMzo0MSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+Cj4+IEhpIENs
YXVkaXUsCj4+Cj4+Cj4+IE9uIDMwLzA1LzIwMTkgMDk6NDYsIENsYXVkaXUuQmV6bmVhQG1pY3Jv
Y2hpcC5jb20gd3JvdGU6Cj4+PiBIaSBEYW5pZWwsCj4+Pgo+Pj4gVGFraW5nIGludG8gYWNjb3Vu
dCB0aGUgZGlzY3Vzc2lvbiBvbiB0aGlzIHRyZWFkIGFuZCB0aGUgZmFjdCB0aGF0IHdlIGhhdmUK
Pj4+IG5vIGFuc3dlciBmcm9tIFJvYiBvbiB0aGlzIHRvcGljIChJJ20gdGFsa2luZyBhYm91dCBb
MV0pLCB3aGF0IGRvIHlvdSB0aGluawo+Pj4gaXQgd291bGQgYmUgYmVzdCBmb3IgdGhpcyBkcml2
ZXIgdG8gYmUgYWNjZXB0ZWQgdGhlIHNvb25lc3Q/IFdvdWxkIGl0IGJlIE9LCj4+PiBmb3IgeW91
IHRvIG1pbWljIHRoZSBhcHByb2FjaCBkb25lIGJ5Ogo+Pj4KPj4+IGRyaXZlcnMvY2xvY2tzb3Vy
Y2UvdGltZXItaW50ZWdyYXRvci1hcC5jCj4+Pgo+Pj4gd2l0aCB0aGUgZm9sbG93aW5nIGJpbmRp
bmdzIGluIERUOgo+Pj4KPj4+IGFsaWFzZXMgewo+Pj4gCWFybSx0aW1lci1wcmltYXJ5ID0gJnRp
bWVyMjsKPj4+IAlhcm0sdGltZXItc2Vjb25kYXJ5ID0gJnRpbWVyMTsKPj4+IH07Cj4+Pgo+Pj4g
YWxzbyBpbiBQSVQ2NEIgZHJpdmVyPwo+Pj4KPj4+IE9yIGRvIHlvdSB0aGluayByZS1zcGlubmlu
ZyB0aGUgQWxleGFuZHJlJ3MgcGF0Y2hlcyBhdCBbMl0gKHdoaWNoIHNlZW1zIHRvCj4+PiBtZSBs
aWtlIHRoZSBnZW5lcmljIHdheSB0byBkbyBpdCkgd291bGQgYmUgYmV0dGVyPwo+Pgo+PiBUaGlz
IGhhcmR3YXJlIC8gT1MgY29ubmVjdGlvbiBwcm9ibGVtIGlzIGdldHRpbmcgcmVhbGx5IGFubm95
aW5nIGZvcgo+PiBldmVyeW9uZSBhbmQgdGhpcyBwYXR0ZXJuIGlzIHJlcGVhdGluZyBpdHNlbGYg
c2luY2Ugc2V2ZXJhbCB5ZWFycy4gSXQgaXMKPj4gdGltZSB3ZSBmaXggaXQgcHJvcGVybHkuCj4+
Cj4+IFRoZSBmaXJzdCBzb2x1dGlvbiBsb29rcyBoYWNraXNoIGZyb20gbXkgUE9WLiBUaGUgc2Vj
b25kIGFwcHJvYWNoIGxvb2tzCj4+IG5pY2VyIGFuZCBnZW5lcmljIGFzIHlvdSBzYXkuIFNvIEkg
d291bGQgdm90ZSBmb3IgWzJdCj4+IGZsYWdnaW5nIGFwcHJvYWNoIHByb3Bvc2VkIGJ5IE1hcmsg
WzNdLgo+IAo+IFdpdGggdGhpcyBmbGFnZ2luZyBhcHByb2FjaCB0aGlzIHdvdWxkIG1lYW4gYSBr
aW5kIHVuaWZpY2F0aW9uIG9mCj4gY2xvY2tzb3VyY2UgYW5kIGNsb2NrZXZlbnQgZnVuY3Rpb25h
bGl0aWVzIHVuZGVyIGEgc2luZ2xlIG9uZSwgcmlnaHQ/IFNvCj4gdGhhdCB0aGUgZHJpdmVyIHdv
dWxkIHJlZ2lzdGVyIHRvIHRoZSBhYm92ZSBsYXllcnMgb25seSBvbmUgZGV2aWNlIHcvIDIKPiBm
dW5jdGlvbmFsaXRpZXMgKGNsb2Nrc291cmNlIGFuZCBjbG9ja2V2ZW50KT8gUGxlYXNlIGNvcnJl
Y3QgbWUgaWYgSSdtCj4gd3Jvbmc/IElmIHNvLCBmcm9tIG15IHBvaW50IG9mIHZpZXcgdGhpcyB3
b3VsZCByZXF1aXJlIG1ham9yIHJlLXdvcmtpbmcgb2YKPiBjbG9ja3NvdXJjZSBhbmQgY2xvY2tl
dmVudCBzdWJzeXN0ZW1zLiBDb3JyZWN0bHkgaWYgSSB3cm9uZ2x5IHVuZGVyc3Rvb2QsCj4gcGxl
YXNlLgoKV2VsbCwgYWN0dWFsbHkgSSB3YXMgbm90IGV4cGVjdGluZyB0byBjaGFuZ2UgYWxsIHRo
ZSBmcmFtZXdvcmsgYnV0IGp1c3QKcGFzcyBhIGZsYWcgdG8gdGhlIHByb2JlIGZ1bmN0aW9uIHRl
bGxpbmcgaWYgdGhlIG5vZGUgaXMgZm9yIGEKY2xvY2tzb3VyY2UsIGEgY2xvY2tldmVudCBvciBi
b3RoLgoKCgo+IEF0IHRoZSBtb21lbnQgd2UgcmVnaXN0ZXIgZGlmZmVyZW50IGZ1bmN0aW9uYWxp
dGllcyAoY2xvY2tzb3VyY2UgYW5kCj4gY2xvY2tldmVudCkgdG8gdGhlIGFib3ZlIGxheWVycyBm
b3IgaGFyZHdhcmUgYmxvY2tzIChlLmcuIHdpdGgKPiBjbG9ja3NvdXJjZV9yZWdpc3Rlcl9oeigp
IG9yIGNsb2NrZXZlbnRzX2NvbmZpZ19hbmRfcmVnaXN0ZXIoKSkuIElmCj4gaGFyZHdhcmUgY2Fu
IHN1cHBvcnQgY2xvY2tzb3VyY2UgYW5kIGNsb2NrZXZlbnQgd2UgcmVnaXN0ZXIgYm90aCB0aGVz
ZQo+IGZ1bmN0aW9uYWxpdGllcywgaWYgb25seSBvbmUgaXMgc3VwcG9ydGVkIHdlIHJlZ2lzdGVy
IG9ubHkgb25lIG9mIHRoZXNlLgo+IFRoZSBhYm92ZSBsYXllcnMgd291bGQgY2hvb3NlIHRoZSBi
ZXN0IGNsb2Nrc291cmNlL2Nsb2NrZXZlbnQgZGV2aWNlIGZyb20KPiB0aGUgYXZhaWxhYmxlIG9u
ZXMgYmFzZWQgb24gcmF0aW5nIGZpZWxkIGZvciBlYWNoIGNsb2Nrc291cmNlL2Nsb2NrZXZlbnQg
d2UKPiByZWdpc3Rlci4gSW4gYWxsIHRoaXMgY3VycmVudCBiZWhhdmlvciBJIGRvbid0IHNlZSBo
b3cgdGhlc2UgZmxhZ3Mgd291bGQKPiBpbnRlcmFjdCB3aXRoIGNsb2Nrc291cmNlL2Nsb2NrZXZl
bnQgc3Vic3lzdGVtLiBDb3VsZCB5b3UgcGxlYXNlIGxldCBtZQo+IGtub3cgaG93IGRvIHlvdSBz
ZWUgdGhlc2UgYW5kIHRoZSB3YXkgdGhlc2UgbmV3IGZsYWdzIHdvdWxkIGludGVyYWN0IHdpdGgK
PiB0aGUgbGF5ZXJzIGFib3ZlIHRoZSBkcml2ZXJzPwo+Pgo+PiBJIGFkZGVkIEFybmQgaW4gQ2Mg
aW4gb3JkZXIgdG8gaGF2ZSBpdHMgb3Bpbmlvbi4KPj4KPj4gWzNdCj4+IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xrbWwvMjAxNzEyMTUxMTMyNDIuc2ttaDVuenI3d3FkbXZud0BsYWtyaWRzLmNh
bWJyaWRnZS5hcm0uY29tLwo+Pgo+Pj4gWzFdCj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
a21sLzIwMTkwNDA4MTUxMTU1LjIwMjc5LTEtYWxleGFuZHJlLmJlbGxvbmlAYm9vdGxpbi5jb20v
I3QKPj4+IFsyXQo+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDE3MTIxMzE4NTMx
My4yMDAxNy0xLWFsZXhhbmRyZS5iZWxsb25pQGZyZWUtZWxlY3Ryb25zLmNvbS8KPj4+Cj4+Cj4+
Cj4+Cj4+Cj4+Cj4+CgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDi
lIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0
dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3
aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcv
bGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
