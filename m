Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7CADDADA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 22:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJHlckKsUgsVD/yUnubVYgeL54Ag3KFCCBm4mSIXFSw=; b=SbGCuVHYqhSwtr
	1Y8J9aBZ4Al2waupvAxWNgxexkA0quJImcqsySVaf/YASKIHdexsx4jKe4PYUIQxqnXOSyxdJCSGY
	RjWnLN+TmBRU71okFEjZF1yMaKxHRirCxSiuV7rWf9U1nys0u+4VawB19Jf0+3zeCIcJPtMQesBOd
	Tbb4vuzz7hFlxLF9Fu/xct89gnZLtPPHjiVG8qQPQIrc3aD7XfZTX94xyLEifndANUGsRGPxe1SOn
	wa4jvu+G3LCWyHukfQTPPG3Y/4Rxulx73kVa8MafYELccHUGynEKjzK3TIAwI7mToj9/2Wdf4B3+s
	XquYjH4b6lUdZNjopEkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLvH2-0003I3-7Q; Sat, 19 Oct 2019 20:24:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLvGu-0003Hb-1f
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 20:24:21 +0000
Received: by mail-wm1-x344.google.com with SMTP id p7so9374225wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 19 Oct 2019 13:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y7m956o0kMuo/g9lESMhxXhm/hsWQOul6vryxA8/gSg=;
 b=dWhMVZR6m9wkxDNwnDCb2mPO5qfGJl3KYlO5YtVqJVgRKtg6CECDuV2osJloKb6H4u
 SreZ98z3Fh/dyVCdsRptwIL/dlbnl7EWyY8bEIEdegi0llnkA0aKjLo+xU/9DH/nvTop
 yiuHN8OwlISKpoeagYgGmDYmIPXsnz52GKdPkX9/q2wGy985Ox2ommS+QqQRlZdNP9cA
 ozHXMeQG0OmHHEXOgISE5iUwJ2xRBbSSCCOcXIHil9IvnYi3YPFb9OM7kF/lUnN3wnzN
 hyHlNpXVo60ePT/B2l+gN/3Ewx0TaKgOfRP19+eJQXwvAyfmgpD0a7duvqDJN8Ag78bw
 rCTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y7m956o0kMuo/g9lESMhxXhm/hsWQOul6vryxA8/gSg=;
 b=PA9nwMBeSHRVLtXRTaei0LWMu8aerNnZCcMoLu2nOa1ruttsOWXwmkxmBYrW3+BhY0
 9Lc2uIoBfxBOAExW7rBh4RL1pcqH3ZX0brOnayuwZj3fAElK5Z6+id3lp3H2JP8NNZZy
 YVrYZTVRDS58UYZyD/qoKzvBo/N7XatzSzso94jNzCS8X8fev4LVvunnFDU8+RjPYA+Q
 S9A+gmT8FeESIEbdRVhF99fYZL793cSBAvkzxuYFB0Q/sUEtpjYbJNtSFga84AGtYgqi
 7RFl+wDWoMh6aT/wI+SKaB3vyreqn6KzQotsK6td+09HLPZoFIA5vh3sL0dMcoJ7UGjc
 kdNQ==
X-Gm-Message-State: APjAAAW8zCglEzSRnZEd0A7Dtj76t0IVwBNijCwa8xJwMQjo0UvnOXTz
 uhdUv/xJb/u13Zn6AZP4eFQ=
X-Google-Smtp-Source: APXvYqyg1y/qKEhIuOlxr935NXWXi2qDmFTwGT5UOLQLyDwTElLeZL4sHKrZnrpcwxkSA8EY+grDkA==
X-Received: by 2002:a1c:1a4c:: with SMTP id a73mr12543944wma.124.1571516654450; 
 Sat, 19 Oct 2019 13:24:14 -0700 (PDT)
Received: from giga-mm ([62.68.26.146])
 by smtp.gmail.com with ESMTPSA id a9sm12563301wmf.14.2019.10.19.13.24.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 13:24:13 -0700 (PDT)
Date: Sat, 19 Oct 2019 22:24:13 +0200
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/6] ARM: ep93xx: enable SPARSE_IRQ
Message-Id: <20191019222413.52f7b79369d085c4ce29bc23@gmail.com>
In-Reply-To: <CAK8P3a0LWeGJshr=AdeE3QXHYe2jVmc90K_2prc=4=ZFk0hr=g@mail.gmail.com>
References: <20191018163047.1284736-1-arnd@arndb.de>
 <20191018163047.1284736-2-arnd@arndb.de>
 <20191019184234.4cdb37a735fe632528880d76@gmail.com>
 <CAK8P3a0LWeGJshr=AdeE3QXHYe2jVmc90K_2prc=4=ZFk0hr=g@mail.gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-unknown-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_132420_093614_20859F71 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.sverdlin[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hubert Feurstein <hubert.feurstein@contec.at>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lukasz Majewski <lukma@denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On Sat, 19 Oct 2019 22:08:40 +0200
Arnd Bergmann <arnd@arndb.de> wrote:

> > # cat /proc/interrupts
> >            CPU0
> >  39:        146       VIC   7 Edge      eth0
> >  51:     162161       VIC  19 Edge      ep93xx timer
> >  52:        139       VIC  20 Edge      uart-pl010
> >  53:          4       VIC  21 Edge      ep93xx-spi
> >  60:          0       VIC  28 Edge      ep93xx-i2s
> > Err:          0
> 
> I guess that is partial success: some irqs do work ;-)

Yep, VIC1 is working, while VIC0 is not.

> The two interrupts that did not get registered are for the
> dmaengine driver, and that makes sense given the error
> message about the DMA not working. No idea how
> that would be a result of the irq changes though.

Seems, that it has exposed some incompatibilities of
starting IRQ 0 in EP93xx platform fir VIC0 and VIC code
itself, which assumes 0 means "auto assignment" (refer
to vic_init()).

But there are more problems I didn't resolve yet.

-- 
Alexander Sverdlin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
