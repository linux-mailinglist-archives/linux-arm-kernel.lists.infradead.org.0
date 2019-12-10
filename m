Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 794DF11923A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:38:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOpDJyGKb6VLe5ZmPCu1kU4s4UbveBbMoho5LL1o01U=; b=erAkzlKP8T1EFr
	3IcrYJrMfHbNtF+qmSmCDOtnbMnWl62nBoH/IrynwM8LDLHpsV26hEQ7roLonyW+PaFQuGBO5XpCV
	u9TiPkxDDLXWeMWDe5RtA8rmM85nypG/4ukZZGeO9N1vPLExGp5BYMLIGM2gFzXVrY5pSJW2Ikj+M
	1BhbCVWFPWcEkc5cTV8IGD/YAzDXfz3NaB6y0Q4S5dw0fkcFNjn0zNkzKIkTK6OMIA5TMcPbdTJNh
	NHZTvL6W5HpyaxajEbelVpjjCraJt8Is7acsYBhKWEz+prhBacotGSp550rcdrXkeMIop1wMohYRw
	RpvL8jAoCnsTOcbYQlHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemGg-0005NL-5e; Tue, 10 Dec 2019 20:38:02 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemGS-0005MH-6n; Tue, 10 Dec 2019 20:37:50 +0000
Received: by mail-ed1-x529.google.com with SMTP id cm12so17154336edb.11;
 Tue, 10 Dec 2019 12:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GYJUMlSvb7E8+6x7qbIGTPiskeq8vxi3SifEWbzI3uU=;
 b=DNi2gLtZIAEwX+rueBntlHhuFpnQ776Y74MTKHUmrAhoCqYqy7jdgwjKsIVtH702K4
 jxRCrMrQtdnVwwLNEiT75P3vWHhi0uAZwWe1GeT7H18Z+/qgYZ1cPiAzGy44PSmRbB1I
 39F7GvrY9iN+zyrxMAr0opUEfCJQtuJTDYPXDngy9I0hDhdNKYSlWvkcjLX6pJu00lZ8
 67Qq8MUz+E6CNTBgTAMUf0gNJb26VIB3BiOhgo/+R+jfR4z8Y9ssTlAqBJ2QNkWN4SP5
 6pc4RHxyfIIvm1PK1b8qo3jwM0Pm8tuuJoZIpQrdQymgT1PHJSwIk4nEcmNbTpWMmXpj
 337w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=GYJUMlSvb7E8+6x7qbIGTPiskeq8vxi3SifEWbzI3uU=;
 b=qAeAROulCCH350WH3xRYdqgap70vkts30gVPBGr4RLIUdlBbHKt7OQKtPJaPPU194X
 7Npk01iWVawdkJQxJeQwKnYwAS7bR97PZK3lAgM6KrREB4aauuYAnunuRgrDL7F/YUBL
 17fBmzN9iA+A6tWzv4xjRxcy/Ffsy8kfKNoFRXBIVZ4af4IS2OtcO6BnH8qmw9UUYrXJ
 0MXXQyYNvvUoqmjTuwE8uLQPadeuDSrbI0Fa3LYptci5ZPw8D1/KvDeMymTddhX4XxIi
 wtYlHt5KSY+tI+MHAU3Cohg0ru0PMfMgMcIBlOgobY0EjC/LR25p5er0qJpVXfknRj70
 TUjQ==
X-Gm-Message-State: APjAAAV5eC88s3uEBosqtdIx6d02AqQumhhW65dedXWaPmAKLeSiuCC6
 D/Fy/Tdsm7j4Wvn7oXcFZj/oXq5H
X-Google-Smtp-Source: APXvYqxFr0GRs6GswIKSzTCNCwqkwSy4XHMngclv3uEp+QmFDyWogNLhytdq21pXvgHBXlSYZF0lrg==
X-Received: by 2002:a17:906:4a5a:: with SMTP id
 a26mr5857839ejv.49.1576010266652; 
 Tue, 10 Dec 2019 12:37:46 -0800 (PST)
Received: from [10.67.50.53] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id dj21sm110462edb.55.2019.12.10.12.37.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Dec 2019 12:37:46 -0800 (PST)
Subject: Re: [PATCH] ARM: dts: bcm283x: Fix critical trip point
To: Stefan Wahren <wahrenst@gmx.net>, Lukas Wunner <lukas@wunner.de>
References: <1575117073-5990-1-git-send-email-wahrenst@gmx.net>
 <20191130135403.jmuuuy3lf5l3enti@wunner.de>
 <899ae14b-28d0-0982-cbdf-baf4f1e978fe@gmail.com>
 <aa08117e-b6d5-fcdb-8d01-28810f56e210@gmx.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <743177a3-fb3a-b4b9-d648-478147868521@gmail.com>
