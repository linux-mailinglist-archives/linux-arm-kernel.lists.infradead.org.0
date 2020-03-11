Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793A2181866
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:45:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRmRwjLcrp/ol2RdW/f6wxmcpvAPe7GuRHTOIu7m+BY=; b=FEB7FDYDZuSyJU
	pDdJYKW79V0IBq506CCtVE6uzcu4RtkciPCMsHhYNkViRtjyx2yDZK9PmKAdLSI2Hj7N06vtm2dqg
	Law/P6FBpcYfJaAA+BzmrPfKN7dnDEKMVSEae2LENyyoe9NNF71pme5TpHek8PBXAWdhusDXn6z6K
	rX+bt9nU58wTRpjL7N6v5FL1FZfbCoh33rhVhVk/CQcRLu8b3k3Bbmg8ovLaqLPobiVZFH7+cjpZC
	b6v/A5l7+HfK9AVETIaWvX24zxJVL55fmxtLowGottYkuucTN9aCLI9sxLimvA20NuXdH5M636woT
	5TND1oCPj0X4f52dCdPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0jd-0007hM-Mh; Wed, 11 Mar 2020 12:45:17 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0jV-0007WF-WF
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:45:12 +0000
Received: by mail-qt1-x843.google.com with SMTP id e20so1402938qto.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7snnG2HZlswbBJSz223TSuoJZEBBjKBU34cy2pxEXn0=;
 b=dT0pZcxvwIPX12xfO4t487Fl0GOHZ/A6IaR2M6mQ5GM+E/wk7iNUrFXHT9FF+0NYI9
 GHEFu91lwkPTexBWbmw+gJ/MTIAdNRydvdbLjgD2Ry7C4IoHXnUuxKqP98n4UKOpPzGO
 hKJw5rM5rPUNzTVDN079X7RLLDw9qBEj2Kxb1QAJsIq/AXle7eLexfHmwAy2jEAyvqF2
 UPyUdHDVL6KcS6FtNjZpylVb2pRDg2l4OzByfRPIfiZWWJBLBkUv6lg/mf1cNrvx8cak
 n5/xcp5ZyE4GXgE/3ZG8qDhGC3hmCnXM1T/weA8ISyyBQHNoVu+ifljhKf1CTXr+p8k7
 c4OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7snnG2HZlswbBJSz223TSuoJZEBBjKBU34cy2pxEXn0=;
 b=nPctB6Z8nY0DJi9vATRNJPAUVPRHPrcfn/+erxJLhbaiUUWw6u3g053TaQxeDRtejl
 CwlfT7sRKdVfJ3AIqrKmFkKtABIo0SO4oBoHEv/Pe8EGHJzmCY4y7OafmNON7K1wQSq9
 6wQmQoyrtll967hp1vz4EgIN7qoiXHd08+cMIcQ/LOqqMzcL9/noB6dPcmXilaCjjXNI
 L2Ua5jfQu7oGmFkAZLFGI0NaxHpn4od45nsuQUyUvdskO8Hr16BYRZLdUq1aNk67UheZ
 pIFSpEhqD06Hx3eeiBGkk7BKL2ZG17dfVHmUXPMHLRY7qpFZW2Dh8yBtPcPSwqsmkJgN
 M7kQ==
X-Gm-Message-State: ANhLgQ0PkIISONBq+ybY7wIlu8m6VAVedL5MdnVlt77oYUorWogXwwj4
 1e5y0YglP2sfN+AChtL/hjJXKb90yHYRRC78w+H0NA==
X-Google-Smtp-Source: ADFU+vs4VPyLyCMdpaRb3Mw9YsCh4XInG4OPRetr+tK0zFze5UffR48usFwGSLRHCwJzcCynq75BaoCR2JKyG66qP/U=
X-Received: by 2002:ac8:3a63:: with SMTP id w90mr2379643qte.27.1583930707972; 
 Wed, 11 Mar 2020 05:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <1583780521-45702-1-git-send-email-opendmb@gmail.com>
