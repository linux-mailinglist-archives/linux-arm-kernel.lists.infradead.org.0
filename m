Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AD0184681
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:07:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bx/gjmuAZHop5+RXaPsD8YIZFxp8ur/Vwh5hzJrAIg0=; b=k9ZR6xEt5obgfn
	PgA/QUIbkNwn9cKPriPaisRypKhsBiZPETAxLhh4LZLKl1C95+Z6Bfk7YmhytIwHY1OO0HMTHdn/5
	xy6YUhnGbGLNskejxwVgiDpLdiDXjKQSkuuPMcv2LhTrQ3fHAwLtMr4STJCSxjGYspG6l26vqj0Bl
	rlcn+Y3IFOJPCYfA5StDfgdW9JqFv2zsuFY4rPIqF598Vwc1svqc+iQ7xQUnle+4DFi+HKm9yKLIq
	AvcMhMDvEHIjIPamfFL54foThKkDzVAZGOIgSzI8TM0zS1KAyiziMORxvkh+LVZBDOtk1JhXMMRVy
	JWCCx+OZ8vAkFxW2TgLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCj6B-0003ie-7I; Fri, 13 Mar 2020 12:07:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCj62-0003i1-RQ
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:07:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id l18so11721933wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 05:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9/Bcd6qwUNn4qva18bEYWevO0dvh9c67JG56aKrCUDU=;
 b=zvSNVtLVtwSV+BNzcy6pPgkURNzDdgsfWbuzKOq96veGk/+0iraX2gzFaJderacZlc
 CDg04BWUFdUBRWthqjutxzn3cR7+PXVDDBU1Z43rwzX7tBVE9H7RDdmik2B0mloM2Vwe
 OSbnLRDXUX59N1OFBi4whJ1SQRXeH3MBCW4E3pkPR9l3W8LlFLbBOiUYNUylglH1rXWo
 AYQDj93P1lg2Sm/gC1FvUUgEXq5AlHSl+57gUulx2B+3hF8obycSqDGoEUODM8DecW6C
 a7keymvBphtuGvfQjKVYW7DMNsOsqMyFTy5V9I0J1CY5oepc8WvPAMzMq++Z60d7r51S
 mkAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=9/Bcd6qwUNn4qva18bEYWevO0dvh9c67JG56aKrCUDU=;
 b=Z4TaN5sz4lkKxOjAV/oyHKnZxE1L+bfTNwC8BIzaGtDZ/kRfLz1gIepFUsSuIjelgw
 rGeDb1lp2TSDHaniVvWpjqC0rjGZuKXYW7bAolgByr973r5hh+GqftEOPubkUnszFmiy
 uARng5gZU38pchK8w3A1LT6FlrHxAK5yUXVKZA95agM7dgIk/y5Qv8YpkhCeGhGCU+4V
 qifpDStY81wwp+vIUUtiFLHYtJSoLY4PGGQJem5gyzmAKSi0JjpovqbQaFsVKh57zE6P
 wBeIH4PqSmpcFbxhcAq/a1smf/oklThY+cqk1CXn0TM9+tkw5zKktlI6nJNizyuHCUDB
 BZFQ==
X-Gm-Message-State: ANhLgQ1fCGmH9YI8MHcSflU/Zzz1Kz2QGFGJsyu0w5vadl/y7w56pFTx
 P7fJY/G7lwJrcLS1Ep/YdzRATPkhzzI=
X-Google-Smtp-Source: ADFU+vvZ5aEJ3y7Vb2awEaAg+kJj6tljAPYMMXx120cBGz9smvGCBGqHZCiRe0nNluq8D4mD+n4KdQ==
X-Received: by 2002:adf:f545:: with SMTP id j5mr17388487wrp.295.1584101240954; 
 Fri, 13 Mar 2020 05:07:20 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:40fb:3990:3519:cc26?
 ([2a01:e34:ed2f:f020:40fb:3990:3519:cc26])
 by smtp.googlemail.com with ESMTPSA id z6sm23937704wru.15.2020.03.13.05.07.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 05:07:20 -0700 (PDT)
