Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869CA13CE35
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 21:48:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KlninYoRCj8mmqsyI58zoJlHLvr7sj/+1tQwjEhf3a8=; b=bfhxNuY7UVi1FHBybGE3k7r2k
	Wpt1eLgB8bNVBOmJ+hu2XPurekvyWoaMj7PNtOMOK3gd0aDugEx8sD0tUY6Tr0eKAinO4FrVVTVMA
	ZSoMD0kzqV586zu7mekpb/HTZ0+fOtQNpke7RLRKQK0aVmjmi7xXdDx6i//Ynr7huNJfoa79h97ue
	6VfiVeUlhFdhBHH8Pj+Va/Soo9gPSGC7/TgiuMlE8GnqDX0REM7o5NNX7M0a3YQiuiY1rI9gLfOgv
	PAIICamYU1tYRGDvR4Lba8i3J/FWL+5QY2OoPaPuU9L6al6UEsI1znY2bT3vEdKfOJ3G8Wh3YAZxS
	FdK//ubVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irpaf-0000eR-8K; Wed, 15 Jan 2020 20:48:37 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irpaV-0000ch-Vz
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 20:48:29 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alexandre@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 161D1240002;
 Wed, 15 Jan 2020 20:48:18 +0000 (UTC)
From: Alexandre Ghiti <alexandre@ghiti.fr>
Subject: Re: linux-next: build warning after merge of the bpf-next tree
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Zong Li <zong.li@sifive.com>
References: <a367af4d-7267-2e94-74dc-2a2aac204080@ghiti.fr>
 <20191018105657.4584ec67@canb.auug.org.au>
 <20191028110257.6d6dba6e@canb.auug.org.au>
 <mhng-0daa1a90-2bed-4b2e-833e-02cd9c0aa73f@palmerdabbelt-glaptop>
 <d5d59f54-e391-3659-d4c0-eada50f88187@ghiti.fr>
 <CANXhq0pn+Nq6T5dNyJiB6xvmqTnPSzo8sVfqHhGyWUURY+1ydg@mail.gmail.com>
 <CAADnVQ+kbxpw7fxRZodTtE7AmEmRDgO9fcmMD8kKRssS8WJizA@mail.gmail.com>
Message-ID: <6c03d212-775c-cddb-b0d0-d7b00571694b@ghiti.fr>
Date: Wed, 15 Jan 2020 15:48:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAADnVQ+kbxpw7fxRZodTtE7AmEmRDgO9fcmMD8kKRssS8WJizA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_124828_170511_CB2517CD 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>, Alexei Starovoitov <ast@kernel.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 ppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/14/20 6:23 AM, Alexei Starovoitov wrote:
> On Sun, Jan 12, 2020 at 8:33 PM Zong Li<zong.li@sifive.com>  wrote:
>> I'm not quite familiar with btf, so I have no idea why there are two
>> weak symbols be added in 8580ac9404f6 ("bpf: Process in-kernel BTF")
> I can explain what these weak symbols are for, but that won't change
> the fact that compiler or linker are buggy. The weak symbols should work
> in all cases and compiler should pick correct relocation.
> In this case it sounds that compiler picked relative relocation and failed
> to reach zero from that address.

Sorry for the response delay: I now agree that there is nothing weird 
about those
relocations. All compiler/linker I took a look at (arm64, ppc64 and 
riscv64) correctly
emit an absolute relocation to the address 0 in case of a weak 
unresolved symbol,
so there's no buggy compiler/linker.

And regarding ppc warning, the kernel being compiled as -pie, the 
scripts looks
for absolute relocations which it considers as "bad", except for one 
that is known
to be weak and that is ignored: I have just sent a patch to fix this 
script so that weak
undefined symbol relocations are not considered as bad.

Thanks,

Alex



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
