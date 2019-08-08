Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D94686A82
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 21:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7n3nuVs58fi9YxnobWsQezD/5UUutIjCR7Nh9Wlq3sQ=; b=F2BiHthxYyGqF4GnFFJHTtWE0
	kZzOonC5oTmvQYMO2eqFePbdRDdRlYEyTt8qSgVkZ7sg0BE96R4XRL6wZKwCk/qr4aehEK6iMhTrG
	FkJVRPfN8OXWBlk+Rz8DXJIHpITl8yLY39o6VsqF/iQfjp68Nm721bNo0dKf5XOLKorQ3dlhHpLFC
	kuVWmaUY/l0p1Du0t06rDZewwR/1X5N9UgVXoBoDQvb9F7ORvkjK60xyHNbtLEB/g9QOL3FXaz4o5
	EkJSVO8F5zLd0pu86liLj1dP5F0mCYSP2gW3peRLYqiymSrESXRQfeV124v5kLPlliG7F3wZ+dmr1
	0CcD2oaiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvnyF-0002td-16; Thu, 08 Aug 2019 19:21:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvny3-0002tH-Fs
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 19:20:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id n190so3747516pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 12:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WofIjniXiwNzxEUaGFVhZ+h83Wcut+hzdIT3wo6e7YM=;
 b=KQljckW9Gh7h2hSk+gLggObASU2CPWRIxV7VyUuCJvL2RUAx4WqtitmD7N7cnp6dtx
 1bSKBO7I2OZorVgWYzMkpzO3B6BIsB42z6GOkLb2mpjCUwtjti3t8QKP5k7He1Tig9zq
 jOrsP1LmiRh9m+6/QM88HoXQXRZChQKxEYeIqxzFY4CjN+0DkRbI9FFENeF/VtQ91ibj
 wjycfbIZ18hEDhEpzFP+koh8U+KaZGz/YRV29a9TWvOBJkhP59Scv9Pq8Z9GeAaM2uo2
 /VeEZDsaWHSxcNBQfDgNTCOxY5hj5P58fSPg4jLgLEhbYwyCybIq1fc4MMvmXkj1JekE
 WURg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WofIjniXiwNzxEUaGFVhZ+h83Wcut+hzdIT3wo6e7YM=;
 b=sKSWFBAgw+IE/LZuHdDNM6BQjMvNEFhHqAa6FGTPOEn1OfnR3xFaBvQaFO1T7KBdPn
 sHzjgzJZPprXygZGNxUTH8Snph3rwoGv4FZswvVAOMsER5uuQYkswFvpXcD0KMIZfCjE
 Qym3RtzbPZpNEtd0u+8DnemMiYGjq17IxCGsNJhkcgH8N6u8Ut75JY2uxab9zLlJn0TU
 2lVG24tJM6y7hBZDrifSC0P+xsdSHuO6TY9byGA3knK3u7ZsF1Cw6FOywBZ8yxP2e3GJ
 uXidfmZUFTSLtlczp7wRlaboTIJxzAwuodxe3THfJCzsUJEtwemki0PQ9DJ0ofvO1w4D
 qkYw==
X-Gm-Message-State: APjAAAVEagf/Ce5FOGbsoLLTcBtuOo/BolXOH4IlAAU3q30+RucFlLVl
 gGKUipwKOgo6Wv2JE9i58PE=
X-Google-Smtp-Source: APXvYqy1nAMROP2tNRjP90YcDjSjfw5g7Jxmg/KRzY27RLDmMUbzlnugppsGaJIAUrvztZ+VMG7E7A==
X-Received: by 2002:a62:16:: with SMTP id 22mr17745874pfa.151.1565292055001;
 Thu, 08 Aug 2019 12:20:55 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 e189sm83108353pgc.15.2019.08.08.12.20.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 12:20:54 -0700 (PDT)
Subject: Re: next/master build: 230 builds: 5 failed, 225 passed, 6 errors,
 1344 warnings (next-20190805)
To: Alex Deucher <alexdeucher@gmail.com>
References: <5d47f990.1c69fb81.a5d88.ee1f@mx.google.com>
 <20190805111205.GB6432@sirena.org.uk> <20190808184149.GA441@roeck-us.net>
 <CADnq5_NL6+AohC-3HJa+84k50ewqYLMy_VuFmgY=aw872JFf-A@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <768ee31a-c870-4237-f38a-b176378072b6@roeck-us.net>
