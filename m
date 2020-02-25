Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADA616EBF4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iajKfyp4gP0g+F0l3e68k7x7sUS1Y4HqDJserZ22K9w=; b=oxIxqlyDUWPVKqS2PQct/FbzS
	QRmN9x1v1di/w4MlHh++I4fOmJjYrdIWyvmIc+OI1K0M1UqfBe0rkC1oDatdiEEUg2EAb9ILG0IAP
	AWnz80xPtJPAxstiqRx251sgX5O0fLpOfAii54yi1NputtfRu50dqEQJ1KthRI2C4nVGFSHAc5XGO
	hIpLOAx6nJjFqylQeVtPVOF0yh25mkwvfhwBx9tPKMQEnBIKtLFx8kijQpqi+sk0+xjpfG6+acIMP
	Oqd5vWf/vf3YuiwhI7GGIm8Ceaqkxzfe7UXFvKnw3dF4t40IwNYVwduG/I6/UshRalQgSziNxPXtk
	LZhjmcM0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6dZW-0001tu-6R; Tue, 25 Feb 2020 17:00:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6dZL-0001t5-Ai
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:00:30 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEEA32084E;
 Tue, 25 Feb 2020 17:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582650027;
 bh=vny+UcnilUnzqvBTsqujJvON5/YgTPLycNLkjK+3Rvo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=zXFQVZK2lxT1dtDfLTEJ53jaDC8VgVagGFUbtsQHvhoURzbHkJjbcXvq+5+iSTPth
 IxreC0Uf6Do4mglqJ5KnI5WkQFzChaFkQCB27XwkitKpDyPfCzrO7lvgkjmzvCaXGd
 9ZsesVoRKL2sdESquJasAQrOlC+CvLscJEYLqdPQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j6dZI-007sMZ-TK; Tue, 25 Feb 2020 17:00:25 +0000
MIME-Version: 1.0
Date: Tue, 25 Feb 2020 17:00:24 +0000
From: Marc Zyngier <maz@kernel.org>
To: Robert Richter <rrichter@marvell.com>
Subject: Re: ARM64_SW_TTBR0_PAN enabled causing hangs on OcteonTX
In-Reply-To: <20200225163507.3ob4k3wzek5gypis@rric.localdomain>
References: <CAJ+vNU3mhhFbE6ZZTNUbnQVLAepffzba9Dsm4uwccQ_cH8RrtA@mail.gmail.com>
 <f732995ffdbcde8d0d0935d68dc0d5a2@kernel.org>
 <CAJ+vNU13-57OeaYVw0kHt=FgJT+TsM_muWM+f-H_zETeJNjTiA@mail.gmail.com>
 <6f3ce71073f38fbd4e0f7b75852a8846@kernel.org>
 <CAJ+vNU3XVNkdHXbq-KJaRecSxpPxboVW5Cx7zVEv64Gm1dt+Vg@mail.gmail.com>
 <da8f38078ef8805200b102a1d24da4ae@kernel.org>
 <20200225163507.3ob4k3wzek5gypis@rric.localdomain>
Message-ID: <8f2efa884c7cb642a9b9fa66c7949607@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: rrichter@marvell.com, tharvey@gateworks.com,
 linux-arm-kernel@lists.infradead.org, will@kernel.org, catalin.marinas@arm.com,
 sgoutham@marvell.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_090029_554313_BFA8F0B4 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Tim Harvey <tharvey@gateworks.com>, Will Deacon <will@kernel.org>,
 Sunil Goutham <sgoutham@marvell.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-25 16:35, Robert Richter wrote:
> Marc,
> 
> On 25.02.20 16:27:41, Marc Zyngier wrote:
>> On 2020-02-25 16:13, Tim Harvey wrote:
> 
>> > That does enable the erratum, disable KPTI and boot properly but I
>> > misread the erratum and it shouldn't be needed for T81 pass 1.2... the
>> > erratum is documented only needed for pass 1.0.
>> 
>> Can you then remove the patch *and* disable KPTI?
>> 
>> TX1 is broken beyond recognition and KPTI is known to explode on this 
>> HW
>> (which is why we disable KPTI on it). We always attributed it to this
>> erratum,
>> but in the absence of any help from Cavium to identify the problem, we 
>> just
>> keyed it on that.
>> 
>> *IF* this HW is indeed unaffected by it, then it is probably the mix 
>> of
>> KPTI and SWPAN that triggers the issue. If my suspicion is correct, 
>> you'll
>> need to have a chat with Cavium/Marvell to understand what is 
>> happening
>> there.
> 
> I checked the docs and Tim is right, this should be only visible on
> pass 1.0. Thus, the rev range to enable the workaround as implemented
> upstream should be ok. I have asked hw folks regarding this.

Then it could well be that our disabling of KPTI on TX1 is keyed on the 
wrong
erratum. In the absence of a clear explanation of what is going on, we 
made
an educated guess. If oyu're going to find out about what breaks this 
CPU,
it'd be good to understand whether this is the same problem that affects 
all
the other revisions.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
