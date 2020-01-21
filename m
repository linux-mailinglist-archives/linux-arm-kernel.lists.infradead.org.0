Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADCF143B07
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:31:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/K1Cora4reFTo2BgzbxODZ1YWr2YYVBU3SP/Z/CFJ9g=; b=NqTKn/U9BRhbF7
	Zp6fY283enYJO0vsfD+is2GKD0Suh795lyEmiYZuIzpmTwFGyzvVV1j5F1purOvziQzxF4yj3tvsf
	7M1bAqGLtEvMUTi591alejA+tLCi3jVvX2PpBJxCkHK++dOV9w5McjSGckHGHBZ3PuCcKRMF3CDu4
	xP9b8PiDsHH22F43lMO9cC7Ee0NIoKVW/welSvzbIdDPGBavgBXSl/5vlTVU+Sn+acO6S6BxYcbPw
	9xzc2GJUo/LFkbJqd9F4PR+b9dr1Odwwq3DpKeE7De0z2fq2slnX99TPYlW7o+oY0U+n35H8pORku
	572fXc5+/cwzJmDyEz6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqoA-0007RH-05; Tue, 21 Jan 2020 10:30:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqnd-0007ET-Fc
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:30:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE7C620678;
 Tue, 21 Jan 2020 10:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579602621;
 bh=CFvr2yZi8uW4XNkhcRrDChld0311DjfCPF5hmWVFq2M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0MP6HHPrVVzubge9LFKPs2C7/a5MhgGKkqCgklkd87xtb5fGI0LbX2zgVFRKSm31N
 2MVekLMbQ1OB+TCX4J0MFIBvX9z/YUwE5S6aoQ71QpYqnygk3WXBrW7UgvuJ08gfl2
 shlScMCvueUcvHYilImUt8EImVg25wKcTpUwdmrA=
Date: Tue, 21 Jan 2020 10:30:16 +0000
From: Will Deacon <will@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [RFC v5 12/57] objtool: check: Allow jumps from an alternative
 group to itself
Message-ID: <20200121103016.GB11154@willie-the-truck>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-13-jthierry@redhat.com>
 <20200120145656.GC14897@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120145656.GC14897@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023021_567205_3B0F3564 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Julien Thierry <jthierry@redhat.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, raphael.gault@arm.com, jpoimboe@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 03:56:56PM +0100, Peter Zijlstra wrote:
> On Thu, Jan 09, 2020 at 04:02:15PM +0000, Julien Thierry wrote:
> > Alternatives can contain instructions that jump to another instruction
> > in the same alternative group. This is actually a common pattern on
> > arm64.
> 
> LL/SC I bet...

I think there are some nasty errata workarounds that need it too.

WIll

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
