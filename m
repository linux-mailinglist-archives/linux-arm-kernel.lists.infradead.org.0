Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9941722B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:02:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kZMCiCYiFF9rYQU/61vkitog9EkAXl7re3CPTac5Wn4=; b=L3Phd1o/Bv8C/jjsytp0v1qo/
	y4vydtxnyzgcn7D/AHZT7cSJ1PBF9i40WydgRB81T5pyFh/CIOOTz/gu8oCFhqNuq+mM3M9IO4QyM
	xVWBOjhuOQ/oIiS01mMMixyqr4d1UAY+MPHu7HLiS+bjlsy7/pjjs+HXIokHPuBzMGrDHTS/EcvVx
	2KlB7aA3O/ynPZDlLVWyXKXCakvL7mo+3u1J8ssgoJ5xRHbwJKW8JqcJ2YdBRl90iAwHFYUn4CKJE
	nJM7DMfd4veoxO8+7Rdc6F8XF1t1FnNhPmJJDXMATVsOjbiRwsqv+q2k1RR8/iq4Ga72IP3btRJ+W
	auBwz5nQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Lbq-0002Z3-W8; Thu, 27 Feb 2020 16:01:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Lbj-0002YY-BO
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:01:52 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 70D3D2469C;
 Thu, 27 Feb 2020 16:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582819309;
 bh=JGj47OdM9iDqkzzY8/qdttAUlvIMNGUT+1mxLCFn9tE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nfoJGnnhb8cq5tXqBf2YkMOt3E6jlhaTqO301rIuB/reyGmpqmdoK/fXb9CzkQswT
 TCuFF8bVwcMccqV7Y1KmxTVFmg/u/jDN/QKuunbZPZzGaZmF19Odj+0CqTZdE1sPOe
 Ai0sZr0gzYK1ptU/Azc8ffq+fNASq5VPwONCRid8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j7Lbf-008Uma-MZ; Thu, 27 Feb 2020 16:01:47 +0000
MIME-Version: 1.0
Date: Thu, 27 Feb 2020 16:01:47 +0000
From: Marc Zyngier <maz@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v4 0/5] ARM: decompressor: use by-VA cache maintenance for
 v7 cores
In-Reply-To: <CACRpkdZ9WR7wEjgscAF=Pwy0=YwbNPjtH6BQWa5wfXW74Md4xQ@mail.gmail.com>
References: <20200226165738.11201-1-ardb@kernel.org>
 <CACRpkdZ9WR7wEjgscAF=Pwy0=YwbNPjtH6BQWa5wfXW74Md4xQ@mail.gmail.com>
Message-ID: <91023d8f118440439cf55847a6bc43c2@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: linus.walleij@linaro.org, ardb@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-efi@vger.kernel.org,
 linux@armlinux.org.uk, nico@fluxnic.net, catalin.marinas@arm.com,
 tony@atomide.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_080151_409646_3AAD4529 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Nicolas Pitre <nico@fluxnic.net>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-27 10:11, Linus Walleij wrote:
> On Wed, Feb 26, 2020 at 5:57 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> 
>> So instead, switch to the by-VA cache maintenance that the 
>> architecture
>> requires for v7 and later (and ARM1176, as a side effect).
>> 
>> Changes since v3:
>> - ensure that the region that is cleaned after self-relocation of the 
>> zImage
>>   covers the appended DTB, if present
>> 
>> Apologies to Linus, but due to this change, I decided not to take your
>> Tested-by into account, and I would appreciate it if you could retest
>> this version of the series? Thanks.
> 
> No problem, I have tested it on the following:
> 
> - ARMv7 Cortex A9 x 2 Qualcomm APQ8060 DragonBoard
> - ARM PB11MPCore (4 x 1176)

<pedant>

The ARM11MPCore isn't a bunch of 1176s glued together. It is actually a 
very
different CPU, designed by a different team.

</pedant>

> - ARMv7 Ux500 Cortex A9 x 2
> 
> The PB11MPCore is again the crucial board, if it work on that
> board it works on anything, most of the time :D

That I can only agree with! ;-)

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
