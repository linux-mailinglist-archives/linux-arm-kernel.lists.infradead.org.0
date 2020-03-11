Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6932918217E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 20:03:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1unBxleN3hWpaCC+iJP/WDRZKgB+P3AwpGqlIDcJfmQ=; b=ATwCy6nc2Esa18
	uIRu4wiuQl1NiNgqrvoYzxb8eOWZxQ2Tck6lltsHnSXkeroaoqthF6Sx+mk6KffNALA5bu80kKLMB
	aRcERlsPkXUerh0NtB2zOYriauIJ7So0muMZHz5VDXM9D/d28w24OsXX4p6Rz+91DFyytRK+ONhDz
	xreGQWhWAoERprleer/Dm7IeVeQk2nxQ5RxnSI+NKfnItdg0b3VxP5w2iPro9fDeqNgNhJFPkgltN
	gZUHT9+ZTuFRiWUeGLPUqHVxpbu9EAcQrdrMkxjmq6NbEOSGYLNcuVa3JpeUIfmkY5oOdiVjzX1C5
	nwwJuf4cGaZKUTOs+5iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6dP-0006h9-0R; Wed, 11 Mar 2020 19:03:15 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6dB-0006gf-4Y
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 19:03:02 +0000
Received: by mail-wm1-x343.google.com with SMTP id 6so3299864wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 12:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kMk8XoGQR0xpzuD33tIqb6u2vZiLCLdnSBR1yPeTFRU=;
 b=svh6HxiorQ6lESmobtjOHPpu5c3KwR4hvmG+FAn9vTRmu4cVMygiYnAP55pzPCQKkE
 ddQnbXek4NwjKIvF7j9nxsmnOkIj7Pb5aByRmLIBxRFDDC7729ApgTdIx8reyYMflfQp
 RQCyHJDMyrKcV61Nv3rrmMh2WbRW85FXro1JToA5MmBaE+EXGzuEDoegRy47NepFlQY9
 duaW6rM/F9wp+ZOFpR0735wMutWnClfQ8IGlYwcZQApmjYCdKZxeuWlOuxAGhQdOw/mM
 c0hlK78ibRJ3OmevJ/8zV6Sw/SxS40P2u81K+COLYI6F9MyXf3ntpGTGZAFNqodRY0on
 M7KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=kMk8XoGQR0xpzuD33tIqb6u2vZiLCLdnSBR1yPeTFRU=;
 b=qsIqb1n9TwPE+CIEvOPwS2xliYWwY/C+nL4ZLK/TCq1QRYW+fZCrjyp99QEe0p2I7X
 /acxDspuXiXuq6Bpe3P7FUme8sxFAGkTOl3J1/PAu2WryEDPP5+IJZNps+YoW/TV+fXj
 d6YCXvD2jCQDJ7Qoy2T+b6DeDOMHRyxLMYdIMzY0UTb1f6qxBHvca3YG8spuWGBaGxUW
 /PcueB3Z6gJRfLsCG6h5Cp49U692eDb6S9Wx9+FMw2LSC88xWiwJ44pMU+Kq2ZqF9D6q
 mj4EhZPRbBo5TOt9ExdrrJOypXQ5ZgUKRfVXQtSC1XX/Roi08LJ8FlvOBcTe4iQ9q0R0
 79xQ==
X-Gm-Message-State: ANhLgQ3GCLCBHH6Qij4+Ar3WWsdcAXo94yadMNc+EHoHWL+jmFPeFWqY
 UI46ZhSSEHS9DALhIovxzOjExVPe
X-Google-Smtp-Source: ADFU+vuqWG859dAoRXEKTellTNSb3AXRx7u3fdKqKW0Kd2ZrtW4OfhFrTLg1wU4mdeB+u95yTTigyA==
X-Received: by 2002:a7b:ca47:: with SMTP id m7mr216507wml.4.1583953378725;
 Wed, 11 Mar 2020 12:02:58 -0700 (PDT)
Received: from [10.67.49.112] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id f3sm9292698wml.24.2020.03.11.12.02.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 12:02:56 -0700 (PDT)
Subject: Re: [PATCH V2] gpio: brcmstb: support gpio-line-names property
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
References: <1583780521-45702-1-git-send-email-opendmb@gmail.com>
 <CAMpxmJXNQQTxRWZSP0RZTUuefAk3+AeDMVeVkgERy7f9X=CBsA@mail.gmail.com>
From: Doug Berger <opendmb@gmail.com>
Autocrypt: addr=opendmb@gmail.com; prefer-encrypt=mutual; keydata=
 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
 rQQYjNSD8+NSdOsIpGNCZ9xhWw==
