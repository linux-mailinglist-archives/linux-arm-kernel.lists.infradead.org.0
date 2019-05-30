Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0572FA02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 12:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tkS6AYWZPL5ojxnXq+bQ1BCCsQkRZg9C7j0yd8UJOCo=; b=PH63FBk1wzas0o
	ajlbArjBZ1BEJCsWg1xgvpN9Pk8iXJiPVz75Fz/fy6JQPCcC4rP6bAM47vXYw9Wvst6Lom/mHq9Pe
	n97bkz8Cfd9/KKbA6u+lpDA+GzdAqscDavSzb1noekYu2VbZxsthP0N8i3y6K/5bHvjeRnVUP2pPG
	Dybu+ycNQ1ASb0EP0oifELEciMRkjXCKAc2vy0YiNBxOHfEqbki3+ayI/PNpaMe4cZh+Ir/psRNN7
	9jOQC7OlF0Udul3HX/vqeFfcaTtFqG+mU93O4DNcKPSWzDmoijb/Wzk2jYRp0DNECViFbYdrfVIwE
	7Il0uYwsY8FQBW2vvXTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWI3M-0004D5-W7; Thu, 30 May 2019 10:12:57 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWI3F-0004Ck-Lv
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 10:12:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1559211164;
 bh=hj0JmJoKrbKo0kNtrEQyUbV6+9Oj1+AD3IrDjQ8FxeU=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Jw4Ud/Fjb4uivkmC1rP8mTV8OprkDC72UMplmzzNOOlbVGIcxPOtIHkhsKlA3RHiZ
 8d6TEB6LV9Cj3dUmMcL3TK/vWOE+izdMRsQLxhLlKbNDVKw61JmHwC9XpFTxY+emK+
 kOzXC9p5Wnq2/IAkKJsMztDThkBojQiiprlW0Q9c=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.166] ([37.4.249.160]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MdvqW-1gvIo13STe-00b0KZ; Thu, 30
 May 2019 12:12:43 +0200
Subject: Re: [PATCH 0/7] ARM: dts: Broadcom: Fix W=1 DTC warnings
To: Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org
References: <20190528230134.27007-1-f.fainelli@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <070047b5-a101-e7b3-9ef3-7afc765921d9@gmx.net>
Date: Thu, 30 May 2019 12:12:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190528230134.27007-1-f.fainelli@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:8bKgMOPWa8LkhAvg01EzpUp+5SMkw19C68RsVzKXMI0izuMs8p+
 zCr1oY7LfL0012BFijFabgcgORBAQIKZ4lH/xhTrR1kg6VfFh1a22Y9JLQcO26ZHGKc8U3r
 YiGYAss+CCWrVQYkDS7B6jOsVEr5B86wYUTpSkH1BZvkeXFmYcmc9KpFxHnSI5wR0aMXMRZ
 AbNAkWECobdv9zULa10Rw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oTZVT7i2Iig=:3pvE6Z2N+KE3/BtfvG6R2R
 1sfzHsY6UmbKDUaCW5YVoaAOIU4K/Tom9EC+bfy/BOeGeO/8Qn/3cv5e6EV9z0k04egYfGWIg
 X92U+26aL84nhbqLfuuDR5gTyuXgGYt/lxYeddByJ/RGZTf+Q2kv8PDspGJOEyrtBJQsK4A7g
 ZQVqAgth0BGIfirZnWO1iIGNMs6tjMLpCYawD6CgRyx1Cd+BM59acTvv5F4rvO0mbxYw2DUvC
 9BU1MQRsWaqCYwr5WTPyNpzwLPzt4w5ANAm0XWLdcICdI09wHrXnHs9hsM8lIUScyaLHvDyRb
 xlqWtRMHB5BuFpg2Q4hXBazWfW5Co036gHuc5DuBIfyYByzvBGKmbInjohR8GtyCvRUJbxrvr
 oFd7YGbFd2K9aFhJIDswZ22qEuZeHJ2QXr6wvXC2Zy/l4ML4cge94HnrimBkfamE5nRU1f6Jx
 Cs5QEj0sEmRQFwTzCPPSN8rWTAjxJkQsoA3E76ym9ljSusvy6SXW0IK97xXEUwZy2e4m37Xx3
 It3k8zlsKI810yREsr1d3VriRad85H6Zqs0XUu7vpym+AI5MiLj25b6vAzsWFJ6kWIzli1b3X
 7CpLwVO9X/2hgmAGDn/sno6bzK1yxhJGbbLCMOSgQ8qE4xAIrF+bpIDgcqvFdNXRvinieW3kH
 rINfaraZb6o/7fxCqqlO5J5f3T2NyJRvhKJshSAijxKq00SSH/u3gTlP9EwZxnssPWMI0vUlL
 qJspZIz/4nAeHVB8e5koO++/S9+VhehO73CuFaW0yeytcx3/Io47LP4P1HibQ2xXvj5daCf90
 KE9m9CP2wMM5U+p877GwYzgxRWTM8w2OwbwDqgP5bZGGwYlAywmZI+SX+T24lzdrIpgpgpoxy
 oNtl7aUfskwQWRocJ20hFQA7rbohcwgNkKIbptumsnraw+KohGJrxlwXnwWGqXD4XptvfLMn5
 nzY3fcfQzM5/v7omahjVqPe5vVTKgNV2t7uAtYVKZrEN0f6+J0m3s
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_031250_053772_BE89CD42 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Ray Jui <rjui@broadcom.com>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Brian Norris <computersforpeace@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRmxvcmlhbiwKCkFtIDI5LjA1LjE5IHVtIDAxOjAxIHNjaHJpZWIgRmxvcmlhbiBGYWluZWxs
aToKPiBIaSBhbGwsCj4KPiBUaGlzIHBhdGNoIHNlcmllcyBhdHRlbXB0cyB0byBmaXggdGhlIG1v
c3Qgb2J2aW91cyBXPTEgRFRDIHdhcm5pbmdzIGZvcgo+IEJyb2FkY29tIFNvQ3MgRFRTIGZpbGVz
LiBTdGVmYW4sIGlmIHlvdSBjb3VsZCBkbyB0aGUgc2FtZSBmb3IgYWxsCj4gYmNtMjgzKiB0aGF0
IHdvdWxkIGJlIGZhbnRhc3RpYy4KCndlIHRyaWVkIHRvIGZpeCBhcyBtdWNoIGFzIHBvc3NpYmxl
IGluIHRoZSBwYXN0LiBTbyB0aGVyZSBhcmUgb25seSB0aG9zZQpsZWZ0LCB3aGljaCBpIGRvbid0
IGtub3cgaG93IHRvIGZpeCBpdCBwcm9wZXJseSAoYW5kIHdpdGhvdXQgYnJlYWtpbmcKdGhpbmdz
KToKCmFyY2gvYXJtL2Jvb3QvZHRzL2JjbTI4M3guZHRzaTo1NC42LTY1MS40OiBXYXJuaW5nCih1
bml0X2FkZHJlc3NfdnNfcmVnKTogL3NvYzogbm9kZSBoYXMgYSByZWcgb3IgcmFuZ2VzIHByb3Bl
cnR5LCBidXQgbm8KdW5pdCBuYW1lCgpUaGlzIGZyb20gdGhlIFNvQyBzcGVjaWZpYyBkdHNpIGZp
bGVzIHdoaWNoIGFkZCB2YWx1ZXMgZm9yIHRoZSByYW5nZXMgLwpkbWEtcmFuZ2VzLgoKc29jIHsK
wqDCoMKgIMKgwqDCoCByYW5nZXMgPSA8MHg3ZTAwMDAwMCAweDIwMDAwMDAwIDB4MDIwMDAwMDA+
OwrCoMKgwqAgwqDCoMKgIGRtYS1yYW5nZXMgPSA8MHg0MDAwMDAwMCAweDAwMDAwMDAwIDB4MjAw
MDAwMDA+Owp9OwoKYXJjaC9hcm0vYm9vdC9kdHMvYmNtMjgzeC5kdHNpOjY0OC4xMi02NTAuNTog
V2FybmluZyAoc2ltcGxlX2J1c19yZWcpOgovc29jL2dwdTogbWlzc2luZyBvciBlbXB0eSByZWcv
cmFuZ2VzIHByb3BlcnR5CgpUaGlzIGNvbWVzIGZyb20gdGhlIGZvbGxvd2luZyBzaW1wbGUgYnVz
IGNoaWxkIG5vZGU6Cgp2YzQ6IGdwdSB7CsKgwqDCoCDCoMKgwqAgwqDCoMKgIGNvbXBhdGlibGUg
PSAiYnJjbSxiY20yODM1LXZjNCI7Cn07CgpUaGlzIGlzc3VlIHNob3VsZCBhbHNvIGV4aXN0cyBp
biBiY20tY3lnbnVzLmR0c2kuIEZyb20gdGhlIGhhcmR3YXJlIHNpZGUKdGhlIEdQVSBpcyBwYXJ0
IG9mIHRoZSBTb0MsIGJ1dCBtYXliZSB3ZSBzaG91bGQgbW92ZSB0aGlzIG5vZGUgb3V0IG9mCnRo
ZSBTb0Mgc2ltcGxlIGJ1cz8KClN0ZWZhbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
