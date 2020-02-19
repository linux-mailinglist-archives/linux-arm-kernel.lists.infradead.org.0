Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A207F164915
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:47:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tl8BH9DdxW6KGdNpGMw3FQwxFT09/IPIQ3ygzfvqLWs=; b=ZOrV8vvlbE/76+bA1paFe0EEg
	/sJfFe/MP93gnsWEOpwbVmLjlN1mKh2z5+TemWRBVZY1/RAmtcEZBI/8mp7RQlaXnh4YdyugOW6xS
	kFwOEa977L19gbzXN1MjQkFWOpUsmX7Ye/RAxIJmdwhgq6RTQ2AmomYkhtOjC7c7CuQa/t/vDoR7v
	KsW1UzlPVcv7Mw1KJGdinSh5maEGtSOG5v4CS1mTtNxnrmFda6NL3F4lQYeO8b1u25GKk77i/hs/B
	sl7Ri+lLOsRvKDrgMYQN8KU7X7mMIU+UsIAgoAaIg5Ug7wPU0XrykKAv+VP2UGTDe5fsCfOD7sGia
	JgepsQCAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4RZJ-0001Ia-9c; Wed, 19 Feb 2020 15:47:21 +0000
Received: from goliath.siemens.de ([192.35.17.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RZA-0001I2-1d
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:47:13 +0000
Received: from mail2.sbs.de (mail2.sbs.de [192.129.41.66])
 by goliath.siemens.de (8.15.2/8.15.2) with ESMTPS id 01JFkkEi023113
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Feb 2020 16:46:46 +0100
Received: from [139.25.68.37] ([139.25.68.37])
 by mail2.sbs.de (8.15.2/8.15.2) with ESMTP id 01JFkgTh026670;
 Wed, 19 Feb 2020 16:46:42 +0100
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
To: Arnd Bergmann <arnd@arndb.de>, Marc Zyngier <maz@kernel.org>
References: <20200210141324.21090-1-maz@kernel.org>
 <CAK8P3a3V=ur4AgLfat2cSyw8GrkCS2t06eqkzC-gXcc0xBpEPw@mail.gmail.com>
From: Jan Kiszka <jan.kiszka@siemens.com>
Message-ID: <ea7bc1d0-0a11-8ed6-da70-d603d8107bf6@siemens.com>
Date: Wed, 19 Feb 2020 16:46:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3V=ur4AgLfat2cSyw8GrkCS2t06eqkzC-gXcc0xBpEPw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_074712_396466_3DBC0168 
X-CRM114-Status: GOOD (  21.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.35.17.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.35.17.28 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: jailhouse-dev@googlegroups.com, Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, kvm list <kvm@vger.kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, jean-philippe.brucker@arm.com,
 Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19.02.20 16:09, Arnd Bergmann wrote:
> On Mon, Feb 10, 2020 at 3:13 PM Marc Zyngier <maz@kernel.org> wrote:
>>
>> KVM/arm was merged just over 7 years ago, and has lived a very quiet
>> life so far. It mostly works if you're prepared to deal with its
>> limitations, it has been a good prototype for the arm64 version,
>> but it suffers a few problems:
>>
>> - It is incomplete (no debug support, no PMU)
>> - It hasn't followed any of the architectural evolutions
>> - It has zero users (I don't count myself here)
>> - It is more and more getting in the way of new arm64 developments
>>
>> So here it is: unless someone screams and shows that they rely on
>> KVM/arm to be maintained upsteam, I'll remove 32bit host support
>> form the tree. One of the reasons that makes me confident nobody is
>> using it is that I never receive *any* bug report. Yes, it is perfect.
>> But if you depend on KVM/arm being available in mainline, please shout.
>>
>> To reiterate: 32bit guest support for arm64 stays, of course. Only
>> 32bit host goes. Once this is merged, I plan to move virt/kvm/arm to
>> arm64, and cleanup all the now unnecessary abstractions.
>>
>> The patches have been generated with the -D option to avoid spamming
>> everyone with huge diffs, and there is a kvm-arm/goodbye branch in
>> my kernel.org repository.
> 
> Just one more thought before it's gone: is there any shared code
> (header files?) that is used by the jailhouse hypervisor?
> 
> If there is, are there any plans to merge that into the mainline kernel
> for arm32 in the near future?
> 
> I'm guessing the answer to at least one of those questions is 'no', so
> we don't need to worry about it, but it seems better to ask.

Good that you mention it: There is one thing we share on ARM (and 
ARM64), and that is the hypervisor enabling stub, to install our own 
vectors. If that was to be removed as well, we would have to patch it 
back downstream. So far, we only carry few EXPORT_SYMBOL patches for 
essential enabling.

That said, I was also starting to think about how long we will continue 
to support Jailhouse on 32-bit ARM. We currently have no supported SoC 
there that comes with an SMMU, and I doubt to see one still showing up. 
So, Jailhouse on ARM is really just a testing/demo case, maybe useful 
(but I didn't get concrete feedback) for cleaner collaborative AMP for 
real-time purposes, without security concerns. I assume 32-bit ARM will 
never be part of what would be proposed of Jailhouse for upstream.

Jan

-- 
Siemens AG, Corporate Technology, CT RDA IOT SES-DE
Corporate Competence Center Embedded Linux

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
