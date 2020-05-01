Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 940211C10D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 12:30:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gqhqIsPuLmzi6CoV91c1WM1U5A0GYAtV/SF3Cdv1Thw=; b=aB2OJ0xowE47Rp
	BqisAxJoSGXFC2vN0aVTgM5VAyrJPXddtgM8lpBj1OXvtArwfibCIPcjSd/G1N757UPygHJN4QhhP
	UqRMnYSBMogBwMtC5hfmVR/aj46rNxXYtdDc7BNZuhLKGNCS5RQNJhOlAYfxGzQn/8vu6XZuYuI9B
	YERq6UEqnWeEIoVE+oh1YCYBMpBCcYMWn3EE+n8ZHOX8MWkG/qEJ0zGI6ZTOAxgthBsZK3t5ZwthZ
	v6zwXTjKCfa+0LLGLOGVuaBBigMhV4hdSnw9Z65A0Eubz7AUQJfNP+UkTBrH2aYGSxxOr1eNRri/g
	kY1pFhkEjh2sJGL67GlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUSwF-0000nU-Qu; Fri, 01 May 2020 10:30:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUSw6-0000mf-LQ
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 10:30:27 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5DB982166E;
 Fri,  1 May 2020 10:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588329025;
 bh=fQoUER+hD9y0dxOn2+s1F57pQS832ty+/T7TTBnXYg0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yWc3fcgoZs18quH7GDjt3uFZtIx942V5HtyFTkw2WkrkIApz1ZKJrRVI8ugAoepka
 kn24ULYNRR9ewf6nNWM6fhllYy+tYcwTytCeP4267edcN45z5e3ZKOqoUNHICJhNcD
 q0qRb3Bce6kGvGn7wppzpIN7rKpWgPf1dG/BrBAQ=
Date: Fri, 1 May 2020 12:30:21 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rajan Vaja <rajan.vaja@xilinx.com>
Subject: Re: [PATCH char-misc-next] crypto: xilinx: Handle AES PM API return
 status
Message-ID: <20200501103021.GA1416784@kroah.com>
References: <1588328091-16368-1-git-send-email-rajan.vaja@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588328091-16368-1-git-send-email-rajan.vaja@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_033026_717735_28D0386C 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: herbert@gondor.apana.org.au, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 kalyani.akula@xilinx.com, jolly.shah@xilinx.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 03:14:51AM -0700, Rajan Vaja wrote:
> Fixes: bc86f9c54616 ("firmware: xilinx: Remove eemi ops for aes engine")
> 
> Return value of AES PM API is not handled which may result in
> unexpected value of "status" in zynqmp_pm_aes_engine().
> 
> Consider "status" value as valid only if AES PM API is successful.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>

No "Reported-by:" line?

And put the "Fixes:" line down in the s-o-b area please.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
