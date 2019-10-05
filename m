Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834E3CCA74
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 16:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGkjiqZq7bUZiN5n8icUL32GwfU19z56njwpYDWy14Q=; b=eEXk00wZiJsVFr
	H/rHSmt1Xs/A4k8qW8aGffGHqfRz/woHLElvD1AzLa26xGZln7Zn0z/z66rmNpoDDjkSTIRhN8cRZ
	FxaYph5F4Tljc3y1YCx89HDeE0MsAEtWh4hq9GfjFViP/iHTBFkTydI1LuL2Bhk3Cz1Q2UlcNqkry
	KtEuHP7GgD8RZh5OL6KvETlTPHWL15SI6rkx/LlqXNuoA70jKXRe6LbyvOSqQt/kZJEZJNyCyMlQb
	Cn+Ht2/xb1j+nXlLvvVFeL0zYJyJqA1aXsBhxOGvNjWmUIUsS4eDrtJJb6MjEkB8F9+SRIG7sGMS2
	7r0WU5H9oQKRfnpD2Y9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGl2q-0008O9-Pi; Sat, 05 Oct 2019 14:28:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGl2i-0008Nk-Ip
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 14:28:21 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4759520867;
 Sat,  5 Oct 2019 14:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570285700;
 bh=0HytaZ1Qi8pY6GlOq+DBjycReyqLhaTKhTi+ABILHH0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=1vFSC5X6EvPe318HJvAuNvuIcag3zPq2fH5UP82biM+c8M0DRehQvabjwK/gJLTgm
 mup0Lv5VnlXBVgRXlu87Wd+s148f4hdWuwLVz/o51x5Ebrs1yZeZrigSynKzes/znX
 JmEwbrVbV2XQE3Q1NaxciA/Wk4W/Y72XY4mDzkQk=
Date: Sat, 5 Oct 2019 15:28:14 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH] counter: stm32-timer-cnt: fix a kernel-doc warning
Message-ID: <20191005152805.49eec3b8@archlinux>
In-Reply-To: <20190925235310.GD14133@icarus>
References: <1568809323-26079-1-git-send-email-fabrice.gasnier@st.com>
 <20190925234927.GB14133@icarus> <20190925235310.GD14133@icarus>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_072820_638425_DC68B560 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, jic23@kernel.org,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Sep 2019 19:53:10 -0400
William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> On Wed, Sep 25, 2019 at 07:49:27PM -0400, William Breathitt Gray wrote:
> > On Wed, Sep 18, 2019 at 02:22:03PM +0200, Fabrice Gasnier wrote:  
> > > Fix the following warning when documentation is built:
> > > drivers/counter/stm32-timer-cnt.c:37: warning: cannot understand function
> > > prototype: 'enum stm32_count_function'
> > > 
> > > Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> > > ---
> > >  drivers/counter/stm32-timer-cnt.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
> > > index 644ba18..e425dd1 100644
> > > --- a/drivers/counter/stm32-timer-cnt.c
> > > +++ b/drivers/counter/stm32-timer-cnt.c
> > > @@ -28,7 +28,7 @@ struct stm32_timer_cnt {
> > >  };
> > >  
> > >  /**
> > > - * stm32_count_function - enumerates stm32 timer counter encoder modes
> > > + * enum stm32_count_function - enumerates stm32 timer counter encoder modes
> > >   * @STM32_COUNT_SLAVE_MODE_DISABLED: counts on internal clock when CEN=1
> > >   * @STM32_COUNT_ENCODER_MODE_1: counts TI1FP1 edges, depending on TI2FP2 level
> > >   * @STM32_COUNT_ENCODER_MODE_2: counts TI2FP2 edges, depending on TI1FP1 level
> > > -- 
> > > 2.7.4  
> > 
> > Fixes: 597f55e3f36c ("counter: stm32-lptimer: add counter device")
> > 
> > Jonathan, please pick this fix up through IIO.
> > 
> > Thanks,
> > 
> > William Breathitt Gray  
> 
> Sorry, that's the wrong Fixes line. Here's the right one:
> 
> Fixes: ad29937e206f ("counter: Add STM32 Timer quadrature encoder")
> 
> William Breathitt Gray
I've picked it up, but please be more formal and also give an
Acked-by: in future.

Applied to the togreg branch of iio.git and pushed out as testing though
I doubt automatic testing of kernel-doc is occurring.

Thanks,

Jonathan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