Subject: Re: [PATCH resend] thermal: imx: register as OF sensor
To: Lucas Stach <l.stach@pengutronix.de>, Zhang Rui <rui.zhang@intel.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>
References: <20200313110139.28558-1-l.stach@pengutronix.de>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <208912d8-b15c-278a-0c3b-174d9d82d9ef@linaro.org>
Date: Fri, 13 Mar 2020 13:07:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200313110139.28558-1-l.stach@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_050722_919376_57E72692 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: patchwork-lst@pengutronix.de, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMDMvMjAyMCAxMjowMSwgTHVjYXMgU3RhY2ggd3JvdGU6Cj4gVG8gbWFrZSB0aGUgaW50
ZXJuYWwgc2Vuc29yIHVzYWJsZSB3aXRoIGEgdGhlcm1hbCB6b25lIGRlc2NyaXB0aW9uCj4gcHJv
dmlkZWQgdmlhIERULCBhbHNvIHJlZ2lzdGVyIG91dCBkZXZpY2UgYXMgYSBPRiBzZW5zb3IuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+CgpB
cmUgeW91IGNhbGxpbmcgdGhlIERUIG9yIG5vbi1EVCBhdCB0aGUgc2FtZSBmdW5jdGlvbiB1bmNv
bmRpdGlvbmFsbHkgPwoKCj4gLS0tCj4gIGRyaXZlcnMvdGhlcm1hbC9pbXhfdGhlcm1hbC5jIHwg
MTcgKysrKysrKysrKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL2lteF90aGVy
bWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvaW14X3RoZXJtYWwuYwo+IGluZGV4IGJiNjc1NGE1MzQy
Yy4uNzE0YmU5NDFmZTZjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9pbXhfdGhlcm1h
bC5jCj4gKysrIGIvZHJpdmVycy90aGVybWFsL2lteF90aGVybWFsLmMKPiBAQCAtMjAyLDcgKzIw
Miw3IEBAIHN0YXRpYyBzdHJ1Y3QgdGhlcm1hbF9zb2NfZGF0YSB0aGVybWFsX2lteDdkX2RhdGEg
PSB7Cj4gIAo+ICBzdHJ1Y3QgaW14X3RoZXJtYWxfZGF0YSB7Cj4gIAlzdHJ1Y3QgY3B1ZnJlcV9w
b2xpY3kgKnBvbGljeTsKPiAtCXN0cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNlICp0ejsKPiArCXN0
cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNlICp0eiwgKnNlbnNvcjsKPiAgCXN0cnVjdCB0aGVybWFs
X2Nvb2xpbmdfZGV2aWNlICpjZGV2Owo+ICAJZW51bSB0aGVybWFsX2RldmljZV9tb2RlIG1vZGU7
Cj4gIAlzdHJ1Y3QgcmVnbWFwICp0ZW1wbW9uOwo+IEBAIC0zMzgsNiArMzM4LDEzIEBAIHN0YXRp
YyBpbnQgaW14X2dldF90ZW1wKHN0cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNlICp0eiwgaW50ICp0
ZW1wKQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgaW14X29mX3NlbnNvcl9n
ZXRfdGVtcCh2b2lkICpkYXRhLCBpbnQgKnRlbXApCj4gK3sKPiArCXN0cnVjdCBpbXhfdGhlcm1h
bF9kYXRhICp0aGVybWFsX2RhdGEgPSBkYXRhOwo+ICsKPiArCXJldHVybiBpbXhfZ2V0X3RlbXAo
dGhlcm1hbF9kYXRhLT50eiwgdGVtcCk7Cj4gK30KPiArCj4gIHN0YXRpYyBpbnQgaW14X2dldF9t
b2RlKHN0cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNlICp0eiwKPiAgCQkJZW51bSB0aGVybWFsX2Rl
dmljZV9tb2RlICptb2RlKQo+ICB7Cj4gQEAgLTQ4Miw2ICs0ODksMTAgQEAgc3RhdGljIHN0cnVj
dCB0aGVybWFsX3pvbmVfZGV2aWNlX29wcyBpbXhfdHpfb3BzID0gewo+ICAJLnNldF90cmlwX3Rl
bXAgPSBpbXhfc2V0X3RyaXBfdGVtcCwKPiAgfTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
dGhlcm1hbF96b25lX29mX2RldmljZV9vcHMgaW14X3R6X29mX29wcyA9IHsKPiArCS5nZXRfdGVt
cCA9IGlteF9vZl9zZW5zb3JfZ2V0X3RlbXAsCj4gK307Cj4gKwo+ICBzdGF0aWMgaW50IGlteF9p
bml0X2NhbGliKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsIHUzMiBvY290cF9hbmExKQo+
ICB7Cj4gIAlzdHJ1Y3QgaW14X3RoZXJtYWxfZGF0YSAqZGF0YSA9IHBsYXRmb3JtX2dldF9kcnZk
YXRhKHBkZXYpOwo+IEBAIC04MTYsNiArODI3LDkgQEAgc3RhdGljIGludCBpbXhfdGhlcm1hbF9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJCWdvdG8gY2xrX2Rpc2FibGU7
Cj4gIAl9Cj4gIAo+ICsJZGF0YS0+c2Vuc29yID0gdGhlcm1hbF96b25lX29mX3NlbnNvcl9yZWdp
c3RlcigmcGRldi0+ZGV2LCAwLCBkYXRhLAo+ICsJCQkJCQkgICAgICAgJmlteF90el9vZl9vcHMp
Owo+ICsKPiAgCWRldl9pbmZvKCZwZGV2LT5kZXYsICIlcyBDUFUgdGVtcGVyYXR1cmUgZ3JhZGUg
LSBtYXg6JWRDIgo+ICAJCSAiIGNyaXRpY2FsOiVkQyBwYXNzaXZlOiVkQ1xuIiwgZGF0YS0+dGVt
cF9ncmFkZSwKPiAgCQkgZGF0YS0+dGVtcF9tYXggLyAxMDAwLCBkYXRhLT50ZW1wX2NyaXRpY2Fs
IC8gMTAwMCwKPiBAQCAtODcxLDYgKzg4NSw3IEBAIHN0YXRpYyBpbnQgaW14X3RoZXJtYWxfcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlpZiAoIUlTX0VSUihkYXRhLT50
aGVybWFsX2NsaykpCj4gIAkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRhdGEtPnRoZXJtYWxfY2xr
KTsKPiAgCj4gKwl0aGVybWFsX3pvbmVfb2Zfc2Vuc29yX3VucmVnaXN0ZXIoJnBkZXYtPmRldiwg
ZGF0YS0+c2Vuc29yKTsKPiAgCXRoZXJtYWxfem9uZV9kZXZpY2VfdW5yZWdpc3RlcihkYXRhLT50
eik7Cj4gIAljcHVmcmVxX2Nvb2xpbmdfdW5yZWdpc3RlcihkYXRhLT5jZGV2KTsKPiAgCWNwdWZy
ZXFfY3B1X3B1dChkYXRhLT5wb2xpY3kpOwo+IAoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9y
Zy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9s
bG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vi
b29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDov
L3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
