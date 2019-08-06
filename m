Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A80783192
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DppIrTidKb7sVHoxE5vfZ9+/V7C1nt1PBn73QwC5ydQ=; b=JdCGcRKaL4TcqL
	jNBe1ij0/IRMEAJnYerPGnQqXOua4pdJoLC61uoYoy5uuXgjgpe/z+XXi8hfjJ1lYz8ZvmjWDh07F
	psuUzg86Gj/r+GdM6Mh2/tOd3pANTgC0303FJfz7k4B8FN06CNeBfB1E3lnfCvEQmgpPPpZwj6bSR
	oEzzcwPEB2PRiVXZKCYnHe3uFPqRagYI4oJN6K4/c3VOYiPiR4VVZ5WG/AzRHLA/VOFOAap/3BUcO
	KDx5TcPrixzSPyrzctEnqKwW3ZLJZmAqxNAOEqbJUN9CWKf/vWnMDaHTXf7J5XdvAX5L/lnUFH5Ra
	V/V+VGlY+L7WT6ooEBEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huymd-0005fY-RA; Tue, 06 Aug 2019 12:41:43 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huymS-0005em-G5
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 12:41:33 +0000
Received: by mail-qk1-x743.google.com with SMTP id s145so62713079qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 05:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u3j7GHBDsYZqcSC8c4X3v5Uqt8dzZQfTUO2AFNMReDw=;
 b=FQiOlIKSS0eD3TNtMvXsXdQcFHSPt4S2/O13HOgIQF3BBpPJEmNhphRaVESxB+/v5C
 5qBKNPqAnIj4ckp9pVzB+X1YH4IRmRsnQakvc4frqPJDe7skXyviwbRSZdePcurXFtit
 oxjolhSUD1cakBBxKrDx9RBqbke20Mi49ynO9U1QqWWooGBS+MUZ4xFkbDqU2yxb3HO7
 BW5iBjS+8k/QajGvHuy8V6TrXCrTBwVpUmgqImFyVQbjhHfT0WTImxnJ9vTxADZIzNNq
 Cy7g42vqtxjAzrmfVgDuIjTO2G7d0JJDjSEgJkcLFpRLqwPKzhWyLFG20xWlOKi1pa5M
 Y+1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u3j7GHBDsYZqcSC8c4X3v5Uqt8dzZQfTUO2AFNMReDw=;
 b=Ito0oLbm1bm+fodmrImaft9FD1C92d5miegoQ+Vr36frvPr2+KwFrP8rURsGkrZygF
 XCPjIUSEXur41dXve2HmAGC2S+/t8i9zTn8Edkv3BRTthMVixGigTi56n4dX+X9pWNl+
 wupMOszrZ9/c8/dmbEFyNvhrniZMsHEamgqkQtPbh7AS53IgvGgpd5wXo9ayG+oBQJfs
 3EhJUs39m4txAKi6FwWj6aorOMAmnVzDjwdbCl9EWjyzVU+BhnviVofdtG2PcfMAPlUG
 oR6l25OfMBd5XSTUbQk8mDBeGCQ2PxEx4ocDtVxP3yjO7O9CEYd7Jy9nBRQ+ocuQE6tE
 3tAA==
X-Gm-Message-State: APjAAAXElJthpOGgMPYwcVttbhO/n0juJyeVDUp7nYVLGUEwe6C8m337
 0RZ9gvd+eWFFkO8s2h2PWia17kId44EdbeidpRQMSSQN
X-Google-Smtp-Source: APXvYqwzNqb9edIQMJJtQ4zXYoFI3EmafHysUGgbYIqu6baWRHFYOyvHMS2DcqHFT1zgAp/i0ioY67vWj8f9l/lAoJM=
X-Received: by 2002:a37:9a0b:: with SMTP id c11mr3085312qke.204.1565095290395; 
 Tue, 06 Aug 2019 05:41:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190806030718.29048-1-luaraneda@gmail.com>
 <20190806030718.29048-2-luaraneda@gmail.com>
 <17a45e21-8362-e888-d222-812c879a38a8@xilinx.com>
In-Reply-To: <17a45e21-8362-e888-d222-812c879a38a8@xilinx.com>
From: Luis Araneda <luaraneda@gmail.com>
Date: Tue, 6 Aug 2019 08:40:37 -0400
Message-ID: <CAHbBuxosAnWdpee8jS7feR06+KF_PjOiTF2+PsiMnMAjwfUFKw@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: zynq: support smp in thumb mode
To: Michal Simek <michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_054132_586919_6C995AD0 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Aug 6, 2019 at 2:39 AM Michal Simek <michal.simek@xilinx.com> wrote:
>
> On 06. 08. 19 5:07, Luis Araneda wrote:
> > Add .arm directive to headsmp.S to ensure that the
> > CPU starts in 32-bit ARM mode and the correct code
> > size is copied on smp bring-up
> >
> > Additionally, start secondary CPUs on secondary_startup_arm
> > to automatically switch from ARM to thumb on a thumb kernel
[...]
>
> It is really a question if this should go to stable tree. It is pretty
> much new feature.
> Will be good to also add link to similar patch for example this one
> 5616f36713ea77f57ae908bf2fef641364403c9f.

Ok, I'm dropping stable from CC. From the previous comments, I thought
that the two patches were part of the same fix, but now I realized
this is a feature rather than a fix.

Michal, do you want a new version with the link to the similar patch
or would you take it in its current form?

Thanks,
Luis Araneda.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
