Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E307190A8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:20:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQWlUSBgqBi6ZSIQNTxTZvWdAx7rWjNJVm4U1/j2S44=; b=YYdcJbisN47I+v
	5iNm+prR6vhFOgA0awWFrv5/xDrHI5jk9j78+LiwL/M8RXVwe0fRtXx0HTAOc8ac68im4riP+ogY/
	zUupuF9HWNG/qg5CDXQvpOC8Q9M8+o5piBrNO5LTU54oaG2PGOkKbrJV0pAqxD367HmuynTJ6TsVu
	T/jrKYF09JQhrJbZFEzv8L5mSlkxof+Re7o4KUd9lPZ0kL8jK9X2SBd0QpW/Itj7t/1NcfEhm/4nf
	0B1Z/z4ssJBvWnjaiSYlfgfsvh+yJjeq8Rcf0otouB24E4FIM0OjN7ShYYd1bW2MMk1WNrMBMtdyg
	ltahPCqk/wYq2LMq5frA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGgez-0000Mv-Ek; Tue, 24 Mar 2020 10:19:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGger-0000MZ-CU
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:19:42 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D0F82080C;
 Tue, 24 Mar 2020 10:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585045180;
 bh=q4q2MlAIz6+C/hLPcO9TRU1z0kw29IK3WElI+UFhXgg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XQ94ZQUDRRdi3qTMyMKloWf8WGl5UrXJKTuuKZYg1OZ2U3a9Osi3YQaw5Ouz8i0f7
 /20hISeB3SITV1C6h5yiH3eHmg3H0lETiiiCU26eYgVEbZ3doVo+3Qn5C3PsMtviII
 GxB/SJyxk+IJoh1lqlXqAXs6Xh7HBTjS+rwjSl9I=
Date: Tue, 24 Mar 2020 11:19:38 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Eugene Syromiatnikov <esyr@redhat.com>
Subject: Re: [PATCH] coresight: do not use the BIT() macro in the UAPI header
Message-ID: <20200324101938.GA2220478@kroah.com>
References: <20200324042213.GA10452@asgard.redhat.com>
 <20200324062853.GD1977781@kroah.com>
 <20200324095304.GA2444@asgard.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324095304.GA2444@asgard.redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_031941_446970_290DB4C6 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Michael Williams <michael.williams@arm.com>, linux-kernel@vger.kernel.org,
 Chunyan Zhang <zhang.chunyan@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Dmitry V. Levin" <ldv@altlinux.org>, Pratik Patel <pratikp@codeaurora.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 10:53:04AM +0100, Eugene Syromiatnikov wrote:
> On Tue, Mar 24, 2020 at 07:28:53AM +0100, Greg Kroah-Hartman wrote:
> > On Tue, Mar 24, 2020 at 05:22:13AM +0100, Eugene Syromiatnikov wrote:
> > > The BIT() macro definition is not available for the UAPI headers
> > > (moreover, it can be defined differently in the user space); replace
> > > its usage with the _BITUL() macro that is defined in <linux/const.h>.
> > 
> > Why is somehow _BITUL() ok to use here instead?
> 
> It is provided in an UAPI header (include/uapi/linux/const.h)
> and is appropriately prefixed with an underscore to avoid conflicts.

Because no one uses _ in their own macros?  :)

Anyway, this is fine, but if it's really the way forward, I think a lot
of files will end up being changed...

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
