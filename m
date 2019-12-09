Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B24117374
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:05:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GyQmy6B5dbnWKjyql79rXMu02qVaLLEz/cHzpqizOXg=; b=N5iYcU5W5aSA0WaOFGDvBmOeX
	noZW6KqoYLHddicDjxznxbgv0EE1pTV9bd7xjMM8BfKRz88J8rK4yAKTghPq9/WDdF9A9Uwk4dkNj
	RrjSHdqzqJIZGQN9tlFfDWMqNjYGJdoDPw4VrigBHxzqwCii+sCfVbDib9VQphNa/UUyQXYDijS7u
	n6hlHrDSTa2f54QK/xiT/5tYRZ/2OOeeaXxI7bcjpCbUTgqnjW4IkyYoxtbGbBIVYm2GFKwpYz+Dl
	I1q9R7J0m5dL9frO9IihAHLC0WBQbfRQwgQxuCD0B3VYN+Ud44wHM67CjL+iekyX/GMNq11Sok543
	2YvA5TOUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNPR-0001xw-OL; Mon, 09 Dec 2019 18:05:25 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNPG-0001xW-J3
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:05:15 +0000
Received: by mail-wr1-x443.google.com with SMTP id b6so17282366wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 10:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PsHv5fymJvkU+szxE1Dk347Ie2ZopJzFsAKK0iwXJSU=;
 b=X/+NOlSVargVBjv5iiZhzf+X/QXFb+2dH6dwXxg7mOancVIVlLEGwkvRq8FPxUWbAv
 qIMRSX3vFkeiQTx5hvwf7Y2FbBipX9DJONwiJeY5SgwCt9wvOuOkOYU0sn3lZwAU3g4C
 /6nCJ/Kdl8r+Nkt7ULCqJWkxIX+dJjpfzakPs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PsHv5fymJvkU+szxE1Dk347Ie2ZopJzFsAKK0iwXJSU=;
 b=ZwfdrmMFpaGGHBhWjsckoCirog8UbaJkRFC/lfsSZTwQAWD0C38kYaFbZoT4vJEdIv
 gpg66Q83GRHvE6SrOxZgByH0XSIa/Yt05/5YDGmfskfrU7nbxIenALB0arJBGvQoGIaG
 by4wrq/OGsmFUPBf4hh7qs763pPq0oxv8Jz7WI0W9wXvRfXXeeasAFa0qs//T3mGhPEr
 lUIijQUO88Nrt+N+u8SbY8Mto4zBGTdDrGXqxEnetKunRhLtqaghE2ShRfzYTCQ4ZkqD
 /P4S3nBKYrSYpz9ihb67esYkSIrGyNxTBS5/uxl2FB7Cm8W23SEOYA+BDWFmEiGOE4aq
 TzWw==
X-Gm-Message-State: APjAAAWLnecUQ9NuixSFdafmVA3bDqWvuBOUMl9g2SfP8LBN5XbeIsIn
 AlZoMNr7vRmvNthRuspGiU/a4g==
X-Google-Smtp-Source: APXvYqxD5gfoyqhQNHRgLQJ8wGomGYCrgHzVGc6oHdP95D6tB035C/zGfyJdVaSPc5CyShT9JbvBnw==
X-Received: by 2002:adf:e5cb:: with SMTP id a11mr3448595wrn.28.1575914712900; 
 Mon, 09 Dec 2019 10:05:12 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id c2sm268787wrp.46.2019.12.09.10.05.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 10:05:11 -0800 (PST)
Subject: Re: [PATCH 2/2] soc: bcm: iproc: Add Broadcom iProc IDM driver
To: Florian Fainelli <f.fainelli@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
 <20191202233127.31160-3-ray.jui@broadcom.com>
 <955f1d22-a1df-377a-1ed9-7fdaa4309b33@gmail.com>
 <d4740de9-52b2-a4f8-7a4b-4f523c61cb9c@broadcom.com>
 <2fed95d6-72a0-328e-806c-ba214b52ff11@gmail.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <f6723ca4-8c2f-9af5-7e18-bf7fbc75dda1@broadcom.com>
