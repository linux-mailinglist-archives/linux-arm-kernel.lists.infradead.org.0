Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF91709AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccEWAOowIu4EPSgoNgMRIxzFWODkc0P4t0j/crg8F8Q=; b=N8KoyD2svOyU9g
	ZA+bDL8x74AzL3FD+r5oLYaLKg0WrXHbmH6h7TXjkVT+ff1YGvGYP0S0BCYDRS23+FMd7YDWJSQYN
	jGLdC++coLG9Rmx7mBZM3KkOD17gV5QzArKA/w5xHBqUBDE7BSOgHXJtkSxPMLM7XU90uNjHEvNco
	A15K5JiV58PGdBBYgsPJIotiQfFZG9IUGBVvSYST36pF8gMT9Jsjl37BnV3HJYqHn+7Vg+h40qrci
	j2EUP5GH4QiyGBdyofP2+GoVoj3fTlJg6zIjBjrK59wud1pys1EtIU7E6NE1o7gjCuiO+nscD80QQ
	jFkWCT2ADYnP+orARoAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdwj-0002X2-2K; Mon, 22 Jul 2019 19:26:05 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdw1-0002T9-15
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:25:22 +0000
Received: by mail-io1-xd41.google.com with SMTP id k20so76460454ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 12:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=rf8ryiSI7gM7VW/mCBLHJLZdnlhJlIXGezmFbO+mcVw=;
 b=Xb5UwnBHkO/b7wAi1N5yXMS813VTh/5G24EzGuW5yJgQJgkjhUeKrTPSDkIp1KfUd6
 Iv3pWmtQA4mpIFFovuwl6FoaHQR+QSADg5v7gsjVpmHM4SI31heH50S/PkRTLaYA9lce
 +01E1ByorK9WOcBiaZz1FUtb3mjsV1xoqE6F7D9Yu4CWdB1e4XcdnZ0wBUR1TvQCcGr3
 ckF18v2qRvhL6FFsnkyEXeWtWu9RH4YwxumHUnoMed1uigXSdgTxN3sMKYU/ijspqfyX
 VfcYR7l9OaMGtYoRIf9WRepYgUU+N0FLHXUuyZvPMCKyhk68ZrFYinGWON2Tbg1EenkL
 KhVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=rf8ryiSI7gM7VW/mCBLHJLZdnlhJlIXGezmFbO+mcVw=;
 b=nvZzG/NLNh6Gr83PI5LYTSSp3kiAtJIDgYo5OleRM7Rw5gbnTNG5aEfZ8qhIanf9Sw
 bcjx1HZII+3xi4QXLasvhNhHurxf7vLdey9XIceO/86JVBOd7XY7ZAqbRUGJTsGEugEi
 ehPU7VAbQE2IgJZabxaalJpbAWax8xXx7dpMCfNmvlFy/CrE+fss4kmCuvaq3WOPB7dk
 E1kwgZi/1VrN47FgPMfRELzwTy3l7GA/4djPKreuYs0odhnh4JUlYpb6OeuU/0VWEfhy
 8WW8liW4YHH60Ixz8+EDFe7GwigHa2kpdQZxXpf5VDw7qtNJI72DhhY2XBu0DeVbnhYc
 f0Wg==
X-Gm-Message-State: APjAAAX01BTQFKHqfWuIOP6L9TRZMr7oL5wkBygIVGvsLMXsu6yTf/NG
 6AX1rEDLLImoyNDN4+tf8jty7w==
X-Google-Smtp-Source: APXvYqwYUcpO+JDt/loIDZQbYbOA1X6JHoiG+W3zU6bs1mBiztsz8Q1eqm+2GIS51glKmkkHqpFvIQ==
X-Received: by 2002:a02:cd83:: with SMTP id l3mr39191324jap.66.1563823519409; 
 Mon, 22 Jul 2019 12:25:19 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
 by smtp.gmail.com with ESMTPSA id n2sm41584533ioa.27.2019.07.22.12.25.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 12:25:18 -0700 (PDT)
Date: Mon, 22 Jul 2019 12:25:17 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v8 0/7] Unify CPU topology across ARM & RISC-V 
In-Reply-To: <alpine.DEB.2.21.9999.1907121012050.2267@viisi.sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1907221224170.23563@viisi.sifive.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907121012050.2267@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_122521_076871_F69E01D9 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 12 Jul 2019, Paul Walmsley wrote:

> On Thu, 27 Jun 2019, Atish Patra wrote:
> 
> > The cpu-map DT entry in ARM can describe the CPU topology in much better
> > way compared to other existing approaches. RISC-V can easily adopt this
> > binding to represent its own CPU topology. Thus, both cpu-map DT
> > binding and topology parsing code can be moved to a common location so
> > that RISC-V or any other architecture can leverage that.
> > different config for the architectures that do not support them.
>
> Once v5.3-rc1 is released, let's plan to get these patches rebased and 
> reposted and into linux-next as soon as possible.

These CPU topology patches are now queued for v5.4-rc1.  They should enter 
linux-next shortly.


- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
