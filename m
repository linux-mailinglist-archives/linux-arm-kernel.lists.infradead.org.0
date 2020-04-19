Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 300CE1AF8BB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 10:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ioaM+A+LNdaKeOE27Vs4msT2qqbKjd60b3iO4hN48ZE=; b=sJmvGywTu2sZp4ade2hNSCVkz
	avmTBSEMiQI3qYDrkzGWiNjiNaIkIc1xMZ9OBRDbkDN0nLKvK7QDO74KmDjBmUGaa+r24pFiUcRAy
	rWrhKXz1ce8/G7/S61XoTaX6xgDAcp8ZKTzruluwM1Kwi/DVS0pJzHa97x7y3yDcb2P9d98mB+E5l
	oIP8btC69ZC/HaEQsGB91xFo33qKwFlr4ABV+zmTBoogInmiP/HwnJGgg/SQyYdIoPAB0vDA6JC2W
	zedoSaIgiAo8j1T9p7fPWk1OTVuFr1TWvlTR9mED+HOV3gaiB2LAnRtvkAkaOrMOVkbQZqdeAsSS5
	TN4DhdyDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ5Fl-00038R-RR; Sun, 19 Apr 2020 08:24:37 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ5Fg-00036r-7K
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 08:24:33 +0000
IronPort-SDR: vA75n7x+6X6bO/37iiuVkvWsWRgCOCz7ubulNgT27kXvD9alHEzgN3zdurCTmRMeRHDCNBJv3Q
 hmowsKXzy22Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2020 01:24:28 -0700
IronPort-SDR: 5bTV3PMh/h/IpB7kLfIrzCg8Fo/mJzhnyaMGYARomkIW7rvbXCWMjVwZD/fKzDk1jnTpAU1Qxz
 1DLl94MlS5Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,402,1580803200"; d="scan'208";a="456070012"
Received: from xiaoyaol-mobl.ccr.corp.intel.com (HELO [10.255.30.120])
 ([10.255.30.120])
 by fmsmga006.fm.intel.com with ESMTP; 19 Apr 2020 01:24:20 -0700
Subject: Re: [PATCH] KVM: X86: Fix compile error in svm/sev.c
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>, pbonzini@redhat.com,
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
From: Xiaoyao Li <xiaoyao.li@intel.com>
Message-ID: <82ce1798-1dab-d271-d084-e9a89bb44e71@intel.com>
Date: Sun, 19 Apr 2020 16:24:19 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200419073047.14413-1-tianjia.zhang@linux.alibaba.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_012432_277323_09E78596 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
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
Cc: linux-s390@vger.kernel.org, kvm@vger.kernel.org, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNC8xOS8yMDIwIDM6MzAgUE0sIFRpYW5qaWEgWmhhbmcgd3JvdGU6Cj4gVGhlIGNvbXBpbGVy
IHJlcG9ydGVkIHRoZSBmb2xsb3dpbmcgY29tcGlsYXRpb24gZXJyb3JzOgo+IAo+IGFyY2gveDg2
L2t2bS9zdm0vc2V2LmM6IEluIGZ1bmN0aW9uIOKAmHNldl9waW5fbWVtb3J54oCZOgo+IGFyY2gv
eDg2L2t2bS9zdm0vc2V2LmM6MzYxOjM6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBm
dW5jdGlvbgo+IOKAmHJlbGVhc2VfcGFnZXPigJkgWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24t
ZGVjbGFyYXRpb25dCj4gICAgIHJlbGVhc2VfcGFnZXMocGFnZXMsIG5waW5uZWQpOwo+ICAgICBe
fn5+fn5+fn5+fn5+Cj4gCj4gVGhlIHJlYXNvbiBpcyB0aGF0IHRoZSAncGFnZW1hcC5oJyBoZWFk
ZXIgZmlsZSBpcyBub3QgaW5jbHVkZWQuCj4gCgpGWUkuCgpCb3JpcyBoYXMgc2VudCB0aGUgUGF0
Y2g6Cmh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAyMDA0MTExNjA5MjcuMjc5NTQtMS1icEBh
bGllbjguZGUKCmFuZCBpdCdzIGFscmVhZHkgaW4ga3ZtIG1hc3Rlci9xdWV1ZSBicmFuY2gKCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