Date: Mon, 9 Dec 2019 10:05:07 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <2fed95d6-72a0-328e-806c-ba214b52ff11@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_100514_629788_D4DD1300 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi83LzE5IDk6NTIgQU0sIEZsb3JpYW4gRmFpbmVsbGkgd3JvdGU6Cj4gCj4gCj4gT24g
MTIvNi8yMDE5IDU6MTUgUE0sIFJheSBKdWkgd3JvdGU6Cj4+Pgo+Pj4gRGlkIG5vdCB5b3UgaW50
ZW5kIHRvIGRyb3AgdGhlIHJlZmVyZW5jZSBjb3VudCBvbiBlbG9nX25wIGhlcmU/Cj4+Pgo+Pgo+
PiBTb3JyeSwgSSdtIG5vdCBmb2xsb3dpbmcgdGhpcyBjb21tZW50LiBDb3VsZCB5b3UgcGxlYXNl
IGhlbHAgdG8gY2xhcmlmeQo+PiBmb3IgbWUgYSBiaXQgbW9yZT8gVGhhbmtzIQo+IAo+IEkgbWVh
bnQgdGhhdCB5b3UgZHJvcCB0aGUgcmVmZXJlbmNlIGNvdW50IG9uICducCcgYnV0IHlvdSBjYWxs
ZWQKPiBmdW5jdGlvbnMgdGhhdCBpbmNyZW1lbnRlZCB0aGUgcmVmZXJlbmNlIGNvdW50IG9uICdl
bG9nX25wJywgc28gbWF5YmUKPiB5b3UgYXJlIG5vdCBkb2luZyB0aGUgb2Zfbm9kZV9wdXQoKSBv
biB0aGUgYXBwcm9wcmlhdGUgZGV2aWNlX25vZGUKPiByZWZlcmVuY2U/Cj4gCgpPa2F5IHRoYW5r
cy4gSSdsbCBsb29rIGludG8gdGhpcyBpbiBtb3JlIGRldGFpbHMgYW5kIG1ha2UgY29ycmVjdGlv
bnMgaWYgCm5lZWRlZC4KCj4+Cj4+PiBbc25pcF0KPj4+Cj4+Pj4gK3N0YXRpYyBzdHJ1Y3QgcGxh
dGZvcm1fZHJpdmVyIGlwcm9jX2lkbV9kcml2ZXIgPSB7Cj4+Pj4gK8KgwqDCoCAucHJvYmUgPSBp
cHJvY19pZG1fcHJvYmUsCj4+Pgo+Pj4gRG8gbm90IHlvdSBuZWVkIGEgcmVtb3ZlIGZ1bmN0aW9u
IGluIG9yZGVyIHRvIHVucmVnaXN0ZXIgdGhlIHN5c2ZzIGZpbGUKPj4+IHRoYXQgeW91IGNyZWF0
ZWQgaW4gaXByb2NfaWRtX2Rldl9wcm9iZSgpIHRvIGF2b2lkIGJpbmQvdW5iaW5kIChvcgo+Pj4g
cm1tb2QvbW9kcHJvYmUpIHRvIHNwaXQgb3V0IGFuIGV4aXN0aW5nIHN5c2ZzIGVudHJ5IHdhcm5p
bmc/Cj4+Pgo+Pgo+PiBUaGlzIGRyaXZlciBzaG91bGQgbmV2ZXIgYmUgY29tcGlsZWQgYXMgYSBt
b2R1bGUuIEl0J3MgbWVhbnQgdG8gYmUKPj4gYWx3YXlzIHRoZXJlIHRvIGNhcHR1cmUgSURNIGJ1
cyB0aW1lb3V0cy4KPj4KPj4gQnV0IHlvdSBhcmUgcmlnaHQgdGhhdCBJIGNhbm5vdCBwcmV2ZW50
IHVzZXIgZnJvbSB0cnlpbmcgdG8gdW5iaW5kIGl0Cj4+IGZvciB3aGF0ZXZlciByZWFzb24uIEkn
bGwgYWRkIGEgcmVtb3ZlIHJvdXRpbmUgdG8gdGFrZSBjYXJlIG9mIHRoaXMuCj4gCj4gWW91IGNh
biBhbHNvIHNldCBzdXBwcmVzc19iaW5kX2F0dHJzIHRvIHlvdXIgcGxhdGZvcm1fZHJpdmVyIHN0
cnVjdHVyZQo+IHRvIHByZXZlbnQgdW5iaW5kL2JpbmQgZnJvbSBoYXBwZW5pbmcuCj4gCgpHcmVh
dC4gVGhpcyBpcyB3aGF0IEknbGwgZG8gdGhlbi4gSSBtZWFudCB0byBoYXZlIHRoaXMgZHJpdmVy
IHN0YXlzIApsb2FkZWQvYmluZGVkIGFsbCB0aGUgdGltZSBvbmNlIHByb2JlZC4KClRoYW5rcywK
ClJheQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
