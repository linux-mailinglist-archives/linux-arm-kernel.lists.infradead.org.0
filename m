Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD7D17B158
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 23:22:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rREnrObTMIYfsk94cL4fRcd+U+qJf5eOkpEfTVC4n4=; b=UbcD5Lwhsxv7fO
	hhrnQESGfmMPII6X9fiHXiKbgqLt5BR8z13Q2ytnCuWoH1fu54gSVWB58H+KGtk3e0IkVTqAGkqr6
	GJ+Wn58olNpSmHD8hHoRQtpAG89oaH4MLbvd21eA8sTiDd7XxktwED/0IWGQphc9wLbchimGft7Ks
	Q1DKWW9dKK+8nJXixp8wMP2Si1lEQp6oc7ir6cMlQ4liUIBqu8aFVhfiCTzfPQ5Epv2ctAIiPFvH2
	fqnmQIO8u/PHBjwU3+vZ4tRIa58lV8L4GPb18+IkcJ8i6BRF4TNMUn/W6Lv2jBPmp/qkxQn1ZT2EG
	mzudKYv2jZnPI+lovx+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ysZ-0000a3-0Y; Thu, 05 Mar 2020 22:22:07 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ysQ-0000YQ-Rm; Thu, 05 Mar 2020 22:22:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id v2so30026wrp.12;
 Thu, 05 Mar 2020 14:21:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Z7TiigNdjz+orfMlREKYMBZDrTKamsieMAuLprR2Fyw=;
 b=DjlglfJNJgBMOUmIioZMi+av2xMFnc/T2klMGdKaUEe06g41gCfZe+GdBgLANYqHFX
 YEy+LhwwPcxS+IzUlpR7Yu0fPJoFIsO/YtQgKWkHJPOux8wQCWy4uMX1phLX2cozPtbA
 rZ6TESS/7JM35YzciXup4yFqEK6ME98LnEQfT41dSfiIBHJd3vvhqaYwm4Z1jOJ8+YJ1
 hO2mdK6OiIT0dZmXXy/Ll4eoQYtZhPg7DTU/hoVFRNrzQ6GTnIe9O838s6bWWtTKQMJm
 /mx8ecIwB4CdKPG+vxVFkqaknTLQhfHIg6DRiLB+ENIwkvWiqj7rj1GnLe6WvxhvV8AD
 3+aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Z7TiigNdjz+orfMlREKYMBZDrTKamsieMAuLprR2Fyw=;
 b=XULslWNOelm7wAknwP6Ut3hniFZcnbxMEPP075kM0jQmnGYJOsC9A1xBQjYB6ZE5A5
 GwQKiBvGEFytb6+12okDX7xHlOAhIOfdvwQmRQ0xK489+nKP6czO8si99277SOSBZuQM
 UUxHm4x0iyb5c3BlmigINFKnZyllXivpKr5Fwe/wLo+6AI1vYG54Sx+K5FWlf/Na3T+d
 wGzEPye2F41+x8zOeVk4RSI0t4ryTS+PKddNPYo+PZb5tte6AeDrRn3JTJ5Vp2ju3pW9
 MM5e7HN3iyvJDendJGzTBEhbm4zeWg4QHuneenlb+q39Z182lezcP5m4iWGARY4TrtWi
 yKzw==
X-Gm-Message-State: ANhLgQ0yFTqETbIo9tLgXiJsBm855UKGfjQNcaaqjvvzifIN1NB/H8yq
 o1hki34+4pGdzKget657RsKaeGbT
X-Google-Smtp-Source: ADFU+vsPqjTKstCk+aKgW/j6ZMymiLJfuaIaKNq2Eq1mnpCpBxTW05y745VZ2m97812uXc1VuwMZOg==
X-Received: by 2002:a5d:518b:: with SMTP id k11mr132122wrv.114.1583446914878; 
 Thu, 05 Mar 2020 14:21:54 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id l5sm11017229wml.3.2020.03.05.14.21.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Mar 2020 14:21:54 -0800 (PST)
Subject: Re: [PATCH 2/3] ARM: dts: rockchip: add missing @0 to memory nodenames
To: Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org
References: <20200304074051.8742-1-jbx6244@gmail.com>
 <20200304074051.8742-2-jbx6244@gmail.com> <1784340.9KJLpVao5L@phil>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <2a5ef6fc-2487-91ef-24ce-97dd47b0a137@gmail.com>
