Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70D215CE27
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 23:36:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eLkXcEE0JtNZbdbwBg/tY1WKYF0mJOCw3PvAWqzVeKM=; b=n4KMbmaN6dQ/TC
	vpFb9kKDLuwTBhaHFDCrWFDEOtMyavqq6hAvSI9UKD7EVpA6bygxuSG/rLvLMGSMOLjO4SZiXTNMI
	LLxaT2uHYHPX4pOgvHIhkN8Z6y1ysH6qBGTrafpIDxoqR4AVPpSJgbbUI59sXP3GOjsUVhS9m1g2o
	ljHQmL+uFkyNwQTwbJstrZ3Cg8/TXNj8sr8idEQE4p0f/S1x0TJJXbwCCVWr3NP3g5nHZhePVIcux
	hlmP98PMW5owPQKJ9y73Nsun6NmDanY5KCTl9osQsBbHWXhonjqmvDVgFBq2HdyUYUhMEiwxtYV51
	7qHePzkS18HrxCTkj7PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2N65-0003qz-L0; Thu, 13 Feb 2020 22:36:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2N5w-0003qb-Qp
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 22:36:30 +0000
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C2F8122314
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 22:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581633387;
 bh=JU3goHu7gsc+wO1ffpTCrRoCNDgmBOMfYIX03xTJlXk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KuZavOgvBzqv+Qxh1BFMchPE7rZHU/sde4FMKB0n1cRkHuF8yB2nSpwg6p41mkK5I
 A52ju/TzH5VcdbBNLQwxyEmQw9uqML5Zj/LUu/+bvFfCJOFuPrRtpJ12zGykuHomH0
 zDNcpUMCRBFKFURaoXhBegKJjltrEob12YNDMmAo=
Received: by mail-wm1-f51.google.com with SMTP id t14so8567000wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 14:36:26 -0800 (PST)
X-Gm-Message-State: APjAAAW+3ipwzmvYZL5/nlKSyP4Wgrwfgojq5jWMzmrotn9U7JyEyb7i
 OzMJuWnqI9Xh2N5L/oOS63hKkr7G82lqn0G10MvLoA==
X-Google-Smtp-Source: APXvYqwbn5MVNy/geSnY+QWWK0EmTyse/GP6qimB1vsXCBiqPWCuxVIvXO0w48vYKkBBBZ/xAF8BVoT6KTDIxw7M9kk=
X-Received: by 2002:a1c:b603:: with SMTP id g3mr263116wmf.133.1581633385212;
 Thu, 13 Feb 2020 14:36:25 -0800 (PST)
MIME-Version: 1.0
References: <20200213145928.7047-1-ardb@kernel.org>
 <20200213175317.GC1400002@rani.riverdale.lan>
 <CAKv+Gu-78w=gs+D-eS5iBX7e3zL57XBOe1vdW=Bkk=EcA+_FQA@mail.gmail.com>
 <20200213184752.GA1424509@rani.riverdale.lan>
In-Reply-To: <20200213184752.GA1424509@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 13 Feb 2020 22:36:14 +0000
X-Gmail-Original-Message-ID: <CAKv+Gu9Azn9oGHaTqv+-Foj4=b5Y-JradERq4NC5V9XOaVjSKQ@mail.gmail.com>
Message-ID: <CAKv+Gu9Azn9oGHaTqv+-Foj4=b5Y-JradERq4NC5V9XOaVjSKQ@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] efi/x86: add support for generic EFI mixed mode
 boot
To: Arvind Sankar <nivedita@alum.mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_143628_914060_E8F5B584 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Daniel Kiper <daniel.kiper@oracle.com>, Matthew Garrett <mjg59@google.com>,
 Michael Brown <mbrown@fensystems.co.uk>, Hans de Goede <hdegoede@redhat.com>,
 Peter Jones <pjones@redhat.com>, Leif Lindholm <leif@nuviainc.com>,
 Laszlo Ersek <lersek@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Feb 2020 at 19:47, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Thu, Feb 13, 2020 at 05:55:44PM +0000, Ard Biesheuvel wrote:
> > On Thu, 13 Feb 2020 at 18:53, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > As an alternative to the new section, how about having a CONFIG option
> > > to emit the 64-bit kernel with a 32-bit PE header instead, which would
> > > point to efi32_pe_entry? In that case it could be directly loaded by
> > > existing firmware already. You could even have a tool that can mangle an
> > > existing bzImage's header from 64-bit to 32-bit, say using the newly
> > > added kernel_info structure to record the existence and location of
> > > efi32_pe_entry.
> > >
> >
> > That wouldn't work with, say, signed distro kernels.
>
> No, the idea would be that the distro would distribute two signed
> images, one 32-bit and one 64-bit, which are identical except for the
> header. At install time, the installer chooses based on the system's
> firmware bit-ness.
>

I guess it would be possible, but then we'd need two different images
while today, we can run the same image on both kinds of firmwares. The
only thing I am trying to do is remove all the quirky bootparams stuff
from the loader so that we can switch to LoadImage

> >
> > > Also, the PE header can live anywhere inside the image, right? Is there
> > > any reason to struggle to shoehorn it into the "boot sector"?
> >
> > It cannot. It must live outside a region described by the section headers.
>
> It could still be inserted after .setup, or at the very end of the file, no?

The PE/COFF spec mentions that the COFF header needs to follow the
signature. Also, the SizeOfHeaders field would become somewhat
ambiguous if the header is split up like that.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
