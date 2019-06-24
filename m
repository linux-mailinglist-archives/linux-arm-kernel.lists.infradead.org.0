Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E090A50438
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 10:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gglms8QnuUIhuCyjJ9iYglHCyeSwsyTs1hs9IU1i1c4=; b=lta9uON4q0SM88
	FzeNeuRorXhAzBC3v7tX/cWUc2/H0beGZPuFvu16jLi/gdpucH5XXcrkXKYb/nlsGZsHhGGJ4XaRe
	nwnj2JORV3NxpUNGft03NlTKwREgBGf/2eGCzrd+G36pk4jLhTtKR2xRekqV02q5/VfODVBjCgDzU
	HRqRl12HJFwMUfM+d9OSsNgbIpMxt/+kB7kbo6j2Kq0yLNsDTLlPsWl5JKQoQ5rEVbkm4uxOwfhSy
	VbW5ATii8bmh4OZiIK2v+G0w3w3Bsfu0g3JnEixsz35O5kaSiwYtQTI54KjPPmKfmaiYS9OB8965c
	0ZC8449m2+7oEn9D+fcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfK0R-000783-LY; Mon, 24 Jun 2019 08:07:15 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfK0C-000778-QH
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 08:07:02 +0000
Received: by mail-wm1-x342.google.com with SMTP id w9so13630859wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 01:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=V2Khsz88+K+VINNLIfEeL8PKE1M3cSt+v1bYdXdfOmk=;
 b=rJMPYKCce3xb6K92lZt52spzZfmCrnqBvcBdcOQW/Z6PGKl7aYQk5YJd4/GPBFjqCv
 QmsPLHTXiBO1Nyjaf8bgnpBb9+1WWk+gwa8ROa3NU8kEbVVZQeLfBMImmRRwUs5gBrXv
 bDOMujz81I8gw25thbhPmPWen9T6axUAYtcqN4lXYYql56iBr0PjxD+VRQD36YXdq5Fp
 JUnLS93UoMvLGtNzNBpibrx27rNZ1u0R3dXDW8JsyW1Aemo7Qqkh2c+k2TGJALHpStzM
 N7LFdRnlH1IzL/Yh2mzDyzslue3OVOeIqzmWaNOidwGalIdtPJfeJDG2BzGVUGS1aT1F
 Es3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=V2Khsz88+K+VINNLIfEeL8PKE1M3cSt+v1bYdXdfOmk=;
 b=A8OaNC84mvhUH8sgErxZwsHlQ9ADBdeGLU4HgxkWkAs7wKh1QCeuZNHaX/RLelG4xH
 EYwu+Aisezznw8xDRTcq7p68jEQRAg2z+lUkRMPyomg+Dqqefwi81qW4uj1HO3by7cOF
 zX88JJt+wFFLHJV7I1hvWT5QFjpIWVGBYlRw6RfpO5mgqYUVc8QPi9VnDu0KeRf5NONT
 PfNvUeJKh/zOi51LHv78Yv4IYZ3b1rurvQeYFHu7/TRvBopbMLd2OeY/2E3cum3CXi7R
 tmIYXXFQlDOTTUq3OK7cYpuEV9egGp+T98qNGFdISDxYGxKSiw07Zf/ICK/o0BhgT6Ln
 lB9Q==
X-Gm-Message-State: APjAAAW2Ri6w9LUIyigUSyPuWj5HeWBUBoAkiwBfvYpZf1/jwo+wVJe6
 r/h0wGiNZy5+y1uwBvBV5vDv3xwHyKo=
X-Google-Smtp-Source: APXvYqx/RnU7WfKSZ6hbEClosUclv+7AmzLzZXGVpy5i+kmDWG6qda1MKvAB6RprWj+W3poxMWWEcA==
X-Received: by 2002:a1c:7d56:: with SMTP id y83mr14935807wmc.77.1561363619195; 
 Mon, 24 Jun 2019 01:06:59 -0700 (PDT)
Received: from [192.168.0.41] (209.94.129.77.rev.sfr.net. [77.129.94.209])
 by smtp.googlemail.com with ESMTPSA id l1sm9878205wmg.13.2019.06.24.01.06.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 01:06:58 -0700 (PDT)
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
 <845acd59-665a-4d0a-3da8-2ba605600928@linaro.org>
 <34574b0f-7d09-eb92-ea62-4199c293b0e7@microchip.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <1ebaa306-8a7f-fd58-56e0-a61b767357f7@linaro.org>
