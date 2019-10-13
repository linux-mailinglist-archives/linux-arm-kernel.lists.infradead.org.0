Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A15D5557
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 10:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tiE3uv0iHMu1/AlQLXFv/Cap+TJlYS1e2LaQRShYbT4=; b=WyNVikJY7folEB
	2fl9JAzun7VZWI1Hz0wd2JnWcG0QigC576EuvGNhMwIYqNVhW8Co78M6Xh4mxiXG0H4e7rsmqDywn
	pjxoIsFijOkCF3iteZgXAP4JPRU3eMhrW9istwmFcsCHTBqfTS7qVVWkmRClBoKvLsS7QpgYNFup3
	eJWzvgLe4y80WxOTWltiC3K+EDVA31DBVcnNuaz+E141F/VwnXp09p4SirUBTQuC2QlNKA8RUjr+G
	uFJCuAmuSyDBRpbVD+Gv6XcYsZoahj6rIbzcNBnaPcJzHSD+3NQe/ZmaM0WjnQTnQG048kz0hT8Zh
	ZQ886s4Ui6SE7v6DSd3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJZVc-0004YK-3k; Sun, 13 Oct 2019 08:45:48 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJZVQ-0004Xe-VV
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 08:45:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570956319;
 bh=tl46Ug4LUxpNSNf1sk6vaj+ltIONSStJV7jqb+dnayU=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=DyGrS8iMNnQ/RhFiIqBYnnqylo5pb/pVX0LGoyRlksJMoqh2vug/HgMKtruf9/XXF
 Pl8U6wgAGe+YkCAfnIh7i4xPLyQ15CNds/r69APHaxnfMyTWgX+uR90S0Dvan8rV3Y
 905gpicwnULLN9hJqQjxQXk93i8+2t5GGyDgY7tA=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.131.141.172]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0Lfj2k-1hhTrY30SA-00pMp7; Sun, 13
 Oct 2019 10:45:18 +0200
Subject: Re: clk: rockchip: Checking a kmemdup() call in
 rockchip_clk_register_pll()
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org
References: <e96505a8-b554-f61e-3940-0b9e9c7850ff@web.de>
 <5801053.xxhhKtLrcJ@diego>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <29d12079-d888-e090-da5a-c407c13d696b@web.de>
Date: Sun, 13 Oct 2019 10:45:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <5801053.xxhhKtLrcJ@diego>
Content-Language: en-US
X-Provags-ID: V03:K1:UbqXrjjtJE/QQqImZXB1Da6RMdTuLFjcUSAed0McyVEvjz70aVM
 dqqNSFUQsQ4eEcC03dZ8lYCY1slZg2KO11OwIHeG/GQQyM/MZEpC9h4kKkPKVO16xtGUd9S
 vdA3f7rkDCnWXuGcuaXZKBP1hyfLF8s8djJJQH62vvz+j7LX7Qm6ozi9cpoOhYdyRQiIFx2
 T313lX/HlfpPFcisZcqhA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Jy2QTgB97MM=:OOntxVwoPLLkWXJKzvKkoK
 OZO1ITqS1apzNa7Zn0Mas5FWGoHgytggc1ssy/84muhYoB5whzgthDiBMyhExejzYOPbf1rFt
 khIWTdNvyITXqwACDquNcqYgT1gfWr/N6P9M2E2foyHpyrBuywGUnS6hhrTsMrlwbaW8Gps7F
 JZMVWb+YNJYzxcJCNEwWjdqJCrzSvGQk0ucaP30hSGxhIVVc+CpH0ZLGtShR0fjh/IjkfsZlL
 yiiTlkgE+EoZy4yieplgeGsEFuyRbV4HS434/SVuks1HzuI++8foI6An9yU6Uaioc2sF5DobI
 w+OwXyJBqdIRu5dnmg+WE21C8PwZYbxCU+vs37dfq13PmvbTqCeYRSby1vfHgBKNQ9jnYc21l
 poVVbL98JkQraxtrfW1/V070VmZ84pQNFmZLRGxYxgbSDXPYg3+sMI03Sadmh7EVsXDpHp60/
 b7tB9hVXScaLVJnykBYzfgY8l7QdR5FMWJzQxPNsZBcIvwccso+n5MgJZ8CUOBePzEsUKyKT+
 RhLMQZJm/qB2noD9ae3DA41KJonf+fdhINDdyHTXbUyxZtnaP67oMrz9ZqZrlTLh66J/gISw7
 nHzzQV750x9zuJXQaHq9I1ywZWg9T82iu8bTkjQnLZF6+RapY7BKrAZc1I50IUWH1F2BiALxa
 YKRGwYfn7CSs87+RMcNgtTsEQrvNgbT9bsJf6aTsSdHQ8yDdLFl60K+IhIlohgurVpacqa50S
 6zaoflkfRnzLYK5aTp2IbBwbTCC18UKrfE7akiyg/RltdOdCzKbJ+oZj5bu6VyL3YaPhV3zqz
 k0gfxorDYwSCmzjDyXvo1UzuhSGLJiFPvv1l6Fqt7RBXaK7Ym46ntGl3JgZvQ6XFRjlnvJ0Uy
 G8ALUOfS1c6eQ9qQOYsGvbk9Ek9I8RXxvKPbkp7P1niFzY3qFeHOmooXPK8zUpQExA1+gCjkU
 Fv77dJcOK+XgVOYAGhumIHs//G4IczTgAaUS9V8GsF4usgJFkKECYXWKSoCZmSBa80k88KMgB
 jjudhxwE7JS4C9uDKZFdNYPEfxcW0yf3SG+si6OgNbpGz7SqJgjVnZLBe0sGwuk0MyhUv6Fdk
 9mT+PUay8P1ZxMNL9buJf5lG5S75UnJMwKWXaQCeXLLZC9N7iPf+oXKhBucXC/5hN1eAjbL2I
 WEGIDOXv0hgk7e1id+VpE8fX0Je0xhdncNXYzxvQMLldfV30Z7eGRbEjkhSZRKgn8ve787k4e
 erJKHdPNWc8021k5dxtB0LdXKp6GjP4SCGXPTTwREf3Y98eNQtHxC9nuDnqU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_014537_350702_66CEF1AC 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Aditya Pakki <pakki001@umn.edu>,
 Kangjie Lu <kjlu@umn.edu>, LKML <linux-kernel@vger.kernel.org>,
 Navid Emamdoost <emamd001@umn.edu>, Stephen McCamant <smccaman@umn.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFs
