Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A19172625
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:11:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpcvSI79+E+rAM7TWklf/BI19H/Pz8AEMR/0xlewGpA=; b=ebFnZX1jwXk9oN
	hKcLmsgyRDJAP+l7fWzIsbNgKRNjS2Gm1oyFpct5TtH3VviSNLYnFNnwTgf2Go5KvOfFRSC0b7o8V
	OeHxo+1mi+1TlIlN217h3W2qhMJzVeF2I7mc3U4eHBdBontTdH6O114ZEO6/742LjzkmFwvpi4hfs
	o0wPzs245YI96u8tUqtMbXQexGAUfTrks4iKejuV3NpkBLDpNLpjc+4v3w099ZU4ivFFySGnw3Wri
	S7fBspoX1n5+DR+QD2O5mvfVUAM6DFYLoyfShsTIzPqtYqlHlzC83kErzngZf13YqM6D74NzDnIP8
	Stj4z0w8rGg0NjLDW/Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NdD-0000TP-AO; Thu, 27 Feb 2020 18:11:31 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7NcG-0008Cr-UJ
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:10:34 +0000
Received: by mail-lj1-x22e.google.com with SMTP id x7so293534ljc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 10:10:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lZwQ7m18i9+lKvREczPcF+oIj2CXwsJ7mJqMPCtyg+8=;
 b=eYm4GQi1sw2Ds59Hm1KrOZaaocITpeplWcCEjWWqSSmQWRwljouNr9jYietApt6jFJ
 s/peyVM6akFkoUB0rUvyxHSdltC+Bx0dQW2KHu95+Nt5gbfm913X63dZSEnDICncK372
 1sx9ST/g5uT6IJO+H60IBGQ5SjS7QARQW+llI+bdOGfTu4J6IFYSdz3nS0ztcI8oE2D0
 5DSuJ4JzlWbjKxyDU0Xfl14sJ1CpIACm20vVMK3E7FExhE1l2sm3EOkz7D6eIPywjtI9
 oEccAjWpL5W7t6AlsFvi8HV4dDCFVONMK639e4rQD3cqspx9hvQd+CFQd/fbMTZH+hW7
 p44w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lZwQ7m18i9+lKvREczPcF+oIj2CXwsJ7mJqMPCtyg+8=;
 b=DmjxUgFxMqYCgPUtSJYa+H8fGGa7r7Gi7IhHtwyIdLvjTDF6NcHXzCTqylrvPn+OZX
 BKkYV1+dwSUfNQvGr2/AQ0LNds6o8uaWFR1GHKmF6hQOXdvmUEacp7lYdpo3JuZLCieO
 w0oiZtAAtKjD0GMeltGnaJaYUm/hLInHXx4tOyNE4GSbQ+8DuQJjDqY0iNLdMyJueV8c
 0UaZyS5bb3Eab0qHfKA0mQw3hATc5sefZWIM3TWsRtLlRnKdPK7srfWsAaKFJffW02E2
 s+yQYGzndoovBdSrVkT5MoxYNumNEe/YvgTyMi85j7Qu6GrmP/QakegWyjKLXKuAWTAT
 nqxw==
X-Gm-Message-State: ANhLgQ3oJXDYjAJyAj8UZLfvzRRdZ2mBw6NFv+K8hg186C/OXbLZM94F
 qQHjWbQ6WofAChxKP8hjCpom+w==
X-Google-Smtp-Source: ADFU+vt6//Zzlu4oIzRFI47jGSAzXqPCEc0rs/y3npdFA3WXIV5yOd+1XjT343aFZ2ptTZjvunRvnw==
X-Received: by 2002:a2e:9dc3:: with SMTP id x3mr169644ljj.257.1582827030464;
 Thu, 27 Feb 2020 10:10:30 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z17sm3720518ljm.19.2020.02.27.10.10.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 10:10:29 -0800 (PST)
Date: Thu, 27 Feb 2020 10:10:18 -0800
From: Olof Johansson <olof@lixom.net>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [GIT PULL 0/5] Renesas SoC updates for v5.7
Message-ID: <20200227181018.5nixs7o7lght3mug@localhost>
References: <20200226110221.19288-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226110221.19288-1-geert+renesas@glider.be>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_101033_147058_A5ECA927 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-renesas-soc@vger.kernel.org, arm-soc <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 12:02:16PM +0100, Geert Uytterhoeven wrote:
> 	Hi arm-soc folks,
> 
> This is my first pull request for the inclusion of Renesas SoC updates
> for v5.7.
> 
> It consists of 5 parts:

Hi,

Only 2 of these were sent to arm@kernel.org / soc@kernel.org: 2/5 and 5/5.
Mind checking your scripts to make sure you send them to us so they end
up in our patchwork? (And please resend the ones who weren't).


Thanks!

-Olof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
