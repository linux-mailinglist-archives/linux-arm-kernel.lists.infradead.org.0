Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CF713AB5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 16:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O8k7QOndYnJMVKgF7LDwMWAm2cDlwZxNtUcyBxAAqyI=; b=pwFi8SB1rgoJAs
	BnqpUBtcUAbXF9wz2XQrZE9snBggVtLxaO9Tk5nXQgWX1s5FdfNXROuFi9qcQ7suSHXjFn1zmTBLu
	GkiHUd3qq895O0h6mLhLgNs8O4CnQdSU4Z8LLgBR6/Wa9J3Awmpz6/ov4NVGi7uRIUSMp1PMRYXSj
	PQnOnPENzHfRAoeY7mtsaKFOtWONdOu6pjuP8OHt4+egNcT74pV7+OjvSkss7/wQpGlQqkoNFaBxo
	BaAR9gdcmzMGves2og3l5wxR2Px7TcmRkAsHIv0OUiQo937q7eLzDoQubr2JUojBjohqJw6twWy5e
	tBE2iurp4xVzHQoxg6Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMvr8-0002Sr-RG; Sat, 04 May 2019 14:41:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMvr1-0002SH-GW
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 14:41:33 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F9C720859;
 Sat,  4 May 2019 14:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556980890;
 bh=gSjzNXwzVADkhUG1J+XQmSWvUA18jz5VVOMIPF/+1Wo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ThCm6UKrH6zyS8oz0Qw5T0dAyoGWPWxAFtryrhciPkXkkctI/EgK8butFvzCy9Hyu
 RxqXKbYhZxGYfCNElmz9Q6ap8/AIANtSZHt7V2oAuWjLBRlgyXzVdYYLpGdJaRvbrO
 tpoVgZrage+I+yowLYnvLnctJR+7XYiJHtWMEhRg=
Date: Sat, 4 May 2019 16:41:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH V3 04/12] misc: xilinx_sdfec: Add open, close and ioctl
Message-ID: <20190504144128.GA13454@kroah.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-5-git-send-email-dragan.cvetic@xilinx.com>
 <20190502172345.GC1874@kroah.com>
 <CAK8P3a2EKXrg4amHDi5zVvOQ8AM+u6EAhBc=T8Hk_tU20xSV4w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2EKXrg4amHDi5zVvOQ8AM+u6EAhBc=T8Hk_tU20xSV4w@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_074131_914848_49052FE5 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Derek Kiernan <derek.kiernan@xilinx.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 04, 2019 at 10:35:02AM -0400, Arnd Bergmann wrote:
> On Thu, May 2, 2019 at 1:23 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Sat, Apr 27, 2019 at 11:04:58PM +0100, Dragan Cvetic wrote:
> > > Add char device interface per DT node present and support
> > > file operations:
> > > - open(),
> > > - close(),
> > > - unlocked_ioctl(),
> > > - compat_ioctl().
> >
> > Why do you need compat_ioctl() at all?  Any "new" driver should never
> > need it.  Just create your structures properly.
> 
> The function he added was the version that is needed when the structures
> are compatible. I submitted a series to add a generic 'compat_ptr_ioctl'
> implementation that would save a few lines here doing the same thing,
> but it's not merged yet.
> 
> Generally speaking, every driver that has a .ioctl() function should also
> have a .compat_ioctl(), and ideally it should be exactly this trivial
> version.

Ok, for some reason I thought if there was no need for a compat ioctl
(i.e. no pointer mess), then no need for a callback at all.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