Message-ID: <7fcc5cb2-5fdb-d1cf-e55b-c0f2d407e072@gmail.com>
Date: Wed, 11 Mar 2020 12:02:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAMpxmJXNQQTxRWZSP0RZTUuefAk3+AeDMVeVkgERy7f9X=CBsA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_120301_202371_11846AA6 
X-CRM114-Status: GOOD (  27.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [opendmb[at]gmail.com]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Gregory Fong <gregory.0xf0@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8xMS8yMCA1OjQ0IEFNLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+IHBvbi4sIDkg
bWFyIDIwMjAgbyAyMDowMiBEb3VnIEJlcmdlciA8b3BlbmRtYkBnbWFpbC5jb20+IG5hcGlzYcWC
KGEpOgo+Pgo+PiBUaGUgZGVmYXVsdCBoYW5kbGluZyBvZiB0aGUgZ3Bpby1saW5lLW5hbWVzIHBy
b3BlcnR5IGJ5IHRoZQo+PiBncGlvbGliLW9mIGltcGxlbWVudGF0aW9uIGRvZXMgbm90IHdvcmsg
d2l0aCB0aGUgbXVsdGlwbGUKPj4gZ3Bpb2NoaXAgYmFua3MgcGVyIGRldmljZSBzdHJ1Y3R1cmUg
dXNlZCBieSB0aGUgZ3Bpby1icmNtc3RiCj4+IGRyaXZlci4KPj4KPj4gVGhpcyBjb21taXQgYWRk
cyBkcml2ZXIgbGV2ZWwgc3VwcG9ydCBmb3IgdGhlIGRldmljZSB0cmVlCj4+IHByb3BlcnR5IHNv
IHRoYXQgR1BJTyBsaW5lcyBjYW4gYmUgYXNzaWduZWQgZnJpZW5kbHkgbmFtZXMuCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IERvdWcgQmVyZ2VyIDxvcGVuZG1iQGdtYWlsLmNvbT4KPj4gLS0tCj4+ICBk
cml2ZXJzL2dwaW8vZ3Bpby1icmNtc3RiLmMgfCA0NCArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKykK
Pj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bpby9ncGlvLWJyY21zdGIuYyBiL2RyaXZlcnMv
Z3Bpby9ncGlvLWJyY21zdGIuYwo+PiBpbmRleCAwNWUzZjk5YWU1OWMuLmZjZmMxYTFmMWE1YyAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncGlvL2dwaW8tYnJjbXN0Yi5jCj4+ICsrKyBiL2RyaXZl
cnMvZ3Bpby9ncGlvLWJyY21zdGIuYwo+PiBAQCAtNjAzLDYgKzYwMyw0OSBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGRldl9wbV9vcHMgYnJjbXN0Yl9ncGlvX3BtX29wcyA9IHsKPj4gICAgICAgICAu
cmVzdW1lX25vaXJxID0gYnJjbXN0Yl9ncGlvX3Jlc3VtZSwKPj4gIH07Cj4+Cj4+ICtzdGF0aWMg
dm9pZCBicmNtc3RiX2dwaW9fc2V0X25hbWVzKHN0cnVjdCBkZXZpY2UgKmRldiwKPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgYnJjbXN0Yl9ncGlvX2JhbmsgKmJh
bmspCj4+ICt7Cj4+ICsgICAgICAgc3RydWN0IGRldmljZV9ub2RlICpucCA9IGRldi0+b2Zfbm9k
ZTsKPj4gKyAgICAgICBjb25zdCBjaGFyICoqbmFtZXM7Cj4+ICsgICAgICAgaW50IG5zdHJpbmdz
LCBiYXNlOwo+PiArICAgICAgIHVuc2lnbmVkIGludCBpOwo+PiArCj4+ICsgICAgICAgYmFzZSA9
IGJhbmstPmlkICogTUFYX0dQSU9fUEVSX0JBTks7Cj4+ICsKPj4gKyAgICAgICBuc3RyaW5ncyA9
IG9mX3Byb3BlcnR5X2NvdW50X3N0cmluZ3MobnAsICJncGlvLWxpbmUtbmFtZXMiKTsKPj4gKyAg
ICAgICBpZiAobnN0cmluZ3MgPD0gYmFzZSkKPj4gKyAgICAgICAgICAgICAgIC8qIExpbmUgbmFt
ZXMgbm90IHByZXNlbnQgKi8KPj4gKyAgICAgICAgICAgICAgIHJldHVybjsKPj4gKwo+PiArICAg
ICAgIG5hbWVzID0gZGV2bV9rY2FsbG9jKGRldiwgTUFYX0dQSU9fUEVSX0JBTkssIHNpemVvZigq
bmFtZXMpLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdGUF9LRVJORUwpOwo+PiAr
ICAgICAgIGlmICghbmFtZXMpCj4+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4+ICsKPj4gKyAg
ICAgICAvKgo+PiArICAgICAgICAqIE1ha2Ugc3VyZSB0byBub3QgaW5kZXggYmV5b25kIHRoZSBl
bmQgb2YgdGhlIG51bWJlciBvZiBkZXNjcmlwdG9ycwo+PiArICAgICAgICAqIG9mIHRoZSBHUElP
IGRldmljZS4KPj4gKyAgICAgICAgKi8KPj4gKyAgICAgICBmb3IgKGkgPSAwOyBpIDwgYmFuay0+
d2lkdGg7IGkrKykgewo+PiArICAgICAgICAgICAgICAgY29uc3QgY2hhciAqbmFtZTsKPj4gKyAg
ICAgICAgICAgICAgIGludCByZXQ7Cj4+ICsKPj4gKyAgICAgICAgICAgICAgIHJldCA9IG9mX3By
b3BlcnR5X3JlYWRfc3RyaW5nX2luZGV4KG5wLCAiZ3Bpby1saW5lLW5hbWVzIiwKPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJhc2UgKyBpLCAm
bmFtZSk7Cj4+ICsgICAgICAgICAgICAgICBpZiAocmV0KSB7Cj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgIGlmIChyZXQgIT0gLUVOT0RBVEEpCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgZGV2X2VycihkZXYsICJ1bmFibGUgdG8gbmFtZSBsaW5lICVkOiAlZFxuIiwKPj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJhc2UgKyBpLCByZXQpOwo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPj4gKyAgICAgICAgICAgICAgIH0KPiAKPiBU
aGlzIGJpdCBpcyBjb25mdXNpbmcgdG8gbWUuIElmIHdlIGNhbid0IHJlYWQgdGhlIHByb3BlcnR5
IHdlIGJyZWFrCj4gdGhlIGxvb3AgYW5kIGxlYXZlIHRoZSByZW1haW5pbmcgbGluZSBuYW1lcyBu
dWxsIGJ1dCBhdCB0aGUgc2FtZSB0aW1lCj4gaXQgaXNuJ3QgY29uc2lkZXJlZCBhIHByb2JlIGZh
aWx1cmU/IFdvdWxkIHlvdSBtaW5kIGF0IGxlYXN0Cj4gY29tbWVudGluZyBvbiB0aGlzIGluIHRo
ZSBjb2RlPwo+IAo+IEJhcnQKPiAKVGhlIGxhYmVsIG5hbWVzIGFyZSB2aWV3ZWQgYXMgYSBjb252
ZW5pZW5jZSBmb3IgdGhlIHVzZXIgYW5kIGFyZSBub3QKbmVjZXNzYXJ5IGZvciB0aGUgcHJvcGVy
IGZ1bmN0aW9uYWxpdHkgb2YgdGhlIGRyaXZlciBhbmQgZGV2aWNlLCBzbyB3ZQpkb24ndCB3YW50
IHRvIHByZXZlbnQgdGhlIGRyaXZlciBmcm9tIHN1Y2NlZWRpbmcgYXQgcHJvYmUgZHVlIHRvIGFu
CmVycm9yIGluIHRoZSBncGlvLWxpbmUtbmFtZXMgcHJvcGVydHkuIFRoZSBiYW5rLT5nYy5uYW1l
cyBtZW1iZXIgaXMKc3RpbGwgbWFkZSBub24tTlVMTCB3aGljaCBpcyB3aGF0IHdlIHJlYWxseSBj
YXJlIGFib3V0IHRvIHByZXZlbnQgdGhlCm1pc2FwcGxpY2F0aW9uIG9mIGxhYmVsIG5hbWVzIGJ5
IGRldnByb3BfZ3Bpb2NoaXBfc2V0X25hbWVzKCkuCgpJbiBmYWN0LCBpdCBpcyBleHBlY3RlZCB0
aGF0IHRoZSBkZXZpY2UtdHJlZSB3aWxsIG9ubHkgaW5jbHVkZSBsYWJlbApzdHJpbmdzIHVwIHRv
IHRoZSBsYXN0IEdQSU8gb2YgaW50ZXJlc3Qgc28gdGhlIEVOT0RBVEEgZXJyb3IgaXMKY29uc2lk
ZXJlZCBhIHZhbGlkIHJlc3VsdCB0byB0ZXJtaW5hdGUgYW55IGZ1cnRoZXIgbGFiZWxpbmcgc28g
dGhlcmUgaXMKbm8gbmVlZCBmb3IgYW4gZXJyb3IgbWVzc2FnZSBpbiB0aGF0IGNhc2UuCgpPdGhl
ciBlcnJvciByZXN1bHRzIGFyZSB1bmV4cGVjdGVkIHNvIGFuIGVycm9yIG1lc3NhZ2UgaW5kaWNh
dGluZyB0aGUKY29uc2VxdWVuY2Ugb2YgdGhlIGVycm9yIGlzIGFwcHJvcHJpYXRlIGhlcmUuCgpJ
J20gbm90IHN1cmUgd2hpY2ggYXNwZWN0IGlzIGNvbmZ1c2luZyB0byB5b3UsIHNvIGl0J3Mgbm90
IGNsZWFyIHRvIG1lCmhvdyBiZXN0IHRvIGNvbW1lbnQgdGhlIGNvZGUuIEkgY2FuIGhhemFyZCBh
IGd1ZXNzLCBidXQgaWYgeW91IGhhdmUgYQpzdWdnZXN0aW9uIEknbSBoYXBweSB0byBzdWJtaXQg
YSB2My4KClRoYW5rcyBmb3IgdGFraW5nIHRoZSB0aW1lIHRvIHJldmlldyB0aGlzLAogICAgRG91
ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
