Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14030A7427
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 22:03:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1ldDglvKUwU4mdBuIl+vXLdwumKzli4ea2ST6l/Pbw=; b=o6NbhMSSHxKF7K
	DArG0QK6I6Z3qVy2m2YUr0NN9VMnE3YzkXCWT83yEVkX69Acq1vXJxGaiyhwMTjuf3FmLADcf88kP
	CU9FOcNQg7a0LIgsGe6Xd74Im4PTsdDUqvg987vwvZd3APMzoNSNLKNqOsr7TyBQkmTjOba7b1mPl
	4iNQ4v82PtjARFmWzKf+9tg1bjg/WC63jHKUTWUibHl3Grw5O/YkAU7Ve1RMkRQs1hhWMJdsvbcsQ
	dJFN6bcIOCPLoBkGegrStL0VslTK8C7pOrL7kHNm6no4E+aG4z849p0kwwUzwZQs7agTFIU2fV6yG
	ru0X9jRw6wHHOVbempDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5F1c-0005Cu-47; Tue, 03 Sep 2019 20:03:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5F1Q-0005CU-S8
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 20:03:26 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD5F7207E0;
 Tue,  3 Sep 2019 20:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567541004;
 bh=5UyZvBnkb1hU/juC/Ys8m9KI4pqhjjyh4QCkNVVZgaE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FaMEnH1ND8ax3GIEJmnL3H004e7xT1dD1/MVjFNgIxP6YC7+gCv0oYYb2qPqFAvYo
 HUJiudJUVuP6tEsKAstFCkVtECbp642MM7JNAukE2tUWi6HIJ00wlsTNeNizveNVqs
 /pqrfHFPrHWvvP7DGleT9XyrwaeCAMnT+r+N5G+Q=
Date: Tue, 3 Sep 2019 22:02:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 00/17] coresight:  next v5.3-rc6
Message-ID: <20190903200249.GA27574@kroah.com>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_130324_933251_32D7362E 
X-CRM114-Status: UNSURE (   8.36  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 02:28:25PM -0600, Mathieu Poirier wrote:
> Good afternoon,
> 
> Please consider the following for inclusion in the v5.4 cycle.
> 
> Applies correctly to the char-misc-next (d4e34999a757) branch.

All now queued up,t hanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
