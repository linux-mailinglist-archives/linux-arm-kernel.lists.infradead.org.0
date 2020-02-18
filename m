Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39307162730
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:35:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VvQy4cNub0Iaoj2JM4q6cAkJz7MqRXM3WsV43HILcgE=; b=UeXR48XXDGXJ2vd1JBs+sKSQ9
	GMa54kr2OrGePtQqJc+CkBWa/ehGxNSA0/W0nxlLGmAVcOB/B32/rWPeSV6hV5W0FtuVMUwBB3KHa
	53uNyG0+8L9kAnd47z4/p8cI5Z6JUpuDxrjOfne79svA8lrLgYwtdDam9IOvjZKr+lW4NdCet6xDy
	54kZhefHxruF/efeVoxQxJtmpZtecu7LPliVqRoR5w8mvf08+ukjhZFy+cGY+8S9/zLxy1Jpx0tU6
	8rRcwpdisgaORp+ie0W1OBn4YXK/fDNSA7vixP6qUw5E74hT8SgCe2bVtMPZHT48KFDbXaNfVO9+i
	mVqvEIqrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j432S-00088T-GL; Tue, 18 Feb 2020 13:35:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j432J-000882-Ip
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:35:40 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A997620722;
 Tue, 18 Feb 2020 13:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582032938;
 bh=w4ji1nmcF42SkVdUE5dyIJMGkQbp3MsktM60Liks4NI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BFgdAtlHvZD/pEWVy2TbUrsm4mv1D46TjlPhIvRbN+sE6BaO22lSq7IulKGtsMXgb
 x76+vEUBqssNsc3UaAdqZfieG8flIRuq4FJ4bzjm12vaMfONLE9EOup9rolUyqUDoW
 g1pKx31Y7O0bBLHfL7+uQv3EaehnDGeku/puobhA=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j432H-006E8H-0w; Tue, 18 Feb 2020 13:35:37 +0000
MIME-Version: 1.0
Date: Tue, 18 Feb 2020 13:35:36 +0000
From: Marc Zyngier <maz@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: kvm: Modernize annotation for __bp_harden_hyp_vecs
In-Reply-To: <20200218132946.GF4232@sirena.org.uk>
References: <20200218124456.10615-1-broonie@kernel.org>
 <49f7de5f1d86e7edcc34edb55d5011be@kernel.org>
 <20200218130953.GD20212@willie-the-truck>
 <20200218132946.GF4232@sirena.org.uk>
Message-ID: <e872e1cfb95b4c98cceab371a1a54107@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: broonie@kernel.org, will@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_053539_641404_199626C4 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-18 13:29, Mark Brown wrote:
> On Tue, Feb 18, 2020 at 01:09:53PM +0000, Will Deacon wrote:
>> On Tue, Feb 18, 2020 at 12:56:52PM +0000, Marc Zyngier wrote:
>> > I'd really appreciate it if you could send these as a series, instead of
>> > an isolated patch every other day.
> 
>> Same for the non-KVM parts, please :)
> 
> Ugh, right.  As one series or as different serieses for the different
> trees that apply things (eg, KVM and crypto)?  The multi tree stuff
> worries me.

Up to you. I personally think it is useful to see the whole thing for 
arm64
as a single series, and we can then decide who picks what between 
ourselves
(or shove the whole thing via a single tree).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
