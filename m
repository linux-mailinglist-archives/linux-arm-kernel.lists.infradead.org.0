Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAEA20E01
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 19:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeaZDmmKebu2AlTnk8exkh7yyruM/GrHVieYr57Y6MY=; b=bhlX9dNK5m1CVk
	PcyZSYXyJTHRCFtaAa2vPr44sjtB0zPIDDVpX5DzN4P8l7jjMS2xgZa7EdYjDV97PdDOb7L9QmwBJ
	vadqSFJuay4pVLwNN/hFtC7OhFc8Tj+u/xaHtF/+qTVB8TR6PBWpCL83DXOXxg/bp+I4V04wR7cLT
	KKGJbDgi4YcOO5xAcis0FggFwLNRE5DOfNfsCdOjeBbUaQcrMBpUJaeRsUdWx0/dbPaGcjGPbAsX0
	xRxy8lASwFvPrcJ8/iElACxNoki1apTM5HQ2Ox2GKxXKiDTx6aHG3ESBhpNCGbTOx24vPZUPN9zs4
	zM7tBVrE6af7a9sBFQDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKH5-0005yB-17; Thu, 16 May 2019 17:34:35 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKGx-0005xE-4A
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 17:34:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4CC4419BF;
 Thu, 16 May 2019 10:34:23 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 073003F5AF;
 Thu, 16 May 2019 10:34:19 -0700 (PDT)
Subject: Re: [PATCH v3 2/3] arm64: implement update_fdt_pgprot()
To: Hsin-Yi Wang <hsinyi@chromium.org>
References: <20190516102817.188519-1-hsinyi@chromium.org>
 <20190516102817.188519-2-hsinyi@chromium.org>
 <CAL_JsqLx1UdjCnZ69aQm0GU_uOdd7tTdD_oM=D7yhDANoQ0fEA@mail.gmail.com>
 <CAJMQK-jrJQri3gM=X6JRD6Rk+B5S4939HJTptrQMY64xEWr1qA@mail.gmail.com>
 <CAL_Jsq+dVg9E_EzpoC4Bz1ytUckDGXUcEJyU5pV2HS6rZuKmHA@mail.gmail.com>
 <CAJMQK-hzjSBf2-QFMn52Sa8fwvm5-gaddzBOudfEc1neR2rwnA@mail.gmail.com>
From: James Morse <james.morse@arm.com>
Message-ID: <5f598806-1c36-7c2a-0f47-da79ec7d28c6@arm.com>
Date: Thu, 16 May 2019 18:34:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJMQK-hzjSBf2-QFMn52Sa8fwvm5-gaddzBOudfEc1neR2rwnA@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_103427_176208_1BAEE22D 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On 16/05/2019 17:48, Hsin-Yi Wang wrote:
> On Thu, May 16, 2019 at 11:32 PM Rob Herring <robh+dt@kernel.org> wrote:
>> Doesn't kexec operate on a copy because it already does modifications.

It does!

> This patch is to assist "[PATCH v3 3/3] fdt: add support for rng-seed"
> (https://lkml.org/lkml/2019/5/16/257). I thought that by default
> second kernel would use original fdt, so I write new seed back to
> original fdt. Might be wrong.
> 
> ** "[PATCH v3 3/3] fdt: add support for rng-seed" is supposed to
> handle for adding new seed in kexec case, discussed in v2
> (https://lkml.org/lkml/2019/5/13/425)
> 
> By default (not considering user defines their own fdt), if second
> kernel uses copied fdt, when is it copied and can we modify that?

Regular kexec's user-space already updates the dtb for the cmdline and maybe the initrd.
For KASLR, it generates its own seed with getrandom():

https://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git/tree/kexec/arch/arm64/kexec-arm64.c#n483

If user-space can do it, user-space should do it!


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
