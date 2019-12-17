Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 204CE12261D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 09:02:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uescdlcr0Ns2EtaOXBo+Jtu0jUUlbhl3UOwgB/femOg=; b=X7Pqm1TahMwIII
	M6d5kZ977ypLJv9G/+++5Q5ECsOl2UvF4hPernp5hnhuVi6Hpp410uajYi79jXfLb3MMHhHVk2osS
	H0/ZSsJOK6/hvIOUYfPXPhAKg7M61B3sFMKBI9pBCe0UaYBAfJWs6CX/p0PJIPH/5Gbhyz0no6DjR
	/cc/KXhmlcPitYBXMC/aJ3hfYcyAr2HhNyyvtB0m6HNW/fhnADyNjmgKM+izwZ7OP5yOmptvpMRLR
	DeNIDpT6pFaWCwSlZfEnS05DQqr8vEMELgXjqfD0tLTP6tNm8gSrQgeR7J6Ji/JRRYhHKy93aOffQ
	R6irNvRD2nIJ5oY4QfVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7nv-0003aZ-TK; Tue, 17 Dec 2019 08:02:03 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7nf-0003Zp-L8
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 08:01:49 +0000
Received: by mail-wm1-x344.google.com with SMTP id b19so1883869wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 00:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WZOvCOdy9VcP1q3wbnXjJy7liyDoT9irStwm/3oMph0=;
 b=nRwMwYh74Fr3qIIa5UdP2+mDO9nzSRcwTTF4QuRdN6NCOLpRwmgdbY+0cKFNK5IaM3
 cOp2/d3GpEiCDWpt4568kI3qyVsbr25UfxyN7TwleMreuhb2E4nXNEOmwPo5ptQgDk0s
 Hiy8Di+CgHrhptiQ9Izi0SRPMY1MW+KdrEqT3azlYZNdl16Afg4y1HQ6rdciCLpJUGiN
 3+4AM9Y79asW3A0g2wFg50ep0qvyhApKf/jYYNEwdQ30sfu8+1d2KJ1lP0zvwsmfu2Go
 /HRvCRw5kD7GbN5F7Db2BRd4KoRAgm6ZW1SogaUvYJ6+EnSDSbrH+To2gMdxJWxMPuHS
 UWRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=WZOvCOdy9VcP1q3wbnXjJy7liyDoT9irStwm/3oMph0=;
 b=sfSfb8gJSgg9qxq3F4/b9Zq2zfTmQ/ajHbgGkAKQMXjCAk53JX7gqykLeRuBQDg63p
 UP2OJGvarkopSX2pvGx8NtUkEOCx23r/ZxK1Zt0F9r0yHdCbP/89n5yMKmxQv+btXCDr
 HkBS3Xf9xlvoe7iGFbbCxjAerxwMaUeTQoBgtWPxJRasc09sN+2vceKnPBbDf5ZJpOkl
 x/PaRvMH79G88LVmPhYN+cWg1VhMZ3a3L45PBt/vHmt5KBw3HG4sP1hVww4l7qDoygmN
 OWjUbDRC/7vvTFm8ZTytx7xB5yFPfAKmy4Le7ONLbt3Yt7EHo8sQIm5HcsoYn3qCUfdW
 bflQ==
X-Gm-Message-State: APjAAAVUUqZDUxUixWVx2/nsb3DWwVyss55diGpBJ5tpIJ3BXU8Gl1JO
 JvMKUSdNlpWzDEbyVulVD79NAw==
X-Google-Smtp-Source: APXvYqxC6peUzSn7QBgZfh8P5JtLY3F/KYhinMuXg+7lsG4EqavBvbbAaU0KGwFjbVAy9rlQAuZ3RQ==
X-Received: by 2002:a05:600c:294:: with SMTP id
 20mr3762331wmk.97.1576569705638; 
 Tue, 17 Dec 2019 00:01:45 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:44d6:972c:f996:2f15?
 ([2a01:e34:ed2f:f020:44d6:972c:f996:2f15])
 by smtp.googlemail.com with ESMTPSA id f1sm25270580wrp.93.2019.12.17.00.01.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Dec 2019 00:01:45 -0800 (PST)
