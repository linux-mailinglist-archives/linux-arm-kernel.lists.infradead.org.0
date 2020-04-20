Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9221B0288
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 09:15:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c0oAvuZvjEs5TlET96Z7MB/8SPmA58x+I1RzZCFy/K4=; b=gfawdVz+IsrhqlD/XrTOwndeY
	uQWjteiqMiEAbocXsoRNrZMZcxrD1vNmUm37aX2qgATYaq0kpH6s+9Q6wIJgf5rnJTDUPMzQ6kSjl
	NR6M2HRWZpTn2Lp8wzLgk06qufOAJ6i0WgyEmh1o/j8cWpmmen7v8xg6tYa0tlqKKmRF+HgdZk5Ye
	il8pm1cR44fKeZ3vMl3eHkfsVDcK0G5JBK1l7Rz0VtONHRCWa5WZpNeIefYd75QQ2lzBmBxyAMraC
	bPugUPwJ58L0cfvmSOq3m1ILqvyom8TP8dObQioEvElfIg84eL5ZpRCUzRwkAtwPb6bxMpv3JAv7s
	A2pv7fwuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQdu-00069L-NY; Mon, 20 Apr 2020 07:14:58 +0000
Received: from out30-43.freemail.mail.aliyun.com ([115.124.30.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQdX-0005uG-M7
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 07:14:38 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R151e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01f04428;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=37; SR=0;
 TI=SMTPD_---0Tw1zGGs_1587366866; 
Received: from 30.27.118.66(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0Tw1zGGs_1587366866) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 20 Apr 2020 15:14:28 +0800
Subject: Re: [PATCH] KVM: X86: Fix compile error in svm/sev.c
To: Xiaoyao Li <xiaoyao.li@intel.com>, pbonzini@redhat.com,
 tsbogend@alpha.franken.de, paulus@ozlabs.org, mpe@ellerman.id.au,
 benh@kernel.crashing.org, borntraeger@de.ibm.com, frankja@linux.ibm.com,
 david@redhat.com, cohuck@redhat.com, heiko.carstens@de.ibm.com,
 gor@linux.ibm.com, sean.j.christopherson@intel.com, vkuznets@redhat.com,
 wanpengli@tencent.com, jmattson@google.com, joro@8bytes.org,
 tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, x86@kernel.org,
 hpa@zytor.com, maz@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 christoffer.dall@arm.com, peterx@redhat.com, thuth@redhat.com
References: <20200419073047.14413-1-tianjia.zhang@linux.alibaba.com>
 <82ce1798-1dab-d271-d084-e9a89bb44e71@intel.com>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <8af45e72-2c68-7641-6968-70fad9c516b7@linux.alibaba.com>
Date: Mon, 20 Apr 2020 15:14:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <82ce1798-1dab-d271-d084-e9a89bb44e71@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_001436_204693_3019E237 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: linux-s390@vger.kernel.org, kvm@vger.kernel.org, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDIwLzQvMTkgMTY6MjQsIFhpYW95YW8gTGkgd3JvdGU6Cj4gT24gNC8xOS8yMDIwIDM6
MzAgUE0sIFRpYW5qaWEgWmhhbmcgd3JvdGU6Cj4+IFRoZSBjb21waWxlciByZXBvcnRlZCB0aGUg
Zm9sbG93aW5nIGNvbXBpbGF0aW9uIGVycm9yczoKPj4KPj4gYXJjaC94ODYva3ZtL3N2bS9zZXYu
YzogSW4gZnVuY3Rpb24g4oCYc2V2X3Bpbl9tZW1vcnnigJk6Cj4+IGFyY2gveDg2L2t2bS9zdm0v
c2V2LmM6MzYxOjM6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbgo+PiDi
gJhyZWxlYXNlX3BhZ2Vz4oCZIFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9u
XQo+PiDCoMKgwqAgcmVsZWFzZV9wYWdlcyhwYWdlcywgbnBpbm5lZCk7Cj4+IMKgwqDCoCBefn5+
fn5+fn5+fn5+Cj4+Cj4+IFRoZSByZWFzb24gaXMgdGhhdCB0aGUgJ3BhZ2VtYXAuaCcgaGVhZGVy
IGZpbGUgaXMgbm90IGluY2x1ZGVkLgo+Pgo+IAo+IEZZSS4KPiAKPiBCb3JpcyBoYXMgc2VudCB0
aGUgUGF0Y2g6Cj4gaHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci8yMDIwMDQxMTE2MDkyNy4yNzk1
NC0xLWJwQGFsaWVuOC5kZQo+IAo+IGFuZCBpdCdzIGFscmVhZHkgaW4ga3ZtIG1hc3Rlci9xdWV1
ZSBicmFuY2gKPiAKPiAKClRoaXMgaXMgdGhlIHNhbWUgZml4LCBwbGVhc2UgaWdub3JlIHRoaXMg
cGF0Y2guCgpUaGFua3MgYW5kIGJlc3QsClRpYW5qaWEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
