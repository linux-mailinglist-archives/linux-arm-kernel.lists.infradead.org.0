Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC0E15CEE2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 01:11:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJDBuKpICSkBvcWFgDXQGU+l5reAqOBXq2WS6zs1QEg=; b=r4oxPWshxnMq8z
	54dezhyCU+ClzYJQiduhRk2IgYuDIOxlKM7STZ/+8kdjibNXu/PyzGB5eWyxZXhwBASzuBEvw7m+j
	fBQH4MCHYgg+RiVFoAqAECeDJf8jfCWKKTnH9qt3/pLUkNuRZ5BUYLwAiCu5Xvh8p/qo2/LjTlWqb
	/oeP6neh3j7VEIR6NHFxjS+8iyDEfgPvzwR3D33M14h+6cShagVbtzlHPq6jaKVfm6aN3Xz0O3KKm
	d0tljJc6Sk82ouPgbWStFraAgSc/PAjhmBcZR/mRM5gk7sSFpydCTPMqRxNUgNYSoXGE9WnCMO60d
	vVvi9+lA6hSPNtm4kYWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2OZR-0006sj-CI; Fri, 14 Feb 2020 00:11:01 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2OZJ-0006sB-D9
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 00:10:55 +0000
Received: by mail-qk1-x741.google.com with SMTP id h4so7609936qkm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 16:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aUEcYz9K4VLL5nGbvcm6Gu8W5N+sLyI0U0rpkuTxw3s=;
 b=s1OMtYE9iVayDfE3aeTM/23RFdwdU0l0F4Wvx4oUJcqFX9SI1PEbRcEyf4BvX+c13F
 prevgpFqdI32sh5LFbBPIi9BwmHzF8tT372oZsl31tJGq/xajL1US2WmhlC1amLozV12
 +EPxcIb//OijCHKQfW0M0cumTp7c+MQxOTqubvKqgC84avomUFz0sJMWvZ4R05FLUSaQ
 xwXJrmqr2eR3Z95cLBsqa9O54wwn+oGKqz3sQ6Bh6zjVpjNLlyeRwRzxFyrknzlHnc51
 Xs0pdBsGgrNmbKsyCwtXonKwkMxir02yC1AdUDpT34HASKRmTdQlsN0mGaMUFr1RSz9E
 98eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=aUEcYz9K4VLL5nGbvcm6Gu8W5N+sLyI0U0rpkuTxw3s=;
 b=ovEMejzDne8qKWHTNKNuDzFSyi6vwbUHYmgYWvJEfcLlZh51SgAXq0rTf8M2dYgxpV
 oDxSEx+u/cTlt4lqBJeHqszh7hu+HBkVLZDnKAr8P5pt/vmZtkNuIS0Ony+aqYOonTC9
 EFWfvqZAOYoQecGX6POqCjKZZFnX2Ev4pGKFCwl2Fbo7lxqlZkBT/54vti6zAqrcSC7v
 He4PMC7r2Sjce/U+BbE2LIf0yC0aNpd/FuZYYc5IYjBOAxVpEUgsNYmDbBfxktEeVQAC
 lW58QFwLDpkfh5qTO6dBNVURwLTozYt5BRouz3HsHnklAO/fDMgMeejp2vQCZhKvUOqi
 vAZA==
X-Gm-Message-State: APjAAAUC/ngZgmjsJnARdR38KWDsjX1scr6rwUlthsGMuHD6HFeJp+Wi
 OMruYTJw5ElVX/zZRdQfXVE=
X-Google-Smtp-Source: APXvYqyxGT06EcrW/HaX5yk4ROGph/XenpbLUl+r0HZNUM8+pfg6WbANZJvRM7LJqnNcyQd8/2aaVg==
X-Received: by 2002:a37:4a46:: with SMTP id x67mr169038qka.160.1581639051615; 
 Thu, 13 Feb 2020 16:10:51 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id k58sm2476813qtb.60.2020.02.13.16.10.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 16:10:51 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Thu, 13 Feb 2020 19:10:49 -0500
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC PATCH 0/3] efi/x86: add support for generic EFI mixed mode
 boot
Message-ID: <20200214001048.GA3054227@rani.riverdale.lan>
References: <20200213145928.7047-1-ardb@kernel.org>
 <20200213175317.GC1400002@rani.riverdale.lan>
 <CAKv+Gu-78w=gs+D-eS5iBX7e3zL57XBOe1vdW=Bkk=EcA+_FQA@mail.gmail.com>
 <20200213184752.GA1424509@rani.riverdale.lan>
 <CAKv+Gu9Azn9oGHaTqv+-Foj4=b5Y-JradERq4NC5V9XOaVjSKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu9Azn9oGHaTqv+-Foj4=b5Y-JradERq4NC5V9XOaVjSKQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_161053_470459_63554F49 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Arvind Sankar <nivedita@alum.mit.edu>, Peter Jones <pjones@redhat.com>,
 Leif Lindholm <leif@nuviainc.com>, Laszlo Ersek <lersek@redhat.com>,
 Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 10:36:14PM +0000, Ard Biesheuvel wrote:
> On Thu, 13 Feb 2020 at 19:47, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Thu, Feb 13, 2020 at 05:55:44PM +0000, Ard Biesheuvel wrote:
> > > On Thu, 13 Feb 2020 at 18:53, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > > As an alternative to the new section, how about having a CONFIG option
> > > > to emit the 64-bit kernel with a 32-bit PE header instead, which would
> > > > point to efi32_pe_entry? In that case it could be directly loaded by
> > > > existing firmware already. You could even have a tool that can mangle an
> > > > existing bzImage's header from 64-bit to 32-bit, say using the newly
> > > > added kernel_info structure to record the existence and location of
> > > > efi32_pe_entry.
> > > >
> > >
> > > That wouldn't work with, say, signed distro kernels.
> >
> > No, the idea would be that the distro would distribute two signed
> > images, one 32-bit and one 64-bit, which are identical except for the
> > header. At install time, the installer chooses based on the system's
> > firmware bit-ness.
> >
> 
> I guess it would be possible, but then we'd need two different images
> while today, we can run the same image on both kinds of firmwares. The
> only thing I am trying to do is remove all the quirky bootparams stuff
> from the loader so that we can switch to LoadImage

Yeah, but doing that will allow you to boot directly from firmware on
existing machines, and only one image needs to be chosen at install
time, so it just adds a few MiB to the package. I guess most people will
still use a boot manager or loader that can be easily enhanced to use
LoadImage and the new section, but it would be nice to have the option
to avoid that.

> 
> > >
> > > > Also, the PE header can live anywhere inside the image, right? Is there
> > > > any reason to struggle to shoehorn it into the "boot sector"?
> > >
> > > It cannot. It must live outside a region described by the section headers.
> >
> > It could still be inserted after .setup, or at the very end of the file, no?
> 
> The PE/COFF spec mentions that the COFF header needs to follow the
> signature. Also, the SizeOfHeaders field would become somewhat
> ambiguous if the header is split up like that.


Ah, the definition of SizeOfHeaders doesn't make much sense if the
headers weren't contiguous with the MS-DOS stub. I guess they just
wanted the MS-DOS stub to potentially vary in size, but still want the
header to immediately follow it, drat.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