Date: Thu, 5 Mar 2020 23:21:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1784340.9KJLpVao5L@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_142158_900693_6433B60D 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpHb2FsIHdhcyB0byByZWR1Y2UgdGhlIGVycm9yIG91dHB1dCBvZiBleGlzdGlu
ZyBjb2RlIGEgbGl0dGxlIGJpdCwKc28gdGhhdCB3ZSBjYW4gdXNlIGl0IGZvciB0aGUgcmV2aWV3
IG9mIG5ldyBwYXRjaGVzLgpTb21lIHF1ZXN0aW9uczoKQXMgSSBkb24ndCBoYXZlIHRoZSBoYXJk
d2FyZSwgd2hlcmUgZWxzZSBpcyBjb3JlYm9vdCB1c2VkPwpJcyB0aGlzIGEgcmszMjg4LXZleXJv
bi5kdHNpIHByb2JsZW0gb25seT8KaWUuIElzIGl0IGEgb3B0aW9uIHRvIHByb2R1Y2UgYSBwYXRj
aCBzZXJpZSB2MiB3aXRob3V0IHZleXJvbj8KQ2FuIHNvbWVvbmUgaGVscCB0ZXN0aW5nPwoKSm9o
YW4KCk9uIDMvNS8yMCAxMDozMSBQTSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gSGkgSm9oYW4s
Cj4KPiBBbSBNaXR0d29jaCwgNC4gTcOkcnogMjAyMCwgMDg6NDA6NTAgQ0VUIHNjaHJpZWIgSm9o
YW4gSm9ua2VyOgo+PiBBIHRlc3Qgd2l0aCB0aGUgY29tbWFuZCBiZWxvdyBnaXZlcyBmb3IgZXhh
bXBsZSB0aGlzIGVycm9yOgo+Pgo+PiBhcmNoL2FybS9ib290L2R0cy9yazMyODgtdGlua2VyLmR0
LnlhbWw6IC86IG1lbW9yeToKPj4gRmFsc2Ugc2NoZW1hIGRvZXMgbm90IGFsbG93Cj4+IHsnZGV2
aWNlX3R5cGUnOiBbJ21lbW9yeSddLCAncmVnJzogW1swLCAwLCAwLCAyMTQ3NDgzNjQ4XV19Cj4+
Cj4+IFRoZSBtZW1vcnkgbm9kZXMgYWxsIGhhdmUgYSByZWcgcHJvcGVydHkgdGhhdCByZXF1aXJl
cyAnQCcgaW4KPj4gdGhlIG5vZGVuYW1lLiBGaXggdGhpcyBlcnJvciBieSBhZGRpbmcgdGhlIG1p
c3NpbmcgJ0AwJyB0bwo+PiB0aGUgaW52b2x2ZWQgbWVtb3J5IG5vZGVuYW1lcy4KPj4KPj4gbWFr
ZSBBUkNIPWFybSBkdGJzX2NoZWNrCj4+IERUX1NDSEVNQV9GSUxFUz1+Ly5sb2NhbC9saWIvcHl0
aG9uMy41L3NpdGUtcGFja2FnZXMvZHRzY2hlbWEvCj4+IHNjaGVtYXMvcm9vdC1ub2RlLnlhbWwK
Pgo+IGNoYW5nZXMgdG8gbWVtb3J5IG5vZGVzIHlvdSBzYWRseSBjYW5ub3QgZG8gaW4gc3VjaCBh
biBhdXRvbWF0ZWQgZmFzaGlvbi4KPiBJZiB5b3UgcmVhZCB0aGUgY29tbWVudCBpbiByazMyODgt
dmV5cm9uLmR0c2kgeW91J2xsIHNlZSB0aGF0IGEgcHJldmlvdXMKPiBzaW1pbGFyIGl0ZXJhdGlv
biBicm9rZSBhbGwgb2YgdGhvc2UgbWFjaGluZXMgYXMgdGhlaXIgY29yZWJvb3QgZG9lc24ndAo+
IGNvcHkgd2l0aCBtZW1vcnlAMCBhbmQgd291bGQgaW5zZXJ0IGFub3RoZXIgbWVtb3J5IG5vZGUg
d2l0aG91dCBAMAo+Cj4gSW4gdGhlIHBhc3QgaXRlcmF0aW9uIHRoZSBjb25zZW5zdXMgdGhlbiB3
YXMgdGhhdCBtZW1vcnkgd2l0aG91dCBAMAo+IGlzIGFsc28gb2sgKGFzIGl0IGlzbid0IGNoYW5n
ZWFibGUgYW55d2F5KS4KPgoKPiBBcyBJIGRvbid0IHJlYWxseSB3YW50IHRvIHJlcGVhdCB0aGF0
LCBJJ2QgbGlrZSBhY3R1YWwgaGFyZHdhcmUgdGVzdHMKPiBiZWZvcmUgdG91Y2hpbmcgbWVtb3J5
IG5vZGVzLgoKQW55IHN1Z2dlc3Rpb24vZmVlZGJhY2sgcmFwcG9ydCB3ZWxjb21lLgoKPgo+IEhl
aWtvCj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
