Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5321467FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 13:30:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BO2QDi+M436ruDrcplRUOIcamKPhsihuCTErV6lSSZY=; b=SXkuRCKbz8wCKB
	g0DOTCDVor4k0eWdIGmj5frgSNCvbrfQhQaP4BuJy4p4Xi1ChXUVDaQRXLzBNcG7sKVZd7KMSHRqD
	K9mp0kdCFc7Cnw1IvdFVadjQ5R0+gj/hgOqMwpIpJfTEtEcnlAUCbxhNTAZiKrkrty2DUq3jbtTm9
	gtxwiatUbA1kTR/oJIGqvuicB1L3FNy4Q0VuHOjoagIfGX2Is46e1QMF79nnWHi2ahhFAEfAOkxpE
	eB68GHsnctKfgJXgXhpOhpxkkYwPBvYggQgBDDFITm0JFqRnwoY44XLx+ma4xS7DDGDc/qxokcQDo
	r4XFU4CDtXc4xAyt5UVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iubco-0005AF-P3; Thu, 23 Jan 2020 12:30:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iubce-0004tx-Q9
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 12:30:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id 20so2330931wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 04:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fGSddkn2oPOfmTp45og+40fbCbT5YOVg/hcLGMG+SRk=;
 b=iPWd6aqZDSVrowqY+yXr1t9T8eaRJ1u9DG41qvU1O/8NZKaepvdruPPR1G72He/3ab
 DgGnv0WNIMRDUFPC+37qhVZjcINw1xTizwvb6gP5948KHncNbjO03x2lN7Kyr27i9Pux
 I63pzRi/28bAVU0gr1Aa1lXXrvT+KZH5r3zB7YYjqctolvbmW3nCsYXepFsDnwxloaMU
 uzWlqF2sjgPrSFenojEg1eDKzz81bJYbYP6WWoDs0QtB+1ImRZOeUmVT1snmvSDlLq0Q
 kyKoS6w4efa6VYEQKGe5MOuYkO8HEOe8VJL28Lj7v9eWiUjXMNkwqZ8oFEl54l/aGAPg
 5n/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fGSddkn2oPOfmTp45og+40fbCbT5YOVg/hcLGMG+SRk=;
 b=pSUcaZBedJKeBFxnAY1Zup5kbisuKCL6uOolBpA2q2dyMkOpwHKZpAE4MsZcehgxsT
 bakuwn/KQliY4TLfa5Lm5AFvW9bYe65V7KCMbThqshUzGRUJcxNZV0enli4iugTrhpo0
 P/tmSzKVE8lmCoaUWgCetPd1c8eDXw54yQDnUlQFBQ04jDc7rPiYP1s0fgO8duF/81yU
 /G0FXR4Dd+D9/f9nnHfcJmyKSWvAF8bKqLqFZ4zXkSXmhkO1mZXEEz6mXhMwwgTOsqvg
 N8kby84MM+nWL6RNmiS0f8GtWCfjR9g9ydaNconJRHCLzBbedPyNX9eDwfpwmu8uJpFq
 k7yw==
X-Gm-Message-State: APjAAAX26Kid2wyT8+FwXQKm8PLMbcJk3RRkvAOT17TfK+VpjQ09pmCn
 WK9gUeopjmcLvGlvNxout1RiPL69mNSXpqwXxmcSZg==
X-Google-Smtp-Source: APXvYqwRdDw6IKpVxqtsb6wHOmHsoYFzKFkd0ur/MlxkxDjV/8oc+nyjFNKke74ZHCyQ/IDGPGm8XXZQ+xfwl2i5HHk=
X-Received: by 2002:a05:600c:248:: with SMTP id 8mr2273208wmj.1.1579782606500; 
 Thu, 23 Jan 2020 04:30:06 -0800 (PST)
MIME-Version: 1.0
References: <20200114141647.109347-1-ardb@kernel.org>
 <20200114141647.109347-3-ardb@kernel.org>
 <ada03416b1b362fa255feb45257414655d8ab023.camel@linux.intel.com>
In-Reply-To: <ada03416b1b362fa255feb45257414655d8ab023.camel@linux.intel.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 23 Jan 2020 13:29:55 +0100
Message-ID: <CAKv+Gu-9KvzLEcNQnRfsOkU=5oc1otY_NS15fR5Oi4Z4UVvurw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] tpm: tis: add support for MMIO TPM on SynQuacer
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_043008_879916_1A8F38EE 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 =?UTF-8?Q?Peter_H=C3=BCwe?= <peterhuewe@gmx.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Masahisa Kojima <masahisa.kojima@linaro.org>,
 linux-integrity <linux-integrity@vger.kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 23 Jan 2020 at 13:27, Jarkko Sakkinen
<jarkko.sakkinen@linux.intel.com> wrote:
>
> On Tue, 2020-01-14 at 15:16 +0100, Ard Biesheuvel wrote:
> > When fitted, the SynQuacer platform exposes its SPI TPM via a MMIO
> > window that is backed by the SPI command sequencer in the SPI bus
> > controller. This arrangement has the limitation that only byte size
> > accesses are supported, and so we'll need to provide a separate set
> > of read and write accessors that take this into account.
>
> What is SynQuacer platform?
>

It is an arm64 SoC manufactured by Socionext.

> I'm also missing a resolution why tpm_tis.c is extended to handle both
> and not add tpm_tis_something.c instead. It does not follow the pattern
> we have in place (e.g. look up tpm_tis_spi.c).
>

We could easily do that instead, if preferred. It's just that it would
duplicate a bit of code.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
