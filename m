Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DE9A7C4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 09:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6fFhXkikjobMkTtpL/vYuiCUHbl1EIxW2D52g0dONY=; b=t6Fu4oFlu3qoQV
	RaB1ONwunacS1i7qGTbmI+xsCNxynFcgEh1o+YK3lX3jQHr3y0AO11Bl6Y6OQNHeS/Ayg801klpU9
	UvUwy1FkHsXfSKQfMhc3ovFCZ1xXmYPTeKarNEuVU9KJ9J2L+5SmtX3HxL2OjOWRllCBi4wBPj9Ah
	IbPV+7ovKWTYSfDkwoiGt2mmdPc7qT9GeK5STj9579sCV/DopY9qDxQsZE8P6kyCFRMUV19YaKAqh
	ug7GJjMm6ZC6VSNnZJOamIuojZs7FwI7N4Mazsd/oNr/q59FG13Ifq0Ee3ztbIYuCttQBgQFAnILK
	SKLTZqmF4u76RBev3qnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5PNr-0004XE-I5; Wed, 04 Sep 2019 07:07:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5PMx-0004WL-Rx; Wed, 04 Sep 2019 07:06:23 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 925A522CED;
 Wed,  4 Sep 2019 07:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567580779;
 bh=I9K0yVNmIk+nMrBPinuHZHyseMt4wDZjOkz5NPzTJv4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bqbkUEYehaSrXbrA77i42/6XFJo9F+Dqfm/CQnrDDYaD2gGZzyzUnJfRcN6URz0Co
 YGZQ1WWRXiph8QDsFxN1ZC5FV8yq3qxSm8w4oh4JDYDVdg5842W7zk2nXE+dk0+W2t
 6kNAYre3X3PEGz3+sZHv1MRneJ5lokv0sRkJS3x4=
Date: Wed, 4 Sep 2019 09:06:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v3 0/7]  add support USB for MT8183
Message-ID: <20190904070616.GC18791@kroah.com>
References: <1567150854-30033-1-git-send-email-chunfeng.yun@mediatek.com>
 <1567562067.7317.52.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567562067.7317.52.camel@mhfsdcap03>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_000620_466670_C9877DE4 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 09:54:27AM +0800, Chunfeng Yun wrote:
> Hi Greg,
> 
> 
>   Please don't try to pick up this series, the dependent ones are still
> under public review, I'll fix build warning and send out new version
> after the dependent ones are applied
>   Sorry for inconvenience

No problem, now dropped from my review queue.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
