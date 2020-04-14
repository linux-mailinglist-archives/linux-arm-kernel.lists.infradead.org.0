Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DEE1A7BF7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lo7sW8q+RrzKdZAv/Y9PhyhbsDh159xaU8kjWZPXUGc=; b=A08r6fdI1wBY+u
	uATwCCv9YexGab+OTG7Rsk/mmzPbAfP2D9M8QJVgSpELws7W8c4ma7yikrow/sDqi/jGeAkTEzQpL
	VcyPZtrb5M4u/Aw3jhCRA71TaN2g7tE/UAgHTfToNAF+K93p7djWZIhVnwxUDTZ5iWMbmSav9G+/F
	YyNOWE/eAOmdVkfcMdEjN4xTOcRLLfnsjH+rOvijwmbxQmUZIVtqB2LOT2NbWrz0ARAzCQo4iviCn
	MuKbAIdA9BdbuhyShxx28kW2UAhyBaUrqQMQh/NN0PtNezbShRXdsmD7cXgua2XQTEV2ONDiz8xEq
	HlZrdl23nRRv3X3gKemA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLKV-0005Fi-CR; Tue, 14 Apr 2020 13:10:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLKN-0005EE-Na
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:10:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5A1E208E0;
 Tue, 14 Apr 2020 13:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586869811;
 bh=5vHG4+6iErXLPmTRrJYEu4GrUc05+e+J4rIqGDHfSfE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ILWPsnQPTPGIrVz3E/SkylhdyjTnS5mf+ZbK/bIYQhYwCy5vatruKTmIL+AggyKC0
 YZChfr1/3a7zAJT18sIWxznjIfZLtnK6en1PBXR/Cb+P66xmQnvivEp/vpgAOWMrRy
 CHDh0Gud96YvnzpLRHkMgYGPNHQYWALf3BB1f0u0=
Date: Tue, 14 Apr 2020 14:10:06 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: Optimize ptrauth by enabling it for non-leaf
 functions
Message-ID: <20200414131005.GA28750@willie-the-truck>
References: <1586856741-26839-1-git-send-email-amit.kachhap@arm.com>
 <20200414100033.GA26395@willie-the-truck>
 <20200414101649.GC1278@C02TD0UTHF1T.local>
 <20200414110056.GB26395@willie-the-truck>
 <20200414110922.GC2486@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414110922.GC2486@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_061011_794381_95252751 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 12:09:22PM +0100, Mark Rutland wrote:
> On Tue, Apr 14, 2020 at 12:00:56PM +0100, Will Deacon wrote:
> > On Tue, Apr 14, 2020 at 11:16:49AM +0100, Mark Rutland wrote:
> > > I believe this is because leaf functions don't store the LR to the stack
> > > (as they don't create a frame record), so it cannot be modified by a
> > > stray memory write.
> > 
> > That makes some sense, but doesn't it also mean you can jump into the middle
> > of a leaf function and it will happily return to whatever sits in LR?
> 
> If you can do that, you've already subverted control flow, and can
> probably do the same for a regular function, since for:
> 
> | AUTIASP
> | RET
> 
> ... you can just jump to the RET instead.

Perhaps, but it's not at all clear to me that being able to jump over the
AUT instruction is just as easy or useful as being able to jump into the
middle of a leaf function, which might act as a form of gadget. The commit
message is quite bold in saying "[this] is not useful from security point
of view".

How would this interact with BTI? Would we need to have different landing
pads for leaf functions?

> > Perhaps it would make sense to relax to the 'non-leaf' version only if
> > stack protector is enabled?
> 
> I'm not sure I follow the rationale for that? What does stack protector
> help with for leaf functions?

Yeah, course it doesn't help because we're not pushing a frame. Ignore me.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