Date: Tue, 10 Dec 2019 12:37:41 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <aa08117e-b6d5-fcdb-8d01-28810f56e210@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_123748_867990_C793F613 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:529 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvOS8xOSAxMTozMSBBTSwgU3RlZmFuIFdhaHJlbiB3cm90ZToKPiBBbSAwOS4xMi4xOSB1
bSAxOToxNyBzY2hyaWViIEZsb3JpYW4gRmFpbmVsbGk6Cj4+IE9uIDExLzMwLzE5IDU6NTQgQU0s
IEx1a2FzIFd1bm5lciB3cm90ZToKPj4+IE9uIFNhdCwgTm92IDMwLCAyMDE5IGF0IDAxOjMxOjEz
UE0gKzAxMDAsIFN0ZWZhbiBXYWhyZW4gd3JvdGU6Cj4+Pj4gRHVyaW5nIGRlZmluaXRpb24gb2Yg
dGhlIENQVSB0aGVybWFsIHpvbmUgb2YgQkNNMjgzeCBTb0MgZmFtaWx5IHRoZXJlIHdhcwo+Pj4+
IGEgbWlzdW5kZXJzdGFuZGluZyBvZiB0aGUgbWVhbmluZyAiY3JpdGljaWFsIHRyaXAgcG9pbnQi
IGFuZCB0aGUgdGhlcm1hbAo+Pj4+IHRocm90dGxpbmcgcmFuZ2Ugb2YgdGhlIFZpZGVvQ29yZSBm
aXJtd2FyZS4gVGhlIGxhdHRlciBvbmUgdGFrZXMgZWZmZWN0Cj4+Pj4gd2hlbiB0aGUgY29yZSB0
ZW1wZXJhdHVyZSBpcyBiZXR3ZWVuIDgwIGFuZCA4NSBkZWdyZWUgY2Vsc2l1cy4gU28gdGhlCj4+
Pj4gY3VycmVudCBjcml0aWNhbCB0cmlwIHBvaW50IGRvZXNuJ3QgbWFrZSBzZW5zZSwgYmVjYXVz
ZSB0aGUKPj4+PiB0aGVybWFsIHNodXRkb3duIGFwcGVhcnMgYmVmb3JlIHRoZSBmaXJtd2FyZSBo
YXMgYSBjaGFuY2UgdG8gdGhyb3R0bGUgdGhlCj4+Pj4gQVJNIGNvcmUocykuCj4+PiBGV0lXLCB0
aGUgdGhlcm1hbCB0aHJvdHRsaW5nIHJhbmdlIGdvZXMgd2F5IGFib3ZlIDg1wrBDLgo+Pj4KPj4+
IEF0IEt1bmJ1cyB3ZSd2ZSBwZXJmb3JtZWQgbnVtZXJvdXMgdGVzdHMgaW4gYSBjbGltYXRlIGNo
YW1iZXIKPj4+IGFuZCBteSByZWNvbGxlY3Rpb24gaXMgdGhhdCBhIENNMyBzdGFydHMgdGhyb3R0
bGluZyBhYm92ZSA4MMKwQwo+Pj4gd2l0aCB0aGUgZnJlcXVlbmN5IGhvdmVyaW5nIGJldHdlZW4g
NjAwIGFuZCAxMjAwIE1Iei4KPj4+Cj4+PiBPbmNlIDg1wrBDIGlzIHJlYWNoZWQsIHRoZSBmcmVx
dWVuY3kgaXMgZml4ZWQgYXQgNjAwIE1Iei4KPj4+Cj4+PiBCdXQgdGhlcmUgYSBhZGRpdGlvbmFs
IHRyaXBwaW5nIHBvaW50cyBhYm92ZSB0aGF0IHdoZW4gdGhlIGZyZXF1ZW5jeQo+Pj4gZ2V0cyBm
dXJ0aGVyIHJlZHVjZWQgdG8gNDAwIE1IeiBhbmQgbGF0ZXIgMzAwIE1Iei4KPj4gRG9lcyB0aGF0
IG1lYW4gdGhhdCB5b3UgYXJlIG9rYXkgd2l0aCA5MMKwQyBoZXJlLCBvciB3b3VsZCB5b3UgcmF0
aGVyIHNlZQo+PiB0aGlzIGJlIGNoYW5nZSB0byA4NcKwQz8KPiAKPiBGcm9tIG15IHVuZGVyc3Rh
bmRpbmcgdGhlIGNoYW5nZSBpcyBva2F5LCBidXQgdGhlIHdvcmRpbmcgaW4gdGhlIHBhdGNoCj4g
ZGVzY3JpcHRpb24gaXMgbWlzbGVhZGluZy4KPiAKPiBTdWdnZXN0aW9uOgo+IAo+IC4uLiBUaGUg
bGF0dGVyIG9uZSB0YWtlcyBlZmZlY3Qgd2hlbiB0aGUgY29yZSB0ZW1wZXJhdHVyZSBpcyBhdCBs
ZWFzdCA4NQo+IGRlZ3JlZSBjZWxzaXVzIG9yIGhpZ2hlci4KCkFwcGxpZWQgdG8gZGV2aWNldHJl
ZS9maXhlcyB3aXRoIHRoaXMgZGVzY3JpcHRpb24gZml4ZWQgdXAsIHRoYW5rcyBTdGVmYW4uCi0t
IApGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
