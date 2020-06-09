Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423FD1F4856
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 22:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3AxtKmOmw+QVyhiTTqOQ2Y3YglotccpqBCo/jYP9XN4=; b=MNKaTTMPCq/a6U
	jyiiNZOQjCPvJWuHWV1XS/xY6cbtmWCEmdLpAOPJ1POpmnqtVknpUU+8cjmpLFRSNDA49Bkfxbdx7
	bwonzFpVE82DiookHkb6bmymtE+p94UjUldswtLyD2b3YuRc0yPErKPGiWSbTWVLkZpqqz2V8SrFL
	eNQfBycxktT8+2XZIgHXK7wbRAprZVVBVuyl1rS9VR26xa1+E5WQPgrvaAixni9D7rDDvmFtL0E7b
	y7NPX7NC6zhvqKmfezApTuv4a0LKVh6u46jx2jgpsEuCNTfWe5S7s+QQ/kLVUEFjzJkZsgGfkIwXk
	uCOyDV9BLyq5djChcMOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jilFj-00052i-Qr; Tue, 09 Jun 2020 20:53:47 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jilFd-000525-Ld
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 20:53:43 +0000
Received: by mail-lj1-x242.google.com with SMTP id x18so10359933lji.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 13:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TFHcUUoO1FylPt5rc0c0PdKgmY833A9Es0GuuQUo5KY=;
 b=jDhXoJNBsNpo+l35SQi7b81dRYCdRiZywWIJdMDv31IWxI8b3VSlSYeuVFagof6fvk
 28LT1R7cTEm6SFyVGINWDlJ8gu8Jgf0szWW3IZ/kpBy9ao/bvafTaRSLf5e3FUo+WdK4
 Zt6x+k3jqXt1wW7d/6qxF3bo2iTm/zRSVgKEBO+IgDqjagRi7AIuR0YRPtdLGXuE8IJx
 qKhgk/hk1Lj9rk67XOuiF8cqIbye4/RFk3MNhUA2QBmhQjGaB2Yn7OBBrdEYvf6a0JfD
 PoioSTvHiYWzuS/duNHw2xEZLCRG5GtIxSxwJ7VL1NLkKk8PxKzAsje3cNfMOH7Ekuju
 o6RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TFHcUUoO1FylPt5rc0c0PdKgmY833A9Es0GuuQUo5KY=;
 b=lmbf/lcZbfBiC6HtH1vd7LNrO9l8tv2gGd0v/BsmsMH9TnTC21g5vPyk7n60V+spUt
 I6W+BpmXI/SR16yIYVMlKlphFamA24pfzzoWEfHj77zgbTlcQVTn6tcgK7XLLyCUG7mt
 o/RuUr1fSCDzSUMwdD4wZmwHI8saN4ZgK47pGIjDpVgWM5yv1Db2/0HNs2myUl9rOjnE
 WZxsN4iOjV3bhZKQ+Tvdxo6uvbx04QbR8YKwVcTOI3a09hNl4OZe/Dc0IBNWBPQdmulx
 EoBddyi8mGcBoAxyQbvoS4wl6fiMZeH0MTHPcKYpciQQrL3fUr5pwkKNtoh18YfW/t+A
 A2XQ==
X-Gm-Message-State: AOAM531OtcZSDyY5Soas24ESzwkO+F+FrjGzULSclQQNo4qE/e4SEWj5
 /uz8//pSBILnwy/2wjKi7+s4Hjjnr5KOmUCGHIdjEw==
X-Google-Smtp-Source: ABdhPJwcLX/s9SsSPOWcglqJwxXBNcSsqG9gpJAls07UlYvl0E3XXfEatVbM2fJFcosuqjHK+8QhAwuvJpEGU/s3Ssc=
X-Received: by 2002:a2e:9147:: with SMTP id q7mr74383ljg.430.1591736019791;
 Tue, 09 Jun 2020 13:53:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200609200446.153209-1-linus.walleij@linaro.org>
 <20200609200446.153209-4-linus.walleij@linaro.org>
 <CADaigPX_9mBqr3hKA0-aC-TOY3hEnXnQremMiPopw8DUcGCzgQ@mail.gmail.com>
 <CACRpkdbY=ALou98n6uW8C5Wwup1-qyaNZhqTSwC8B5FydjbgQA@mail.gmail.com>
In-Reply-To: <CACRpkdbY=ALou98n6uW8C5Wwup1-qyaNZhqTSwC8B5FydjbgQA@mail.gmail.com>
From: Eric Anholt <eric@anholt.net>
Date: Tue, 9 Jun 2020 13:53:28 -0700
Message-ID: <CADaigPV-=Wh1T=9+PDobUNLcTQ4mXYx6gzeTOXsW6EY=Ekf_gA@mail.gmail.com>
Subject: Re: [PATCH 4/4] drm: pl111: Update documentation
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_135341_709544_98A12C56 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Russell King <linux@armlinux.org.uk>, Maxime Ripard <mripard@kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 9, 2020 at 1:17 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Tue, Jun 9, 2020 at 10:11 PM Eric Anholt <eric@anholt.net> wrote:
>
> > FWIW, series is Reviewed-by: Eric Anholt <eric@anholt.net>
>
> Thanks Eric, do I remember correct that you were using this
> driver for something like a clock display? Are you still using it
> for that?
>
> Nowadays the biggest user is arguably the ARM FVP emulator
> which is running a full Android stack using this driver.

I've since moved on from Broadcom (now working at Google on open
source qualcomm graphics) but as far as I know the HW team at broadcom
making those phones will still be using this driver in combination
with vc4.  I had ported their phone as a vehicle to get vc4 onto more
versions of the graphics chip and hopefully get more of bcm invested
in open source graphics.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
