Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CF45F6FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 13:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPVxr7mJAwGjfFoyKNlyEoAGxoWoYTWBBKSlBtHE0oE=; b=CGSb0IImQhz3p3
	YhterBL02zQWN0KEnSZFTSNTjNdNNQDEWf+YHDKQSXTgo8bFhmEPo3x9VdsG6Gl6MoyrSMQ5brzWO
	9gH+fb2bJhwRU2QRyswgj1XWlHcnPTTNruF55Np0X7sWGHS57BDXajKe4pI7XBgVDsGl/pc7XHg4n
	h4trJR/or6J+yx85P3M0HeQeKiRwDV53Zf0R+Jr9VGRNcay+yuyzdLwa/dDyxiHiWrRX8qI+Dp6dt
	n5hxyPun3PXjGRKFNeokJWn1wrgzTQ6sRVLe6BoaOV1nc4MSYtdyzCiwvDrwzc4GxhCPDvh5wnrfe
	J4Kr9HDTiNC81CJ6fUIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hizYq-00028k-Ht; Thu, 04 Jul 2019 11:05:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hizYd-00028O-7L
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 11:05:44 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21B7C205C9;
 Thu,  4 Jul 2019 11:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562238342;
 bh=X2GjQVgfm5IGcVPPAmmfYyV7Fd8h4Y53p31adVF3V0E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=khw06mJcyJ5bzYXVtFXPcvfDvQXzSWj67ppq6pNZvhGUyNNRTNxea/ajmCIZ8XIAi
 OUdB2O07y0h3F1tLKVig+8x6quRESobDCVW4ccyLCt6cu1OxKUAtOb+yuBqTnpGBMO
 6qd+8qc2vy1B2d2s9uL3kXXj0sEw+fcqjHXc61lc=
Date: Thu, 4 Jul 2019 13:05:40 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCHv5 1/2] dt-bindings: coresight: Change CPU phandle to
 required property
Message-ID: <20190704110540.GD1404@kroah.com>
References: <cover.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <2afedb941294af7ba0658496b4aca3759a4e43ff.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <CANLsYkxvh+qUDvqG45o7qh61Noq=a=BJ4-p68ipdzxYt6n5bNA@mail.gmail.com>
 <8fb5947e-acf8-faff-5594-2a32151ebee7@codeaurora.org>
 <20190704070239.GB32707@kroah.com>
 <72dff807-7172-7882-83fc-d7ff4cafe39f@free.fr>
 <20190704081822.GD6438@kroah.com>
 <b8b0c6a8-3e43-7143-c1f4-6ce8c60db9d8@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8b0c6a8-3e43-7143-c1f4-6ce8c60db9d8@free.fr>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_040543_282448_714644A5 
X-CRM114-Status: GOOD (  10.66  )
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
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 10:51:20AM +0200, Marc Gonzalez wrote:
> On 04/07/2019 10:18, Greg Kroah-Hartman wrote:
> 
> > Marc Gonzalez wrote:
> > 
> >> https://lore.kernel.org/patchwork/patch/1094935/
> > 
> > What can I do with a random url?
> 
> I dunno, click it?  ^_^
> 
> More seriously, patchwork provides individual patches, as well as
> patch series, in the same mbox format used by MUAs, e.g.
> 
> https://lore.kernel.org/patchwork/patch/1094935/mbox/
> https://lore.kernel.org/patchwork/series/400118/mbox/
> 
> Then 'git am' works exactly as expected.
> 
> I suspect you know all this, and it's too big a hassle vs your usual
> work flow, considering the volume of patches you handle.

And considering that at some times, while traveling, I can _only_ get
email, not web access, so I can't rely on patchwork.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
