Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0666515C93C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 18:13:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jw5GXUCsfpQtxSXRJXc1C3C/1wiLn7n1Sa8HvIc5aLk=; b=BpQyyvQGsR93mS
	s0jmROZ7MjqZxBwCCJnlQHBAIJvd70ZJnmJa9fRzTuA1x9XXyavu0aiPR8ojmi/Iwx4ZtytysrAeh
	oUN8CX6HrKyuiso2WR6ccCaKVBSOtLap6DaAF5x+LtJ67gocWCvyHnPm+qCtAOVlHSw14LuJfQxdl
	btd9+Ji5YFS25FLGoUg4AQ9KsQK5wtcrJ0swhjHGgPlXGG9MDnyEMTaPZ41yo3M6r5rUl8Yp6y0t1
	snkfhe7TYfhwp331dZIP7N7Lw3rGx5i2URf1RixhXvuzxKhru3Nswm6tjnfqBdP+TVrbGqi6dxlnq
	/8DLa6liumoT30sr0VVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2I3E-0000Cw-NA; Thu, 13 Feb 2020 17:13:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2I37-0000CU-CX
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 17:13:14 +0000
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B44CF24671
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 17:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581613993;
 bh=l56qEB9k44eSpvcs/9db1OGeL5hy9h6oE3gaJUII1rg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PGJl0ZsOHuUXBA+DysErbQ8+43epyDksEZdXWC3xdLBYB67KYpuknKqxPNuw0/Q/+
 3bvVU8W+dp2xMpK7FOIvUzfcvYN0vPDNQXBcugYiII90YZMfmovxH4y/BS6JrxFHyI
 rffZ8wWqskztlbg7HA3bphJ44g1ADaEAiyZFUjeA=
Received: by mail-wr1-f47.google.com with SMTP id y17so7641098wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 09:13:12 -0800 (PST)
X-Gm-Message-State: APjAAAVxs6XWFmiAoQLwqDukXpr1MYg/EmMGeG6botAMgZQznqCVSbbN
 r4d7x0/FNqKEjEnAWhEU/INnSQEVjPqVHOvaeXgJmg==
X-Google-Smtp-Source: APXvYqwfGp+HHdQIFAu23pxn/wIxIFeKFu5EuoFB2R6CPKb8dbBhH47KafSTgYtv8BXGr/P3P1dm1egDcwSvkEKvWZ8=
X-Received: by 2002:a5d:65cf:: with SMTP id e15mr22245562wrw.126.1581613991021; 
 Thu, 13 Feb 2020 09:13:11 -0800 (PST)
MIME-Version: 1.0
References: <20200213145928.7047-1-ardb@kernel.org>
 <20200213145928.7047-3-ardb@kernel.org>
 <20200213165902.GA1400002@rani.riverdale.lan>
In-Reply-To: <20200213165902.GA1400002@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 13 Feb 2020 17:13:00 +0000
X-Gmail-Original-Message-ID: <CAKv+Gu-w74DH8jG6GiL+Ydn-qdG7CW17AtZiHCoU+RpT-Teasw@mail.gmail.com>
Message-ID: <CAKv+Gu-w74DH8jG6GiL+Ydn-qdG7CW17AtZiHCoU+RpT-Teasw@mail.gmail.com>
Subject: Re: [RFC PATCH 2/3] efi/x86: add true mixed mode entry point into
 .compat section
To: Arvind Sankar <nivedita@alum.mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_091313_450653_AD0CF47A 
X-CRM114-Status: GOOD (  16.76  )
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

On Thu, 13 Feb 2020 at 17:59, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Thu, Feb 13, 2020 at 03:59:27PM +0100, Ard Biesheuvel wrote:
> > Currently, mixed mode is closely tied to the EFI handover protocol
> > and relies on intimate knowledge of the bootparams structure, setup
> > header etc, all of which are rather byzantine and entirely specific
> > to x86.
> >
> > Even though no other EFI supported architectures are currently known
> > that could support something like mixed mode, it makes sense to
> > abstract a bit from this, and make it part of a generic Linux on EFI
> > boot protocol.
> >
> > To that end, add a .compat section to the mixed mode binary, and populate
> > it with the PE machine type and entry point address, allowing firmware
> > implementations to match it to their native machine type, and invoke
> > non-native binaries using a secondary entry point.
>
> This patch refers to efi32_pe_entry which is only defined in the next
> one.

Indeed. So the .compat section will be emitted with a bogus entry
point when applying this patch but not the next one, so perhaps I
should simply reorder them .

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
