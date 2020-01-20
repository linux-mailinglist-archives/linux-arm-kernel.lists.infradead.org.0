Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADD3142CED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 15:09:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YS36Qc6xUk18uVHt34COfZWFimfqYEm5FGModtSbdKc=; b=HTiNM5c+9QJ2Ss
	pE3ZSbOt8QviNKnK+1uNLtZtEH5YeOym3A5Af8m6gf67el3p6Wxdh6dEjeZHsK277vg0EJUyRUwyg
	uynK6Wgq9GPA6rL+joyumSSvmkZ0yOlkGt53NWgMccmmbMs9b5BaALdBOgZ8/UC6e90gwXW7XEdko
	RY/hU1UC5pINLBnBXmtxkypSGnJP995ULWpVeHO1RiHFMSqXO7cZVpl9n/SQRDrLmBs89JUqi3LVq
	zaVdMQ6rfMwnd/Y9l0XqiEQ+m9h4BjcsV8kz4190oXP37gL4TsxYk+S03x93O4u2g3wX/P/maKWlm
	iwklK05IyTWdnG1r5vfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itXk8-0006Iu-9v; Mon, 20 Jan 2020 14:09:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itXjt-0006Hy-SK
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 14:09:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C87BC30E;
 Mon, 20 Jan 2020 06:09:11 -0800 (PST)
Received: from [10.2.69.39] (unknown [10.2.69.39])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 47B963F52E;
 Mon, 20 Jan 2020 06:09:11 -0800 (PST)
Subject: Re: [PATCH v2] ARM: virt: Relax arch timer version check during early
 boot
To: Marc Zyngier <maz@kernel.org>
References: <1579527498-31081-1-git-send-email-vladimir.murzin@arm.com>
 <c573c3f5b86ece28a10c2466e985b256@kernel.org>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <dbe70c99-812c-f10c-524a-1ff6c84c7574@arm.com>
Date: Mon, 20 Jan 2020 14:09:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <c573c3f5b86ece28a10c2466e985b256@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_060913_958993_807E3DC5 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMS8yMC8yMCAyOjAxIFBNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gT24gMjAyMC0wMS0yMCAx
MzozOCwgVmxhZGltaXIgTXVyemluIHdyb3RlOgo+PiBVcGRhdGVzIHRvIHRoZSBHZW5lcmljIFRp
bWVyIGFyY2hpdGVjdHVyZSBhbGxvdyBJRF9QRlIxLkdlblRpbWVyIHRvCj4+IGhhdmUgdmFsdWVz
IG90aGVyIHRoYW4gMCBvciAxIHdoaWxlIHN0aWxsIHByZXNlcnZpbmcgYmFja3dhcmQKPj4gY29t
cGF0aWJpbGl0eS4gQXQgdGhlIG1vbWVudCwgTGludXggaXMgcXVpdGUgc3RyaWN0IGluIHRoZSB3
YXkgaXQKPj4gaGFuZGxlcyB0aGlzIGZpZWxkIGF0IGVhcmx5IGJvb3QgYW5kIHdpbGwgbm90IGNv
bmZpZ3VyZSBhcmNoIHRpbWVyIGlmCj4+IGl0IGRvZXNuJ3QgZmluZCB0aGUgdmFsdWUgMS4KPj4K
Pj4gU2luY2UgaGVyZSB1c2UgdWJmeCBmb3IgYXJjaCB0aW1lciB2ZXJzaW9uIGV4dHJhY3Rpb24g
KGh5Yi1zdHViIGJ1aWxkCj4+IHdpdGggLW1hcmNoPWFybXY3LWEsIHNvIGl0IGlzIHNhZmUpCj4+
Cj4+IFRvIGhlbHAgYmFja3BvcnRzIChldmVuIHRob3VnaCB0aGUgY29kZSB3YXMgY29ycmVjdCBh
dCB0aGUgdGltZSBvZiB3cml0aW5nKQo+PiBGaXhlczogOGVjNThiZTlmM2ZmICgiQVJNOiB2aXJ0
OiBhcmNoX3RpbWVyczogZW5hYmxlIGFjY2VzcyB0byBwaHlzaWNhbCB0aW1lcnMiKQo+PiBTaWdu
ZWQtb2ZmLWJ5OiBWbGFkaW1pciBNdXJ6aW4gPHZsYWRpbWlyLm11cnppbkBhcm0uY29tPgo+IAo+
IEFja2VkLWJ5OiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPgo+IAo+IEZlZWwgZnJlZSB0
byBwdXQgaXQgaW50byBSdXNzZWxsJ3MgcGF0Y2ggc3lzdGVtLgoKUGF0Y2ggaGFzIGJlZW4gYWNj
ZXB0ZWQgYXMgcGF0Y2ggODk1NS8xCgpUaGFua3MhCgpWbGFkaW1pcgoKPiAKPiBUaGFua3MsCj4g
Cj4gwqDCoMKgwqDCoMKgwqAgTS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
