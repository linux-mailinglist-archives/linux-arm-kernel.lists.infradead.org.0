Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D709A1379A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 23:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pxGE8Wcpj7OSB6w2B8o51AY1SSRuZ2cr4uszRexT0yg=; b=SQsPZ76XeHTowzgFxFxVMFt16
	YMqQYYbZd2N0bckUpaU6X5PFQcpbMtsVeJSMDJzFJnvmRJMAkHEeRBs6xstujKg6t0H4O0DHEypJ5
	CSAcJ2YxoeHdW+BpDVI/PlgtYCV0F48tlpZZ7UP6KXaCOxKxaACrCRzYie1VV2gohJ4CTJP/x8ynd
	NkIJnbI1WUBI8/gNy9kNFoa5+NaAkGtffNPac0sdYGAnuKpGkKjE7ZrJK4NvhYtwHE2MJyZgULQz8
	cHmR2+p6E4eRRstXZAeImkrR5T+yumcH/9P9+5PvbURsYCviIopTFf56Vas52MtlDhXBT97S+2pPB
	0K1G9bqlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq2li-0008CI-18; Fri, 10 Jan 2020 22:28:38 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq2lY-0008B5-1S
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 22:28:29 +0000
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alexandre@ghiti.fr)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 2EFE3240002;
 Fri, 10 Jan 2020 22:28:18 +0000 (UTC)
Subject: Re: Re: linux-next: build warning after merge of the bpf-next tree
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>,
 Networking <netdev@vger.kernel.org>
References: <20191018105657.4584ec67@canb.auug.org.au>
 <20191028110257.6d6dba6e@canb.auug.org.au>
From: Alexandre Ghiti <alexandre@ghiti.fr>
Message-ID: <a367af4d-7267-2e94-74dc-2a2aac204080@ghiti.fr>
Date: Fri, 10 Jan 2020 17:28:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191028110257.6d6dba6e@canb.auug.org.au>
Content-Language: sv-FI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_142828_217459_3948FDCF 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: zong.li@sifive.com, Linux Next Mailing List <linux-next@vger.kernel.org>,
 ppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi guys,

On 10/27/19 8:02 PM, Stephen Rothwell wrote:
> Hi all,
>
> On Fri, 18 Oct 2019 10:56:57 +1100 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>> Hi all,
>>
>> After merging the bpf-next tree, today's linux-next build (powerpc
>> ppc64_defconfig) produced this warning:
>>
>> WARNING: 2 bad relocations
>> c000000001998a48 R_PPC64_ADDR64    _binary__btf_vmlinux_bin_start
>> c000000001998a50 R_PPC64_ADDR64    _binary__btf_vmlinux_bin_end
>>
>> Introduced by commit
>>
>>    8580ac9404f6 ("bpf: Process in-kernel BTF")
> This warning now appears in the net-next tree build.
>
>
I bump that thread up because Zong also noticed that 2 new relocations for
those symbols appeared in my riscv relocatable kernel branch following 
that commit.

I also noticed 2 new relocations R_AARCH64_ABS64 appearing in arm64 kernel.

Those 2 weak undefined symbols have existed since commit
341dfcf8d78e ("btf: expose BTF info through sysfs") but this is the fact
to declare those symbols into btf.c that produced those relocations.

I'm not sure what this all means, but this is not something I expected 
for riscv for
a kernel linked with -shared/-fpie. Maybe should we just leave them to 
zero ?

I think that deserves a deeper look if someone understands all this 
better than I do.

Alex


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