Date: Mon, 24 Jun 2019 10:06:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <34574b0f-7d09-eb92-ea62-4199c293b0e7@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_010700_873243_5E67EC8D 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gMjEvMDYvMjAxOSAxMjozNCwgQ2xhdWRpdS5CZXpuZWFAbWljcm9jaGlwLmNvbSB3cm90ZToK
PiBIaSBEYW5pZWwsCj4gCj4gT24gMjAuMDYuMjAxOSAxMTo1MywgRGFuaWVsIExlemNhbm8gd3Jv
dGU6Cj4+IEhpIENsYXVkaXUsCj4+Cj4+IHNvcnJ5IGZvciB0aGUgbGF0ZSByZXBseS4KPiAKPiBO
byBwcm9ibGVtLCBJIHVuZGVyc3RhbmQuCj4gCj4+Cj4+Cj4+IE9uIDEzLzA2LzIwMTkgMTY6MTIs
IENsYXVkaXUuQmV6bmVhQG1pY3JvY2hpcC5jb20gd3JvdGU6Cj4+PiBIaSBEYW5pZWwsCj4+Pgo+
Pj4gT24gMzEuMDUuMjAxOSAxMzo0MSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+Pj4KPj4+PiBI
aSBDbGF1ZGl1LAo+Pj4+Cj4+Pj4KPj4+PiBPbiAzMC8wNS8yMDE5IDA5OjQ2LCBDbGF1ZGl1LkJl
em5lYUBtaWNyb2NoaXAuY29tIHdyb3RlOgo+Pj4+PiBIaSBEYW5pZWwsCj4+Pj4+Cj4+Pj4+IFRh
a2luZyBpbnRvIGFjY291bnQgdGhlIGRpc2N1c3Npb24gb24gdGhpcyB0cmVhZCBhbmQgdGhlIGZh
Y3QgdGhhdCB3ZSBoYXZlCj4+Pj4+IG5vIGFuc3dlciBmcm9tIFJvYiBvbiB0aGlzIHRvcGljIChJ
J20gdGFsa2luZyBhYm91dCBbMV0pLCB3aGF0IGRvIHlvdSB0aGluawo+Pj4+PiBpdCB3b3VsZCBi
ZSBiZXN0IGZvciB0aGlzIGRyaXZlciB0byBiZSBhY2NlcHRlZCB0aGUgc29vbmVzdD8gV291bGQg
aXQgYmUgT0sKPj4+Pj4gZm9yIHlvdSB0byBtaW1pYyB0aGUgYXBwcm9hY2ggZG9uZSBieToKPj4+
Pj4KPj4+Pj4gZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1pbnRlZ3JhdG9yLWFwLmMKPj4+Pj4K
Pj4+Pj4gd2l0aCB0aGUgZm9sbG93aW5nIGJpbmRpbmdzIGluIERUOgo+Pj4+Pgo+Pj4+PiBhbGlh
c2VzIHsKPj4+Pj4gCWFybSx0aW1lci1wcmltYXJ5ID0gJnRpbWVyMjsKPj4+Pj4gCWFybSx0aW1l
ci1zZWNvbmRhcnkgPSAmdGltZXIxOwo+Pj4+PiB9Owo+Pj4+Pgo+Pj4+PiBhbHNvIGluIFBJVDY0
QiBkcml2ZXI/Cj4+Pj4+Cj4+Pj4+IE9yIGRvIHlvdSB0aGluayByZS1zcGlubmluZyB0aGUgQWxl
eGFuZHJlJ3MgcGF0Y2hlcyBhdCBbMl0gKHdoaWNoIHNlZW1zIHRvCj4+Pj4+IG1lIGxpa2UgdGhl
IGdlbmVyaWMgd2F5IHRvIGRvIGl0KSB3b3VsZCBiZSBiZXR0ZXI/Cj4+Pj4KPj4+PiBUaGlzIGhh
cmR3YXJlIC8gT1MgY29ubmVjdGlvbiBwcm9ibGVtIGlzIGdldHRpbmcgcmVhbGx5IGFubm95aW5n
IGZvcgo+Pj4+IGV2ZXJ5b25lIGFuZCB0aGlzIHBhdHRlcm4gaXMgcmVwZWF0aW5nIGl0c2VsZiBz
aW5jZSBzZXZlcmFsIHllYXJzLiBJdCBpcwo+Pj4+IHRpbWUgd2UgZml4IGl0IHByb3Blcmx5Lgo+
Pj4+Cj4+Pj4gVGhlIGZpcnN0IHNvbHV0aW9uIGxvb2tzIGhhY2tpc2ggZnJvbSBteSBQT1YuIFRo
ZSBzZWNvbmQgYXBwcm9hY2ggbG9va3MKPj4+PiBuaWNlciBhbmQgZ2VuZXJpYyBhcyB5b3Ugc2F5
LiBTbyBJIHdvdWxkIHZvdGUgZm9yIFsyXQo+Pj4+IGZsYWdnaW5nIGFwcHJvYWNoIHByb3Bvc2Vk
IGJ5IE1hcmsgWzNdLgo+Pj4KPj4+IFdpdGggdGhpcyBmbGFnZ2luZyBhcHByb2FjaCB0aGlzIHdv
dWxkIG1lYW4gYSBraW5kIHVuaWZpY2F0aW9uIG9mCj4+PiBjbG9ja3NvdXJjZSBhbmQgY2xvY2tl
dmVudCBmdW5jdGlvbmFsaXRpZXMgdW5kZXIgYSBzaW5nbGUgb25lLCByaWdodD8gU28KPj4+IHRo
YXQgdGhlIGRyaXZlciB3b3VsZCByZWdpc3RlciB0byB0aGUgYWJvdmUgbGF5ZXJzIG9ubHkgb25l
IGRldmljZSB3LyAyCj4+PiBmdW5jdGlvbmFsaXRpZXMgKGNsb2Nrc291cmNlIGFuZCBjbG9ja2V2
ZW50KT8gUGxlYXNlIGNvcnJlY3QgbWUgaWYgSSdtCj4+PiB3cm9uZz8gSWYgc28sIGZyb20gbXkg
cG9pbnQgb2YgdmlldyB0aGlzIHdvdWxkIHJlcXVpcmUgbWFqb3IgcmUtd29ya2luZyBvZgo+Pj4g
Y2xvY2tzb3VyY2UgYW5kIGNsb2NrZXZlbnQgc3Vic3lzdGVtcy4gQ29ycmVjdGx5IGlmIEkgd3Jv
bmdseSB1bmRlcnN0b29kLAo+Pj4gcGxlYXNlLgo+Pgo+PiBXZWxsLCBhY3R1YWxseSBJIHdhcyBu
b3QgZXhwZWN0aW5nIHRvIGNoYW5nZSBhbGwgdGhlIGZyYW1ld29yayBidXQganVzdAo+PiBwYXNz
IGEgZmxhZyB0byB0aGUgcHJvYmUgZnVuY3Rpb24gdGVsbGluZyBpZiB0aGUgbm9kZSBpcyBmb3Ig
YQo+PiBjbG9ja3NvdXJjZSwgYSBjbG9ja2V2ZW50IG9yIGJvdGguCj4+Cj4gCj4gR2l2aW5nIHNv
LCB3aGl0IHRoZXNlIHByb3Bvc2FscyBJJ20gdGhpbmtpbmcgYXQgaGF2aW5nIHNvbWV0aGluZyBs
aWtlIHRoaXMsCj4gdXNpbmcgQWxleGFuZHJlJ3MgbmV3IG1hY3JvcyBmcm9tIFsyXSBhbmQgcGFz
c2luZyBhIGJpdG1hc2sgdG8gdGltZXIncwo+IHByb2JpbmcgZnVuY3Rpb25zIChpbiB0aGUgYWJv
dmUgZXhhbXBsZSBhZGFwdGVkIG9ubHkgZm9yIHBpdDY0YiBkcml2ZXIKPiBpbnRyb2R1Y2VkIGlu
IHRoaXMgdGhyZWFkKToKClllcyBiYXNpY2FsbHkgdGhhdCBpcyB3aGF0IEkgaGFkIGluIG1pbmQu
IFRoYW5rcyBmb3IgdGFraW5nIGNhcmUgb2YKdGhhdC4gSG93ZXZlciBhZnRlciBzZWVpbmcgdGhl
IGNvZGUgSSByZWFsaXplIHRoZSBpbXBhY3QgaXMgbGFyZ2VyIHRoYW4KZXhwZWN0ZWQgYXMgYWxs
IHRoZSBUSU1FUl9PRl9ERUNMQVJFIHdpbGwgYmUgaW1wYWN0ZWQuCgpBRkFJQ1QsIHRoaXMgZHJp
dmVyIGNhbiBiZSBjb252ZXJ0ZWQgdG8gdGhlIHRpbWVyLW9mIEFQSS4gU28gSSB0aGluayBpdApt
YWtlcyBzZW5zZSB0byBrZWVwIHRoaXMgY29udGFpbmVkIGluIHRoZSBBUEkuCgpJbiB0aGUgZnVu
Y3Rpb24gdGltZXJfb2ZfaW5pdCgpLCB3ZSBjYW4gYWRkIHRoZSBwYXJzaW5nIG9mIHRoZSBub2Rl
IGFuZApzZXQgdGhlIHRpbWVyLW9mIGZsYWdzIHdpdGg6CgojZGVmaW5lIFRJTUVSX09GX0lTX0NM
T0NLU09VUkNFCSAweDgKI2RlZmluZSBUSU1FUl9PRl9JU19DTE9DS0VWRU5UICAweDEwCgpJbiBh
ZGRpdGlvbiB0aGUgQVBJOgoKaW50IHRpbWVyX29mX2lzX2Nsb2Nrc291cmNlKHN0cnVjdCB0aW1l
cl9vZiAqdG8pCnsKCXJldHVybiAodG8gJiBUSU1FUl9PRl9JU19DTE9DS1NPVVJDRSk7Cn0KaW50
IHRpbWVyX29mX2lzX2Nsb2NrZXZlbnRzKHN0cnVjdCB0aW1lcl9vZiAqdG8pCnsKCXJldHVybiAo
dG8gJiBUSU1FUl9PRl9JU19DTE9DS0VWRU5UKTsKfQoKCgoKLS0gCiA8aHR0cDovL3d3dy5saW5h
cm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0Nz
CgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4g
RmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8Cjxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
