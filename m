Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBF914D7CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 09:37:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7i/9iewq8j2oeG5Dv0qHWB2D0/Q6LJTTh8hhRj8fMhw=; b=AARiIdD5RP0HLG
	0L8bQww2LLw9NrZ21d/rNou5aLAp5vDYeme0doUauX/U0RVdBhd+s2/HTVMye5sP6y1Vqa+i13S+T
	udrrQ8zmZs+E8VjzXFzNK6OiXeeSk5dDM5zF/4aasFmOv+47owdTg+YGH9gRAy8fhdQhkm3K9+Ly5
	tKOipPZaEXTA5Iua4Sbp7YCLf+JPkfERiXxJAF6x2TgK/+5lJij6W+DafBnvBOBZRDXl+YVfHQRHk
	zCO7rijavNlLT8F9tgXmdJwIuVKsHPNMlTJIcgMhffpJsNLIHEvilL/WqaLtM4o8LrsjYMQNY+prA
	r5CxzCWkJt2RsFC6/Nvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix5Kb-00019j-IR; Thu, 30 Jan 2020 08:37:45 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix5KN-00018X-0f
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 08:37:35 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 00:37:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,381,1574150400"; d="scan'208";a="232837098"
Received: from kvehmane-mobl.ger.corp.intel.com (HELO jsakkine-mobl1)
 ([10.237.50.119])
 by orsmga006.jf.intel.com with ESMTP; 30 Jan 2020 00:37:26 -0800
Message-ID: <a3720028f46885e806f201b6fa6ea6f8ef6b0d44.camel@linux.intel.com>
Subject: Re: [PATCH v2 2/2] tpm: tis: add support for MMIO TPM on SynQuacer
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 30 Jan 2020 10:37:25 +0200
In-Reply-To: <CAKv+Gu-9KvzLEcNQnRfsOkU=5oc1otY_NS15fR5Oi4Z4UVvurw@mail.gmail.com>
References: <20200114141647.109347-1-ardb@kernel.org>
 <20200114141647.109347-3-ardb@kernel.org>
 <ada03416b1b362fa255feb45257414655d8ab023.camel@linux.intel.com>
 <CAKv+Gu-9KvzLEcNQnRfsOkU=5oc1otY_NS15fR5Oi4Z4UVvurw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_003734_148538_20B3814F 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: Devicetree List <devicetree@vger.kernel.org>,
 Peter =?ISO-8859-1?Q?H=FCwe?= <peterhuewe@gmx.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Masahisa Kojima <masahisa.kojima@linaro.org>,
 linux-integrity <linux-integrity@vger.kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-01-23 at 13:29 +0100, Ard Biesheuvel wrote:
> On Thu, 23 Jan 2020 at 13:27, Jarkko Sakkinen
> <jarkko.sakkinen@linux.intel.com> wrote:
> > On Tue, 2020-01-14 at 15:16 +0100, Ard Biesheuvel wrote:
> > > When fitted, the SynQuacer platform exposes its SPI TPM via a MMIO
> > > window that is backed by the SPI command sequencer in the SPI bus
> > > controller. This arrangement has the limitation that only byte size
> > > accesses are supported, and so we'll need to provide a separate set
> > > of read and write accessors that take this into account.
> > 
> > What is SynQuacer platform?
> > 
> 
> It is an arm64 SoC manufactured by Socionext.
> 
> > I'm also missing a resolution why tpm_tis.c is extended to handle both
> > and not add tpm_tis_something.c instead. It does not follow the pattern
> > we have in place (e.g. look up tpm_tis_spi.c).
> > 
> 
> We could easily do that instead, if preferred. It's just that it would
> duplicate a bit of code.

I'm fine with that. Overally I think it is cleaner flow.

/Jarkko


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
