Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3891BEF46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 06:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qOvccr0xE/pzLKcZ26VUnURrIT0nONcfxgYE74BWOI=; b=CiXTEPu7B4RrkV
	kM5q8xLnHxF0Wnmtq2nQlz8puilvrO4bKHKJZvOvo1FXsaKD3g2bwsYTpHguRAq8mPeFHrPkeuSo3
	rw6BDiXSArQQ8L/YA4NMIt3MwCWOZAbzQJYCqU80xNJk+rxdQZ/hqrnKJDrICAKehrGySICAkuZCo
	755W8DaLadrcpoeh48hPrJwMi/YiQv9UAiJ8jVrdQ+WUpm9rSjvWAmHCrHvR3jW6GWSMfAg9op7UT
	Ya6mbF49SQ2z6eiQC7zIxMqtkIMeVMu0lTvDGHyc/FgmBRnX0/5F9q5Abd6MUI/vvPOD1h+JngNYc
	yN7r7q5YVdmBFfYJ2vzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU0vF-0004DH-Kr; Thu, 30 Apr 2020 04:35:41 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU0v4-0004Ab-Ii
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 04:35:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588221326;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=n5jM63qDWJeyDGYCjjTCU+R9Ek+uHrEl9ULmh5ibqDw=;
 b=hlX4p0HqjFW1cNF1NF2kF5vYM9MdDwq03vyv6lRp9J6/fJMC4JU0i6Gw2GMbwkUIyf3+5v
 Bh2mlO8QUhk1HzBcuLV67Bt1DPMkOnu8rLT7l5Ii6z33Eytv9H3pBokyjWijhYoZdYMKgE
 qiwShHyNbywCxWb6Qe3iP7D27tB0wHY=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-302-9vm0V9MMOhOo-jLnCXZWgQ-1; Thu, 30 Apr 2020 00:35:22 -0400
X-MC-Unique: 9vm0V9MMOhOo-jLnCXZWgQ-1
Received: by mail-qk1-f198.google.com with SMTP id 30so5186501qkp.21
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 21:35:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zKtrMfHGu+y4vYE02s1puHzZQ5/jhATWRhrNjWq5a+4=;
 b=QJK4GamxR3V2LAjCgFSxdpb4bgeay8sCpksErISwb7i0vbQqQ2CqWECsDnXZDM1Emj
 /1o00u92OR+rNfb3v/HYuAIYItXO92Q9CMB8N/ogHiReSEFe2ULWFCaTQNbNwb+U04tA
 t/E8V0EdkoVATKGJlUhBymvdMkJyLqEHG1NyEJJ58glrXa7cXbRDmFhrilh4ksKGw13l
 4WzLesWz/+4n7wsjnavMPrNG8AMgkzLAE6JFL1H4d8amWmO8TWPB56bn38SeQf+0prwN
 RgwQcJAFatEkvC/yhalnizXXFLVPZw/GBwiH6cYsCmkAFDsPCMKWuXgrj1LqdM7Xzmkl
 Y86Q==
X-Gm-Message-State: AGi0Pub4YreVQvuKvssHirfIW9V4CZZGvsP0Krm31yf+H1a7aVYFQ4m6
 3MvUYPfvvGSWpXenywFnY8Uy1HJ0AzlqLukqFCKVcK16qw/Hs/dN5aYTdwYjnnerc4+J0XzlgUY
 MBcLKtNGRbaSgxb6igUPaeUfp6cs3vmFNL1SuJ0GNuUA/Zx03G6M=
X-Received: by 2002:a05:6214:a14:: with SMTP id
 dw20mr1157827qvb.179.1588221321687; 
 Wed, 29 Apr 2020 21:35:21 -0700 (PDT)
X-Google-Smtp-Source: APiQypJwv05UoqY7fgJ1iBedETm9PSq8uwxu8tgslkEj0MSEDpFQVgedzwdDm+IHqADZkUseufdbjkQYsL2aKni/Lpc=
X-Received: by 2002:a05:6214:a14:: with SMTP id
 dw20mr1157809qvb.179.1588221321477; 
 Wed, 29 Apr 2020 21:35:21 -0700 (PDT)
MIME-Version: 1.0
References: <1586212300-30797-1-git-send-email-bhsharma@redhat.com>
 <20200408104655.GA92698@C02TD0UTHF1T.local>
 <CACi5LpP0WqYGxrJL6BJia-ceSR5XbjytsSY+P74xaDJZTJA8jA@mail.gmail.com>
 <20200428100710.GD3868@gaia>
In-Reply-To: <20200428100710.GD3868@gaia>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 30 Apr 2020 10:05:09 +0530
Message-ID: <CACi5LpPW2zmq0-UDnU_115ePxXKWG+1i6UciVWPpq=PzQHrkOw@mail.gmail.com>
Subject: Re: [PATCH] arm64/defconfig: Enable CONFIG_KEXEC_FILE
To: Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_213531_259582_40D2AFBB 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, arm@kernel.org,
 James Morse <james.morse@arm.com>, Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 3:37 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Tue, Apr 28, 2020 at 01:55:58PM +0530, Bhupesh Sharma wrote:
> > On Wed, Apr 8, 2020 at 4:17 PM Mark Rutland <mark.rutland@arm.com> wrote:
> > > On Tue, Apr 07, 2020 at 04:01:40AM +0530, Bhupesh Sharma wrote:
> > > >  arch/arm64/configs/defconfig | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > >
> > > > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > > > index 24e534d85045..fa122f4341a2 100644
> > > > --- a/arch/arm64/configs/defconfig
> > > > +++ b/arch/arm64/configs/defconfig
> > > > @@ -66,6 +66,7 @@ CONFIG_SCHED_SMT=y
> > > >  CONFIG_NUMA=y
> > > >  CONFIG_SECCOMP=y
> > > >  CONFIG_KEXEC=y
> > > > +CONFIG_KEXEC_FILE=y
> > > >  CONFIG_CRASH_DUMP=y
> > > >  CONFIG_XEN=y
> > > >  CONFIG_COMPAT=y
> > > > --
> > > > 2.7.4
> >
> > Thanks a lot  Mark.
> >
> > Hi Catalin, Will,
> >
> > Can you please help pick this patch in the arm tree. We have an
> > increasing number of user-cases from distro users
> > who want to use kexec_file_load() as the default interface for
> > kexec/kdump on arm64.
>
> We could pick it up if it doesn't conflict with the arm-soc tree. They
> tend to pick most of the defconfig changes these days (and could as well
> pick this one).

Thanks Catalin.
(+Cc Arnd)

Hi Arnd,

Can you please help pick this change via the arm-soc tree?

Thanks,
Bhupesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
