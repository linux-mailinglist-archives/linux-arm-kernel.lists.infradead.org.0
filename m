Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D5411351
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 08:22:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDzvub+uvEFzP8nGDEw4JkxDrQ/oMrZkOSGEtmwyqdc=; b=DVTVlg9XqOhLXe
	pYMW3jDlHpI5DoDHEpcOCNdwvPUZNB7q+NnvpGfR+ZExfqbIm9TZIKFGCGsY1QNAITkj06DmJUqbK
	5RVaHq2I7IoI4ubH3AKVAfGkH5A0OTws/sBeT9q81K8CjGxams+doYZjZAkFQPMiAMwKnsNgmd3Fz
	bPd+p1Rev1Our2vV+oCN/GIhKJCRa8YUGAy47STayCb+xpaF5GJnQzHlUYFXp2Bw9qj8k/slLjsQA
	5TpuJXxdmGiAZ4n+OODTTP+s6/6/XXY9SdxfweWB0vmmyckuh/toMpcF5fGz4/7RCN3eQy9HJNFY4
	I9nZImnSQrNCb/i9qyoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM56v-0002MP-Of; Thu, 02 May 2019 06:22:25 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM56p-0002M3-A1
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 06:22:20 +0000
Received: by mail-it1-x141.google.com with SMTP id s3so1404048itk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 23:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k56mmNJm2c37muwGSNyw5prel5SUd23hcD0vEkYllYY=;
 b=OUxx+AAHpV80+7jWx8f1+E7itJj9D1rgHeIv5/3VMm7TKAnaU1bHWCA0kR/Uu4B/N0
 YiDM2kOhNwjBsVDh7yPbvcSscs4wrg/XbXz1H/w3lDdnJU4TQ9QwedxsTFe/Bbjt18D3
 JRn/qzW0ooD8Rl7s9nAI0qgl8XU1Fhb9EsRc0VNWcSWwmT5yQ/Ep3gbO5ZmDWB/2TOjs
 56aGZ16FpdQ10TxCUNbdRMfiLjvkeIGo1brUr0GBhS/X+j6ZJRXFbl8XXTiVI/tpSorx
 HgJ21xXoiQgpOYV/KzFy4OYZm4ZtO8AhUMxPfwPWagYl7mDnLgavitYf7mYuADYjNy/N
 5KRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k56mmNJm2c37muwGSNyw5prel5SUd23hcD0vEkYllYY=;
 b=oc4qa1T6zhbzPhi9WTVgs5yF9DyRYqVKlSO31QZalCOdKsY7M1e5Wj+hUAFeQY9cwR
 mMXcF38ZVAMQOfhLyYQMbj4mExvgIJjOK8BzHk3cLqao1UIDYLBnJZfXT0jRpe1rj/+r
 XkBSGl9utt+lN1woplFEWI0ddf3Q3iw+5hp63lHv2v6u/mQJyzyua2euj5j3XVg1AnAd
 hiKLmjtT3H3Y1ObutjfpuiPue2zlQhDRy3E2eWNDLVSGdkOc5VlTrbzS3sQ8AfN9z4f8
 TWdV+Czv0dS/cQOuK3d3D1ShYNDqRfegFLQKFcxpli2A3hhaaK3lhONvH9R2N1vDQ2vX
 Dhrg==
X-Gm-Message-State: APjAAAVHgaSPVHJmVt2XKOTa4Q4qEZQzMuhRlXW8WjhB/zZayeWdvylm
 srviSTeHwNX7+Toh9BW/WswRY9CAE9DEm+eQGQ==
X-Google-Smtp-Source: APXvYqx2USGvNZCoaLJnd+1UamBCWbf1OMfqf8foQXGwbUGpu68tSJhvorSVm2AnXEjYEs1kPbB4DdJnuY+hXU3VFhQ=
X-Received: by 2002:a05:660c:38e:: with SMTP id
 x14mr1138760itj.146.1556778137619; 
 Wed, 01 May 2019 23:22:17 -0700 (PDT)
MIME-Version: 1.0
References: <1556087581-14513-1-git-send-email-kernelfans@gmail.com>
 <10dc5468-6cd9-85c7-ba66-1dfa5aa922b7@suse.com>
 <CAFgQCTstd667wP6g+maxYekz4u3iBR2R=FHUiS1V=XxTs6MKUw@mail.gmail.com>
In-Reply-To: <CAFgQCTstd667wP6g+maxYekz4u3iBR2R=FHUiS1V=XxTs6MKUw@mail.gmail.com>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Thu, 2 May 2019 14:22:06 +0800
Message-ID: <CAFgQCTtQm7SuBRfXik6B065Aa+uQ=Mx6i+Y1q+NJU1GEiUgH4g@mail.gmail.com>
Subject: Re: [PATCHv2] kernel/crash: make parse_crashkernel()'s return value
 more indicant
To: Matthias Brugger <mbrugger@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_232219_375070_E17D3255 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 Julien Thierry <julien.thierry@arm.com>, Yangtao Li <tiny.windzz@gmail.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Palmer Dabbelt <palmer@sifive.com>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Stefan Agner <stefan@agner.ch>, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>, Logan Gunthorpe <logang@deltatee.com>,
 linux-s390@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-sh@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 Hari Bathini <hbathini@linux.ibm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Dave Young <dyoung@redhat.com>, Fenghua Yu <fenghua.yu@intel.com>,
 Will Deacon <will.deacon@arm.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Ananth N Mavinakayanahalli <ananth@linux.vnet.ibm.com>,
 Borislav Petkov <bp@alien8.de>, David Hildenbrand <david@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 Tony Luck <tony.luck@intel.com>, Baoquan He <bhe@redhat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 Thomas Bogendoerfer <tbogendoerfer@suse.de>,
 Paul Burton <paul.burton@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Greg Hackmann <ghackmann@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 25, 2019 at 4:20 PM Pingfan Liu <kernelfans@gmail.com> wrote:
>
> On Wed, Apr 24, 2019 at 4:31 PM Matthias Brugger <mbrugger@suse.com> wrote:
> >
> >
> [...]
> > > @@ -139,6 +141,8 @@ static int __init parse_crashkernel_simple(char *cmdline,
> > >               pr_warn("crashkernel: unrecognized char: %c\n", *cur);
> > >               return -EINVAL;
> > >       }
> > > +     if (*crash_size == 0)
> > > +             return -EINVAL;
> >
> > This covers the case where I pass an argument like "crashkernel=0M" ?
> > Can't we fix that by using kstrtoull() in memparse and check if the return value
> > is < 0? In that case we could return without updating the retptr and we will be
> > fine.
After a series of work, I suddenly realized that it can not be done
like this way. "0M" causes kstrtoull() to return -EINVAL, but this is
caused by "M", not "0". If passing "0" to kstrtoull(), it will return
0 on success.

> >
> It seems that kstrtoull() treats 0M as invalid parameter, while
> simple_strtoull() does not.
>
My careless going through the code. And I tested with a valid value
"256M" using kstrtoull(), it also returned -EINVAL.

So I think there is no way to distinguish 0 from a positive value
inside this basic math function.
Do I miss anything?

Thanks and regards,
Pingfan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