Subject: Re: [PATCH] thermal: rockchip: enable hwmon
To: Chen-Yu Tsai <wens@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Heiko Stuebner <heiko@sntech.de>
References: <20191217052328.25633-1-wens@kernel.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <7f2be28d-9bf5-79a8-8720-4615a4e9f463@linaro.org>
Date: Tue, 17 Dec 2019 09:01:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191217052328.25633-1-wens@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_000147_694418_324F08E7 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIENoZW4tWXUsCgpPbiAxNy8xMi8yMDE5IDA2OjIzLCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4g
RnJvbTogQ2hlbi1ZdSBUc2FpIDx3ZW5zQGNzaWUub3JnPgo+IAo+IEJ5IGRlZmF1bHQgb2YtYmFz
ZWQgdGhlcm1hbCBkcml2ZXIgZG8gbm90IGhhdmUgaHdtb24gZW50cmllcyByZWdpc3RlcmVkLgo+
IAo+IERvIHRoaXMgZXhwbGljaXRseSBzbyB1c2VycyBjYW4gdXNlIHN0YW5kYXJkIGh3bW9uIGlu
dGVyZmFjZXMgYW5kIHRvb2xzCj4gdG8gcmVhZCB0aGUgdGVtcGVyYXR1cmUuCj4gCj4gVGhpcyBp
cyBiYXNlZCBvbiBzaW1pbGFyIGNoYW5nZXMgZm9yIGJjbTI4MzVfdGhlcm1hbCBpbiBjb21taXQK
PiBkNTZjMTlkMDdlMGIgKCJ0aGVybWFsOiBiY20yODM1OiBlbmFibGUgaHdtb24gZXhwbGljaXRs
eSIpLgoKVGhhbmtzIGZvciBzdWJtaXR0aW5nIHRoaXMgcGF0Y2gsIGJ1dCBpdCBpcyBkdXBsaWNh
dGUgd2l0aDoKCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFybS1rZXJuZWwvMjAxOTEy
MTIwNjE3MDIuQkZFMkQ2RTg1NjAzQGNvcm9uYS5jcmFiZGFuY2UuY29tLwoKd2hpY2ggSSBwaWNr
ZWQgdXAuCgogIC0tIERhbmllbAoKCj4gU2lnbmVkLW9mZi1ieTogQ2hlbi1ZdSBUc2FpIDx3ZW5z
QGNzaWUub3JnPgo+IC0tLQo+ICBkcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jIHwg
OCArKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMg
Yi9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gaW5kZXggOWVkODA4NWJiNzky
Li5kNTNiYTdkYWJmMTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3Ro
ZXJtYWwuYwo+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiBAQCAt
MTksNiArMTksOCBAQAo+ICAjaW5jbHVkZSA8bGludXgvbWZkL3N5c2Nvbi5oPgo+ICAjaW5jbHVk
ZSA8bGludXgvcGluY3RybC9jb25zdW1lci5oPgo+ICAKPiArI2luY2x1ZGUgInRoZXJtYWxfaHdt
b24uaCIKPiArCj4gIC8qCj4gICAqIElmIHRoZSB0ZW1wZXJhdHVyZSBvdmVyIGEgcGVyaW9kIG9m
IHRpbWUgSGlnaCwKPiAgICogdGhlIHJlc3VsdGluZyBUU0hVVCBnYXZlIENSVSBtb2R1bGUsbGV0
IGl0IHJlc2V0IHRoZSBlbnRpcmUgY2hpcCwKPiBAQCAtMTIxMCw3ICsxMjEyLDExIEBAIHJvY2tj
aGlwX3RoZXJtYWxfcmVnaXN0ZXJfc2Vuc29yKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYs
Cj4gIAkJcmV0dXJuIGVycm9yOwo+ICAJfQo+ICAKPiAtCXJldHVybiAwOwo+ICsJLyogdGhlcm1h
bF96b25lIGRvZXNuJ3QgZW5hYmxlIGh3bW9uIGFzIGRlZmF1bHQsIGVuYWJsZSBpdCBoZXJlICov
Cj4gKwlzZW5zb3ItPnR6ZC0+dHpwLT5ub19od21vbiA9IGZhbHNlOwo+ICsJZXJyb3IgPSB0aGVy
bWFsX2FkZF9od21vbl9zeXNmcyhzZW5zb3ItPnR6ZCk7Cj4gKwo+ICsJcmV0dXJuIGVycm9yOwo+
ICB9Cj4gIAo+ICAvKioKPiAKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8u
b3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86
ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRw
Oi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJv
Lm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
