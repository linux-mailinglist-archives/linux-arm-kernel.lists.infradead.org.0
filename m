Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01240DE59A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 09:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OYXpJhQGaPD7qu4djS+JBMQDCdL1ptQGfKTzcrssfxE=; b=Qm714gTGrEC5IRjTBNWeytJJT
	d+mIts3EBWcut5aLB2fLrydBrgJGKtA/tLH0E+d7cW9JKQUtsH87/yeXmILJw3elwwRC5WkDPfoWJ
	ZE6MvsT9E2AV2Zhevuk27HNaQ8pSzH82nbRHtjOv7d1Sxl2XiNG3xUrVAq9dgKLTPMPSaSlgPkKOh
	kb93BHclXo3G/l+JpBgx2Lx1Z9/G2Cnfl4JtVr4LUYz93TjGxzQyw3Z1bO3g8Lul8A/NUmeGWyRwJ
	PIzBqCthyFSQF9DtmrRatPGUGOTZKdSoQnzEWA5dakqjPx4btRyeYqsRkjlbvZ6RIsvAIx62HkmhB
	kluSO/ooQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMSXt-00064Z-8M; Mon, 21 Oct 2019 07:56:05 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMSXi-000641-Ho
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 07:55:56 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iMSXe-0007gc-Fy; Mon, 21 Oct 2019 09:55:50 +0200
To: =?UTF-8?Q?J=C3=BCrgen_Gro=C3=9F?= <jgross@suse.com>
Subject: Re: [PATCH v6 10/10] arm64: Retrieve stolen time as paravirtualized
 guest
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 21 Oct 2019 08:55:50 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <237a3457-bcb3-c9b7-11ef-241b7ccc370e@suse.com>
References: <20191011125930.40834-1-steven.price@arm.com>
 <20191011125930.40834-11-steven.price@arm.com>
 <86a79wzdhk.wl-maz@kernel.org>
 <237a3457-bcb3-c9b7-11ef-241b7ccc370e@suse.com>
Message-ID: <e8fa44e1e6bcb58ea07b5064ed40e088@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: jgross@suse.com, steven.price@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 catalin.marinas@arm.com, pbonzini@redhat.com, rkrcmar@redhat.com,
 linux@armlinux.org.uk, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, mark.rutland@arm.com, kvm@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_005554_736647_856F17A7 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 kvm@vger.kernel.org,
 =?UTF-8?Q?Radim_Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Steven Price <steven.price@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMC0yMSAwNjowMSwgSsO8cmdlbiBHcm/DnyB3cm90ZToKPiBPbiAxOS4xMC4xOSAy
MjoyOCwgTWFyYyBaeW5naWVyIHdyb3RlOgoKPj4gSG93IGFib3V0IHNvbWV0aGluZyBsaWtlIHB2
X3RpbWVfaW5pdCgpIGluc3RlYWQ/IEluIHRoZSBndWVzdCwgdGhpcyAKPj4gaXMKPj4gbm8gd2F5
IEtWTSBzcGVjaWZpYywgYW5kIEkgc3RpbGwgaG9wZSBmb3IgdGhpcyB0byB3b3JrIG9uIHRoaW5n
cyAKPj4gbGlrZQo+PiBYZW4vSHlwZXJWL1ZNd2FyZSAoeWVhaCwgSSdtIGZvb2xpc2hseSBvcHRp
bWlzdGljKS4gQWxsIHRoZSAKPj4gcmVmZXJlbmNlcwo+PiB0byBLVk0gc2hvdWxkIGdvLCBhbmQg
YmUgcmVwbGFjZWQgYnkgc29tZXRoaW5nIG1vcmUgZ2VuZXJpYyAoYWZ0ZXIKPj4gYWxsLCB5b3Un
cmUgb25seSBpbXBsZW1lbnRpbmcgdGhlIHNwZWMsIHNvIGZlZWwgZnJlZSB0byBjYWxsIGl0Cj4+
IGRlbjAwNTdfKiBpZiB5b3UgcmVhbGx5IHdhbnQpLgo+Cj4gWGVuIGd1ZXN0cyBhbHJlYWR5IGhh
dmUgdGhlIG5lZWRlZCBmdW5jdGlvbmFsaXR5LiBPbiBBUk0gdGhpcyBqdXN0IAo+IG5lZWRzCj4g
dG8gYmUgaG9va2VkIHVwLgoKWWVzLCBYZW4gb2ZmZXJzIGl0cyBvd24gUFYgaW50ZXJmYWNlIGZv
ciB0aGF0LiBCdXQgdGhpcyBjb2RlIGlzIGFib3V0CmltcGxlbWVudGluZyBzdXBwb3J0IGZvciBh
IGNyb3NzIGh5cGVydmlzb3IgZnVuY3Rpb25uYWxpdHkgKHdoaWNoIApBRkFJQ1QKaXMgbm90IGlt
cGxlbWVudGVkIGJ5IFhlbikuCgogICAgICAgICBNLgotLSAKSmF6eiBpcyBub3QgZGVhZC4gSXQg
anVzdCBzbWVsbHMgZnVubnkuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
