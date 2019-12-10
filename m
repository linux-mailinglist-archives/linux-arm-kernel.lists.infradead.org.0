Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C17D118CBE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 16:38:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2dxX1tYv9QcWpTCp5UGajgfrd67o7QwIfSBhqS4OfQw=; b=HZgddjsptXBNBt
	hxIVq3YhkoEQY7/+oPZiOP2n0qGyOQzlR8Ng/wiWR4hDPofwvqKqiK1+o1x2qQ4Vji/wTUPSEdq2v
	/sJkDcln5ohfm+W2lndN5bh29F+F8NtXM8d+kcnf1KheAwEf/fST34EvQ2oVivJSvY4PFP6yFa9MX
	Q388OkmP+Ak9RLSGbTYWwqfGa0jLlvZDqEF5Db1ywgPtH2gKKI66W86mHFnzJa1f/aiWMo7AuxHlt
	Aft0TZrXQsLbYYMUB/BL+x46/yD29lxPaWmA5K2LnewShYNcRYSJMtMrTDeVRSjQpt+oDEvtgREId
	J0Mtueja3MUmxPKCSuMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iehbC-0004LC-6F; Tue, 10 Dec 2019 15:38:54 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iehb5-0004Kd-Jd
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 15:38:49 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 04E6280E1;
 Tue, 10 Dec 2019 15:39:21 +0000 (UTC)
Date: Tue, 10 Dec 2019 07:38:40 -0800
From: Tony Lindgren <tony@atomide.com>
To: Jens Wiklander <jens.wiklander@linaro.org>
Subject: Re: arm_smccc_smc as generic smc interface?
Message-ID: <20191210153840.GL35479@atomide.com>
References: <20191209180752.GJ35479@atomide.com>
 <CAHUa44EJAjL+MGqgKd6YvQAg0z4hRYXb9MeTqsTYhAe-RBZt+g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHUa44EJAjL+MGqgKd6YvQAg0z4hRYXb9MeTqsTYhAe-RBZt+g@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_073847_685673_CC25408E 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sumit Garg <sumit.garg@linaro.org>,
 Arnd Bergmann <arnd@arndb.de>, Volodymyr Babchuk <vlad.babchuk@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, "Andrew F. Davis" <afd@ti.com>,
 Olof Johansson <olof@lixom.net>, Russell King <rmk+kernel@armlinux.org.uk>,
 Marc Zyngier <maz@kernel.org>, Andy Gross <andy.gross@linaro.org>,
 Colin Ian King <colin.king@canonical.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Jens Wiklander <jens.wiklander@linaro.org> [191210 08:10]:
> Hi Tony,
> 
> On Mon, Dec 9, 2019 at 7:07 PM Tony Lindgren <tony@atomide.com> wrote:
> >
> > Hi all,
> >
> > So it seems that we could make arm_smccc_smc() into a generic kernel
> > smc interface instead of being limited to optee usage. That is
> > assuming optee and legacy calls are never be enabled the same time
> > on a booted system :)
> 
> arm_smccc_smc() is not limited to OP-TEE only. A quick grep gives
> quite a few places of which OP-TEE is just one.

OK good to hear.

> > I know arm_smccc_smc() currently assumes a specific register usage
> > for the optee case, but AFAIK those limitations do not exist for
> > non-optee cases.
> 
> arm_smccc_smc() is for SMCs following SMC calling convention, see
> http://infocenter.arm.com/help/topic/com.arm.doc.den0028a/index.html

Hmm yes that's the part I'm wondering about. For older TI SoCs,
in the non-optee cases, the TI smc calls do not follow the newer
convention at least for r12 usage. For optee cases, TI SoCs follow
the convention AFAIK.

But assuming optee and non-optee are never active the same time,
handling the TI r12 quirk for non-optee cases should not cause
issues that I can think of.

However, if we wanted to have arm_smccc_smc() bail out for non-optee
cases for example, then it probably makes sense to move most of the
arm_smccc_smc() into a more generic function like arm_smc(), and
then have arm_smccc_smc() call arm_smc(). But AFAIK this should
not be needed as the optee code would not be active in the
non-optee case at all.

> > Does anybody see some other issues with making arm_smccc_smc() into
> > a generic smc call interface?
> 
> I suppose that depends on what you mean with a generic smc call
> interface. arm_smccc_smc() is quite generic already as I see it. :-)

Yes it already has nice quirk handling and should work nicely
to replace most of the SoC specific smc calls eventually :)

> > If there are some more optee specific considerations with making
> > arm_smccc_smc() into a generic interface, we could just set up
> > something generic that also arm_smccc_smc() can then call.
> 
> OP-TEE is relying on SMC calling convention
> http://infocenter.arm.com/help/topic/com.arm.doc.den0028a/index.html

Yes and the earlier non-optee smc cases may or may not follow it.

> > The use case I'm familiar with are the old TI smc calls that need
> > register specific quirks enabled only for the non-optee case,
> > while with optee enabled, quirks are not needed. There are
> > probably similar issues with other SoCs too.
> 
> I'm not too familiar with those. There's a few of them in the OP-TEE
> code base too, so at least some of them can be handled via the SMC
> calling convention.
> 
> In <arm-smccc.h> there's already been made room for some Qualcomm
> quirks, perhaps it's possible to use or extend it to cover the TI
> cases you have in mind.

Yeah that's my thinking too as long as there are no issues using
arm_smccc_smc() for non-optee cases.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
