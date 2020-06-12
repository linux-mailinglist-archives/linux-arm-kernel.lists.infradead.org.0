Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939331F7B58
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 18:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1QbQbBEQblgfQ0551+1Qhek53V1AYejH1MzarC6KrVE=; b=TFp+1VUHg2E7ab
	kZMn8+LxGh5f6cpwKQM2at+4VRCLN1AHREi/+uucTc1Evh0xmhjo+SEzxYXvDoxAUnwHYthy5u8de
	Hlu+ToDfGY8D3udWbmCft6gOPTHdyUdImVNAFf6eKh8jXaMIvnAE05RhOjVyC/ZIZzxaooOWL5cEx
	46CJZu/gN5C4HfNeWGmBwKOHoT0ZVuJoejraUCVOS2SSHh3WCa8y4Nrs81U9M9w5otMFq3LydIxGS
	sggW35eQa3UJ16Ud2dzXhk4XJzm3aq7zQ3HttMerByjmvNO+trFekEn0jh07GaY6b7hLxHws1FXSr
	ZoLDx9q/Sdon0md/3bOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjm80-00024r-9h; Fri, 12 Jun 2020 16:02:00 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjm7I-0001VA-GJ
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 16:01:17 +0000
Received: by mail-pl1-x630.google.com with SMTP id x11so3909774plv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 09:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8arUOApLiXDRUGCMIRF3WITWesa059DBqowSaJoP3kg=;
 b=my5eY2ycooXFvDMr0LtDM+kEGSVSJON/nRXck6cJWtWaIvr79zLH9d5AaK9o2wxpjG
 R0+znBSCLwP73h9oARXj0WqD2Z2JyPWOUqIuW2K67Dx0xEFL40Nq3/cTS2U6leGwAVeS
 wg3TtmCvTNn84lFYU1JH7E8HUps+G7lLxw93BgFo9DY9xpTdQLS6HWpbhY2Dahe8xFvG
 uFIvsGL0xoAGUzG8/xpt/1dUj/W8qYiCfz/kZaqv77dkNoBIeuIoRj4H+4iLL87M/X/Z
 8T8BwdULYyr3fhtNVYHMhLbOJ5II+7xWeUK7ESCoRhhPs2r+lEFAaX+HLvY+vne1WGDA
 JKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8arUOApLiXDRUGCMIRF3WITWesa059DBqowSaJoP3kg=;
 b=KyKlWeglHuKgc5PDI3VxDAWHYhrz3ZY/6I6D3FyV8RAKh5mSQEHdo8fylaRQ+UmEhm
 a7aYM9rqomGDOwTewOvAjTsB52xXzwfNovHsNPEr10ZMGsCl8A4C8H6vXGeCDHpamZts
 j7WCGF7DtKvyemgno3pNDb5Lis/Maa4mHF4cwkcEdyes1FprSB5jy8D2UgEgeBzRPo7U
 dz6LrPee7NTv7xQpq82ZlebbrNRYr79LhsA7zz4v3e3Vh+/v6FBehbLrj1UhE1MMPwzp
 X04dbipSa0vQVjx/QZl9ivwgeq96giaT48z1q4Y1SAm14iwbgH9g3MNeAe0jBKG+WcXI
 IXqA==
X-Gm-Message-State: AOAM531xvRt69Zi5byWA6kzDLVhA2Oq37qLb6YdrS5OL2Up9KEK+06GA
 WCEcSz2bv06BEAxvo9Ac/xQ=
X-Google-Smtp-Source: ABdhPJwP1eHttivf0/PWqEs9M6GPvKgYt8tIyp75MZaGCIFg/3sT6iI0wPkeT3MKAFbjn+gEQjSAVA==
X-Received: by 2002:a17:90a:266f:: with SMTP id
 l102mr14542976pje.190.1591977675395; 
 Fri, 12 Jun 2020 09:01:15 -0700 (PDT)
Received: from localhost ([49.205.221.68])
 by smtp.gmail.com with ESMTPSA id u4sm6473576pfl.102.2020.06.12.09.01.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 12 Jun 2020 09:01:14 -0700 (PDT)
Date: Fri, 12 Jun 2020 21:31:12 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Nicolas Pitre <nico@fluxnic.net>
Subject: Re: [RFC 0/3] ARM: copy_{from,to}_user() for vmsplit 4g/4g
Message-ID: <20200612160112.GA27659@afzalpc>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <nycvar.YSQ.7.77.849.2006121117250.3341460@knanqh.ubzr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nycvar.YSQ.7.77.849.2006121117250.3341460@knanqh.ubzr>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_090116_655847_2AAF32F5 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:630 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Jun 12, 2020 at 11:19:23AM -0400, Nicolas Pitre wrote:
> On Fri, 12 Jun 2020, afzal mohammed wrote:

> > Performance wise, results are not encouraging, 'dd' on tmpfs results,

> Could you compare with CONFIG_UACCESS_WITH_MEMCPY as well?

                 512     1K      4K     16K     32K     64K     1M
 
normal           30      46      89     95      90      85      65

uaccess_w_memcpy 28.5    45      85     92      91      85      65

w/ series        22      36      72     79      78      75      61

There are variations in the range +/-2 in some readings when repeated,
not put above, to keep comparison simple.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
