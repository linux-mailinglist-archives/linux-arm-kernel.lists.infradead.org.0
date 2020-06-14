Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE33D1F896B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 16:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmYxRu0sv42vxjNp3y8dylah7xGifSZ+M3sKnvgGaAw=; b=tKZT2Ykyn7S1jn
	ZUtqz8ieWOqfFqxqon/D2PXxpm2GUI57oEqWEpNtHGsP6IkIBmhGBwnqUN2w3l7SWySIh6+9x2dMJ
	wUkL6tafSdI8uXLTN5iApKCWFfZSnj7G0rqTRi+LJEpMR0dFVJq/YJPAyXldlbdHOjbP+Yef52aPH
	tWqU4RevbIA8O7dbQOfnA6RLi319f9JnnOUHSDY3oLBkMaZ2RR2bX08c8vdII7yZawPLH+CTHYbi4
	3xkDtvthr5YIeYx2QWGaufnfGsv3+gI+9edmpTX5CHLW5mEyOAsW5fxmX+rg0Z87PqlEKSgtKZAMm
	kYH1txx3ODm4n8n5FHaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkU2Y-0000mG-CT; Sun, 14 Jun 2020 14:55:18 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkU2R-0000kw-6c
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 14:55:12 +0000
Received: by mail-pg1-x541.google.com with SMTP id t7so6467648pgt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 07:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=78et8/D357auQlo0tCw3bdJP4HVAFW0j/pRZND2qTtE=;
 b=sazcY3c4vmvNP2euOvXd5CXPaq3kPKLH/MNh+gVDRpQaIKOaEWPeecO4JCEvIynp7S
 0t30PpYebVU4RcPjQb4piVODuUru6rsiiaDv4NKUTvJ2Ek95EWHFOrYaFVJFW7W9R9HG
 LIExhntgTIPGQPln0XnelSkS7ZeWo1k30J7/rKDzwnwgm2wTJNr0Kcu2wl0ZH6FTTuP7
 JyF7usF9uS3WCU0od9zMpfU0I8wK/fNb8cEpir0zaGrGl9sAUaYqkrKHQDRnjarODso/
 THxm3iGHYQCz+t7A76OoxBEErKJnVgzLX6+iKTEC21Ar4vGHoEE/lTJhKHnMGWeyEf6b
 p4Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=78et8/D357auQlo0tCw3bdJP4HVAFW0j/pRZND2qTtE=;
 b=AZPyzhBxCx+sYb7WfX7Cwt8e+fUKulR8oAEDU3fh0T/RcVxXieX52sVI4WqRl81Bff
 Tyg/Ghus7P0lP6g+bVrFvdy6ECh1IMXAJ8xTv4lOxfN11qejxQyrf6vgVc0Hsq5mn6d5
 gxHqhdzm/hlINkXdNPe5jSwwaZZpmEX9WhAIyF318vLnY/TslTvRrA8+MhcoZ2va84OH
 o4K95P9Kfs9vkZSTs6+cf8qznIYjfkPKRLJXGDfwnf35zU2pUsFNuLGhXE3G4pf/wrj1
 PCIByDhKQH/0WyBAN0aYq8SEeTQCUNFW5yI++8tZBGHc5guAfO4xOPwFkkzLXhYlXTyU
 yCvw==
X-Gm-Message-State: AOAM533Yk93Vn5uSjNFYRcG3MnA0c+8IaN2GbjA5tNxPrP3ymmuKdJ2M
 CPrmrfFWS+aOMNrivCEm/hlOZhJZXBM=
X-Google-Smtp-Source: ABdhPJwob5y5LO2njY/GBTjC/Nb9xaivIHoaUJJmM7RQWU7OYld/epBeaS+a1qrdU1xmpEEEJKo52g==
X-Received: by 2002:a62:2ccb:: with SMTP id
 s194mr19106321pfs.127.1592146510447; 
 Sun, 14 Jun 2020 07:55:10 -0700 (PDT)
Received: from localhost ([49.207.192.101])
 by smtp.gmail.com with ESMTPSA id l195sm1332101pfd.18.2020.06.14.07.55.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jun 2020 07:55:09 -0700 (PDT)
Date: Sun, 14 Jun 2020 20:25:07 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
Message-ID: <20200614145356.GA3134@afzalpc>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
 <20200612135538.GA13399@afzalpc>
 <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
 <20200613120432.GA5319@afzalpc>
 <CAK8P3a2g6a=V4BmPAOM0vNYUfJqm_aZziQhCxfF8MT_fbHMMLg@mail.gmail.com>
 <20200614132143.GA599@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200614132143.GA599@afzalpc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_075511_263826_2152C478 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sun, Jun 14, 2020 at 06:51:43PM +0530, afzal mohammed wrote:

> It is MB/s for copying one file to another via user space buffer, i.e.
> the value coreutils 'dd' shows w/ status=progress (here it was busybox
> 'dd', so instead it was enabling a compile time option)

Just for correctness, status=progress is not required, it's there in
the default 3rd line of coreutils 'dd' o/p

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
