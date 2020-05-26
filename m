Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9E41E1AC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 07:45:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44ztDmxgofwZP8bVVoO/OYlvk6CC9U6q72XAEhn6d3I=; b=HB2F3uDAHvhVBD
	cE6kdT0oDM0CBQoxfm62IvlSQXsZ7xagEc94IG8iQPKbOrVihsq1EKbHvHv3EPYldmHxw3RHkpTfF
	IWZzRUHogcvxL0lourKBczsjjoI45aSs3Um1CluweBDTw+F0W05Y7dyObkGs4ZaIxEVYXkTXDl+uT
	Rk6BfoXnLgj5nmsfgVuKEsUf+mWtIhljNPccozpFpAEQuJ18u+Rj3UY2Gwu5MfNAzYaX+k9hYykAs
	VBEGPLiUZzzgmND/doVXRlhtRyxi9fkG5sfr+LTOYfJNiG1zf9w/p21dg7tKrQ70160rZKWosI+38
	CQ3v4IxfSPOgUP2nkjhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdSOX-0000lQ-NQ; Tue, 26 May 2020 05:44:57 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdSOP-0000kP-36
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 05:44:50 +0000
Received: by ozlabs.org (Postfix, from userid 1003)
 id 49WNFb23Kfz9sRY; Tue, 26 May 2020 15:44:35 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
 t=1590471875; bh=j0PNgC0xr6mRDHCZ2htDfbQsT0XH5gFzuCdilAoQCBw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H05nUKbvRSIH+7O5N9VUsnkHeRklB48VujBczf2Xtd7k/msK8glVNwOfwKFhBxaM2
 RMEhFP3061zuW6+4Tyn4tcDNAEbnpgE5y/GbpnLgkqD9inO7dRTJ8JdJazRZlG5By1
 dDTw25f7q0+rjMvV86X6zTMCLnL9GISRBtWJGAOBofFztGdhMaHaSDnzVJeKDOeTRr
 P/gT1fm1rSHSwWvDzu+Yy/x7JV3Y4U7YJfxqHFYoVKLC8zIAnftSk9Bv7oB4+ke1/z
 t+6gHdzDMsO3E/gW5yqaeDf4mGpMKKUTqOEkTCh4o4CEB+cdOrXQUL3itzvvSsvIix
 ogkCA1YC4CmqQ==
Date: Tue, 26 May 2020 14:36:56 +1000
From: Paul Mackerras <paulus@ozlabs.org>
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Subject: Re: [PATCH v4 3/7] KVM: PPC: Remove redundant kvm_run from vcpu_arch
Message-ID: <20200526043656.GA282305@thinks.paulus.ozlabs.org>
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
 <20200427043514.16144-4-tianjia.zhang@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427043514.16144-4-tianjia.zhang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_224449_293213_5ADA6474 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-mips@vger.kernel.org, hpa@zytor.com, kvmarm@lists.cs.columbia.edu,
 linux-s390@vger.kernel.org, frankja@linux.ibm.com, chenhuacai@gmail.com,
 maz@kernel.org, joro@8bytes.org, x86@kernel.org, borntraeger@de.ibm.com,
 mingo@redhat.com, julien.thierry.kdev@gmail.com, thuth@redhat.com,
 gor@linux.ibm.com, suzuki.poulose@arm.com, kvm-ppc@vger.kernel.org,
 bp@alien8.de, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 jmattson@google.com, tsbogend@alpha.franken.de, cohuck@redhat.com,
 christoffer.dall@arm.com, sean.j.christopherson@intel.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com, mpe@ellerman.id.au,
 pbonzini@redhat.com, vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 12:35:10PM +0800, Tianjia Zhang wrote:
> The 'kvm_run' field already exists in the 'vcpu' structure, which
> is the same structure as the 'kvm_run' in the 'vcpu_arch' and
> should be deleted.
> 
> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>

This looks fine.

I assume each architecture sub-maintainer is taking the relevant
patches from this series via their tree - is that right?

Reviewed-by: Paul Mackerras <paulus@ozlabs.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
