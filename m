Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B48A1E42B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 06:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+6HKDM1ZJkfYLPs/LhymdfihAsyDrzTsxHDVfQNjaI=; b=FK0Jw0bs3GYXV2
	ggdq1GQ2JZ/m912bhdQGDRPkXNA0oOT+nHIN9LztbJjqF6nsH11wYH5J5kFxSEROnzzfEapAGpUkl
	iypr19zXKyTpsL7ZkXR3HNzfEO67NEtIoYTkm+p++vz9okx29P/8mE1bgs/qablLSxyblr3VG8xE5
	0fzK1cSoQj3ZQg/0EUGGurMzyDvfZhFcI7i40fPHNQg0TDyXDaYR4KAS1hMBnYABnNiFc0HRLDkrY
	uCjf0Vh5pGXX1EaQ+R5tnfek4mQ25+Yf2RrcVs130YAFjOMMSdCq3dbkiqEPBytxry9AUKzndS5zA
	nzJg4tm4jihZGmVVi5pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNraC-0002kx-CM; Fri, 25 Oct 2019 04:52:16 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNra2-0002jx-Oy
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 04:52:08 +0000
Received: by mail-lf1-x142.google.com with SMTP id b20so593700lfp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 21:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YmH4co9M+ZSsgCt8IZXd3+esyhYdCc0EXhkw0YqcSCs=;
 b=G1L77h5L6Hu8ngA1fW2Hs+AazniThA9Zqssrirkcm/tG7cam7B2ULQrQky8ApcCjQf
 BYDSeBr3KPlxNVkqMFhhcGM24x/rqgchiQZZ2AE9GRILdUzB+gC8f0/+PWXe+ATVR23O
 EVg6zZ4nQ/gWPmFKj1nG5S9NTbZuiQ0rQj7bc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YmH4co9M+ZSsgCt8IZXd3+esyhYdCc0EXhkw0YqcSCs=;
 b=LfgH3JlMX/tGg9spasqUujV/7vzty90vyr/2fQp0Q3G/S5IPeUMOtS13sHOUinWMbK
 tzxQHUuRIEy9zxDx0biwkzrX8b750Hj6FwnYJRJRZ6mGdlnIiS2f/FhRTasKzGR44SBe
 ze66vbZG/U0g5svS3djLRlaj3eC4lcvgGALXO6ZhZ/41Hsnu1RMFnvGl5ifgBaXv1Pup
 uD4Lh+KznY0m/nwNiGhlIjUsF0aTwGitrGDwyiY0hvRLdWr0qU5reuMXGyRhRDRFlFIU
 7wc6WmRVr8IpTFLKoONf/RYJZxE8Q8yQ+FJuxAZgFNjMOSfzjvyl2MZrrRFeFossEDwj
 BpJQ==
X-Gm-Message-State: APjAAAXfsz6K8dGkcRYUhtYCH9sm75stiNGqIFbAUHYWzcuccCgpTYv2
 3+oNkh9930+K44z6/euHS239zd2wsAWx6v7T7kw6eA==
X-Google-Smtp-Source: APXvYqyzvCADhCjLC3w+Kn5bN11jVlzo8YcU37wvGQvuo5kjy90lV4V+CZGv0RYVRJMOcXh1iwgKckj0ufBBjYpHf9Q=
X-Received: by 2002:ac2:4c38:: with SMTP id u24mr990839lfq.45.1571979122321;
 Thu, 24 Oct 2019 21:52:02 -0700 (PDT)
MIME-Version: 1.0
References: <1569825869-30640-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <20191024185540.GF1870@kunai>
In-Reply-To: <20191024185540.GF1870@kunai>
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Date: Fri, 25 Oct 2019 10:21:51 +0530
Message-ID: <CAHO=5PGCZxBmbJ3rXM5WVLcRF3FecaLYFa7Rx3W=FeikpDHfuQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] i2c: iproc: Add i2c repeated start capability
To: Wolfram Sang <wsa@the-dreams.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_215206_816074_B61D1515 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lori Hikichi <lori.hikichi@broadcom.com>,
 Shivaraj Shetty <sshetty1@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shreesha Rajashekar <shreesha.rajashekar@broadcom.com>,
 Icarus Chau <icarus.chau@broadcom.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-i2c@vger.kernel.org, Michael Cheng <ccheng@broadcom.com>,
 Ray Jui <ray.jui@broadcom.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 12:25 AM Wolfram Sang <wsa@the-dreams.de> wrote:
>
> On Mon, Sep 30, 2019 at 12:14:29PM +0530, Rayagonda Kokatanur wrote:
> > From: Lori Hikichi <lori.hikichi@broadcom.com>
> >
> > Enable handling of i2c repeated start. The current code
> > handles a multi msg i2c transfer as separate i2c bus
> > transactions. This change will now handle this case
> > using the i2c repeated start protocol. The number of msgs
> > in a transfer is limited to two, and must be a write
> > followed by a read.
> >
> > Signed-off-by: Lori Hikichi <lori.hikichi@broadcom.com>
> > Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> > Signed-off-by: Icarus Chau <icarus.chau@broadcom.com>
> > Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> > Signed-off-by: Shivaraj Shetty <sshetty1@broadcom.com>
>
> Patch looks good but doesn't apply for me on top of v5.4-rc4? What was
> your base?
>
> Also, I will apply it to for-next (v5.5). If you want it for v5.4, then
> please add a Fixes tag.
>
thank you, please apply it to for-next (v5.5).
Do I need to resend patch again for you to apply it to v5.5 ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