Date: Thu, 8 Aug 2019 12:20:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CADnq5_NL6+AohC-3HJa+84k50ewqYLMy_VuFmgY=aw872JFf-A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_122055_534303_0FDE2626 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: David Zhou <David1.Zhou@amd.com>, kernel-build-reports@lists.linaro.org,
 David Airlie <airlied@linux.ie>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Tao Zhou <tao.zhou1@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Dennis Li <dennis.li@amd.com>, Mark Brown <broonie@kernel.org>,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOC84LzE5IDExOjUzIEFNLCBBbGV4IERldWNoZXIgd3JvdGU6Cj4gT24gVGh1LCBBdWcgOCwg
MjAxOSBhdCAyOjUzIFBNIEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNrLXVzLm5ldD4gd3JvdGU6
Cj4+Cj4+IE9uIE1vbiwgQXVnIDA1LCAyMDE5IGF0IDEyOjEyOjA1UE0gKzAxMDAsIE1hcmsgQnJv
d24gd3JvdGU6Cj4+PiBPbiBNb24sIEF1ZyAwNSwgMjAxOSBhdCAwMjo0MDozMkFNIC0wNzAwLCBr
ZXJuZWxjaS5vcmcgYm90IHdyb3RlOgo+Pj4KPj4+IFRvZGF5J3MgLW5leHQgZmFpbHMgdG8gYnVp
bGQgYW4gYXJtIGFsbG1vZGNvbmZpZyBkdWUgdG86Cj4+Pgo+Pj4+IGFsbG1vZGNvbmZpZyAoYXJt
LCBnY2MtOCkg4oCUIEZBSUwsIDIgZXJyb3JzLCAxNiB3YXJuaW5ncywgMCBzZWN0aW9uIG1pc21h
dGNoZXMKPj4+Pgo+Pj4+IEVycm9yczoKPj4+PiAgICAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kZXZpY2UuYzoyNzk6OTogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9m
IGZ1bmN0aW9uICdyZWFkcSc7IGRpZCB5b3UgbWVhbiAncmVhZGInPyBbLVdlcnJvcj1pbXBsaWNp
dC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KPj4+PiAgICAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kZXZpY2UuYzoyOTg6MzogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9m
IGZ1bmN0aW9uICd3cml0ZXEnOyBkaWQgeW91IG1lYW4gJ3dyaXRlYic/IFstV2Vycm9yPWltcGxp
Y2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQo+Pj4KPj4+IGR1ZSB0byA0ZmExYzZhNjc5YmIwIChk
cm0vYW1kZ3B1OiBhZGQgUlJFRzY0L1dSRUc2NChfUENJRSkgb3BlcmF0aW9ucykKPj4+IHdoaWNo
IGludHJvZHVjZXMgdXNlIG9mIHJlYWRxKCkgYW5kIHdyaXRlcSgpLgo+Pgo+PiBBRkFJQ1MgdGhp
cyBwcm9ibGVtIGFmZmVjdHMgYWxsIDMyLWJpdCBidWlsZHMsIGluY2x1ZGluZyBpMzg2Lgo+PiBJ
cyBpdCBpbiB0aGUgcHJvY2VzcyBvZiBiZWluZyBmaXhlZCwgb3Igc2hvdWxkIHdlIHN1Ym1pdCBh
Cj4+IHBhdGNoIGxpbWl0aW5nIERSTV9BTURHUFUgdG8gNjQtYml0IGJ1aWxkcyA/Cj4gCj4gWWVz
LCB0aGUgZml4IGlzIGJlaW5nIGRpc2N1c3NlZCBoZXJlOgo+IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9wYXRjaC8zMjIyMTMvCj4gCgpQbGVhc2Ugbm90ZSB0aGF0IHRoaXMgZG9l
cyBmYWlsIGZvciBpMzg2ICgzMi1iaXQgeDg2KSBidWlsZHMsIGNvbnRyYXJ5IHRvIHRoZSBpbmZv
cm1hdGlvbgppbiB0aGF0IGRpc2N1c3Npb24uIEFsc28sIGZyb20gbG9va2luZyBpbnRvIHRoZSBr
ZXJuZWwsIEkgb25seSBzZWUgcmVhZHEvd3JpdGVxIGRlZmluZWQKZm9yIGFyY2gveDg2IGluIDY0
LWJpdCBtb2RlOyBzZWUgYXJjaC94ODYvaW5jbHVkZS9hc20vaW8uaC4KCkd1ZW50ZXIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
