Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 454501E5C3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 11:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNDdTbaXUsSPEgDV5mwMOR2E5spfMBILIVdSR2EHgAM=; b=sg4iFrHymZEB/0
	0UfrmR0uIA/P5yMkKfTuY8rrMDiHZWGEUU/YKWwDNCwKVZnV0jbzUmJaWpTuQHxaWgIMrR4pn5Fyu
	Q0BNmZAsr44lT3HuKBC9oF8dvIjj8JwCNPBJZ8TktqpcCDdXNSX+gkLsYVwgoZdyiyOFUkHD7VN7+
	UpjsceEggcTxDaAVe9zzFEJ7Jz81uVfv9vqVYsOcadGHNaTlA3qJrg0bG5wfyajf76bvzIcfRpy/4
	zh7dlPzXkRGWmj2vqjOq9veZbvil3dcdnFXQx6uqidCrP+1gqsx/RJaV1ZbKrkx/wS/PNqwQj+BYS
	ODQYl4NWKF/W66ZXapNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeF3G-0000qN-Ge; Thu, 28 May 2020 09:42:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeF31-0000pN-P5
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 09:42:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B72C9D6E;
 Thu, 28 May 2020 02:41:58 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7DABC3F6C4;
 Thu, 28 May 2020 02:41:56 -0700 (PDT)
Date: Thu, 28 May 2020 10:41:54 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Peter Smith <Peter.Smith@arm.com>
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
Message-ID: <20200528094154.GB2961@gaia>
References: <20200526173117.155339-1-ndesaulniers@google.com>
 <2f58c2a4-0f37-d507-7767-00161c6b5d98@arm.com>
 <CAKwvOd=Oy_OfRbL6-q-3CAHxWBNBKE+HkfNfgCiP726u+4dU1Q@mail.gmail.com>
 <34f261f7-c4b5-a628-9a4c-eb97b75fba52@arm.com>
 <CAKwvOdn1W4C5HRJEch5PS-Atcmysh0UD+VZX_wi8tviGwhmM7Q@mail.gmail.com>
 <CAKwvOd=Zxm9TDPNd4Qvn6Ru==FLasiP1xWXMM7ji08VWRjBu2g@mail.gmail.com>
 <VI1PR08MB319868AFBEDCD0925C53701AF88E0@VI1PR08MB3198.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR08MB319868AFBEDCD0925C53701AF88E0@VI1PR08MB3198.eurprd08.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_024159_856997_0C324E23 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "david.spickett@linaro.org" <david.spickett@linaro.org>,
 Manoj Gupta <manojgupta@google.com>, Kristof Beyls <Kristof.Beyls@arm.com>,
 Luis Lozano <llozano@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Robin Murphy <Robin.Murphy@arm.com>, Victor Campos <Victor.Campos@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 09:05:08AM +0100, Peter Smith wrote:
> I suggest using Arm if you need a frame pointer, and disable the
> frame pointer if you want/need to use Thumb. My understanding is that
> runtime unwinding using the frame pointer in Thumb is already difficult
> due to Arm and Thumb functions using different registers for the frame
> pointer.

IIRC from the Thumb-2 kernel porting days, even in the absence of
ARM/Thumb interworking, the Thumb-2 frame pointer was pretty useless for
unwinding since it points to the bottom of the current stack frame (the
reason I think is that some LDR/STR instructions with negative indexing
are not available). So finding the previous frame pointer was not
possible and had to rely on the exception unwinding information.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