In-Reply-To: <1583780521-45702-1-git-send-email-opendmb@gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 11 Mar 2020 13:44:56 +0100
Message-ID: <CAMpxmJXNQQTxRWZSP0RZTUuefAk3+AeDMVeVkgERy7f9X=CBsA@mail.gmail.com>
Subject: Re: [PATCH V2] gpio: brcmstb: support gpio-line-names property
To: Doug Berger <opendmb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_054510_045194_7DA0631C 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Gregory Fong <gregory.0xf0@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cG9uLiwgOSBtYXIgMjAyMCBvIDIwOjAyIERvdWcgQmVyZ2VyIDxvcGVuZG1iQGdtYWlsLmNvbT4g
bmFwaXNhxYIoYSk6Cj4KPiBUaGUgZGVmYXVsdCBoYW5kbGluZyBvZiB0aGUgZ3Bpby1saW5lLW5h
bWVzIHByb3BlcnR5IGJ5IHRoZQo+IGdwaW9saWItb2YgaW1wbGVtZW50YXRpb24gZG9lcyBub3Qg
d29yayB3aXRoIHRoZSBtdWx0aXBsZQo+IGdwaW9jaGlwIGJhbmtzIHBlciBkZXZpY2Ugc3RydWN0
dXJlIHVzZWQgYnkgdGhlIGdwaW8tYnJjbXN0Ygo+IGRyaXZlci4KPgo+IFRoaXMgY29tbWl0IGFk
ZHMgZHJpdmVyIGxldmVsIHN1cHBvcnQgZm9yIHRoZSBkZXZpY2UgdHJlZQo+IHByb3BlcnR5IHNv
IHRoYXQgR1BJTyBsaW5lcyBjYW4gYmUgYXNzaWduZWQgZnJpZW5kbHkgbmFtZXMuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBEb3VnIEJlcmdlciA8b3BlbmRtYkBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZl
cnMvZ3Bpby9ncGlvLWJyY21zdGIuYyB8IDQ0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncGlvL2dwaW8tYnJjbXN0Yi5jIGIvZHJpdmVycy9ncGlvL2dw
aW8tYnJjbXN0Yi5jCj4gaW5kZXggMDVlM2Y5OWFlNTljLi5mY2ZjMWExZjFhNWMgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncGlvL2dwaW8tYnJjbXN0Yi5jCj4gKysrIGIvZHJpdmVycy9ncGlvL2dw
aW8tYnJjbXN0Yi5jCj4gQEAgLTYwMyw2ICs2MDMsNDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBk
ZXZfcG1fb3BzIGJyY21zdGJfZ3Bpb19wbV9vcHMgPSB7Cj4gICAgICAgICAucmVzdW1lX25vaXJx
ID0gYnJjbXN0Yl9ncGlvX3Jlc3VtZSwKPiAgfTsKPgo+ICtzdGF0aWMgdm9pZCBicmNtc3RiX2dw
aW9fc2V0X25hbWVzKHN0cnVjdCBkZXZpY2UgKmRldiwKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHN0cnVjdCBicmNtc3RiX2dwaW9fYmFuayAqYmFuaykKPiArewo+ICsgICAg
ICAgc3RydWN0IGRldmljZV9ub2RlICpucCA9IGRldi0+b2Zfbm9kZTsKPiArICAgICAgIGNvbnN0
IGNoYXIgKipuYW1lczsKPiArICAgICAgIGludCBuc3RyaW5ncywgYmFzZTsKPiArICAgICAgIHVu
c2lnbmVkIGludCBpOwo+ICsKPiArICAgICAgIGJhc2UgPSBiYW5rLT5pZCAqIE1BWF9HUElPX1BF
Ul9CQU5LOwo+ICsKPiArICAgICAgIG5zdHJpbmdzID0gb2ZfcHJvcGVydHlfY291bnRfc3RyaW5n
cyhucCwgImdwaW8tbGluZS1uYW1lcyIpOwo+ICsgICAgICAgaWYgKG5zdHJpbmdzIDw9IGJhc2Up
Cj4gKyAgICAgICAgICAgICAgIC8qIExpbmUgbmFtZXMgbm90IHByZXNlbnQgKi8KPiArICAgICAg
ICAgICAgICAgcmV0dXJuOwo+ICsKPiArICAgICAgIG5hbWVzID0gZGV2bV9rY2FsbG9jKGRldiwg
TUFYX0dQSU9fUEVSX0JBTkssIHNpemVvZigqbmFtZXMpLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgR0ZQX0tFUk5FTCk7Cj4gKyAgICAgICBpZiAoIW5hbWVzKQo+ICsgICAgICAgICAg
ICAgICByZXR1cm47Cj4gKwo+ICsgICAgICAgLyoKPiArICAgICAgICAqIE1ha2Ugc3VyZSB0byBu
b3QgaW5kZXggYmV5b25kIHRoZSBlbmQgb2YgdGhlIG51bWJlciBvZiBkZXNjcmlwdG9ycwo+ICsg
ICAgICAgICogb2YgdGhlIEdQSU8gZGV2aWNlLgo+ICsgICAgICAgICovCj4gKyAgICAgICBmb3Ig
KGkgPSAwOyBpIDwgYmFuay0+d2lkdGg7IGkrKykgewo+ICsgICAgICAgICAgICAgICBjb25zdCBj
aGFyICpuYW1lOwo+ICsgICAgICAgICAgICAgICBpbnQgcmV0Owo+ICsKPiArICAgICAgICAgICAg
ICAgcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF9zdHJpbmdfaW5kZXgobnAsICJncGlvLWxpbmUtbmFt
ZXMiLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBiYXNlICsgaSwgJm5hbWUpOwo+ICsgICAgICAgICAgICAgICBpZiAocmV0KSB7Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgaWYgKHJldCAhPSAtRU5PREFUQSkKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAidW5hYmxlIHRvIG5hbWUgbGluZSAlZDogJWRc
biIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJhc2UgKyBpLCBy
ZXQpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ICsgICAgICAgICAgICAgICB9
CgpUaGlzIGJpdCBpcyBjb25mdXNpbmcgdG8gbWUuIElmIHdlIGNhbid0IHJlYWQgdGhlIHByb3Bl
cnR5IHdlIGJyZWFrCnRoZSBsb29wIGFuZCBsZWF2ZSB0aGUgcmVtYWluaW5nIGxpbmUgbmFtZXMg
bnVsbCBidXQgYXQgdGhlIHNhbWUgdGltZQppdCBpc24ndCBjb25zaWRlcmVkIGEgcHJvYmUgZmFp
bHVyZT8gV291bGQgeW91IG1pbmQgYXQgbGVhc3QKY29tbWVudGluZyBvbiB0aGlzIGluIHRoZSBj
b2RlPwoKQmFydAoKPiArICAgICAgICAgICAgICAgaWYgKCpuYW1lKQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIG5hbWVzW2ldID0gbmFtZTsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICBiYW5r
LT5nYy5uYW1lcyA9IG5hbWVzOwo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IGJyY21zdGJfZ3Bpb19w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3Qg
ZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+IEBAIC03MjYsNiArNzY5LDcgQEAgc3RhdGljIGlu
dCBicmNtc3RiX2dwaW9fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAg
ICAgICAgICAgICAgbmVlZF93YWtldXBfZXZlbnQgfD0gISFfX2JyY21zdGJfZ3Bpb19nZXRfYWN0
aXZlX2lycXMoYmFuayk7Cj4gICAgICAgICAgICAgICAgIGdjLT53cml0ZV9yZWcocmVnX2Jhc2Ug
KyBHSU9fTUFTSyhiYW5rLT5pZCksIDApOwo+Cj4gKyAgICAgICAgICAgICAgIGJyY21zdGJfZ3Bp
b19zZXRfbmFtZXMoZGV2LCBiYW5rKTsKPiAgICAgICAgICAgICAgICAgZXJyID0gZ3Bpb2NoaXBf
YWRkX2RhdGEoZ2MsIGJhbmspOwo+ICAgICAgICAgICAgICAgICBpZiAoZXJyKSB7Cj4gICAgICAg
ICAgICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJDb3VsZCBub3QgYWRkIGdwaW9jaGlwIGZv
ciBiYW5rICVkXG4iLAo+IC0tCj4gMi43LjQKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
