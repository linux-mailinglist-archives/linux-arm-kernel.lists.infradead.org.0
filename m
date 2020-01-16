Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F0B13FAD2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 21:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huEtJ1BX2M4xRvfaii9kXarbGz+lYCGIQh6y0jyxCQk=; b=hGRjdrDijIs8xN
	u/5ejDIAI9/2xFQForZNGBltlFaARuUG6RjH2l0TJ8b+oeWRsNge7XRxkXGh58zDQIN2cK75yMVNz
	qsPzT8xlsAFP3EFPoWkbDEvQZs5YQQVzWGJsyr+1mtHVrZmW/d27s/AAR95azecoHkLwX27hvr3kW
	RUuxvg5Xgm53LZuUJSix6XIufmPrb5PFdvVHUUvTlajxzas9buC1Ht7E4sV8moJQZpPkd6yPl0tc1
	UBJdbtOeY7Ee+lUQIJUoWuju6qoD73UjnqVrR3gGW7Dw3nix0GhsEf2w56Exzauu8OS2DRRbly7LQ
	x1d2AT2bSPpqTGdOjCIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isC3j-0004mL-OF; Thu, 16 Jan 2020 20:48:07 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isC3Y-0004lZ-6G
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 20:47:58 +0000
Received: by mail-lf1-x143.google.com with SMTP id 15so16638195lfr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 12:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ovKSezuHy9BrgOvF3ho5HLPHiCKwhToO8nK8UOTwvQA=;
 b=wxS4mTiWEYJBq7u21w7MjK/oe9sdxL05CHPtMjtAGObtFS38tWr6mXDv/SHbI/Wa42
 a8CTFpUzBBxok9qa5ZaXjQ/JwAuiL9FLyeg7KoH/ONAI+aqpv2RB/MtFzGsXLEfq4IzC
 kc+h3gdkkHxcRLD9WPYJS5hRzeYluHlX0jqYT4/2OGj+ichhulOkpdAwhKBzDYh6PeEv
 Ee6r+GOvXP0lkYK/GNTzbyutkaxOsTyzXkJKdDihQDw7tcqvXlDBea+uoLMrvWOoeBEa
 uIrkc1CvYNGYq+qaKlBctVrP/U/hrhCGaUk+cKx+DoTNfk3mYrFbdylA/HMhxqKyoB/K
 lnCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ovKSezuHy9BrgOvF3ho5HLPHiCKwhToO8nK8UOTwvQA=;
 b=YK+eF0ARw8N1xc3adN8fgmROotbax4rxTDFVCacTj3eSUw+YAEfJshKgySh7xjeYEQ
 DBwo7C6dM6ribZLlS6KiZu1qtTHVqZjkdKtwUNGNAd6OgP8N/9IE1wMS2Idcfp/VRngU
 8nPUNbERpk7MBXFXO2s/yXqRdR1jOp0IraGdfeouy7zscb2Ihui4xPFRiQzugteIIcNp
 5lFOIx7olQlOUgpNEG25tVXVfs1ti4WK09cdmcrXRRzxgE+34ugXRVmiXf+QOi4bSDF/
 9qC//+9M9kiRZrE2op4Sxq/sKlfcMvh0Udp9mN8wpi3wclDGwC3xXVTSNAHfoN4rAkvG
 WxBw==
X-Gm-Message-State: APjAAAUElAGjQEhBOWEESBLE83qL3CzCMicjeqq+WeJeJ74jlqXfbxye
 0fX2V9E2RwHDpRjqBV37eXMl/S9+logJIw==
X-Google-Smtp-Source: APXvYqxjR7eQUQF49+zK358oCGTlgWyvRxTBJUPbwfprX4mG0FlxFLhsrRdNA49i+107ryJLCnNvkQ==
X-Received: by 2002:a19:7701:: with SMTP id s1mr3487368lfc.180.1579207672393; 
 Thu, 16 Jan 2020 12:47:52 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id l7sm10929614lfc.80.2020.01.16.12.47.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 Jan 2020 12:47:51 -0800 (PST)
Date: Thu, 16 Jan 2020 12:47:43 -0800
From: Olof Johansson <olof@lixom.net>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [GIT PULL] soc/fsl drivers changes for next(v5.6)
Message-ID: <20200116204743.uwyo2mjvhj46vgxq@localhost>
References: <1578608351-23289-1-git-send-email-leoyang.li@nxp.com>
 <20200116183932.qltqdtreeg4d2zq7@localhost>
 <CADRPPNQm2ZK+trtKCo2Mjr+ga2vKCR4hWMoFXd3AMMxRQZ_4ZA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADRPPNQm2ZK+trtKCo2Mjr+ga2vKCR4hWMoFXd3AMMxRQZ_4ZA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_124756_255024_6EBFD88A 
X-CRM114-Status: GOOD (  21.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: soc@kernel.org, arm@kernel.org, Shawn Guo <shawnguo@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 01:14:07PM -0600, Li Yang wrote:
> On Thu, Jan 16, 2020 at 12:41 PM Olof Johansson <olof@lixom.net> wrote:
> >
> > Hi,
> >
> > On Thu, Jan 09, 2020 at 04:19:11PM -0600, Li Yang wrote:
> > > Hi soc maintainers,
> > >
> > > Please merge the following new changes for soc/fsl drivers.
> > >
> > > Regards,
> > > Leo
> > >
> > >
> > > The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> > >
> > >   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> > >
> > > are available in the Git repository at:
> > >
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-next-v5.6
> > >
> > > for you to fetch changes up to 6e62bd36e9ad85a22d92b1adce6a0336ea549733:
> > >
> > >   soc: fsl: qe: remove set but not used variable 'mm_gc' (2020-01-08 16:02:48 -0600)
> > >
> > > ----------------------------------------------------------------
> > > NXP/FSL SoC driver updates for v5.6
> > >
> > > QUICC Engine drivers
> > > - Improve the QE drivers to be compatible with ARM/ARM64/PPC64
> > > architectures
> > > - Various cleanups to the QE drivers
> >
> > This branch contains a cross-section of drivers, including those who are
> > normally sent to other maintainers/subsystems. I don't see dependencies that
> > make them a requirement/easier to merge through the SoC tree at this time --
> > for example the ucc_uart driver updates are mostly independent cleanups.
> >
> > Am I missing some aspect here, or should those just be merged through
> > drivers/tty as other driver changes there? At the very least, we expect drivers
> > that aren't merged through the normal path to have acks from those maintainers.
> >
> > Mind following up on that? Thanks!
> 
> Hi Olof,
> 
> Some of the driver cleanups are dependent to core QE changes.  Some
> maybe not but could have contextual dependency with other patches.  I
> will be easier to have them all go in from the same place.  We have
> collected the ack and confirmation from all the related maintainers.
> For the ucc_uart it is not a formal ack.  Quoted the confirmation from
> Greg below:

Ok, getting that in the pull request (tag) would be useful for future cases.

Merging. Thanks!

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
