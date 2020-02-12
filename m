Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B1D15B40D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 23:47:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDjYg6y8tDKt3IU+YEwiI2vBrPcfdia83UY/laXr/bI=; b=JrdfQj6lNRk2iN
	cWPyoKxVfypFBwYo5Wo8pOHjC8kzoVLnA3jccTpxFXkrYnPILygMkrInB7N7ERGjMCSaQbGxJ9SF2
	HrinRXf91LDyQnl/65kn+AyWbaL50xj9XIWmNXt/zCG/tlc6KbW0L11vAWuvic5Yl/MRv5XgAdAIZ
	roLEB/7Pbj3qMJ+q4PXl48RXjfcbAH6TTz92oR4eFzZMCuj65hq+LbExWwYRRNWCfzdP66i5X5VRL
	6x0H4TAvbkNRivuHUbh5bpCF0fgJKPBWGNJQ+T4n5besMgh8uy/pK24f2UMiEhiO+rGfrNEzdEX6N
	mfytG3seXYWXZjHe6V4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j20mf-0001z7-O7; Wed, 12 Feb 2020 22:47:05 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j20mX-0001y1-NG
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 22:46:59 +0000
Received: by mail-lj1-x244.google.com with SMTP id q8so4254812ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 14:46:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jrYNxcmAESHKexGAddHOv9wtAKXJzgWh89e239PGRQo=;
 b=PFFtJaHKIrNlUKS6NsRZWetgbbjhBlkI0g7tnl2WGU5kaUqi+zNun/iNdoK/DEDDiS
 HNkQw6hvXdwZihxbQefigPoLmceiAnmLwudOExlfolrXpKRtXYlySM+UthcT1qsmvcW/
 zbuCIaL+5o+Ap8LUBQHJ5+Xp+LEU2psM35r/B68UVaY+CMkXphIpRo3a3FgszEnO2dsf
 yWVpHOk5hKgOE+XnVzmh4Bv26YqiKa6cn6T0wDFLu6ZUnh5lg9aVjSNs/Ic7RI4Mpj9I
 Izlj168dzT7UUt+SpupM16uiM260AIE494w59HZJZTa6fTgWRVmatKFAYvMqLwd/2GKr
 duBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jrYNxcmAESHKexGAddHOv9wtAKXJzgWh89e239PGRQo=;
 b=Hgvm0C3EMv7HfybTxlFYvyVZ1uNP55BKthmBJuqciuiAM0MAUlIWAkk9+WXeiALhJc
 vwBytWaHaAHCWTSAwJHXplgv+h2dTqgIljcR5rjU8Yc8nJfuO7ClKb3bC89fC/OMt2ac
 ff6WvjldwleNugKH65H98DgmpLLSuDacYmBUCTS1kKaoLjSGGeNXsuEfZs4sVRbZUjlu
 Lm4CMdDCySUFZWsvuVrg84OuqbnBcZpQOfGsL7OPtq55boEPXwoXO6Hq1D+i9YrLEBCt
 X/YAnUEpYdljxp/gdy0OgoQYUqPArVRRy0qsQdDf9cmG7+1n2G1sEP3XRni4sO25zpIy
 B4ew==
X-Gm-Message-State: APjAAAU0D8wvE5gaMB+BfrzHuGHL2i3YUkiYMJOGrwt1q7sUgNYWnZfZ
 Hw2a+XhDISJ6qHjqGBn3Qk4=
X-Google-Smtp-Source: APXvYqybqDLRJg2IrAK1fX24sksSPwXxUp90d3598YjdvkPi0K1jiArVzSr4wzrM3vq8gpEnprObzw==
X-Received: by 2002:a2e:7818:: with SMTP id t24mr8865749ljc.195.1581547615958; 
 Wed, 12 Feb 2020 14:46:55 -0800 (PST)
Received: from kedthinkpad ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id v7sm257086ljd.12.2020.02.12.14.46.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 14:46:55 -0800 (PST)
Date: Thu, 13 Feb 2020 00:46:53 +0200
From: Andrey Lebedev <andrey.lebedev@gmail.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/1] Support LVDS output on Allwinner A20
Message-ID: <20200212224653.GA19494@kedthinkpad>
References: <20200210195633.GA21832@kedthinkpad>
 <20200211072004.46tbqixn5ftilxae@gilmour.lan>
 <20200211204828.GA4361@kedthinkpad>
 <20200212125345.j6e3txfjqekuxh2s@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212125345.j6e3txfjqekuxh2s@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_144657_782422_BEE92D2D 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrey.lebedev[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 01:53:45PM +0100, Maxime Ripard wrote:
> > > Side question, this will need some DT changes too, right?
> >
> > Hm, I agree. I think it would be reasonable to include LVDS0/1 pins
> 
> That, but most importantly, the reset and clocks for the LVDS
> block. Also from looking at it, I'm not entirely sure that the TCON1
> has a LVDS output

I also have impression that LVDS is only supported on TCON0, but that's
mostly from this comment in sun4i_lvds.c:

	/* The LVDS encoder can only work with the TCON channel 0 */

> do you have a board when you have been able to test it?

Yes, I have the hardware (Cubieboard 2) at hand, but I cannot change the
any physical connections on it. FWIW, it is https://openvario.org, the
device we are (painfully) trying to upgrade from old kernel-3.4 with
proprietary mali drivers to contemporary software.

> > and sample (but disabled) lvds panel,
> 
> That's good for the sake of the example, but it shouldn't be in the
> same patch, it won't be merged.

I jave just submitted version 2 of the patches - set of 2 patches this
time. Addressed your comments, please take a look.


-- 
Andrey Lebedev aka -.- . -.. -.. . .-.
Software engineer
Homepage: http://lebedev.lt/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
