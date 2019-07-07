Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B22561513
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 15:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXn1PUroG9NfCVzNc1t2HulXdXFf8GzMJyAsbTPnzTc=; b=bGkyzLGFQtj+PP
	Q/F+6/dDqPoiBVmf3gnoxemXhigZrk5VM+wRHq6YpNE0CZNYprfucVAZCg9i0lgF60NbWr8apagW4
	+0GRz7A7RLWTlDLpToYzJM3nFeTqiv0TeophYIunHgrQoqgRVj/VV2zRT6XHjU4CXxOb/6CWkUVXo
	qwX9TywVSAbsS6UMPjeenrJd/1FBOZc7+SG3ubaejnraj1KbAFPGtfTldEfy5lznbYQ5h+HP6Wo0H
	eaYBYHWAAuOwxklrzmUcFnxaM1kxAainBciTqODv1SSVdVvD7wGIOQtqoUitzEQyvjgrg1dZOdi3U
	N/lcZl59UrAZLJTpNgmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hk7Cb-0005BA-V9; Sun, 07 Jul 2019 13:27:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hk7CN-0005AE-GI
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 13:27:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8B1E6AF19;
 Sun,  7 Jul 2019 13:27:17 +0000 (UTC)
Subject: Re: [PATCH 2/6] irqchip: Add Realtek RTD129x intc driver
To: Aleix Roca Nonell <kernelrocks@gmail.com>
References: <20190707132256.GC13340@arks.localdomain>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Openpgp: preference=signencrypt
Organization: SUSE Linux GmbH
Message-ID: <baeb2dd8-0382-01ad-514b-982c0f123e6e@suse.de>
Date: Sun, 7 Jul 2019 15:27:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190707132256.GC13340@arks.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_062723_688841_FA9B026C 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <marc.zyngier@arm.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDcuMDcuMTkgdW0gMTU6MjIgc2NocmllYiBBbGVpeCBSb2NhIE5vbmVsbDoKPiBUaGlzIGRy
aXZlciBhZGRzIHN1cHBvcnQgZm9yIHRoZSBSVEQxMjk2IGFuZCBSVEQxMjk1IGludGVycnVwdAo+
IGNvbnRyb2xsZXIgKGludGMpLiBJdCBpcyBiYXNlZCBvbiBib3RoIHRoZSBCUEktU0lOT1ZPSVAg
cHJvamVjdCBhbmQKPiBBbmRyZWFzIEbDpHJiZXIncyBwcmV2aW91cyBhdHRlbXB0IHRvIHN1Ym1p
dCBhIHNpbWlsYXIgZHJpdmVyLgoKRG9pbmcgdGhhdCB3aXRob3V0IG15IFNpZ25lZC1vZmYtYnkg
YW5kIENvcHlyaWdodCBpcyBjZXJ0YWlubHkgbm90IG9rYXkuCkl0IGlzIGFsc28gbGFja2luZyBh
IGNsZWFyIGRlc2NyaXB0aW9uIG9mIHdoYXQgeW91IGNoYW5nZWQgZnJvbSBteSBsYXN0CnN1Ym1p
c3Npb24gb3IgdGhlIHBvc3Qtc3VibWlzc2lvbiBHaXRIdWIgdmVyc2lvbiBhZHJlc3NpbmcgcmV2
aWV3CmNvbW1lbnRzLCB3aGljaCBicm9rZS4KClJlZ2FyZHMsCkFuZHJlYXMKCi0tIApTVVNFIExp
bnV4IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxp
eCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFHIE7D
vHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
