Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B79184DBC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:37:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBEd6Zmsqy1s1fO6qAXrxNSxoXn/sld46FBywAb6EVk=; b=EVsBGg6A5WpdRz
	4831PAqfSHz+ZoQB5fgNRjnUj4Irdec7EzPBme2x58ZIpfUTbuxLvjJDjiQ63XcwaTfDZT2rXiMJ4
	gKCfh8qpeiT0SVdKoul6xWw6F/fkFNQdDWv+spoVPsi+vhqSZzWNG5uPLTeCEEatvc3QDSsFWTh4H
	e6n1lBJUJCA4107q6XaXOetnYSxOh5OXjrNfTwaWftSjGuOA9Muw70GDr1hI8Fc/2KBMJtSVdKUfz
	J8a/XdvSZNvWRTxchK6ooAG1iOjXN5P8yYfziImWStt9K7mS5uB7ur1ssMBeBKXFNuB/PjZhKahAS
	Df5i1Hki1H2U20sby41w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCoFL-0008SV-Tx; Fri, 13 Mar 2020 17:37:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCoFE-0008S4-FU; Fri, 13 Mar 2020 17:37:13 +0000
Received: by mail-wr1-x444.google.com with SMTP id 6so13158892wre.4;
 Fri, 13 Mar 2020 10:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=i1EqL4yPiJPp0lfszNYpw2j5gmjj3xYdE+hdJBiRqMg=;
 b=WTW7PxvAXfZejxpAWViKjBB360ST4Lckt5ygv7v8Dc76v6AjfTcJdodk82KSqgzJuJ
 IVqTrng2dJLkK64E/c/POE/fJOhXwGw/lE3Mwv/2yXBGXir8j1X/1ABpUAuGcnJ780n2
 IyX2ld15KFS6hDhT4EA3HbshvoBB/91oNDfHY0BzlD2sLz1m2TNemq+mAuZe3Vem/0wA
 qYXRfe3RTKx7ZE9bsNwyFL04pW76xoBremAtA6ri5kCaybQbRhwfKnBolTjoBQbrMhQP
 RMUC8Ufjm8ZjyrP2WbKwN9qrFda0XaVjncntXqjCEQxiG6Pr+/DDq3//eAb4/9oSXRYw
 2dqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=i1EqL4yPiJPp0lfszNYpw2j5gmjj3xYdE+hdJBiRqMg=;
 b=J+wFwLNDW1Cp9M00kQ+wlWDG3PMxbTkPAQNhCcCdSjxi3rftT+JHPTLAiYOLgru6QY
 6W6YyWLQaOwWMka4xg/BMMqM0KjKyWZPrAGIsARwbSdorv94u0gZoEOUDPqEbbmm8hZB
 idHb1McQ7bXVjzvaFyKO7xoC3TtKNFwdE0VsDhs0IJiKkt7lcA8UAo44H8fVST7r5nfT
 1o1UO37UmnypamUPKRLLmFybWyHv9fsba92WZHCBEIb8s9qiyBTOYc3sa5xyfC49tKZ4
 q6nQVKAMHpsy87mbHSFOgh+a0HDZa88/OdQKWP43c5hP8Zd6XLaZfVl01svNepgkQRXS
 PJ5Q==
X-Gm-Message-State: ANhLgQ1bAz/Hbo+9UIPG3/BQcnki2wD0JoF+xPlLEDHJrp37l1Ow+NS5
 eAwW5CJNXLud/3vFwl9JWV0MVUWc
X-Google-Smtp-Source: ADFU+vsvMoQos+G1Js0ft5uNgMfQrgtI/JPzvS2NpP/XpdQKJx0n1obiIiqCU1AAjgwTEWbM984vGg==
X-Received: by 2002:adf:f584:: with SMTP id f4mr19670059wro.77.1584121030491; 
 Fri, 13 Mar 2020 10:37:10 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 v2sm14317608wme.2.2020.03.13.10.37.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 10:37:09 -0700 (PDT)
Subject: Re: [PATCH] pwm: bcm2835: Dynamically allocate base
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Thierry Reding <thierry.reding@gmail.com>
References: <20200203213536.32226-1-f.fainelli@gmail.com>
 <08e2b640f0a7713d905295fc4f75df49617be6c1.camel@suse.de>
 <3b22decc-9ebd-3522-4fd7-e5721c8b25b2@gmail.com>
 <20200220210718.4vrn6u2c2remeuhm@pengutronix.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <773a00f4-178d-4d3e-a2d1-f82564457a0f@gmail.com>
