Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCAFFB562
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 17:41:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RpvbJE72/uF27A4tcTVIlnaLPObSUCwQyz7kBi+qfho=; b=HeHYp+dzjpVfbk
	As+8xRYSK1egk8DRvjTkNvbflXPnBBMleWabFP1A61tcTeP1YBkawJj/V+zsH/Je4o8JpZbdsjkJK
	SRMiYmAtL06KzIPPp37Wjkq/1VniUyroSrTvVHDr8qSPllpTHr1RK/q9ZJkVvFLPow2jcV/QUZ6WV
	GVH5QBLPBA+7bgNTsJD2S9cBFhVImzS94sCLa7xwefD2xMlZrEQWtt1MO9Ei1FBuoqRQOI0DvmUca
	/qD6LyMtlVtXJI4iyEAC1WpfIf5ncSQWi8I3ohszo7FG4zBSkuKZ1LDzsC+vbp1sbHST9Sq2f8Dbp
	65/8FNj293kdl8bMrLNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUvhd-0001eB-LD; Wed, 13 Nov 2019 16:41:09 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUvhW-0001d1-Dx
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 16:41:03 +0000
Received: by mail-lj1-x243.google.com with SMTP id d5so3333942ljl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 08:41:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IXJjwxWVC55yLVrTrqMlfhMslA2YmSoPCmuWxQ9Z1yA=;
 b=hBBa3CeKyqP0PPhoeL6NBNaKCWmnnCm42FJMebd8vhB9frKHZbx/LVLxNigeYeeSyf
 Tr9US9KNUDjInwfvRwXHyNa4DeqDgvfhgO7Bbq+xFPMkcEXTZsq5M/y0tPhks9KaQJcN
 CurISmPdkfK1RyWNlXatFqKzg9omOPzuFCsrk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IXJjwxWVC55yLVrTrqMlfhMslA2YmSoPCmuWxQ9Z1yA=;
 b=h0EBtQ3XiWfh19VMzfMn2rKNQpOJqOXm8RBSsigjvVkyzBZvAXm3oxY2NXPcr5r0Y0
 aYqGe6jyzFjlYJfdPW2dTrnwl6IQKZlWLP+CX13lKnmNyDUfJnPMmM6w4vRe4uaTWzLn
 nDLUuHUGiuyyl0Q6dNyksk8MZEhYjKOMFA7Vl93EiJCyNvS0guqCLnuGqtNBYsuWQy6F
 c9om3ALsg+nXdvPaFpLRliOub6VpUXjaIfjgwww7xrrbk/btnjywcG3P8EUOHQ1NuZAH
 Q8USD2DcRqfYi063P3/LKK6RY7MjiyWHMf6E0mOO9o22t+JMAGDTfqQlNIpCBJu0VFcQ
 WjRg==
X-Gm-Message-State: APjAAAWM5GyedvAA2WyuAR7FauciJkjJI5z0bSQG+jcM6AQQD1zSxErX
 BKVNP4cb6Cllgd8F3Wy5Ky+NxEwLBbA=
X-Google-Smtp-Source: APXvYqy8rANygS8JRXzIfh1CI3vKiZy1uzFdlo9x80TDZS5ihCCFmlta8ulZnmnzTnsqgvIFP2QvNw==
X-Received: by 2002:a05:651c:20a:: with SMTP id
 y10mr3327488ljn.76.1573663258742; 
 Wed, 13 Nov 2019 08:40:58 -0800 (PST)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com.
 [209.85.167.41])
 by smtp.gmail.com with ESMTPSA id w21sm1086664ljg.91.2019.11.13.08.40.57
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Nov 2019 08:40:57 -0800 (PST)
Received: by mail-lf1-f41.google.com with SMTP id y186so2523014lfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 08:40:57 -0800 (PST)
X-Received: by 2002:ac2:5bca:: with SMTP id u10mr3466591lfn.134.1573663257105; 
 Wed, 13 Nov 2019 08:40:57 -0800 (PST)
MIME-Version: 1.0
References: <20191112130244.16630-1-vincent.whitchurch@axis.com>
 <20191112160855.GA22025@arrakis.emea.arm.com>
 <20191112180034.GB19889@willie-the-truck>
 <20191112182249.GB22025@arrakis.emea.arm.com>
 <CAHk-=wg4vi27mnMVgZ-rzcEdDAjTXrY1Jyz3+=5STcY0bw4-jQ@mail.gmail.com>
 <20191113102357.GA25875@willie-the-truck>
 <CAHk-=wjmyEdYW4vEaNDP4UMB+H7wWneOwLUR3FmPG-Fb6U8dZg@mail.gmail.com>
In-Reply-To: <CAHk-=wjmyEdYW4vEaNDP4UMB+H7wWneOwLUR3FmPG-Fb6U8dZg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 13 Nov 2019 08:40:41 -0800
X-Gmail-Original-Message-ID: <CAHk-=wj5YrnTWzS4s0AVaXgsqEKMPQ+5AqwV69+G6UJCQ2Z5-g@mail.gmail.com>
Message-ID: <CAHk-=wj5YrnTWzS4s0AVaXgsqEKMPQ+5AqwV69+G6UJCQ2Z5-g@mail.gmail.com>
Subject: Re: [PATCH v2] buffer: Fix I/O error due to ARM read-after-read hazard
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_084102_468716_02F9F472 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Vincent Whitchurch <rabinv@axis.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 8:36 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> test_bit() is a very unfortunate interface, in that we actually use it
> in some situations where we _really_ would want to merge reads (not
> split them, but merge them). There are several cases where we do
> constant test-bits on the same word, and don't care about ordering.
> Things like thread flags etc.

Side note: test_bit() really isn't good for locking in the first
place. The fact that the buffer heads use it for that is very
non-optimal indeed.

Particularly for testing something like "is this buffer uptodate", it
should be a "smp_load_acquire()", not a test_bit(). And READ_ONCE()
doesn't really help.

So in many ways it would be much better to make the buffer head stuff
use proper ordered accesses. But I suspect nobody is going to ever
want to go through that pain for a legacy thing, so the papering it
over with READ_ONCE() and a ugly ARM hw erratum hack is probably the
best we'll do..

                Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
