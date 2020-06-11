Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5421F6B43
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 17:43:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDqNCNNTt1oMntNesP78jWHRWFTYM2MWkQqeN9Yfki0=; b=YR2HNohjCfkWJa
	STV15MWBtyQrTX7zb3gmijg9lk/2swtpOqLJi2V4MKHzhxESeGZonp8x4k4sX1uenfR+azx44SPp2
	HCVsU7zKJMyyBQPxSzyfFQnmfXFOC15X//6H+trZMmwb5stfM82+DdYp6NPnJ3cLcr9IU656TcRpz
	cHjAwYbT5zWAFr6X5LpG+BvcxzVaedbpd/r6g0HVPZGw2tTGYKyFN3ghOtESSrAT9sNqMSUQIS0JJ
	QoJPHI+BP99PMhQw2KG91n/ysyAT6qjuYn6l11iIeZpj/dH8W4DJqraX44dOsIYlCZzdGEaqWgFcT
	frGhL8ZcZPO6+PhLiecw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPMB-0004mW-Pn; Thu, 11 Jun 2020 15:43:07 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPLt-0004dR-3E; Thu, 11 Jun 2020 15:42:50 +0000
Received: by mail-pg1-x542.google.com with SMTP id m1so2706303pgk.1;
 Thu, 11 Jun 2020 08:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fQ+wsrzemkIPe2q506QN7HeF76dszLO8Devz823zEFU=;
 b=Ec9Owej5gVTLx1LgNfE5z+WQetriTeu1ERovocrLzbYfjsFYQ4SqhApR7I5YxA28Fl
 sTvU3lpjWRcLGD9LEt8x3ZZzyQhrGx0NOrCw7Jp4gFweeYvwLnnkBEgexGXU0A+icWYq
 fRUNXqVgRJRBCKCykhCY3BGZ76l5RWpHM1XmW7rxJegXOvvjhlVIDos+zZXjUFs4c20M
 Y+ZC7RaONrSiu5opRrIKb2Vhp88Rh+h3ND0fEvkfXdZVS8+ui3sjFgeEv+yMhXfU2s8Y
 qoqOts0a3vFDGNEbR4Z682dZBNgWAt3iRDnRuIeP0OM+7H0nsODztVmo1ZAxRfGhTIMG
 ysig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fQ+wsrzemkIPe2q506QN7HeF76dszLO8Devz823zEFU=;
 b=uNhrIkkM9kjgkcP7SS7/pM5NStdnUfpmBGqAf2baubzXYQK5aVX+KtOs8kwpQK0sLI
 12vvn92q13EylqJuZ8espHfwxfAaAkiG2KXM0wliuv4RkZmXoM+Asfr7wx27+eps8gsQ
 JfMU8OjQlKu4xfYNTggYUP2PMcnfUimRERExFxnLFy/l1OOeimorUuGZeaTPQLTkC7BH
 uZPV6S3jSZfW9ya9S9d8gzF8ZXIfq3C5nS7UvOQxC/kRumY5D0ozHRoLnZS2MmnkU0kQ
 a8FdLklk+jVsGkGPtuazoTYZ69x99u1bfRr6KdzzJw1CboRmy6pu5NcXLohM9n7/SCiT
 kieQ==
X-Gm-Message-State: AOAM531LB/NX2XxjShyPwwW5uYaRXuJCM5VW3vfhUxY4pLjdJF5lh4Ld
 KmdlhTjRwfPEjlkgILOPI//atSlT
X-Google-Smtp-Source: ABdhPJwIRQAPnj3r6aqieKP9UnNBsABbKwe5X6HFBUwRl50yl3r3oJQiOfH59nPr0GARKI5+XAFa/w==
X-Received: by 2002:a63:e34d:: with SMTP id o13mr7215684pgj.45.1591890166194; 
 Thu, 11 Jun 2020 08:42:46 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id k19sm3749457pfg.153.2020.06.11.08.42.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jun 2020 08:42:45 -0700 (PDT)
Subject: Re: [PATCH v2] mtd: parsers: bcm63xx: simplify CFE detection
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
References: <20200608094053.3381512-1-noltari@gmail.com>
 <20200608160649.3717152-1-noltari@gmail.com> <20200611095540.250184d2@xps13>
 <779D37C7-58CB-49AF-8739-C34295B86FC4@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <715b0947-f4dd-0c04-5c52-5da06c04d665@gmail.com>
Date: Thu, 11 Jun 2020 08:42:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <779D37C7-58CB-49AF-8739-C34295B86FC4@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_084249_161401_735DA63D 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, vigneshr@ti.com, richard@nod.at,
 linus.walleij@linaro.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, tsbogend@alpha.franken.de,
 bcm-kernel-feedback-list@broadcom.com, Jonas Gorski <jonas.gorski@gmail.com>,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzExLzIwMjAgODoxNiBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IEhpIE1pcXVlbCwKPiAKPj4gRWwgMTEganVuIDIwMjAsIGEgbGFzIDk6NTUsIE1pcXVlbCBSYXlu
YWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+IGVzY3JpYmnDszoKPj4KPj4gSGkgw4FsdmFy
bywKPj4KPj4gw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4gd3Jv
dGUgb24gTW9uLCAgOCBKdW4gMjAyMAo+PiAxODowNjo0OSArMDIwMDoKPj4KPj4+IEluc3RlYWQg
b2YgdHJ5aW5nIHRvIHBhcnNlIENGRSB2ZXJzaW9uIHN0cmluZywgd2hpY2ggaXMgY3VzdG9taXpl
ZCBieSBzb21lCj4+PiB2ZW5kb3JzLCBsZXQncyBqdXN0IGNoZWNrIHRoYXQgIkNGRTEiIHdhcyBw
YXNzZWQgb24gYXJndW1lbnQgMy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7D
oW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogSm9uYXMg
R29yc2tpIDxqb25hcy5nb3Jza2lAZ21haWwuY29tPgo+Pj4gLS0tCj4+PiB2MjogdXNlIENGRV9F
UFRTRUFMIGRlZmluaXRpb24gYW5kIGF2b2lkIHVzaW5nIGFuIGFkZGl0aW9uYWwgZnVudGlvbi4K
Pj4+Cj4+PiBkcml2ZXJzL210ZC9wYXJzZXJzL2JjbTYzeHhwYXJ0LmMgfCAyOSArKysrLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4gMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MjUgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL3BhcnNlcnMv
YmNtNjN4eHBhcnQuYyBiL2RyaXZlcnMvbXRkL3BhcnNlcnMvYmNtNjN4eHBhcnQuYwo+Pj4gaW5k
ZXggNzhmOTBjNmMxOGZkLi40OTNhNzViMmYyNjYgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL210
ZC9wYXJzZXJzL2JjbTYzeHhwYXJ0LmMKPj4+ICsrKyBiL2RyaXZlcnMvbXRkL3BhcnNlcnMvYmNt
NjN4eHBhcnQuYwo+Pj4gQEAgLTIyLDYgKzIyLDkgQEAKPj4+ICNpbmNsdWRlIDxsaW51eC9tdGQv
cGFydGl0aW9ucy5oPgo+Pj4gI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4+Pgo+Pj4gKyNpbmNsdWRl
IDxhc20vYm9vdGluZm8uaD4KPj4+ICsjaW5jbHVkZSA8YXNtL2Z3L2NmZS9jZmVfYXBpLmg+Cj4+
Cj4+IEFyZSB5b3Ugc3VyZSBib3RoIGluY2x1ZGVzIGFyZSBuZWVkZWQ/Cj4gCj4gYXNtL2Jvb3Rp
bmZvLmggaXMgbmVlZGVkIGZvciBmd19hcmczIGFuZCBhc20vZncvY2ZlL2NmZV9hcGkuaCBpcyBu
ZWVkZWQgZm9yIENGRV9FUFRTRUFMLgo+IAo+Pgo+PiBJIGRvbid0IHRoaW5rIGl0IGlzIGEgZ29v
ZCBoYWJpdCB0byBpbmNsdWRlIGFzbS8gaGVhZGVycywgYXJlIHlvdSBzdXJlCj4+IHRoZXJlIGlz
IG5vdCBhbm90aGVyIGhlYWRlciBkb2luZyBpdCBqdXN0IGZpbmU/Cj4gCj4gQm90aCBhcmUgbmVl
ZGVkIHVubGVzcyB5b3Ugd2FudCB0byBhZGQgYW5vdGhlciBkZWZpbml0aW9uIG9mIENGRV9FUFRT
RUFMIHZhbHVlLgo+IFRoZXJlIGFyZSBjdXJyZW50bHkgdHdvIENGRSBtYWdpYyBkZWZpbml0aW9u
cywgdGhlIG9uZSBpbiBhc20vZncvY2ZlL2NmZV9hcGkuaCBhbmQgYW5vdGhlciBvbmUgaW4gYmNt
NDd4eHBhcnQuYzoKPiBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi9tYXN0
ZXIvYXJjaC9taXBzL2luY2x1ZGUvYXNtL2Z3L2NmZS9jZmVfYXBpLmgjTDI4Cj4gaHR0cHM6Ly9n
aXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFzdGVyL2RyaXZlcnMvbXRkL3BhcnNlcnMv
YmNtNDd4eHBhcnQuYyNMMzMKClRoZSBjYXZlYXQgd2l0aCB0aGF0IGFwcHJvYWNoIGlzIHRoYXQg
dGhpcyByZWR1Y2VzIHRoZSBjb21waWxhdGlvbgpzdXJmYWNlIHRvIE1JUFMgYW5kIEJNSVBTX0dF
TkVSSUMgYW5kIEJDTTYzWFggb25seSwgd2hpY2ggaXMgYSBiaXQKc21hbGwuIElmIHdlIGNvdWxk
IG1vdmUgdGhlIENGRSBkZWZpbml0aW9ucyB0byBhIHNoYXJlZCBoZWFkZXIsIGFuZApjb25zb2xp
ZGF0ZSB0aGUgdmFsdWUgdXNlZCBieSBiY200N3h4cGFydC5jIGFzIHdlbGwsIHRoYXQgd291bGQg
YWxsb3cgdXMKdG8gYnVpbGQgdGhlIGJjbTYzeHhwYXJ0LmMgZmlsZSB3aXRoIENPTVBJTEVfVEVT
VCBvbiBvdGhlcgphcmNoaXRlY3R1cmVzLiBUaGlzIGRvZXMgbm90IHJlYWxseSBoYXZlIGZ1bmN0
aW9uYWwgdmFsdWUsIGJ1dCBmb3IKbWFpbnRhaW5lcnMgbGlrZSBNaXF1ZWwsIGl0IGFsbG93cyB0
aGVtIHRvIHF1aWNrbHkgdGVzdCB0aGVpciBlbnRpcmUKZHJpdmVycy9tdGQvIGRpcmVjdG9yeS4K
LS0gCkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
