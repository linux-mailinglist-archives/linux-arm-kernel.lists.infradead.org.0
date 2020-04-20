Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A233C1B07BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 13:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVo3QE3Pg3Zm3cCYL8bGDb9pjH0xTz++9FLntCplYqc=; b=iFhICXeDoDnyJW
	WxprWVWkUmItl/sTMxlUl/3Oa2e8yb37WA3YxpZV3KnmtPq++dhCq/sk6niyYo3LsSVaL7X8Zqxux
	+yl5zT4jax0r4WkfLvk6UMldShwWOPSRZxm/S2IAEK3EXUkQ4D2tvQDrKOm0GrQjA5HtEiBZeTSQk
	yFpeEQCkz1daYCpOsKkDC1Abg8B1z6H8X4LqU+hvMtqdga+4uBe9IzP42zopcZOaxT7wg6crzYGKA
	S70edN47imGoT50AXstTxCbBl/iQw8C10AvahOkn1DWbUcySGSN7aKOu5SDBYWnNMacITLNswNq5C
	jxzWRQagtysSIXtLh1vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQUp5-00062M-UY; Mon, 20 Apr 2020 11:42:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQUoy-00061S-8T
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 11:42:41 +0000
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
 [209.85.166.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 769B921744
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 11:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587382959;
 bh=dP1oVcmvIppxFO3KTVGqSn4HmzrD4AZiENin5O5hyrI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FxlSC0s8L8mYBVyCpv9L7Qi7IsLFzhlEG1C1myoEfRKG5ds9VRJflaW9pocyEjVe7
 SUQh5Kvb9OZW+ZRp9v4Bkf6iAFK949hy2kZizxLLthIT4yUuJfKS5n64fKx8+impXx
 ljjfrfnwhu4TanweWIQsPiD3imft6Ym9G065sX0A=
Received: by mail-io1-f44.google.com with SMTP id n10so10546163iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 04:42:39 -0700 (PDT)
X-Gm-Message-State: AGi0PuaTOa5vGVQF5cMC1rHPZUWPWl53bytfz/0FqY65VI95H+Qe2z9R
 jzWilUVcFlkEeC9l9zq606pXKMjymQvexppEm7o=
X-Google-Smtp-Source: APiQypKfR/5hkO0sBi162Lm2FAb7ByMjVLqWpLIa5KSMM3Jh0iMdkDzJ9L41KIXcv8H1DlI1xdnQzoEiZvTYyvhDCuk=
X-Received: by 2002:a02:969a:: with SMTP id w26mr14759250jai.71.1587382958899; 
 Mon, 20 Apr 2020 04:42:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200420081131.16822-1-ardb@kernel.org>
 <20200420093055.GA7393@e121166-lin.cambridge.arm.com>
 <f71002a8-fc32-f271-1586-807fc6f50107@arm.com>
In-Reply-To: <f71002a8-fc32-f271-1586-807fc6f50107@arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 20 Apr 2020 13:42:28 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFr8WfmLqfEhYUyCBCF5hNrkhWLJWMHhS9wMb8RUS+_EQ@mail.gmail.com>
Message-ID: <CAMj1kXFr8WfmLqfEhYUyCBCF5hNrkhWLJWMHhS9wMb8RUS+_EQ@mail.gmail.com>
Subject: Re: [PATCH] acpi: arm64/iort: Ensure DMA mask does not exceed device
 limit
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_044240_338483_831DB042 
X-CRM114-Status: GOOD (  24.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-acpi@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 guohanjun@huawei.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 at 13:23, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-04-20 10:30 am, Lorenzo Pieralisi wrote:
> > [+Robin]
> >
> > On Mon, Apr 20, 2020 at 10:11:31AM +0200, Ard Biesheuvel wrote:
> >> When calculating the DMA mask from the address limit provided by the
> >> firmware, we add one to the ilog2() of the end address, and pass the
> >> result to DMA_BIT_MASK().
> >>
> >> For an end address that is not a power-of-2 minus 1, this will result
> >> in the mask to be wider than the limit, and cover memory that is not
> >> addressable by the device. Instead, we should add 1 to 'end' before
> >> taking the log, so that a limit of, say, 0x3fffffff gets translated
> >> to a mask of 30, but any value below it gets translated to 29.
> >>
> >> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> >> ---
> >>   drivers/acpi/arm64/iort.c | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > Need Robin's feedback on this - I was looking at:
> >
> > a7ba70f1787f ("dma-mapping: treat dev->bus_dma_mask as a DMA limit")
> >
> > I assume current code is *intended* but I shall let Robin comment
> > on this.
>
> The device masks represent what bits the device is capable of driving,
> so rounding up is the correct and intended behaviour - if the
> interconnect address map imposes a non-power-of-two limit, say 3.75GB,
> and the device can physically access all of that, then claiming the
> device can't drive bit 31 and trying to prevent it from accessing the
> upper 1.75GB is nonsense.
>

Fair enough.

> Although TBH none of this really matters much any more - as long as the
> limit is set correctly nothing bad will happen, and drivers are expected
> to replace these default masks anyway. In fact ancient drivers that
> still don't explicitly set their masks will be assuming the defaults are
> 32-bit, so replacing them with something potentially wider actually
> invites a whole other set of problems. In the case of
> of_dma_configure(), it kept the code that combines (*not* replaces) the
> default device masks with a limit-based mask because it didn't do any
> harm, but equally it should now be entirely unnecessary, and confusion
> like this seems like an argument for finally removing it.
>

Indeed :-)

Thanks for the explanation.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
