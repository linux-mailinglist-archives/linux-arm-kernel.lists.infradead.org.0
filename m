Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6FD1C0C1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 04:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iBL3FlCDWzRVBEXf8/iBaEAPDxMnGfg0ZMviZDgZhm4=; b=eTkBn2JNwyh16A
	3m6LQGndDrlb6Ekxuazm6nlDlbWEwHxpe7l7CV8iPMy5klRBTivsAKfQbKGuebBOMth7Cx2PAGmeD
	XrIAXCUipB3yEoePfHBjOIMBxYyCDjLG6mBTdkTEH78/U5PMKahN8Fy4GZCnW3C86muS5C5Zkp6Vm
	U56ZwUxA+rZ6lvFmirww/IfBugIuqNSfbudPlqkYC44yx9AkUXgoATfZreH8gBvpw4H4GkAfz+ned
	YrdbTm36Vvz6T7tBHCQzum0lEiSYYjgQ3bDRZqTHbjCgP/QOG6FVaVxXclsUo1ExXCNRaeHSl5K0K
	gajYsRsbeMXPMDC2726Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jULQL-0004vF-TH; Fri, 01 May 2020 02:29:09 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jULQB-0004uT-3H; Fri, 01 May 2020 02:29:00 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 49Cx5B5W4lz9sTP;
 Fri,  1 May 2020 12:28:46 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1588300133;
 bh=+bqrLgcGFCf99Uu0U3dlp7gViTjK7ah+NjB2S1m2Aik=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=C40FoaSbb6Q7wxAomTtdxarjIzmNFst3ymTI/G0w+2Kk4NeklpK6MsprW4aeFuOL/
 TkwCTTk/7ic3XMxxS6CK/X3oa/bQeVyESN7G+SaFXOX7im9fHNKTrHsMKV+kWikDkZ
 F4EQg/axXQnDydjHMY8YK4m1w7/g6KQLwOau55AA3fV9h56VfUn56xpldCbghHJ2Ak
 2N9znvLw+oscvvZuzcfTam9qWHZe31okh0MKjz+kAwW42XWB85OVqyucfXymD7ELvU
 m5F7EwikPo5WIhIxh6Mz3Olzdcc/jvC1qxexqP0q2olewhZMqGmdXIZmIE3aXRiBqJ
 5a8C0skKdBJKw==
From: Michael Ellerman <mpe@ellerman.id.au>
To: ira.weiny@intel.com, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>
Subject: Re: [PATCH V1 00/10] Remove duplicated kmap code
In-Reply-To: <20200430203845.582900-1-ira.weiny@intel.com>
References: <20200430203845.582900-1-ira.weiny@intel.com>
Date: Fri, 01 May 2020 12:29:00 +1000
Message-ID: <87imhge6c3.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_192859_300130_01D47A80 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Helge Deller <deller@gmx.de>, x86@kernel.org, linux-csky@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ira.weiny@intel.com writes:
> From: Ira Weiny <ira.weiny@intel.com>
>
> The kmap infrastructure has been copied almost verbatim to every architecture.
> This series consolidates obvious duplicated code by defining core functions
> which call into the architectures only when needed.
>
> Some of the k[un]map_atomic() implementations have some similarities but the
> similarities were not sufficient to warrant further changes.
>
> In addition we remove a duplicate implementation of kmap() in DRM.
>
> Testing was done by 0day to cover all the architectures I can't readily
> build/test.

I threw some powerpc builds at it and they all passed, so LGTM.

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
