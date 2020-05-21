Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1A51DC592
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 05:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OmHFAOyJJgkFelOoODPr7Z4nGmf1W923lqfcHTobV20=; b=aJoLSE2GTJj7R0
	NT99xWBhMOQG5hqO+IUQYNRbSBEOyBqXiJpXjfTUWm644CwCRK5IvdF/USnutSmYJw26R9b+7+i1M
	pAGtOUe2iUZbl5HcPM+/qLZxkHVE4FzzNV13vxCP8v/SV19vj1sVIVxQe1k7+MXTUJP709ZEFy4d8
	HkW8KF7x3417z5AHlz3JLRV2Vp7W+NOBwnuYOt/51hFFxpiqIChIBMKkpYeF4iRVf3v21drMp6cXe
	eD5wmatkgq5+fYuqFH6oX4eGQU3q4EO3IG1suP+my9d2o950TyIVIfGXc0fxIK8K93m/+JHv7lNr0
	CXqrVR2IVx8gxYZuro/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbbor-0003WO-06; Thu, 21 May 2020 03:24:29 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbboh-0003Vm-UQ
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 03:24:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id s10so2465272pgm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 20:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=mWnBjl1zYC8g8arTkDhsLL1NSSPTMEKdZHG0NVZD9M8=;
 b=dQODjFoCNsXPgZtIsjjHamdC4Pu+mSJd0GckTyPx551zr98aODM5dJFMdkhXgPjklf
 VYPAt85gs5oCBBSY8ECg8cFn31wUYDRLAAh9PNMfsCMF8a+/KTkDsHPt9m0Jc9PtxSpU
 8wZgJVSDe5kxAm3oAtQuqWMfKgxPEZGlO2rzc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mWnBjl1zYC8g8arTkDhsLL1NSSPTMEKdZHG0NVZD9M8=;
 b=AtN0KmKtEqum93waYAYkGl9KYx093BOfgq/gVn2SebmOLoOL0t5Th5sqMwC1+jJzBr
 vFbxo7n3juq+ZMZ0Cjv8x8NqPpBcRfkqJC4Y09R2sTy9FL7/jSD7ATZ57ycivbcEDDfh
 kIQK0P6+T/o+zLHOg2ELAy8m+8r5fxEdCW6hVFI5KPtN1QUcaU6LAs7WMjwvP2NPenOB
 2QKyJM8WrYft+P6oq47WnhmNHspONmp7eiuPAEPsEOUbkwf2bmuACCn9CiHjwZcNm4sk
 ILhGD6H6IVHk/SqOWc0n0QfCZHOEDcwiV4kV2z1JiDr//pFVYCVgI+7LSd2SZCA66a02
 092g==
X-Gm-Message-State: AOAM532vKkpysWOSJcYQTisGgypP0bJayBbp4ar+7YkLNk4V+Pq4KEpc
 QR6SxlbKuNGQys9iAeyfKQ3Hxw==
X-Google-Smtp-Source: ABdhPJwEXKl6A+KQbb5Fp68HNAuocmXXpqB85QaVdfl5nI9EFTDUjgRqSfp1CPCQYOESq1iPuYQ3Xw==
X-Received: by 2002:a63:f242:: with SMTP id d2mr7158481pgk.212.1590031458617; 
 Wed, 20 May 2020 20:24:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id s206sm3325954pfc.31.2020.05.20.20.24.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 20:24:16 -0700 (PDT)
Date: Wed, 20 May 2020 20:24:15 -0700
From: Kees Cook <keescook@chromium.org>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH] soc: fsl: qe: Replace one-element array and use
 struct_size() helper
Message-ID: <202005202022.588918E61@keescook>
References: <20200518221904.GA22274@embeddedor>
 <202005181529.C0CB448FBB@keescook>
 <CADRPPNR-Croux9FgnrQJJmdF2jNnuAmC+2xMJSgSbkbRv9u8Mw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADRPPNR-Croux9FgnrQJJmdF2jNnuAmC+2xMJSgSbkbRv9u8Mw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_202420_001819_C3B33871 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 lkml <linux-kernel@vger.kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 06:52:21PM -0500, Li Yang wrote:
> On Mon, May 18, 2020 at 5:57 PM Kees Cook <keescook@chromium.org> wrote:
> > Hm, looking at this code, I see a few other things that need to be
> > fixed:
> >
> > 1) drivers/tty/serial/ucc_uart.c does not do a be32_to_cpu() conversion
> >    on the length test (understandably, a little-endian system has never run
> >    this code since it's ppc specific), but it's still wrong:
> >
> >         if (firmware->header.length != fw->size) {
> >
> >    compare to the firmware loader:
> >
> >         length = be32_to_cpu(hdr->length);
> >
> > 2) drivers/soc/fsl/qe/qe.c does not perform bounds checking on the
> >    per-microcode offsets, so the uploader might send data outside the
> >    firmware buffer. Perhaps:
> 
> We do validate the CRC for each microcode, it is unlikely the CRC
> check can pass if the offset or length is not correct.  But you are
> probably right that it will be safer to check the boundary and fail

Right, but a malicious firmware file could still match CRC but trick the
kernel code.

> quicker before we actually start the CRC check.  Will you come up with
> a formal patch or you want us to deal with it?

It sounds like Gustavo will be sending one, though I don't think either
of us have the hardware to test it with, so if you could do that part,
that would be great! :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
