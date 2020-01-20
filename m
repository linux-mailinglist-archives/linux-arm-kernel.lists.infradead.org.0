Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF44A1429ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 12:57:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZtDSf+Fa9jHMVoMAYA06hIE4lHZ3y2fDfY9bEyZnm0M=; b=mLF4Z40UgXe5flfy9WO+j5J4v
	fkxrXA0EW1/KcjpW3elz0HXr+WbW6edNKlEqKfZg5RaoR+jT4r3bPP1+Bif0+zFmp9rt+Uy49pGEk
	9uYwV4b9VFjw74J8qVDdvbFSDW2U/kLpSVj0/Ev8oKRklIEHGqwGGeGknLDX4u3/nKpFDT5yt+f3n
	ae51p4U1fWrvc91baTJ8YWN0VIlmJ455V66rRIeGSH9mDFFt0lleEYgySbrGrDoZSW1P42vjnmV/r
	9ARltenptr0KduGHWrXn19j35pBGqx4iiSTXO1WTcOdlSZjk4pNqDJGOIJSByQ9W5JWKcKsWj0FNa
	CSFoCTarA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVfn-0007mD-Ap; Mon, 20 Jan 2020 11:56:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVfZ-0007li-2N
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 11:56:41 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4270D207FF;
 Mon, 20 Jan 2020 11:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579521396;
 bh=G5BjgiERIPgD2gmhgW49sz0utTOoaFQGf9Xe0v3nM94=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=yypSpKZTEYdwkcQzZT7E8+v22pWxs9mENCsNX0pUqHTAnjRfPEDL2pRw9TL5bPvs6
 lSYkudo8DfYGo8c5fI59pA4t1YAm6JyJolJVeH3r+wvItyzkWoraMiulpKysfuyB9h
 UGJHcoUZ3LzYQd5sjyKCJzW5BajPqZHbGEpp7QXI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1itVfW-000Fp6-Hy; Mon, 20 Jan 2020 11:56:34 +0000
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 12:56:34 +0100
From: Marc Zyngier <maz@kernel.org>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH] ARM: virt: Relax arch timer version check during early
 boot
In-Reply-To: <38a43fed-1c7a-69ea-3662-e17f13ca74d6@arm.com>
References: <1579097798-106243-1-git-send-email-vladimir.murzin@arm.com>
 <eb889279-87f2-d674-9299-169794c285eb@arm.com>
 <d4b8bb91f95385682f20c9dc5c6f5e50@kernel.org>
 <38a43fed-1c7a-69ea-3662-e17f13ca74d6@arm.com>
Message-ID: <55fbdb33fc3e107385c12def941aa934@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: vladimir.murzin@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_035637_136021_9CAB59F2 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-20 12:34, Vladimir Murzin wrote:
> Hi Marc,
> 
> On 1/20/20 11:14 AM, Marc Zyngier wrote:
>> Hi Vladimir,
>> 
>> On 2020-01-20 11:46, Vladimir Murzin wrote:
>>> + Marc
>>> + kvmarm@lists.cs.columbia.edu
>>> 
>>> On 1/15/20 2:16 PM, Vladimir Murzin wrote:
>>>> Updates to the Generic Timer architecture allow ID_PFR1.GenTimer to
>>>> have values other than 0 or 1. At the moment, Linux is quite strict 
>>>> in
>>>> the way it handles this field at early boot and will not configure
>>>> arch timer if it doesn't find the value 1.
>>>> 
>>>> Since here use ubfx for arch timer version extraction (hyb-stub 
>>>> build
>>>> with -march=armv7-a, so it is safe)
>>>> 
>>>> To help backports (even though the code was correct at the time of 
>>>> writing)
>>>> Fixes: 8ec58be9f3ff ("ARM: virt: arch_timers: enable access to 
>>>> physical timers")
>>>> Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
>> 
>> I'm not opposed to such a change, but it'd be good to document what 
>> other values
>> are expected here, as the current (Rev E_a) ARM ARM only mentions 
>> values 0 and 1.
> 
> That true, ARM ARM doesn't mention it yet. OTOH, should we really care
> about exact values as soon it stays compatible?

That's for you to say, really. But given that you hint at some changes,
it'd be good to have at least a short sentence explaining that, for 
example,
"upcoming revisions of the architecture will allow different 
ID_PFR1.GenTimer
values while preserving backward compatibility".

Other than that, feel free to add my

Acked-by: Marc Zyngier <maz@kernel.org>

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
