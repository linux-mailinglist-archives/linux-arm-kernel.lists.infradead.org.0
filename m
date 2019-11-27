Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A5B10B162
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 15:32:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FvohmoTWOg9KKOhYaO0deCrKZ8ZW8URO+ZgT+NEhZOs=; b=BJ3xGrY5pz2y+3sW2iJO5hFXLJ
	rBU3FaLZrx5XxMFho/pBZ2sjrgXGIH4XvOvxm9yh9IlAY7x0FW4D96y2vG/p7iX9FeBzt273IGTtN
	U2HpBefWLm+AWP3gAYXK7yjrbzJ1NxCPvwrIcmGlNLt3Yz//x4XICloaVwp3+B7V4I4BKpl042TPL
	UwW4cRX4HmrdZFoCcSRnpIB7LYSOiBFHLCOkRhoGk1Laefr+5oDCkbiIXWpU4+cygrZvd3vUlDril
	dVt3bOLm0QLuhzt6AQpGsu/nwRHPHO83gsBSW+CkH/sVD6kZU8yvo4XovSfsHo7fQdeRHhn5Xt1Ob
	Fhs+wb3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZyMB-0003M4-Uw; Wed, 27 Nov 2019 14:31:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZyM2-0003LY-CS
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 14:31:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 065A831B;
 Wed, 27 Nov 2019 06:31:41 -0800 (PST)
Received: from [192.168.0.9] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF94F3F68E;
 Wed, 27 Nov 2019 06:31:39 -0800 (PST)
Subject: Re: [PATCH] arm: Fix topology setup in case of CPU hotplug for
 CONFIG_SCHED_MC
To: Atish Patra <atish.patra@wdc.com>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Morten Rasmussen <morten.rasmussen@arm.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Sudeep Holla <sudeep.holla@arm.com>
References: <20191120104212.14791-1-dietmar.eggemann@arm.com>
 <20191124214753.m6lwcdemnddltctw@core.my.home>
 <50dfafee-55c3-767c-55f4-7d263feafe87@arm.com>
 <20191126214557.53afmorihwqimq2n@core.my.home>
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
Message-ID: <9119c1db-b98d-67d4-ce4c-d9a9b298937a@arm.com>
Date: Wed, 27 Nov 2019 15:31:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191126214557.53afmorihwqimq2n@core.my.home>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_063142_474506_2FA70B6E 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjYvMTEvMjAxOSAyMjo0NSwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gT24gVHVlLCBOb3Yg
MjYsIDIwMTkgYXQgMTE6NDI6MDJBTSArMDEwMCwgRGlldG1hciBFZ2dlbWFubiB3cm90ZToKPj4g
T24gMjQvMTEvMjAxOSAyMjo0NywgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4+PiBIZWxsbywKPj4+
Cj4+PiBPbiBXZWQsIE5vdiAyMCwgMjAxOSBhdCAxMDo0MjoxMkFNICswMDAwLCBEaWV0bWFyIEVn
Z2VtYW5uIHdyb3RlOgoKWy4uLl0KCj4+IFRoYW5rcyBmb3IgdGVzdGluZyEgV2hpY2ggQ3B1ZnJl
cSBkcml2ZXIgaXMgeW91ciBzeXN0ZW0gdXNpbmc/Cj4gCj4gSGVsbG8sCj4gCj4gaXQncyB1c2lu
ZyBjcHVmcmVxLWR0LgoKVGhhbmtzIGZvciB0aGUgaW5mbyEgSXQncyBkdC1iYXNlZCBzbyB0aGlz
IG9uZSBpcyBzYWZlIGluIHJlZ2FyZHMgdG8KcmV0cmlldmluZyB0aGUgY29ycmVjdCB0b3BvbG9n
eSBjb3JlIG1hc2sgZHVyaW5nIENQVSBocCBzdHJlc3MgKGkuZS4KZnJvbSBtdWx0aXBsZSBDUFVz
IGF0IHRoZSBzYW1lIHRpbWUpLgoKWy4uLl0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
