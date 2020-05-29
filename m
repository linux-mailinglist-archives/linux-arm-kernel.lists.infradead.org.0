Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBA31E7A60
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 12:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iwMMRWR7hvj6FPn4WDeWV1TBPeqcf/Etdp5hDl4PkG8=; b=oJJzAt5QEUYuI4t5ANQiiFbLA
	3BtPS1PoxTmj1049kzaHF7rYhg5G0+LUtZlXvSl28qQ3gD81eTHvK01b+gmT4rgnkfIezGbH5s9wo
	oBkToa3O0qI8cVCR9TdikVoE7/0dnClLBH+PzDIwWbh7w0LLCrxmnUBHeYJoPbNKhejoomsovOnoa
	xkkFVnCXWdXw0C7wfvNVariN1MXqwL4NfMypLzpD8lWqwDWAu0TwYrPvLqHCTEXDNIt8c0SuRuht3
	1gmYWrLpTk/0cTmXg3nqdlG6BZj78c8+5t7RIprMvpxiCkbzuKFBgvfu1LsZAv8LF+CG2agB1Evbg
	ckRT4uBog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jec60-0001u8-Um; Fri, 29 May 2020 10:18:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jec5s-0001tc-Hb
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 10:18:29 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1D7832075A;
 Fri, 29 May 2020 10:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590747508;
 bh=1gO1/eZcCypQP2/ERBE2xRPkz/uvzqJx0ATFlqsEmQ0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CmSiG5525ab+yozhZiB84XPVzV7snokbfJF9Rtldc9iVsemZb0h2E/7sxR0sbiSAQ
 9HW8JvwQCF+b4epTSwe4rIDn1tkLcCaJEeWOrJcTLX7eIhRCnTxM32clXQIlFvzXJS
 VAAHNMY9zmUfU9+oPFoTPyUo/pQgmqfvRVhx2ahU=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jec5q-00GF29-8i; Fri, 29 May 2020 11:18:26 +0100
MIME-Version: 1.0
Date: Fri, 29 May 2020 11:18:26 +0100
From: Marc Zyngier <maz@kernel.org>
To: Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH 04/12] dt-bindings: irqchip: ti, sci-intr: Update bindings
 to drop the usage of gic as parent
In-Reply-To: <f803f646-2a55-4f15-9682-1dc616d7c714@ti.com>
References: <20200520124454.10532-1-lokeshvutla@ti.com>
 <20200520124454.10532-5-lokeshvutla@ti.com> <20200528221406.GA769073@bogus>
 <f803f646-2a55-4f15-9682-1dc616d7c714@ti.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <4ea8c6110a16900220a65f1d44145146@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: lokeshvutla@ti.com, robh@kernel.org, tglx@linutronix.de,
 nm@ti.com, t-kristo@ti.com, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org, nsekhar@ti.com, grygorii.strashko@ti.com,
 peter.ujfalusi@ti.com, devicetree@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_031828_602989_688AA19F 
X-CRM114-Status: GOOD (  12.08  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, Rob Herring <robh@kernel.org>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-29 11:14, Lokesh Vutla wrote:
> Hi Rob,
> 
> On 29/05/20 3:44 am, Rob Herring wrote:
>> On Wed, May 20, 2020 at 06:14:46PM +0530, Lokesh Vutla wrote:
>>> Drop the firmware related dt-bindings and use the hardware specified
>>> interrupt numbers within Interrupt Router. This ensures interrupt 
>>> router
>>> DT node need not assume any interrupt parent type.
>> 
>> I didn't like this binding to begin with, but now you're breaking
>> compatibility.
> 
> Yes, I do agree that this change is breaking backward compatibility. 
> But IMHO,
> this does cleanup of firmware specific properties from DT. Since this 
> is not
> deployed out yet in the wild market, I took the leverage of breaking 
> backward
> compatibility. Before accepting these changes from firmware team, I did
> discuss[0] with Marc on this topic.

And I assume that should anyone complain about the kernel being broken
because they have an old firmware, you'll be OK with the patches being
reverted, right?

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