ZHMvbGludXguZ2l0L3RyZWUvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXBsbC5jP2lkPTFjMGNj
NWYxYWU1ZWU1YTY5MTM3MDRjMGQ3NWE2ZTk5NjA0ZWUzMGEjbjkxMwo+PiBodHRwczovL2VsaXhp
ci5ib290bGluLmNvbS9saW51eC92NS40LXJjMi9zb3VyY2UvZHJpdmVycy9jbGsvcm9ja2NoaXAv
Y2xrLXBsbC5jI0w5MTMKPj4KPj4gKiBEbyB5b3UgZmluZCB0aGUgdXNhZ2Ugb2YgdGhlIGZvcm1h
dCBzdHJpbmcg4oCcJXM6IGNvdWxkIG5vdCBhbGxvY2F0ZQo+PiAgIHJhdGUgdGFibGUgZm9yICVz
XG7igJ0gc3RpbGwgYXBwcm9wcmlhdGUgYXQgdGhpcyBwbGFjZT8KPgo+IElmIHRoZXJlIGlzIGFu
IGludGVybmFsICJuby1tZW1vcnkiIG91dHB1dCBmcm9tIGluc2lkZSBrbWVtZHVwIG5vdywKPiBJ
IGd1ZXNzIHRoZSBvbmUgaW4gdGhlIGNsb2NrIGRyaXZlciB3b3VsZCBiZSBhIGR1cGxpY2F0ZSBh
bmQgY291bGQgZ28gYXdheS4KCkhvdyBkbyB5b3UgdGhpbmsgYWJvdXQgdG8gcmVjaGVjayBpbmZv
cm1hdGlvbiBzb3VyY2VzIGFyb3VuZAp0aGUgTGludXggYWxsb2NhdGlvbiBmYWlsdXJlIHJlcG9y
dD8KaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFs
ZHMvbGludXguZ2l0L3RyZWUvRG9jdW1lbnRhdGlvbi9wcm9jZXNzL2NvZGluZy1zdHlsZS5yc3Q/
aWQ9ZGE5NDAwMTIzOWNjZWI5M2MxMzJhMzE5MjhkNmRkYzQyMTQ4NjJkNSNuODc4CgoKPj4gKiBJ
cyB0aGVyZSBhIG5lZWQgdG8gYWRqdXN0IHRoZSBlcnJvciBoYW5kbGluZyBoZXJlPwo+Cj4gVGhl
cmUgaXMgbm8gbmVlZCBmb3IgYWRkaXRpb25hbCBlcnJvciBoYW5kbGluZy4KCklmIHlvdSB3b3Vs
ZCBsaWtlIHRvIG9taXQgdGhlIG1hY3JvIGNhbGwg4oCcV0FSTuKAnSwgSSB3b3VsZCBleHBlY3Qg
YWxzbwp0byBleHByZXNzIGEgY29ycmVzcG9uZGluZyBudWxsIHBvaW50ZXIgY2hlY2suCgoKPiBM
aWtlIGlmIHRoZSByYXRlLXRhYmxlIGNvdWxkIG5vdCBiZSBkdXBsaWNhdGVkLAo+IHRoZSBjbG9j
ayB3aWxsIHN0aWxsIHJlcG9ydCB0aGUgY29ycmVjdCBjbG9ja3JhdGUKPiB5b3UgY2FuIGp1c3Qg
bm90IHNldCBhIG5ldyByYXRlLgoKSG93IG11Y2ggd2lsbCBhIGRpZmZlcmVudCBzeXN0ZW0gY29u
ZmlndXJhdGlvbiBtYXR0ZXIgZmluYWxseT8KKERvIHlvdSByZWFsbHkgd2FudCB0byB0cmVhdCB0
aGlzIHNldHRpbmcgYXMg4oCcb3B0aW9uYWzigJ0/KQoKCj4gQW5kIGZvciBhIHN5c3RlbSBpdCdz
IGFsd2F5cyBiZXR0ZXIgdG8gaGF2ZSB0aGUgY2xvY2sgZHJpdmVyIHByZXNlbnQKPiB0aGFuIGZv
ciBhbGwgZGV2aWNlLWRyaXZlcnMgdG8gZmFpbCBwcm9iaW5nLiBFc3BlY2lhbGx5IGFzIHRoaXMg
c3RhcnQgYXMKPiBjb3JlIGNsb2NrIGRyaXZlciwgc28gdGhlcmUgaXMgbm8gZGVmZXJyaW5nIHBv
c3NpYmxlLgoKSSBpbWFnaW5lIHRoYXQgc3VjaCBhIHZpZXcgY2FuIGJlIGNsYXJpZmllZCBmdXJ0
aGVyLgoKUmVnYXJkcywKTWFya3VzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
