Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B891233F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 18:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5NGAwuFf1pQsAItuzUfugwc+/EdvZ4rTXWinX0yCZo=; b=u9PHu/5FOsptKU
	Z8kxu0sGr2Ifil53CXopDJ02sABaGXlXkhsS220bs88OvRns/QQghAdUdqebeXSakM2gg6LRAHIDk
	EHUoQECJ1ZSy/6fPnI1DR2ER+CH2v2R7FKFFF0JAoOa/xLj9nPa7f9i8xtYUqqiAWceQHLLKHmygv
	sAKu+wedgaYRT2iwrbe4Cloo0Li84pHCoGj8I/QFMaFpbElI8q8k7Zr1YEYFujq/XyUjwTXLPjzay
	aHF9JJZXCpucifiP+4XcEylOIu7u+UlFz/KQsSuGWo2ayz8YbuyUIpIgY8TcGNcyj7FhmxkYE9G9V
	I713gmo2dGhI/Hn8Euew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihH42-0001LA-19; Tue, 17 Dec 2019 17:55:18 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihH3u-0001HB-Na
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 17:55:11 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 09:55:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="227576274"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by orsmga002.jf.intel.com with ESMTP; 17 Dec 2019 09:55:08 -0800
Date: Tue, 17 Dec 2019 09:55:08 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Christian Borntraeger <borntraeger@de.ibm.com>
Subject: Re: [PATCH v3 00/15] KVM: Dynamically size memslot arrays
Message-ID: <20191217175507.GA8052@linux.intel.com>
References: <20191024230744.14543-1-sean.j.christopherson@intel.com>
 <20191203221433.GK19877@linux.intel.com>
 <20191213200151.GF31552@linux.intel.com>
 <ca928a38-4bc0-88cd-dc70-62aec8695c77@de.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ca928a38-4bc0-88cd-dc70-62aec8695c77@de.ibm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_095510_781078_7F45C34D 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 James Hogan <jhogan@kernel.org>, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, David Hildenbrand <david@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 09:25:24AM +0100, Christian Borntraeger wrote:
> 
> On 13.12.19 21:01, Sean Christopherson wrote:
> > Applies cleanly on the current kvm/queue and nothing caught fire in
> > testing (though I only re-tested the series as a whole).
> 
> Do you have the latest version somewhere on a branch? The version on the
> list no longer applies cleanly.

Ah, I only tested with my sparse x86-only tree.  The result with three-way
merging, i.e. 'git am -3', looks correct at a glance.

Regardless, I need to spin a new version to handle a conflict with an
unrelated in-flight memslots bug fix, I'll get that sent out today.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
