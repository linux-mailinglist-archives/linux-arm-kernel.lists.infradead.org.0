Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2315A1F13D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 09:48:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ycOLpS3Fe6iD2n7ot3BWkduqw/NsVI4mF+NDCfrL4aQ=; b=px9kpBU6zSW0xFxmBR2EsOH1J
	bI/XLzOvIoE5+9Zz5Um0YERBLGhZw9BORWsowcsn39L4YmKPew85DsemaK0lJtUEo3DET4FtuJde0
	b3rY5/OKR6wyHZngFEEGqH6X1d/dsSYnt9v8nYeqyok7eoI+rqQ7ZKad1VrSSUAkZq2RvJMBNlAI9
	jiUrX1FoUe8WCFp3S8A6rLcvYSZoxT4q6z/68rLBRyrlG4WER3zZ08FILPH1a1BSt2BLN6smW5jCQ
	LJaf1ds4BXm9ATL2JWwKYJ6UGLQixpYnAT5Jmr8K2QO0cgNKaBG5PtP/NtK38l6i08xzMjCsJRgPV
	aHUyXbRTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiCVl-0000lI-Mm; Mon, 08 Jun 2020 07:48:01 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiCVd-0000kr-FE
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 07:47:55 +0000
IronPort-SDR: XXkCPT6NIs+FO/ZRHEtdISiHgMekwAi89rxEwn3h5e/CgiQW/kZKuokguiyeQCwT6RL6i0kb7d
 1wcJGyDZAVdw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 00:47:52 -0700
IronPort-SDR: sAFv3FGM5DVCOlfEKWJvfa4+xRH6fyFda3TRyk5nuRH3ZBnSdgh5tRoTrrEqGGFsSP+ERj9b2e
 vN3jj+JcS2wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="417949087"
Received: from yaozhu-mobl.ccr.corp.intel.com (HELO [10.255.29.184])
 ([10.255.29.184])
 by orsmga004.jf.intel.com with ESMTP; 08 Jun 2020 00:47:44 -0700
Subject: Re: [kbuild-all] Re: [PATCH 4/5] arm64: vdso: Add getcpu()
 implementation
To: Mark Brown <broonie@kernel.org>, kernel test robot <lkp@intel.com>
References: <20200605131131.16491-5-broonie@kernel.org>
 <202006060044.bdshhJta%lkp@intel.com> <20200605163508.GJ5413@sirena.org.uk>
From: Li Zhijian <zhijianx.li@intel.com>
Message-ID: <e1b2f86e-8eef-3266-8c87-93c6660576e8@intel.com>
Date: Mon, 8 Jun 2020 15:46:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <20200605163508.GJ5413@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_004753_519938_C19B3F56 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
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
Cc: kbuild-all@lists.01.org, Catalin Marinas <catalin.marinas@arm.com>,
 Andrei Vagin <avagin@gmail.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark



On 6/6/20 12:35 AM, Mark Brown wrote:
> On Sat, Jun 06, 2020 at 12:11:08AM +0800, kernel test robot wrote:
>
>>>> arch/arm64/kernel/vdso/vgetcpu.c:33:5: warning: no previous prototype =
for '__kernel_getcpu' [-Wmissing-prototypes]
>> 33 | int __kernel_getcpu(unsigned int *cpu, unsigned int *node,
>> |     ^~~~~~~~~~~~~~~
>> --
>>>> arch/arm64/kernel/vdso/vgetcpu.c:33:5: warning: no previous prototype =
for '__kernel_getcpu' [-Wmissing-prototypes]
>> 33 | int __kernel_getcpu(unsigned int *cpu, unsigned int *node,
>> |     ^~~~~~~~~~~~~~~
>> arch/arm64/kernel/vdso/vgettimeofday.c:9:5: warning: no previous prototy=
pe for '__kernel_clock_gettime' [-Wmissing-prototypes]
>> 9 | int __kernel_clock_gettime(clockid_t clock,
>> |     ^~~~~~~~~~~~~~~~~~~~~~
> I'm not seeing this here and what we're doing is in line with the
> existing idiom as can be seen from the __kernel_clock_gettime() code
> flagging the same thing.  Possibly an old/outdated toolchain?
thanks for your input.


Actually, the origin mail contained 4 warnings,=A0 and only one is *new*, =

as the mail mentioned that

> All warnings (new ones prefixed by >>, old ones prefixed by <<):

0Day/LKP had marked the *new* ones prefixed by '>>'


>
>>> arch/arm64/kernel/vdso/vgetcpu.c:33:5: warning: no previous prototype f=
or '__kernel_getcpu' [-Wmissing-prototypes]
> 33 | int __kernel_getcpu(unsigned int *cpu, unsigned int *node,
> |     ^~~~~~~~~~~~~~~

the rest 3 warnings, indeed they are not introduced by this patch, =

0Day/LKP listed them here because they appeared near the *new* warning(s).
0Day/LKP hope the extra info/warnings could be also helpful for diagnosis.


Thanks





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
