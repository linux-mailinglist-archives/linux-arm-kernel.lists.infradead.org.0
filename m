Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CF3165E4A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YOAqauTwB5UBIBZYXLmjRh4rQJw/qh0/QufjVFe014w=; b=hJgTDiNOC/OJWY
	+UAkPsxlZhkyNJr6BQAG7yk7vKyw9wTJABgOxPLSAdmueF+v+zrOWF/cKBOpXsdN2nJo6yzI0JWDH
	PJF8O7HNS4b0wix0C7SseIcYWO89poh/ysSxVxRUhVUBNfegffok3rg1BWhHrRpltQw7UxxiiAB10
	NHI5ZAIIvc5VFKRjJZMaCEuzaPzjljFQQ3PWGCQrZ8V+pUIpzv0fdJmAxD5JHo1pilAgrTk+ET3ab
	IkV0isvcLeRIPc3TjUO/bSPIorsw3TfHHqv0EMzYu6fVL7Ahrd1/9B4huvdoB5xQsiwWaiYjIxFAh
	sJvR+tF2rtC2emKNbsVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4lZR-0005an-V0; Thu, 20 Feb 2020 13:08:49 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4lZI-0005aO-NI
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 13:08:42 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200220130838euoutp02c64c3324f1ca69f8a75091b1daea905f~1HkNepWE60734407344euoutp028
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 13:08:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200220130838euoutp02c64c3324f1ca69f8a75091b1daea905f~1HkNepWE60734407344euoutp028
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1582204118;
 bh=3xEQZcwt6xnlwQCNAEZOr1+E1GfsUXr5xmz9tIJZ4rY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=E5PdwClV153iJSVXJwWONbNez53N81K73c08SyQBb0M+dJtJo1E8nhtVfPL2Vcruo
 C0RmEbwdzsFJsCfVQvJFc3tPcoTDyknQMUt20Z4CWtEiZsYbF8vjwSQ3s0Eqt8ojJW
 dK46l9i4BvUbupzfzEAZUTcSXhIhcVlJnyzEahTY=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200220130838eucas1p2747a749a2ce91dd6c3ff9f3c3fa8dd98~1HkNU1rZW0081400814eucas1p22;
 Thu, 20 Feb 2020 13:08:38 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 3F.99.61286.6D48E4E5; Thu, 20
 Feb 2020 13:08:38 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200220130838eucas1p12bc652ecd882204a8ffda5ed28f48bd5~1HkNDSAos3180231802eucas1p1Y;
 Thu, 20 Feb 2020 13:08:38 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200220130838eusmtrp282e237092d250b24eaddcab95fda32fa~1HkNCqJF-2202722027eusmtrp2V;
 Thu, 20 Feb 2020 13:08:38 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-23-5e4e84d68099
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id FC.D8.07950.6D48E4E5; Thu, 20
 Feb 2020 13:08:38 +0000 (GMT)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200220130837eusmtip2b796955aa44da62ec7806b042c2a23f1~1HkMsM6K91020910209eusmtip2J;
 Thu, 20 Feb 2020 13:08:37 +0000 (GMT)
Subject: Re: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
To: Marc Zyngier <maz@kernel.org>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <6b3a2e73-6c28-e25e-3375-692bdbd1d48b@samsung.com>
Date: Thu, 20 Feb 2020 14:08:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200219083113.52c1a8fb@why>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOKsWRmVeSWpSXmKPExsWy7djP87rXWvziDDb+UrT4sfM6o8Wmx9dY
 LdYeuctusXPOSVYHFo9NqzrZPDYvqffY83wZu0ffllWMASxRXDYpqTmZZalF+nYJXBkTlj9n
 KTgoVTHtbzdLA2O3aBcjJ4eEgInEu+bP7F2MXBxCAisYJb7s+QflfGGUuDljMzOE85lRYunJ
 vcwwLR933QKzhQSWM0osXqsPUfQWqGPuQVaQhLCAh8Sc1ffYQWwRAUWJTxdOMoLYzAL1Eov+
 fgCLswlYSUxsXwUW5xWwk3i8ejdYnEVAVeLfh/tgtqhAhMSnB4dZIWoEJU7OfMICYnMKaEmc
 3fyJGWKmuMStJ/OZIGx5ie1v54BdLSEwmV2iu+kPE8TVLhJrT89lh7CFJV4d3wJly0j83wnS
 DNKwjlHib8cLqO7tjBLLJ/9jg6iylrhz7heQzQG0QlNi/S59iLCjxOyvq5hBwhICfBI33gpC
 HMEnMWnbdKgwr0RHmxBEtZrEhmUb2GDWdu1cyTyBUWkWktdmIXlnFpJ3ZiHsXcDIsopRPLW0
 ODc9tdgwL7Vcrzgxt7g0L10vOT93EyMwuZz+d/zTDsavl5IOMQpwMCrx8FY0+MUJsSaWFVfm
 HmKU4GBWEuFV4wEK8aYkVlalFuXHF5XmpBYfYpTmYFES5zVe9DJWSCA9sSQ1OzW1ILUIJsvE
 wSnVwGimZHVUr3zTTYfJE8JZ9Nd5l07TObh1umXi7xl1C/ebh+Z03KlZsm7tKXnnnHkOH182
 27lY9bCEzAy8k8RZsaIm4aBlrP7f+sI9fsrypczSR/7UR/Ce/KXCHjNvUVN6Wlz01xMshxuD
 5l1uPX3pReLGn58tVM62qF3t325Vuvlo3MRiv4MGUUosxRmJhlrMRcWJAGQMlZMqAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrBIsWRmVeSWpSXmKPExsVy+t/xe7rXWvziDN6+57P4sfM6o8Wmx9dY
 LdYeuctusXPOSVYHFo9NqzrZPDYvqffY83wZu0ffllWMASxRejZF+aUlqQoZ+cUltkrRhhZG
 eoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehkTlj9nKTgoVTHtbzdLA2O3aBcjJ4eE
 gInEx123mLsYuTiEBJYySux/1sjexcgBlJCROL6+DKJGWOLPtS42EFtI4DWjROvNGhBbWMBD
 Ys7qe+wgtoiAosSnCycZQWxmgXqJGb2T2CBmTmeUODP/AViCTcBKYmL7KjCbV8BO4vHq3WDN
 LAKqEv8+3AezRQUiJA7vmAVVIyhxcuYTFhCbU0BL4uzmT8wQC9Ql/sy7BGWLS9x6Mp8JwpaX
 2P52DvMERqFZSNpnIWmZhaRlFpKWBYwsqxhFUkuLc9Nzi430ihNzi0vz0vWS83M3MQJjadux
 n1t2MHa9Cz7EKMDBqMTDW9HgFyfEmlhWXJl7iFGCg1lJhFeNByjEm5JYWZValB9fVJqTWnyI
 0RTouYnMUqLJ+cA4zyuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnV
 wFiQkXMop2PR4j6lQ8ltq7+6mq25OL+aTea6hHHj7Hq+7YzHctc+41vEUCK6QE7y5XcGvr1v
 VtZpfZ0t7XO8Za+zb9Dbzzlcd9qY9h1+Yjj5cGuC9An3/ueJjNt2bT1pzi0Zo76abbFR0Jrj
 l8QFOdXcZ97kCm9e+mL9yh0vBNO/xnfq8xdNP6fEUpyRaKjFXFScCABz2bWfuwIAAA==
