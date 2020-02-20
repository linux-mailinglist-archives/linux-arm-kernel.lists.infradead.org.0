Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A22F165C7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 12:09:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8TxbvqSjM+uOrmHUJiXR3frQobKua+J+OP4P4QhYpKs=; b=eQzyBUAswyzal/
	wUifDFgxPHVRrA1wHlN8mlCGghoFOxIDKCDUTNj1yLIn9CF1DvI+NtveRZ+eJdzN/wn2R8j5u/gwi
	G1DTpAQoY0VMRJ3JZPbToiwcMAqGjON+OTHKMPBN+R4KBpN/bkuP8uJAvOlRtUcmfjP5OQq7FBagO
	GXiN/s9zgzF1Y2wnHHJNTrGwLeDxBQ1xGVz9SA7sIMKJBHs/lTnoL/hGKS3dew0SLhHGQIwEdDXy6
	WcWRjqbvHBqfJ0JoWnG59j9sYfunSpiHGL6+oAO7TMgNEMeSdZlQxC4DH5th3Rq37NrXU/WXFr7lt
	fR5uJPB5rlXL4iKE192Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4jiG-0006FA-SF; Thu, 20 Feb 2020 11:09:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ji5-0006Eg-IY
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 11:09:41 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C722024654;
 Thu, 20 Feb 2020 11:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582196977;
 bh=5jznYIffxvU6eZSgRtNjQDXxHiq8x9que/YSIcqNoO4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HnQATuvonnFZRK8jNgZHTiyoH2pbNcWyCMPwZlxxY0d+PlUlNftiRhrnDM8c/m3he
 bA+vX8Z+3LGvDvrnOgBIw0C9VyjpbpqYkPJ+sUJCrEJFapbygLBeuS4cf/jgYeeJ2W
 Hzom6XFfHM6e+Qt2Szygw+IeF9/RooxD5rwKLWm0=
Date: Thu, 20 Feb 2020 12:09:34 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 2/2] tty: serial: samsung_tty: remove SERIAL_SAMSUNG_DEBUG
Message-ID: <20200220110934.GA3374196@kroah.com>
References: <20200220102628.3371996-1-gregkh@linuxfoundation.org>
 <20200220102628.3371996-2-gregkh@linuxfoundation.org>
 <20200220105541.GB24587@pi3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220105541.GB24587@pi3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_030940_727355_6499E59A 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Donghoon Yu <hoony.yu@samsung.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shinbeom Choi <sbeom.choi@samsung.com>,
 Hyunki Koo <kkoos00@naver.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 11:55:41AM +0100, Krzysztof Kozlowski wrote:
> On Thu, Feb 20, 2020 at 11:26:28AM +0100, Greg Kroah-Hartman wrote:
> > Since a05025d0ce72 ("tty: serial: samsung_tty: use standard debugging
> > macros") this configuration option is not used at all, so remove it from
> > the Kconfig file.
> > 
> > Cc: Kukjin Kim <kgene@kernel.org>
> > Cc: Donghoon Yu <hoony.yu@samsung.com>
> > Cc: Hyunki Koo <kkoos00@naver.com>
> > Cc: HYUN-KI KOO <hyunki00.koo@samsung.com>
> > Cc: Shinbeom Choi <sbeom.choi@samsung.com>
> > Cc: Krzysztof Kozlowski <krzk@kernel.org>
> > Cc: Jiri Slaby <jslaby@suse.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-samsung-soc@vger.kernel.org
> > Cc: linux-serial@vger.kernel.org
> > Cc: linux-kernel@vger.kernel.org
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > ---
> >  drivers/tty/serial/Kconfig | 9 ---------
> >  1 file changed, 9 deletions(-)
> 
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Thanks for the quick review of both of these!

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
