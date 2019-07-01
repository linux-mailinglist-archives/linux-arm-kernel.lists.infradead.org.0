Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A1D3C53D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 09:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jjyb/81Fvrrf4djxdOK3q2TwD7z0fy7qBjlgvPH2bNs=; b=RuzWgGL+eRU0Jf
	1viSqlYEoCzvhYGTIzv8UApiwG0PkUOmUCSGyDHgvvECbhHEAVXs+0WUwnLn7tVFCZWhAEKlc1sxu
	+UUAMUDZMbVWioNgFkoPM7OmLy2CjOhq7yWJryRvWQcYf1Z7e2+GRcCA4RUBL9rNsPg6IsG/t0S8q
	fkq/NYrmjng7D6PcXIQSjkReHaPqqryJSctnpPqYHZJGlQ3M+bX1C327XfboSD9gxbBZ9ut9FxYQY
	BrN4b5g7HEx72Rpkzevaps1nyd721qWhsP+4ngWIdykU0faF3g8e4C7fzJKLP3mAa/aCqa1avRVaM
	cmRvu8yjHtr1uZxP3O8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1habLZ-0006GZ-Se; Tue, 11 Jun 2019 07:37:34 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habLL-0006FW-Ne; Tue, 11 Jun 2019 07:37:21 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id ADA6868B02; Tue, 11 Jun 2019 09:36:48 +0200 (CEST)
Date: Tue, 11 Jun 2019 09:36:48 +0200
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: Re: [PATCH 04/15] binfmt_flat: remove flat_old_ram_flag
Message-ID: <20190611073648.GA21522@lst.de>
References: <20190610212015.9157-1-hch@lst.de>
 <20190610212015.9157-5-hch@lst.de>
 <b1ce6fc6-343c-7686-b4f4-35a305dc2adb@linux-m68k.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b1ce6fc6-343c-7686-b4f4-35a305dc2adb@linux-m68k.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_003719_924001_CAC1EC2B 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 04:04:39PM +1000, Greg Ungerer wrote:
>> index c0e4535dc1ec..18d82fd5f57c 100644
>> --- a/fs/binfmt_flat.c
>> +++ b/fs/binfmt_flat.c
>> @@ -488,7 +488,8 @@ static int load_flat_file(struct linux_binprm *bprm,
>>   	 * fix up the flags for the older format,  there were all kinds
>>   	 * of endian hacks,  this only works for the simple cases
>>   	 */
>> -	if (rev == OLD_FLAT_VERSION && flat_old_ram_flag(flags))
>> +	if (IS_ENABLED(CONFIG_BINFMT_FLAT_OLD_ALWAYS_RAM) &&
>> +	    rev == OLD_FLAT_VERSION)
>
> The flags are from the binary file header here, so this is going to lose
> that check for most platforms (except h8300 where it would always have
> been true).

Indeed.  The old code is:

	if (rev == OLD_FLAT_VERSION && flat_old_ram_flag(flags))
		flags = FLAT_FLAG_RAM;

which for !h8300 evaluates to:

	if (rev == OLD_FLAT_VERSION && flags)
		flags = FLAT_FLAG_RAM;

so basically if any flag was set it was turned into FLAT_FLAG_RAM.
Was that really intentional?  I guess even if it wasn't the is no
point in changing this historic behavior now.

So I guess what we could do it something like:

	if (rev == OLD_FLAT_VERSION &&
	    (flags || IS_ENABLED(CONFIG_BINFMT_FLAT_OLD_ALWAYS_RAM)))
		flags = FLAT_FLAG_RAM;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
