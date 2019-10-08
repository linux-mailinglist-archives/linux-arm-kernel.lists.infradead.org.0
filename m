Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434BBCF6FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 12:25:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KIih7HAqjVkFUE+vk0ZkCMEN199DsTO0NcvvqiA0wrk=; b=tQjZNBoiAYkxuq
	sMy2HUZ8WdHTYsvl6YFXKB8PMgQkKG8a1clFOD4HTa3j3bCxieOudLKya55kFBsjZNzpV/uLilZCi
	Ndm8g4/+HYKhXCM8RPr6s8AbqOPicvhMQn+EKbddi4iT0aZBj62YFiLoib4MnPpaEaMr+YuFPD6Kz
	PmRqo+hjpEFOD1mByFAQYtESC9ZSiagBdf2ZTlMC04saQH1YxlF/RgIUjPuGI2R0zKvKYaJFCn2gZ
	0f1YKTAS2SwrnuKLbpCJIry3nl81r6Yu4BkdL+xW/ALSpuX3pehblA8ljKNXuxqoV5K/lLm40KKHi
	jKg8MK4cREcFRl5JlmTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHmgG-00089k-F1; Tue, 08 Oct 2019 10:25:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHmg9-000898-A7
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 10:25:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D277D206BB;
 Tue,  8 Oct 2019 10:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570530316;
 bh=xvQs2o0EkBO2YHBiV+0D/Vc9/Ghl0Vhxiv3685TLTIY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=egWENj8PwMc2WcACRDBMWTlZGkW2pxt0YBJ7nm9KJu66YC/B3eUUpWGJru2vDHShm
 y8GbOMhvNSP5KfEG7Mn2kqQJwJp9SJwvvvQdIjqT0GBG/zr9n9qbrMqb5DU+wnlPMN
 uVv8njYO0qCDjrf5+MVm+HJGhXvh6DjojbuhonbA=
Date: Tue, 8 Oct 2019 11:25:12 +0100
From: Will Deacon <will@kernel.org>
To: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: Re: [PATCH v2] arm64: armv8_deprecated: Checking return value for
 memory allocation
Message-ID: <20191008102511.pmkqcpf7spkogarp@willie-the-truck>
References: <bd558d56-18a9-3607-3db0-ad203ab12aa8@huawei.com>
 <20191007153710.7xpx27kgeewz75kt@willie-the-truck>
 <e58c36f6-23e3-12b2-bd9c-1ef731b5f8fd@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e58c36f6-23e3-12b2-bd9c-1ef731b5f8fd@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_032517_373839_4E03C4A7 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kstewart@linuxfoundation.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org, tglx@linutronix.de,
 info@metux.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 10:33:17AM +0800, Yunfeng Ye wrote:
> On 2019/10/7 23:37, Will Deacon wrote:
> > On Mon, Oct 07, 2019 at 06:06:35PM +0800, Yunfeng Ye wrote:
> >> @@ -617,25 +624,47 @@ static int t16_setend_handler(struct pt_regs *regs, u32 instr)
> >>   */
> >>  static int __init armv8_deprecated_init(void)
> >>  {
> >> -	if (IS_ENABLED(CONFIG_SWP_EMULATION))
> >> -		register_insn_emulation(&swp_ops);
> >> +	int ret = 0;
> >> +	int err = 0;
> >> +
> >> +	if (IS_ENABLED(CONFIG_SWP_EMULATION)) {
> >> +		ret = register_insn_emulation(&swp_ops);
> >> +		if (ret) {
> >> +			pr_err("register insn emulation swp: fail\n");
> >> +			err = ret;
> >> +		}
> >> +	}
> > 
> > Is there much point in continuing here? May as well just return ret, I
> > think. I also don't think you need to print anything, since kmalloc
> > should already have shouted.
> > 
> The registration of each instruction simulation is independent. I think
> that one failure does not affect the registration of other instructions.

Dunno, I think that if kmalloc() starts failing then it's time to give up!

> In addition, if return directly, is it need to unregister? Of course,
> the first instruction registration can be directly returned, If the
> following instruction registration fails, is it need unregister operation?
> currently the unregistration of instruction simulation is not be implemented
> yet.

That's an interesting one -- currently there isn't a way to unregister
an emulation hook afaict. We could add unregister_insn_emulation() to
remove the emulation hook from the insn_emulation list and free it, but
I'm actually now starting to prefer your initial patch after all. The only
way these failures will happen are either because the system is doomed
or kmalloc fault injection is being used; so keeping things simple rather
than add rarely executed complexity is probably best.

> The purpose of printing information is to replace the direct return, which
> can distinguish which instruction failed to register. There is no need to print
> information if it returns directly.

What do you expect people to do with that information?

Are you ok with me applying your original patch?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
