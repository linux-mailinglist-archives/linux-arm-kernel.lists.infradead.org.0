Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174401F4D01
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 07:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0v7XMqen0mOlrUSEC3gANQKba/4WEKyDUfhTfKu6YWE=; b=bTWlDOd5omXGiNTE/aXsdWPT7
	YhXpVO5up/gbk6ZqyotG/3+AIMdN1gbXsQY09PetcMfGPh0M/iPHc7QvKadkx6Jume+/gnj1njMp0
	5sA8XP/ZCjrz5EOThCCM37l/8S+rygjSef1XrCpShEu7YxM+YQ6jgy8tHQNDdhl+V8YFKWKZughBc
	MjSXAUpl5wP+gV0O2EpZulmM4xiK9tIq9j2mCwYIfBZZw6/Y7wkXyjiepUh5JE+ajRJ9NkdsdcHCR
	mnytkYACmtYBCpAZtRYBwC2gnKVMxaVL/aeOvnScAIvqbbnWAI/PxEUlGyeN4ituxzbrf1tZENE4S
	3nDoQ7Ajw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jitPK-0003Fd-9r; Wed, 10 Jun 2020 05:36:14 +0000
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jitPC-0003CD-Fv
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 05:36:08 +0000
Received: from [192.168.1.41] ([92.140.207.208]) by mwinf5d88 with ME
 id pHbt220024WJoZY03HbtKV; Wed, 10 Jun 2020 07:35:57 +0200
X-ME-Helo: [192.168.1.41]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Wed, 10 Jun 2020 07:35:57 +0200
X-ME-IP: 92.140.207.208
Subject: Re: [PATCH] scsi: powertec: Fix different dev_id between
 'request_irq()' and 'free_irq()'
To: "Martin K. Petersen" <martin.petersen@oracle.com>, jejb@linux.ibm.com,
 linux@armlinux.org.uk
Newsgroups: gmane.linux.scsi, gmane.linux.kernel, gmane.linux.kernel.janitors,
 gmane.linux.ports.arm.kernel
References: <20200530072933.576851-1-christophe.jaillet@wanadoo.fr>
 <159175686974.7062.8526082970785072740.b4-ty@oracle.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <08f63617-03df-71cf-70c4-00f08a9f51d8@wanadoo.fr>
Date: Wed, 10 Jun 2020 07:35:49 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <159175686974.7062.8526082970785072740.b4-ty@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_223606_995668_67A9BC89 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.132 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.132 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-scsi@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMTAvMDYvMjAyMCDDoCAwNDo0MSwgTWFydGluIEsuIFBldGVyc2VuIGEgw6ljcml0wqA6Cj4g
T24gU2F0LCAzMCBNYXkgMjAyMCAwOToyOTozMyArMDIwMCwgQ2hyaXN0b3BoZSBKQUlMTEVUIHdy
b3RlOgo+Cj4+IFRoZSBkZXZfaWQgdXNlZCBpbiAncmVxdWVzdF9pcnEoKScgYW5kICdmcmVlX2ly
cSgpJyBzaG91bGQgbWF0Y2guCj4+IFNvIHVzZSAnaG9zdCcgaW4gYm90aCBjYXNlcy4KPiBBcHBs
aWVkIHRvIDUuOC9zY3NpLXF1ZXVlLCB0aGFua3MhCj4KPiBbMS8xXSBzY3NpOiBwb3dlcnRlYzog
Rml4IGRpZmZlcmVudCBkZXZfaWQgYmV0d2VlbiByZXF1ZXN0X2lycSgpIGFuZCBmcmVlX2lycSgp
Cj4gICAgICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvbWtwL3Njc2kvYy9hZjdiNDE1YTFlYmYK
PgpQbGVhc2UgcmV2ZXJ0LCB0aGUgcGF0Y2ggaXMgYm9ndXMsIGFzIHNwb3R0ZWQgYnkgUnVzc2Vs
bCBLaW5nIC0gQVJNIApMaW51eCBhZG1pbiA8bGludXhAYXJtbGludXgub3JnLnVrPi4KU2VlIFsx
XS4KCkknbGwgdHJ5IHRvIHNlbmQgdGhlIGNvcnJlY3QgZml4IGJ5IHRoaXMgd2Vlay1lbmQuCgpD
SgoKWzFdOiBodHRwczovL21hcmMuaW5mby8/bD1saW51eC1zY3NpJm09MTU5MDgzMTg0MjE1NzMw
Jnc9NAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
