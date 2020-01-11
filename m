Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F00138179
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 15:06:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=deg/3NYa5uUVyAZJTDNlq/rs7IVBcIHg0Zcv0mBvI9w=; b=WFaz52J0APSz2daVcHHQ1ZjGv
	KSrsXBfC2AsBkV8OS9rTInBDfDtBZnl9kel6gHK84Nh4ePlkfNHop28xZSYCDWhGE54T0XlgW6LjY
	2+Zl+/2vJdaEPkcJrBb+dKr0WLzaurh8XMJ7NGcQKAY7OmjRkCBiKmgeRN/8dK8aOvIA3bs1xH1dJ
	gqBYGqBqlVNBjpUuojnbAiTbG8Q5kU9yfdK5Pr15OfZeUPX1OwlLwOJax7Soe406mlgBEAhUtemwN
	c+JLVdNV+0Y7o9+iP3MugCAgBzPny3EHjjTmOGf8shIzX99oGtYQBGgJQPg9Xw/cFMMozXj+MLdgI
	E0z/+Gqzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqHP8-0006bt-RY; Sat, 11 Jan 2020 14:06:18 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqHP2-0006aZ-Lc
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 14:06:14 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alexandre@ghiti.fr)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id EE08540002;
 Sat, 11 Jan 2020 14:06:00 +0000 (UTC)
Subject: Re: linux-next: build warning after merge of the bpf-next tree
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
References: <20191018105657.4584ec67@canb.auug.org.au>
 <20191028110257.6d6dba6e@canb.auug.org.au>
 <a367af4d-7267-2e94-74dc-2a2aac204080@ghiti.fr>
 <CAADnVQLo5HEjTpTTRm=BtExuKifPtCJm+Hu_WP6yeyV-Er55Qg@mail.gmail.com>
From: Alexandre Ghiti <alexandre@ghiti.fr>
Message-ID: <3e6f298c-e428-fdee-47a8-14addc581501@ghiti.fr>
Date: Sat, 11 Jan 2020 09:06:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAADnVQLo5HEjTpTTRm=BtExuKifPtCJm+Hu_WP6yeyV-Er55Qg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_060612_842316_DCA7D73A 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Borkmann <daniel@iogearbox.net>, Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>, zong.li@sifive.com,
 Andrii Nakryiko <andrii.nakryiko@gmail.com>,
 ppc-dev <linuxppc-dev@lists.ozlabs.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/10/20 6:18 PM, Alexei Starovoitov wrote:
> On Fri, Jan 10, 2020 at 2:28 PM Alexandre Ghiti <alexandre@ghiti.fr> wrote:
>> Hi guys,
>>
>> On 10/27/19 8:02 PM, Stephen Rothwell wrote:
>>> Hi all,
>>>
>>> On Fri, 18 Oct 2019 10:56:57 +1100 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>>>> Hi all,
>>>>
>>>> After merging the bpf-next tree, today's linux-next build (powerpc
>>>> ppc64_defconfig) produced this warning:
>>>>
>>>> WARNING: 2 bad relocations
>>>> c000000001998a48 R_PPC64_ADDR64    _binary__btf_vmlinux_bin_start
>>>> c000000001998a50 R_PPC64_ADDR64    _binary__btf_vmlinux_bin_end
>>>>
>>>> Introduced by commit
>>>>
>>>>     8580ac9404f6 ("bpf: Process in-kernel BTF")
>>> This warning now appears in the net-next tree build.
>>>
>>>
>> I bump that thread up because Zong also noticed that 2 new relocations for
>> those symbols appeared in my riscv relocatable kernel branch following
>> that commit.
>>
>> I also noticed 2 new relocations R_AARCH64_ABS64 appearing in arm64 kernel.
>>
>> Those 2 weak undefined symbols have existed since commit
>> 341dfcf8d78e ("btf: expose BTF info through sysfs") but this is the fact
>> to declare those symbols into btf.c that produced those relocations.
>>
>> I'm not sure what this all means, but this is not something I expected
>> for riscv for
>> a kernel linked with -shared/-fpie. Maybe should we just leave them to
>> zero ?
>>
>> I think that deserves a deeper look if someone understands all this
>> better than I do.
> Are you saying there is a warning for arm64 as well?


Nop.


> Can ppc folks explain the above warning?
> What does it mean "2 bad relocations"?


This is what I'd like to understand too, it is not clear in
the ppc tool that outputs this message why it is considered 'bad'.


> The code is doing:
> extern char __weak _binary__btf_vmlinux_bin_start[];
> extern char __weak _binary__btf_vmlinux_bin_end[];
> Since they are weak they should be zero when not defined.
> What's the issue?


There likely is no issue, I just want to make sure those relocations
are legitimate and I want to understand what we should do with those.

At the moment arm64 does not relocate those at runtime and purely
ignore them: is this the right thing to do ?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
