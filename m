Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D2C1635D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 23:09:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIYKUKaF5PeXJcRvFgx7YK4O35SZKn45xrbQ1H8at5k=; b=USnxmrFGPHKonH
	AcODtvmy1HLbiNz9WUF0ncwiLgFi66yCJdKJEMhSFJ7qWp3KstkZ1lb9AmWC6usBsS7f5EZfX0SoK
	ih01JDG6J5+40gXnWVe6otGG40nlzytiIAC8nYhpSZp8WY4h0axCWhBYhUFuCKxkoxcSZLjkFVA0j
	iCMyeimflwCxYcvP+PKDsikWEqIx78Fk5ZLqJtIcTz+vg/+a3YCtxqNNfrPWK5yrfrYL0trvpwJr2
	ItlsczZvr8il4vDgtRAmZbaUih9dPqVntS+AYYsoIBmSJHJIRUO3GpJMECthTxYwTfHPkKitlD5br
	YmLYoYa427IcI6Kke3kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4B3H-0005oK-SM; Tue, 18 Feb 2020 22:09:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4B37-0005fr-0Q
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 22:09:02 +0000
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFF0D24654
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 22:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582063740;
 bh=qRWAvYsavB34O2TeDdY9WjdGCAyZQckEaNKMa6i36QU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=omJwXp9X+6kFpO2wu8Ta98kyv8SsEjfk1yB+iz1Mv1YxN7oEOnhubO6bTgs9dGYmR
 CpvI9pLLKkevN+guJ7qUfQc36yWglipOIEhDyMO48rVZCnWoqBrcdyNLbSOntYoNqU
 f+3Wk1LmhjuzHxzg+B9YARQZKgyuwa4yxZM+WVUw=
Received: by mail-wr1-f44.google.com with SMTP id t3so25841984wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 14:08:59 -0800 (PST)
X-Gm-Message-State: APjAAAWm6UN+FwJVKXdI18u8gEO/WM/J0rxRonv39FyHFI8mFoYFQi/g
 HiX5GKdz/a9bt224LXTz5LQK5uYJm3/b7tGk9sjnGg==
X-Google-Smtp-Source: APXvYqy4xcsEXxuc8l5KaIyC3sMnwa0xIIKe/DtpIs+M0XyRRLjwaSyX+69z4jn/QHiiuPUZjm6SsE+BIyDqeRLCpYk=
X-Received: by 2002:adf:fd8d:: with SMTP id d13mr31636023wrr.208.1582063738210; 
 Tue, 18 Feb 2020 14:08:58 -0800 (PST)
MIME-Version: 1.0
References: <20200216182334.8121-1-ardb@kernel.org>
 <CAKv+Gu-4N6B0LPL1fn5C2EAh9y3ECZ=mSi92p0AyJf67mJoWmw@mail.gmail.com>
 <20200218194625.GA25459@agluck-desk2.amr.corp.intel.com>
In-Reply-To: <20200218194625.GA25459@agluck-desk2.amr.corp.intel.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 18 Feb 2020 23:08:47 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu-P05VJDXpFr_CqA7WVrnac_nWeGT36D4oDEPAHM5cDrw@mail.gmail.com>
Message-ID: <CAKv+Gu-P05VJDXpFr_CqA7WVrnac_nWeGT36D4oDEPAHM5cDrw@mail.gmail.com>
Subject: Re: [PATCH 00/18] efi: clean up contents of struct efi
To: "Luck, Tony" <tony.luck@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_140901_458916_07A1DBCC 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: "Yu, Fenghua" <fenghua.yu@intel.com>, linux-efi <linux-efi@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arvind Sankar <nivedita@alum.mit.edu>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Feb 2020 at 20:46, Luck, Tony <tony.luck@intel.com> wrote:
>
> On Sun, Feb 16, 2020 at 07:31:58PM +0100, Ard Biesheuvel wrote:
> > (+ Tony and Fenghua)
> >
> > Apologies to the IA64 maintainers for forgetting to cc you.
>
> No worries.
> >
> > The whole series can be found at
> > https://lore.kernel.org/linux-efi/20200216182334.8121-1-ardb@kernel.org/
> >
> > Please let me know if you need me to resend with the missing cc's added.
>
> Thanks to get-lore-mbox.py I don't. It picked up all the pieces.
>
> It all builds and boots with no issues.
>
> Looks like a nice cleanup.
>
> Tested-by: Tony Luck <tony.luck@intel.com> # arch/ia64
>

Thanks Tony.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
