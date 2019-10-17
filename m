Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFFCDB8D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 23:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0L+6fIlIUA3WRIZSBdK81enV09hyH7PK3uvV5SvySI=; b=H6xEgGKH13aAJS
	VDFFUqfeiesNAhKKC9qGhlOPwX9fzhtcF3k98npFOry3STopve48HxMOqo7Q2X184M21dQLBAY/dL
	3RsO7rfPU+bC8QwE4FJ1lwzrwWnQ+GJyjXnR+X9mAaT1EuILSBoYZNHaVSNvlsCTVYSqwafV4n/Pl
	4gMH7+YPKxMThLSuj/Iua6po9IFRDTY8CEDaf0KGFn/3cpZTqcoNJ8k0w+Wg5WbxegOSbkiNRD0tV
	ZHOKPC5kanISP7LspMb4NriBDRygyReK9O0/BEFt6EgzfiFpdE2DJyarOPRfQpy8vt/BYuZrvo1kk
	PER5soz+I8MgWu6lF2Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLD7L-0006ga-2g; Thu, 17 Oct 2019 21:15:31 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLD7C-0006g8-EJ
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 21:15:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id b128so2438482pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 14:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=N2Epa6eQ8h5nF5GpuTglLChG4vrT18flVFq+2Tba3tU=;
 b=OlkVx09TcbkuPAXc8d6cqWufOTcsnhWRgl3HOwAl4hbpqZkM6z0ulZo4PsOhz4PQO/
 feHz+1mG+8YSj40XCbrG8n+RIU88IrEijvpXnT4G573h1cDw1sDXLAxwCQDb8JednPiq
 rUN+VPHBH0AFMftUymDESeQZn5JKLn/evJ888=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=N2Epa6eQ8h5nF5GpuTglLChG4vrT18flVFq+2Tba3tU=;
 b=gMg2ZSOY3qJwpSLK2yEQiH42SHvdaa9U1z2IDWnkoRj8C6zl3Pf9wgMk2X2T3/TngS
 hK6F14pH3SBA8vUX0cv+zmBzdELByySK9tsA71CFXw0nxV0ymeKiSfUpsF+Awd0A95OA
 B+LHQOTEfOAz3yXFOfvPzVTmyOh1JRvc+CIhsa5FFHE1fUcSfReWXnLDuF+CmbdC79OT
 Ibr4R2UPGiwL7aa7R6AzxAKeUL0n2cP0aUsbHb0Ep01A5G4q4s8KGRnvpC5v/LsNPcfD
 7lXRJg4l0UZHW34ukYcyfIrF12sudcvjeE65td8kcEWbU4GqELcdgc4PQsnsoPCBUybR
 6t5w==
X-Gm-Message-State: APjAAAUEIGIPBbJmQKFQ1y2hpJSZ95Ac5vPxkz1kq6KwrXH2sTgb8KZt
 LZf+WVjGnWAX7NmkdeSvgkzcOYISIB9G6A==
X-Google-Smtp-Source: APXvYqxGWsmR5wgG0JENqlJfOUPWEvt3OFoWsXfYwf0OA5ESiLPsL89eFb3lfG1VeHC+Z4esehDI4A==
X-Received: by 2002:a65:6082:: with SMTP id t2mr6424176pgu.363.1571346920389; 
 Thu, 17 Oct 2019 14:15:20 -0700 (PDT)
Received: from shiro (p1092222-ipngn200709sizuokaden.shizuoka.ocn.ne.jp.
 [220.106.235.222])
 by smtp.gmail.com with ESMTPSA id r18sm3390292pgm.31.2019.10.17.14.15.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 14:15:19 -0700 (PDT)
Date: Fri, 18 Oct 2019 06:15:15 +0900
From: Daniel Palmer <daniel@0x0f.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/4] ARM: mstar: Add machine for MStar infinity family SoCs
Message-ID: <20191017211513.GA12691@shiro>
References: <20191014061617.10296-1-daniel@0x0f.com>
 <20191014061617.10296-2-daniel@0x0f.com>
 <CAK8P3a2U7U31eF_POU2=eCU+E1DH-wnR2uHr-VZYWLy25hLjKg@mail.gmail.com>
 <20191016203219.GA5191@shiro>
 <CAK8P3a2Tqpwg6=3N2DhcDj9JMo6jt0sY+sYmnNmzZ5Rcao=iMA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2Tqpwg6=3N2DhcDj9JMo6jt0sY+sYmnNmzZ5Rcao=iMA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_141522_589358_B066D18B 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 03:02:22PM +0200, Arnd Bergmann wrote:
> > I've moved this into infinity_barriers_init() using ioremap() as suggested.
> > I'd like to keep the fixed remap address for now as there are some
> > drivers in the vendor code that might be useful until rewrites are done but
> > are littered with hard coded addresses.
>
> Maybe keep the infinity_io_desc as an out-of-tree patch then? You can
> simply do both, and ioremap() will return the hardcoded address.

That makes sense.
 
> > I've taken the lock out and tested that the ethernet isn't sending garbage
> > and everything looks good.
> 
> I would not expect a missing spinlock to have an observable effect, the
> question is more whether it's correct in all rare corner cases where
> the barrier is interrupted and the interrupt handler uses another barrier.
> 
> I think it is, but I would recommend adding a comment to explain this if
> you drop the spinlock. (or a comment about why this works with fiq if you
> keep the lock).

I think I'll drop the lock for now and add it back if it becomes apparent
it's needed. I suspect it was added in the vendor code out of habit instead
of need.

Thanks for the input.

Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
