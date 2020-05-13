Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C741D1D1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 20:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlrvY8KtmN9Hx6nXGRDbxfXlB6zUUxBOx6ulfbv/GSE=; b=Y7lrhUAZrcUldI
	2I6MT3gzcHLIv5SPT5LGt++FbBl0P5esAieJTpKfY+TZm5ArlaysOOEzt8reNrNUZOED7j4czmjg2
	cAphs8LADzPMVud2LJNLUuj/lFDm+YqMIfaMBbIk8qntLpHz2jLVp+MCGyL7koO2JnnBG5Z/+eKFm
	11HLhZ6Kb7mMJow1qx3Yl93U50kl7WdrCbcxplo68bx+7eMvWwWCxDypC9p5kMhWPTcVJtfKjzVHb
	Ocx5E4ZKQAMOkPfNZZghQJQolr+2qiCK2NbBAxtfzQCTlPn3s5hcIdzN3s4G6yMvvIm7c/mq8IZ5Q
	J3m/WrKtBiyfx6f8QAeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYvrx-0002YD-F7; Wed, 13 May 2020 18:12:37 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYvrn-0002XB-SW
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 18:12:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jnYTd18dSt41BdQZ/PWGHqIR6HBkzj/uEIanKzmnO+A=; b=IRzbKPJ6DXtGr5nbItdojQAhW
 5k6xDuRy1MCEEvWDnp26LePXrbz8jjqpHozkA0ME0Y4Xp2WQA6mcnY9WdmhaRG8tNYAShsi9/7qZa
 kT8XSSedzCzi44W0lk/24sP9yiCBJOgZZWaTzt8wZmqiga/zamBspmq3q5uOXGN7ymAh+0ApL/9HE
 ZjR9H7nh9zC50sq4KrOqW9iCvOWX8sp7JRCxWs2gub+E0XeBNVGQsXlFVMooRBu4+ikRE+vybVEn0
 1SObZnj6H/eNxn5Ifn6li42GX3zHsFQYXxkAyyNYOLmPV+Yi0bsBX8N4jGqpiKzmYCm2cFKsLflr2
 yr9IDrSjw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:60030)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jYvra-0005SJ-3J; Wed, 13 May 2020 19:12:14 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jYvrW-0007zk-5b; Wed, 13 May 2020 19:12:10 +0100
Date: Wed, 13 May 2020 19:12:10 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Fredrik Strupe <fredrik@strupe.net>
Subject: Re: [RFC PATCH] arm: Don't trap conditional UDF instructions
Message-ID: <20200513181209.GM1551@shell.armlinux.org.uk>
References: <b2042f19-9477-272c-0989-d6cab1572cca@strupe.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2042f19-9477-272c-0989-d6cab1572cca@strupe.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_111227_922330_57BAF4C4 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Oleg Nesterov <oleg@redhat.com>, Richard Fontana <rfontana@redhat.com>,
 Allison Randal <allison@lohutok.net>, Thomas Gleixner <tglx@linutronix.de>,
 Enrico Weigelt <info@metux.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 05:41:58PM +0200, Fredrik Strupe wrote:
> Hi,
> 
> This is more of a question than a patch, but I hope the attached patch makes
> the issue a bit clearer.
> 
> The arm port of Linux supports hooking/trapping of undefined instructions. Some
> parts of the code use this to trap UDF instructions with certain immediates in
> order to use them for other purposes, like 'UDF #16' which is equivalent to a
> BKPT instruction in A32.
> 
> Moreover, most of the undef hooks on UDF instructions assume that UDF is
> conditional and mask out the condition prefix during matching. The attached
> patch shows the locations where this happens. However, the Arm architecture
> reference manual explicitly states that UDF is *not* conditional, making
> any instruction encoding with a condition prefix other than 0xe (always
> execute) unallocated.

The latest version of the ARM architecture reference manual may say
that, but earlier versions say different things. The latest reference
manual does not apply to earlier architectures, so if you're writing
code to cover multiple different architectures, you must have an
understanding of each of those architectures.

So, from the code:

	ARM:   xxxx 0111 1111 xxxx xxxx xxxx 1111 xxxx

From DDI0100E:

3.13.1 Undefined instruction space
       Instructions with the following opcodes are undefined
       instruction space:

       opcode[27:25] = 0b011
       opcode[4] = 1

       31 28 27 26 25 24                                     5 4 3     0
       cond  0  1  1  x  x x x x x x x x x x x x x x x x x x x 1 x x x x

So, in this version of the architecture, undefined instructions may
be conditional - and indeed that used to be the case.  The condition
code was always respected, and cond=1111 meant "never" (NV).

Hence, trapping them if the condition code is not 1110 (AL) is
entirely reasonable, legal and safe.  If an ARM CPU defines an
instruction coding that matches the above, then it won't take the
undefined instruction trap, and we'll never see it.

Now, as for UDF usage in the kernel, it may be quite correct that we
always use the AL condition code for them, but it would be very odd
for there to be an instruction implemented with a different (non-NV)
condition code that can't also have it's AL condition code encoding.
You could never execute such an instruction unconditionally.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
