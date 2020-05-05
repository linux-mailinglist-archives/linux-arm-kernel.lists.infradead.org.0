Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF22B1C53C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OvQu7ELTSKYVZMEsKe10SEObsA+5CiFA3ysc4e40gWA=; b=q6REn0m7HX0bTd1cpBxCLgU10
	El8Y2mPRMiWPurlyNY1YcD7epQG/Aet0ijEaIjn1gz1HAG+ovjvTBBXSTFxXqb7geyz4DCoE4rgX9
	TPmFI29OssgPgo5d3qpLqtDOdmWZuUtjZ0uHVC7yvqoZi0G4jLpFwVqfssVeVqPDOPym1ROGwYS33
	nsUoCv4/cr8Z73jPjhCbv4pCa37KdgVbKOy4Dc0hWsXSrSX7cXCPV4pOhTmJtFCG/N1zO1AsBY7yc
	evHfzlPTjPkEjosqz8DVuU69WtwTcFpKWIR2n76vDag7yt3WK8IsPnx2OUJB3SRuog5v+iljffP8b
	/I3BpbGbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvEy-0001vY-3N; Tue, 05 May 2020 10:55:56 +0000
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvEl-0001si-Hp
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:55:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1588676144; x=1620212144;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=d+CEbn7A/FPIqL1jOQZTyvaEHjqgjmk+7wJrPTIxaDI=;
 b=Ga+l75fSiMy8Za0NW4DKnmVvTHdvic4b6o6bouUkkzIX/mbc2BuC2MuL
 Pr9w595jJ7St0QS1MhqWY3TMAx7yHweVWcrmdj69aYuwIaVysEiP5JOGo
 RlNNJhPt410U+64iBUvcZKfrlpKG6/iHd8Skla2TX1dPMcsY/2aGKZ9iy g=;
IronPort-SDR: tlE+amf1pNeoaJJ8vIvp5QLiqKx84kCjBNW5fwiQZiFwB3PSprJ4URmfFVjtexdLicbaDyD5MG
 PSMFi22s28ZQ==
X-IronPort-AV: E=Sophos;i="5.73,354,1583193600"; d="scan'208";a="33009948"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1d-9ec21598.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 05 May 2020 10:55:34 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1d-9ec21598.us-east-1.amazon.com (Postfix) with ESMTPS
 id C645EA1F53; Tue,  5 May 2020 10:55:28 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Tue, 5 May 2020 10:55:28 +0000
Received: from [192.168.13.172] (10.43.162.38) by EX13D01EUB001.ant.amazon.com
 (10.43.166.194) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 5 May 2020 10:55:19 +0000
Subject: Re: [PATCH v6 2/2] EDAC: al-mc-edac: Introduce Amazon's Annapurna
 Labs Memory Controller EDAC
To: Borislav Petkov <bp@alien8.de>
References: <20200224134132.23924-1-talel@amazon.com>
 <20200224134132.23924-3-talel@amazon.com> <20200428113950.GB11272@zn.tnic>
 <46ccdb47-f28d-63f7-e759-1ba34e98add8@amazon.com>
 <20200504183716.GJ15046@zn.tnic>
From: "Shenhar, Talel" <talel@amazon.com>
Message-ID: <4d389169-89d1-4512-f6f0-c98477ab3623@amazon.com>
Date: Tue, 5 May 2020 13:55:14 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200504183716.GJ15046@zn.tnic>
Content-Language: en-GB
X-Originating-IP: [10.43.162.38]
X-ClientProxiedBy: EX13D14UWC003.ant.amazon.com (10.43.162.19) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_035543_650252_A150BB17 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.171.184.25 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, benh@kernel.crashing.org,
 hhhawa@amazon.com, gregkh@linuxfoundation.org, eitan@amazon.com,
 jonnyc@amazon.com, hanochu@amazon.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, james.morse@arm.com, dwmw@amazon.co.uk,
 catalin.marinas@arm.com, ronenk@amazon.com, mchehab@kernel.org,
 will@kernel.org, davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 5/4/2020 9:37 PM, Borislav Petkov wrote:
>
> On Mon, May 04, 2020 at 01:16:10PM +0300, Shenhar, Talel wrote:
>>>> +     mci = edac_mc_alloc(0, ARRAY_SIZE(layers), layers,
>>>> +                         sizeof(struct al_mc_edac));
>>> You can let that line stick out.
>> I rather avoid having this as a checkpatch warnning... (automation and
>> stuff...)
> checkpatch.pl - while useful - should not be taken to the letter and
> human brain should be applied to sanity check it what it warns about.
>
>> This line break does seems to my eye as too hard to read.
>>
>> Let me know if you feel strongly about it.
> I'm just sayin' - in the end of the day you'll be staring at that code -
> not me - so whatever *you* prefer. :-)
>
> Just don't follow tools blindly.
Thanks, I will leave it that way as it will make my life easier (with 
automatic vim tools and automation) and doesn't really break code 
understanding.
>
>>>> +     if (al_mc->irq_ue <= 0 || al_mc->irq_ce <= 0)
>>> Shouldn't this be && here?
>>>
>>> I mean, you want to poll when neither of the IRQs can be found. But then
>>> if you find one of them and not the other, what do you do? Poll and
>>> interrupt? Is that case even possible?
>> Correct.
>>
>> In case dt defined interrupt line only for one type and not for the other,
>> than the interrupt mode shall be used for one of them while polling mode for
>> the other.
> That warrants a comment above it.
Shall be part of v7.
>
> Thx.
>
> --
> Regards/Gruss,
>      Boris.
>
> https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
