Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F336EA0B57
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 22:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdqgqlN4o1b/ROzDVcoDvsCyCdvn6CKABJnlOhCw1tU=; b=oIzIQ+38NkbkBm
	DuQd/Jx9uzH0Fas/fkabFERj1uPErBnP6vYtXDZMPx5AnZq7v5MpB98/KjnU+D1Ul7w0uyEl/zeqU
	fpwHu70mzRVZ49bo7ydnTlTRrV9jw50FRqnKT+8wEUJ7rcUGPuyv1c+M1q9g3G0Azhq4SLxylJU9W
	rc0bI1o6AuuH6YVABN6U+PrgDZ9dToEpul1e+1iwo1mjsabfx4RWKvS3/GqNhpJVbD4mLpxKoBkGX
	fGwL/gLt3itIzn9M/ClDIV0zo+YvG9Nzt/YGhJDQ1dVrKTgiF9nn+WmCOQGRGWy3faXxLxRYTSD78
	HCdfRIuvq9tphWsdLXLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i34Vz-0008Ub-BB; Wed, 28 Aug 2019 20:25:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i34Vn-0008U8-PY
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 20:25:48 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5FC2820856;
 Wed, 28 Aug 2019 20:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567023946;
 bh=oWEQ98Eg2FJx+OBYPj1zuf+aLvaDP/fUfPnbgKRF3m4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QyoA5Uss+HQhOw9Qm+Ca595rwkevnmxLfwFSlfnOnlUfYUZUdaAcFXYf1hi1Y76hq
 ZX8c3QB9Y3BN1CrIy1gdPNTxU0mZd5jeHfWEn6epCJoVx7vkiA9ny9MnwfrtLrgvqu
 zBPbdptTr5r7WHh9AFEetb2chZCGSK744ZFXyv+o=
Date: Wed, 28 Aug 2019 22:25:44 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 0/2] Coresight: Fix for v5.3-rc5
Message-ID: <20190828202544.GA5073@kroah.com>
References: <20190820194155.28992-1-mathieu.poirier@linaro.org>
 <CANLsYkyrJTDeNNXrmNLgwRD7W00aj=YMtAx-DeezZk_xiVw05g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkyrJTDeNNXrmNLgwRD7W00aj=YMtAx-DeezZk_xiVw05g@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_132547_853028_6125507D 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 01:28:43PM -0600, Mathieu Poirier wrote:
> On Tue, 20 Aug 2019 at 13:41, Mathieu Poirier
> <mathieu.poirier@linaro.org> wrote:
> >
> > Good day,
> >
> > Please see if you can add the following fix to the current cycle.  If
> > you think it is a little late I'll simply lump them with the set I
> > have for v5.4.
> 
> I found an issue with a corner case - please ignore this request.

Now dropped, thanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