Date: Fri, 13 Mar 2020 10:37:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200220210718.4vrn6u2c2remeuhm@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_103712_541039_551CA216 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Cc: "open list:PWM SUBSYSTEM" <linux-pwm@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Stephen Warren <swarren@wwwdotorg.org>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyLzIwLzIwMjAgMTowNyBQTSwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gW0Ryb3Bw
aW5nIEJhcnQgVGFuZ2hlIGZyb20gcmVjaXBlbnRzIGFzIHRoZSBhZGRyZXNzIGJvdW5jZXNdCj4g
Cj4gSGVsbG8gVGhpZXJyeSwKPiAKPiBPbiBUaHUsIEZlYiAyMCwgMjAyMCBhdCAxMToxNDowMEFN
IC0wODAwLCBGbG9yaWFuIEZhaW5lbGxpIHdyb3RlOgo+PiBPbiAyLzQvMjAgMToxNyBBTSwgTmlj
b2xhcyBTYWVueiBKdWxpZW5uZSB3cm90ZToKPj4+IE9uIE1vbiwgMjAyMC0wMi0wMyBhdCAxMzoz
NSAtMDgwMCwgRmxvcmlhbiBGYWluZWxsaSB3cm90ZToKPj4+PiBUaGUgbmV3ZXIgMjcxMSBhbmQg
NzIxMSBjaGlwcyBoYXZlIHR3byBQV00gY29udHJvbGxlcnMgYW5kIGZhaWx1cmUgdG8KPj4+PiBk
eW5hbWljYWxseSBhbGxvY2F0ZSB0aGUgUFdNIGJhc2Ugd291bGQgcHJldmVudCB0aGUgc2Vjb25k
IFBXTQo+Pj4+IGNvbnRyb2xsZXIgaW5zdGFuY2UgYmVpbmcgcHJvYmVkIGZvciBzdWNjZWVkaW5n
IHdpdGggYW4gLUVFWElTVCBlcnJvcgo+Pj4+IGZyb20gYWxsb2NfcHdtcygpLgo+Pj4+Cj4+Pj4g
Rml4ZXM6IGU1YTA2ZGM1YWMxZiAoInB3bTogQWRkIEJDTTI4MzUgUFdNIGRyaXZlciIpCj4+Pj4g
U2lnbmVkLW9mZi1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Cj4+
Pj4gLS0tCj4+Pgo+Pj4gUmV2aWV3ZWQtYnk6IE5pY29sYXMgU2FlbnogSnVsaWVubmUgPG5zYWVu
emp1bGllbm5lQHN1c2UuZGU+Cj4+Cj4+IFRoaWVycnksIGlzIHRoZXJlIGFueSBjaGFuY2Ugd2Ug
Y2FuIGdldCB0aGlzIGFwcGxpZWQgZm9yIGFuIHVwY29taW5nCj4+IDUuNi1yY1g/IFRoYW5rIHlv
dSEKPiAKPiB0byBhc3Npc3QgeW91IHdpdGggcGF0Y2ggc29ydGluZzoKPiAKPiAjIHJldmlzaW9u
cyA8IHY2IG9mICJDb252ZXJ0IHBlcmlvZCBhbmQgZHV0eSBjeWNsZSB0byB1NjQiCj4gcHdjbGll
bnQgLXMgU3VwZXJzZWRlZCAxMjM3MDIwIDEyMzcwMTkgMTIyOTA0OSAxMjI5MDUwIDEyMjIzOTYK
PiAKPiAjIG1vc3Qgb2YgIkFkZCBzdXBwb3J0IGZvciBBem90ZXEgSVFTNjIwQS82MjEvNjIyLzYy
NC82MjUiIHY1IGlzbid0IGZvciBwd20KPiBwd2NsaWVudCAtcyAiTm90IEFwcGxpY2FibGUiIDEy
Mzg5MDggMTIzODkwNyAxMjM4OTA2IDEyMzg5MDQgMTIzODkwMyAxMjM4OTAxCj4gCj4gIyBtb3N0
IG9mICJBZGQgc3VwcG9ydCBmb3IgQXpvdGVxIElRUzYyMEEvNjIxLzYyMi82MjQvNjI1IiB2NCBp
c24ndCBmb3IgcHdtCj4gcHdjbGllbnQgLXMgIk5vdCBBcHBsaWNhYmxlIiAxMjI0NTk4IDEyMjQ1
OTcgMTIyNDU5NiAxMjI0NTk0IDEyMjQ1OTMgMTIyNDU5Mgo+IHB3Y2xpZW50IC1zICJTdXBlcnNl
ZWRlZCIgMTIyNDU5NQo+IAo+ICMgImJhY2tsaWdodDogcHdtX2JsOiBVc2UgZ3Bpb2RfZ2V0X3Zh
bHVlX2NhbnNsZWVwKCkgdG8gZ2V0IGluaXRpYWwKPiAjIHN0YXRlIiBhbHJlYWR5IGFwcGxpZWQg
YnkgTGVlIEpvbmVzCj4gcHdjbGllbnQgLXMgIk5vdCBBcHBsaWNhYmxlIiAxMDMxNTg2Cj4gCj4g
IyBQcm9ibGVtIHJlc29sdmVkIGJ5IE1pY2hhbCBWb2vDocSNCj4gcHdjbGllbnQgLXMgIlJlamVj
dGVkIiAgMTA1OTI2Nwo+IAo+IChOb3Qgc3VyZSAiUmVqZWN0ZWQiIGlzIHRoZSByaWdodCBzdGF0
ZS4pCgpUaGllcnJ5LCBjYW4gd2UgZ2V0IHRoaXMgcGF0Y2ggaW5jbHVkZWQgaW4gdjUuNz8gSSBo
YXZlIG5vdCBzZWVuIGl0IHNob3cKdXAgaW4gbGludXgtbmV4dCB5ZXQuCgpUaGFuayB5b3UhCi0t
IApGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
