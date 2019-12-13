Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CA511EDFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 23:47:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTbu6kMYqNjDBOPpwrNK9x5AFaxXd4bcLTpaNop5Qoc=; b=O4sPVlOf8EhjPL
	oAJq/Pu+hYOWZy4ibXXqGsD3Ypk2fxtQKKvTWzweBaIDM7iO/nbvwbBCTY7jhL09iUXMKGsc7FwAF
	2kVVCXfOHxd6qlNRvz3kGfJ68T6Lk3S+NjC0nxpp1arGjdUwL0PxSwTNXwU6rekW3aHRMdaHqVhj6
	KqatrKk9Rk1nd1YD6XBnOnUU/EekYOmts7RkrJow+wYSL1MnVxB1GY7z4vu95sFPq3QtEgghvx7aU
	h1Gmr4QOIIfKe5Ob8Cr+mTu5C9TLYLZwFTZ7Mz9VULpeOj2sXwC8d7iRL5n0xsd2+9nIMscEQaw7l
	nZy5ME7moRqHjN93XdTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iftiq-0005t6-1x; Fri, 13 Dec 2019 22:47:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iftii-0005sg-Gg
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 22:47:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id p17so407256wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 14:47:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=57LGv4ydX1Xlfr7VmjiZDzrKRZJGhZuB3TVDKwYIs4M=;
 b=GH98LjQ+3hqQ7Mby5aZq9PV/PoQ99Iq5WakYau2zdpVsSp4zJz2ZPY5HsaKoBB60P9
 kEtpbzGccAocbdoBr+r3WxJqr36bfMJCtDKybpwVDJGeT0b5Dqw0H6rorP/1FVx+ZvvP
 CU8Ff8rlGTz1mddty2997GN3ScrWPCkEqnwC8GDd9xR1ccYcHKJM5h0ajdWR4zEN1hEK
 X1MKyfmb1YLdCfnu23wBHm13KsWBHOOiz0o8BNfmv7K3sGsR2z5xzpPpQhZoKiY6BPnp
 +AoMfdZ26Od2hI1GFIXHzxSa6PxVe7T/LX8CZf8T1IL4O4DBH+icTRcAsStU4UHJF7FZ
 GCOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=57LGv4ydX1Xlfr7VmjiZDzrKRZJGhZuB3TVDKwYIs4M=;
 b=rQf4mbrOrBLGW/luRx5ZRQLYDxunB7+EnC/4Ufb4QcqmxRM1m4/Bkaz/DKVm5bVEKv
 1XeJFiJ+v9kmlbiLS/hU2RQpkIFPGkAWhYkPWu1kLw5t1UAt1Yv+qb4j9I7VtAzyCo5S
 WGDHgbP/SW0KQv3lSAZ5rMVFdEEFdEqnLYSv0ctGEqbH0kE7i2owMXpp8WWILO0CsYiu
 FkTDHRmUnACzK81Ydia6HpQiiW+SLtAo4NmC/8ZE5UbS3HmJwPQfoPEUkPbe2nfPI9fU
 tyFUKzJIW9tJkQgT600VntlnSxjV/G5jevx+1dZmO6VwTwPGcqn9PSyKbf6uYPp8Siq8
 1m8g==
X-Gm-Message-State: APjAAAVm2uOzvuEbOwTEi5ST8Rjfu/NiNUUmp1iHVHp2VYGhlf9+pesa
 ZZ1sNRgoZw168RIhVA/LSk4=
X-Google-Smtp-Source: APXvYqybkXQMzrR+C3onHTt17mF3rWHTK/SKJOiRQXRJnsapFYsgpW54dTFgId7dfI6VtTtStIvWXQ==
X-Received: by 2002:a05:600c:d7:: with SMTP id
 u23mr15050823wmm.145.1576277254963; 
 Fri, 13 Dec 2019 14:47:34 -0800 (PST)
Received: from [10.230.28.123] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l17sm11739281wro.77.2019.12.13.14.47.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Dec 2019 14:47:34 -0800 (PST)
Subject: Re: [PATCH] ARM: dts: NSP: Use hardware I2C for BCM958625HR
To: Ray Jui <ray.jui@broadcom.com>, linux-arm-kernel@lists.infradead.org
References: <20191213195102.23789-1-f.fainelli@gmail.com>
 <667acf12-cff3-8955-8849-b99db50375bb@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <c11853ec-0a0b-4621-c0cb-e366d36c9592@gmail.com>
