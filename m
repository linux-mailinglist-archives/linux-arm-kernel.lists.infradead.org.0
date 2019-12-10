Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D8A118BA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:54:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKwU4ZF3PqJ5tdn0lRB3x3gY4P4cWbDrjE57GZZia8M=; b=UkpiPa2FQ0HO/S
	By/On7bgr5alAbukaoYGzI0/RJXoQdUw2YEv4h8sk+Fg/N5QE6tJZbKy8ef6iv/6C+VHhM0LmAuN+
	9buwSRVOGaWWCJA++b8fMa7OROeD9vmMVdPh/EneHV1mcDCK2t6cZo9Aljsf85smiOb9uzc+aROVm
	pCTxU+6JyVyQ0mmBOXv9haSCzvu+S86nZG//kR8+DaFj8+Av7BeyGqL95+di3e1CK9zA8OsqI6v7G
	BN51F5hOoLGwUTstlgwWqVnVR40DYSTmUpGAO/46JSO6UYjh+kAc3nHpmO2r9UO78gupFpjtuaGAl
	3tOfC58b64+9z7Rm40zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegu8-00062n-FS; Tue, 10 Dec 2019 14:54:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegto-0005yq-AG
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:54:05 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2ECC32077B;
 Tue, 10 Dec 2019 14:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575989643;
 bh=a5BHMVgtPZwxKGzK9Kll2jVkr61mgNawIAex25lud2g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a4TFMfvd0F/X1H5S/tJzVb+P1hLYpiTHlMSKDRBBCcXBeVOGGqNLgg+mV3tvtag5l
 N8ueB474Z+e04eueZAbwwsInGwdoaAW9Yur5XdhWYcT1M6azCT97/yEpsEp+uNF1ew
 Gx6y0ozwRqOc9p4OH7WnrTiprj+0O5cEjdC1Bhxs=
Date: Tue, 10 Dec 2019 15:54:00 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 01/10] tty: serial: samsung: allow driver to be built by
 anyone
Message-ID: <20191210145400.GA4012141@kroah.com>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210144656.GA11222@pi3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210144656.GA11222@pi3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065404_393753_F62942CA 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shinbeom Choi <sbeom.choi@samsung.com>, Hyunki Koo <kkoos00@naver.com>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 03:46:56PM +0100, Krzysztof Kozlowski wrote:
> On Tue, Dec 10, 2019 at 03:36:57PM +0100, Greg Kroah-Hartman wrote:
> > There is no need to tie this driver to only the OMAP platform,
> 
> s/OMAP/Exynos/

Oops, sorry, was thinking of another driver :)

> Beside that:
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Thanks for the review, will fix up the text in here when I apply this.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
