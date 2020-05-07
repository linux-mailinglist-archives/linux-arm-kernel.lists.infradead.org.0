Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7231C8BC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3ZlaDXxQgcSfiB7EPehg7E1zEVNSQJ/DcVd2dXIAuz8=; b=qw4xm9mJCvjwPbPU6t0fEXZKn
	GdM+PQTjfO04YCo/VoBT9w9BL4N9VaLR6W9rqfCOX96n3NkZJe5d77EUi8ZfCHThg/+Ks7arNPESY
	Q5DmczJ2fe9dOmBcrUgROHp+fzowMN5W3Fu0BTvFerw4WP0vPgcq/YTjdIK4RClfNKJjnDousKt4/
	he/hr78E0fHZGHCDLpyynw15QTI2XLK24w4h4CoBUKiU1B3FQGyMHZpws8lxmjDylZeTQl9In8Zzy
	1g9Fs7uEmXUjWWjsezaaF+MDoWDPx8dazOl/jGkFPJxTHPaDDVcizMWmFgra91R7FdHNqEw6rwiSj
	0XNsSkYUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgEy-00049V-LK; Thu, 07 May 2020 13:07:04 +0000
Received: from out4436.biz.mail.alibaba.com ([47.88.44.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgEr-00048C-9q
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:06:58 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R881e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e07425;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=37; SR=0;
 TI=SMTPD_---0TxqomBt_1588856677; 
Received: from 30.27.116.247(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0TxqomBt_1588856677) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 07 May 2020 21:04:38 +0800
Subject: Re: [PATCH v4 2/7] KVM: arm64: clean up redundant 'kvm_run' parameters
To: Marc Zyngier <maz@kernel.org>
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
 <20200427043514.16144-3-tianjia.zhang@linux.alibaba.com>
 <35eb095a344b4192b912385bc02c54e6@kernel.org>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <f093f6cf-4892-7c8f-d3aa-e908d5740cba@linux.alibaba.com>
Date: Thu, 7 May 2020 21:04:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <35eb095a344b4192b912385bc02c54e6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_060657_482209_229C3385 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -8.7 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [47.88.44.36 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: wanpengli@tencent.com, kvm@vger.kernel.org, david@redhat.com,
 benh@kernel.crashing.org, heiko.carstens@de.ibm.com, peterx@redhat.com,
 linux-mips@vger.kernel.org, paulus@ozlabs.org, hpa@zytor.com,
 kvmarm@lists.cs.columbia.edu, linux-s390@vger.kernel.org,
 frankja@linux.ibm.com, chenhuacai@gmail.com, mpe@ellerman.id.au,
 joro@8bytes.org, x86@kernel.org, borntraeger@de.ibm.com, mingo@redhat.com,
 julien.thierry.kdev@gmail.com, thuth@redhat.com, gor@linux.ibm.com,
 suzuki.poulose@arm.com, kvm-ppc@vger.kernel.org, bp@alien8.de,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jmattson@google.com,
 tsbogend@alpha.franken.de, cohuck@redhat.com, christoffer.dall@arm.com,
 sean.j.christopherson@intel.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, pbonzini@redhat.com, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDIwLzUvNSAxNjozOSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IEhpIFRpYW5qaWEsCj4g
Cj4gT24gMjAyMC0wNC0yNyAwNTozNSwgVGlhbmppYSBaaGFuZyB3cm90ZToKPj4gSW4gdGhlIGN1
cnJlbnQga3ZtIHZlcnNpb24sICdrdm1fcnVuJyBoYXMgYmVlbiBpbmNsdWRlZCBpbiB0aGUgJ2t2
bV92Y3B1Jwo+PiBzdHJ1Y3R1cmUuIEZvciBoaXN0b3JpY2FsIHJlYXNvbnMsIG1hbnkga3ZtLXJl
bGF0ZWQgZnVuY3Rpb24gcGFyYW1ldGVycwo+PiByZXRhaW4gdGhlICdrdm1fcnVuJyBhbmQgJ2t2
bV92Y3B1JyBwYXJhbWV0ZXJzIGF0IHRoZSBzYW1lIHRpbWUuIFRoaXMKPj4gcGF0Y2ggZG9lcyBh
IHVuaWZpZWQgY2xlYW51cCBvZiB0aGVzZSByZW1haW5pbmcgcmVkdW5kYW50IHBhcmFtZXRlcnMu
Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFRpYW5qaWEgWmhhbmcgPHRpYW5qaWEuemhhbmdAbGludXgu
YWxpYmFiYS5jb20+Cj4gCj4gT24gdGhlIGZhY2Ugb2YgaXQsIHRoaXMgbG9va3MgT0ssIGJ1dCBJ
IGhhdmVuJ3QgdHJpZWQgdG8gcnVuIHRoZQo+IHJlc3VsdGluZyBrZXJuZWwuIEknbSBub3Qgb3Bw
b3NlZCB0byB0YWtpbmcgdGhpcyBwYXRjaCAqaWYqIHRoZXJlCj4gaXMgYW4gYWdyZWVtZW50IGFj
cm9zcyBhcmNoaXRlY3R1cmVzIHRvIHRha2UgdGhlIHNlcmllcyAoSSB2YWx1ZQo+IGNvbnNpc3Rl
bmN5IG92ZXIgdGhlIGphbml0b3JpYWwgZXhlcmNpc2UpLgo+IAo+IEFub3RoZXIgdGhpbmcgaXMg
dGhhdCB0aGlzIGlzIGdvaW5nIHRvIGNvbmZsaWN0IHdpdGggdGhlIHNldCBvZgo+IHBhdGNoZXMg
dGhhdCBtb3ZlIHRoZSBLVk0vYXJtIGNvZGUgYmFjayB3aGVyZSBpdCBiZWxvbmdzIChhcmNoL2Fy
bTY0L2t2bSksCj4gc28gSSdkIHByb2JhYmx5IGNoZXJyeS1waWNrIHRoYXQgb25lIGRpcmVjdGx5
Lgo+IAo+IFRoYW5rcywKPiAKPiAgwqDCoMKgwqDCoMKgwqAgTS4KPiAKCkRvIEkgbmVlZCB0byBz
dWJtaXQgdGhpcyBzZXQgb2YgcGF0Y2hlcyBzZXBhcmF0ZWx5IGZvciBlYWNoIAphcmNoaXRlY3R1
cmU/IENvdWxkIGl0IGJlIG1lcmdlZCBhdCBvbmNlLCBpZiBuZWNlc3NhcnksIEkgd2lsbApyZXN1
Ym1pdCBiYXNlZCBvbiB0aGUgbGF0ZXN0IG1haW5saW5lLgoKVGhhbmtzLApUaWFuamlhCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