Date: Fri, 13 Dec 2019 14:47:31 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <667acf12-cff3-8955-8849-b99db50375bb@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_144736_588321_50ADB59D 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi8xMy8yMDE5IDI6MTEgUE0sIFJheSBKdWkgd3JvdGU6Cj4gCj4gCj4gT24gMjAxOS0x
Mi0xMyAxMTo1MSBhLm0uLCBGbG9yaWFuIEZhaW5lbGxpIHdyb3RlOgo+PiBOb3cgdGhhdCB0aGUg
aTJjLWJjbS1pcHJvYyBkcml2ZXIgaGFzIGJlZW4gZml4ZWQgdG8gcGVybWl0IHJlYWRpbmcgbW9y
ZQo+PiB0aGFuIDYzIGJ5dGVzIGluIGEgc2luZ2xlIHRyYW5zYWN0aW9uIHdpdGggY29tbWl0IGZk
MDFlZWNkZjk1OSAoImkyYzoKPj4gaXByb2M6IEZpeCBpMmMgbWFzdGVyIHJlYWQgbW9yZSB0aGFu
IDYzIGJ5dGVzIikgd2Ugbm8gbG9uZ2VyIG5lZWQgdG8KPj4gYml0YmFuZyBpMmMgb3ZlciBHUElP
cyB3aGljaCB3YXMgbmVjZXNzYXJ5IGJlZm9yZSB0byBhbGxvdyB0aGUKPj4gUEhZTElOSy9TRlAg
c3Vic3lzdGVtcyB0byByZWFkIFNGUCBtb2R1bGVzLgo+Pgo+IAo+IFRoaXMgaXMgZ29vZCB0byBo
ZWFyIQo+IAo+PiBTaWduZWQtb2ZmLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdt
YWlsLmNvbT4KPj4gLS0tCj4+IMKgIGFyY2gvYXJtL2Jvb3QvZHRzL2JjbTk1ODYyNWhyLmR0cyB8
IDE1ICsrKysrLS0tLS0tLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCAxMCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2Jj
bTk1ODYyNWhyLmR0cwo+PiBiL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTk1ODYyNWhyLmR0cwo+PiBp
bmRleCBhMmM5ZGUzNWRkZmIuLjUzNmZiMjRmMzhiYiAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm0v
Ym9vdC9kdHMvYmNtOTU4NjI1aHIuZHRzCj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTk1
ODYyNWhyLmR0cwo+PiBAQCAtNTUsMTggKzU1LDkgQEAKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHBy
aW9yaXR5ID0gPDIwMD47Cj4+IMKgwqDCoMKgwqAgfTsKPj4gwqAgLcKgwqDCoCAvKiBIYXJkd2Fy
ZSBJMkMgYmxvY2sgY2Fubm90IGRvIG1vcmUgdGhhbiA2MyBieXRlcyBwZXIgdHJhbnNmZXIsCj4+
IC3CoMKgwqDCoCAqIHdoaWNoIHdvdWxkIHByZXZlbnQgcmVhZGluZyBmcm9tIGEgU0ZQJ3MgRUVQ
Uk9NICgyNTYgYnl0ZSkuCj4+IC3CoMKgwqDCoCAqLwo+PiAtwqDCoMKgIGkyYzE6IGkyYyB7Cj4+
IC3CoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImkyYy1ncGlvIjsKPj4gLcKgwqDCoMKgwqDC
oMKgIHNkYS1ncGlvcyA9IDwmZ3Bpb2EgNSAoR1BJT19BQ1RJVkVfSElHSCB8IEdQSU9fT1BFTl9E
UkFJTik+Owo+PiAtwqDCoMKgwqDCoMKgwqAgc2NsLWdwaW9zID0gPCZncGlvYSA0IChHUElPX0FD
VElWRV9ISUdIIHwgR1BJT19PUEVOX0RSQUlOKT47Cj4+IC3CoMKgwqAgfTsKPj4gLQo+IAo+IFNv
IEkgc3VwcG9zZSBHUElPIDQgYW5kIDUgZnJvbSB0aGUgJ2dwaW9hJyBjb250cm9sbGVyIGFyZSB0
aWVkIHRvIHRoZQo+IHNhbWUgU0NML1NEQSBwaW5zIGZyb20gaTJjMCBhbmQgdGhleSBhcmUgaW50
ZXJuYWxseSBtdXhlZCwgcmlnaHQ/CgpDb3JyZWN0LgoKPiAKPiBJcyB0aGUgbXV4IHRvIEdQSU8g
ZG9uZSBhdXRvbWF0aWNhbGx5IHdoZW4gcGlucyBhcmUgY29uZmlndXJlZCBhcyBHUElPLAo+IGFu
ZCB0aGVyZWZvcmUgeW91IGRvbid0IHJlcXVpcmUgYW55IGFkZGl0aW9uYWwgY2hhbmdlcyB0byBw
aW5tdXggdG8gbWFrZQo+IHRoaXMgd29yaywgYWZ0ZXIgY2hhbmdpbmcgaXQgYmFjayB0byB1c2Ug
cmVhbCBJMkMwIGJsb2NrIGJlbG93PwoKWWVzIGluZGVlZC4KCj4gCj4+IMKgwqDCoMKgwqAgc2Zw
OiBzZnAgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJzZmYsc2ZwIjsKPj4g
LcKgwqDCoMKgwqDCoMKgIGkyYy1idXMgPSA8JmkyYzE+Owo+PiArwqDCoMKgwqDCoMKgwqAgaTJj
LWJ1cyA9IDwmaTJjMD47Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBtb2QtZGVmMC1ncGlvcyA9IDwm
Z3Bpb2EgMjggR1BJT19BQ1RJVkVfTE9XPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGxvcy1ncGlv
cyA9IDwmZ3Bpb2EgMjQgR1BJT19BQ1RJVkVfSElHSD47Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB0
eC1mYXVsdC1ncGlvcyA9IDwmZ3Bpb2EgMzAgR1BJT19BQ1RJVkVfSElHSD47Cj4+IEBAIC03NCw2
ICs2NSwxMCBAQAo+PiDCoMKgwqDCoMKgIH07Cj4+IMKgIH07Cj4+IMKgICsmaTJjMCB7Cj4+ICvC
oMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+PiArfTsKPj4gKwo+PiDCoCAmYW1hYzAgewo+PiDCoMKg
wqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPj4gwqAgfTsKPj4KPiAKPiBDaGFuZ2UgbG9va3MgZ29v
ZCB0byBtZS4KPiAKPiBSZXZpZXdlZC1ieTogUmF5IEp1aSA8cmF5Lmp1aUBicm9hZGNvbS5jb20+
CgpUaGFua3MhCi0tIApGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