X-CMS-MailID: 20200220130838eucas1p12bc652ecd882204a8ffda5ed28f48bd5
X-Msg-Generator: CA
X-RootMTR: 20200220130838eucas1p12bc652ecd882204a8ffda5ed28f48bd5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200220130838eucas1p12bc652ecd882204a8ffda5ed28f48bd5
References: <mailman.29637.1581344013.2486.linux-arm-kernel@lists.infradead.org>
 <20200218213712.GD1382@makrotopia.org> <20200219083113.52c1a8fb@why>
 <CGME20200220130838eucas1p12bc652ecd882204a8ffda5ed28f48bd5@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_050840_968575_16F1AACC 
X-CRM114-Status: GOOD (  26.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Golle <daniel@makrotopia.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Marc,

On 2/19/20 9:31 AM, Marc Zyngier wrote:
> On Tue, 18 Feb 2020 22:37:12 +0100
> Daniel Golle <daniel@makrotopia.org> wrote:
> 
> Daniel,
> 
> Please keep people on cc, it helps with the discussion.
> 
>>> Message-ID: <20200210141324.21090-1-maz@kernel.org>
>>>
>>> KVM/arm was merged just over 7 years ago, and has lived a very quiet
>>> life so far. It mostly works if you're prepared to deal with its
>>> limitations, it has been a good prototype for the arm64 version,
>>> but it suffers a few problems:
>>>
>>> - It is incomplete (no debug support, no PMU)
>>> - It hasn't followed any of the architectural evolutions
>>> - It has zero users (I don't count myself here)  
>>
>> Not true. At least I'm using KVM on CortexA7 (sun7i aka. Allwinner A20)
>> and it has been quite useful until now (running low memory footprint
>> OpenWrt-based guests on yocto/OpenEmbedded host)
> 
> OK, so we have a user!

We have also started using it recently (as described by Marek in
https://lore.kernel.org/linux-arm-kernel/621a0a92-6432-6c3e-cb69-0b601764fa69@samsung.com/#t
).

>>> - It is more and more getting in the way of new arm64 developments  
>>
>> Can you elaborate more on how it is getting in the way? Just in terms
>> of effort to maintain the necessary abstractions or does something
>> really block ARM64 KVM support?
> 
> Useless abstractions are indeed one of the problems. Essentially,
> KVM/arm has become a pile of empty stubs that are added to make the
> thing compile. This doesn't bode well for the future.
> 
> The other aspect is that new features appearing on arm64 (nested virt,
> enclaves, and potentially some more) are tearing the code-base apart,
> and doing so while keeping 32bit alive and kicking would be a
> challenge. I'm not saying it is impossible, just that it is hard, and
> for very little gain, specially given that *nobody* contributes to the
> port.

I have very basic knowledge of virt/kvm/arm/ codebase (so my question
may be quite stupid) but wouldn't it be possible to split the codebase
into legacy virt/kvm/arm32/ and virt/kvm/arm64/ parts (this would cause
some code duplication but at the same time would stop 32bit port from
blocking new developments for 64bit one)?

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

>>> So here it is: unless someone screams and shows that they rely on
>>> KVM/arm to be maintained upsteam, I'll remove 32bit host support
>>> form the tree. One of the reasons that makes me confident nobody is
>>> using it is that I never receive *any* bug report. Yes, it is perfect.
>>> But if you depend on KVM/arm being available in mainline, please shout.  
>>
>> I cetainly don't depend on it, meaning I'd have to replace hardware
>> worth less than $100 in the near future, that's not too bad.
>> And yes, it has just been working perfectly ;)
> 
> I'm really glad it works well. Note that it isn't like we are taking it
> away from you. 5.6 will still have it, and I will still maintain it as
> part of the stable tree. It is just that I've come to the sad
> conclusion that as a community, we need to move on.
> 
> 	M.
> 
> PS: and if you find a decent, reliable machine to replace your A20,
> please let me know. All the arm64 SBCs I've seen are utter crap
> compared to my Cubietruck...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
