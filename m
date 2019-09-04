Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B08A7D15
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 09:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vIySrbItHeKBN6csLcItWzzvlnc3fZ6scSyeA/Uloig=; b=X+eiBsHxQpHWqm
	9pgF9A4TNWyNbqAowHliK+beN2i1sMRkfF6g97pnARYQk1tdmma9w1MJ+fh5FqsJyGYvzDCYIGLAx
	FE8YE/HxlaviiexrtfagWI43apsIx6PIKcM+ddIz94nDdDHdUAlogRv33nenLVSFbcLAlIAAfxuhY
	57c9xN/n4NH34qN3Lyk/i95rCBzDKx/Ck5j/5Js65OfrJZIgnFPPOCx7w9DJsmVW5j5k2op3p35XI
	FQniIKFchkIeSR/gwxtJCnQnBTFFB+UnrC3L1OZnEBzthdi6/ReGTWe3bSGaelSytjFW1RQH69uDo
	wtqAX5DJwR1mi8jkZn3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Q6b-0005Cl-H0; Wed, 04 Sep 2019 07:53:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Q6A-0005AL-FT
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 07:53:04 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27200206BB;
 Wed,  4 Sep 2019 07:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567583581;
 bh=tmMIKkRHa6g2/BLlTkNjkjnAHIGhAGpY/C/sVcBFQJc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ywyxb1m63X/hIBsYMEgeSYZNR3U/vzO1YwXTorX6LJyKRdYGw5x0lLxby0UDevtE9
 SuA3eihix0P54Tu+s7uKLyhFHkjVxEZIt+PYQ3dTHxMMn4oviPvEe+do/dfqdqNzFJ
 FyJNNYIS5i6pTQhosKEdSKj6Zp+gpaIxerpBFXps=
Date: Wed, 4 Sep 2019 09:52:59 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH v3 4/7] serial: fsl_linflexuart: Be consistent with the
 name
Message-ID: <20190904075259.GA10983@kroah.com>
References: <20190823191115.18490-1-stefan-gabriel.mirea@nxp.com>
 <20190823191115.18490-5-stefan-gabriel.mirea@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823191115.18490-5-stefan-gabriel.mirea@nxp.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_005302_542673_9863742F 
X-CRM114-Status: GOOD (  10.52  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 07:11:37PM +0000, Stefan-gabriel Mirea wrote:
> For consistency reasons, spell the controller name as "LINFlexD" in
> comments and documentation.
> 
> Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
> ---
>  Documentation/admin-guide/kernel-parameters.txt | 2 +-
>  drivers/tty/serial/Kconfig                      | 8 ++++----
>  drivers/tty/serial/fsl_linflexuart.c            | 4 ++--
>  include/uapi/linux/serial_core.h                | 4 ++--
>  4 files changed, 9 insertions(+), 9 deletions(-)

Doesn't apply to my tty-next tree :(

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
