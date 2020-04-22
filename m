Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CB51B3BBF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:51:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhyegQF+jK0r1Lpn9kyEqDb4oHZK1ORhj9kC6/TDZPs=; b=JzjekKuhFAYemD
	S+k1AKbmmAJgjEAWbkc2fu2XfiQOAM5HHU/Bb6p03poePoxUVLoYorYok1sq+u4vl80VtqyShsk4I
	yJbNhXhYW9zUGY8FLMpW0X/f8l/mZ/Lq/vasFx25+yJ8QKgPinQNmOeDAkRkGSVfjObWkIACtojDw
	0VrxbAZ1BxGQELzV1w9BrO5uzaRXJMyH4ZAAQV31g9P60AJOkI9+6cjPzbRUH/Fh7BqBI+/UF9/QE
	km934wqZEFi/eIqX6zwDluHfDe3pzpj5dQ1Uk0Z6BD3CIz6wgpn0oS9WQIfVXhopevzzos2+2kNc0
	6Az36QZmTzJTznvTQhiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRC2I-000480-JB; Wed, 22 Apr 2020 09:51:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRC29-00046w-8V
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:51:10 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C17BB2073A;
 Wed, 22 Apr 2020 09:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587549068;
 bh=bLJbp6+zinXZf+o+3jQEHKbAguMOzTp9z4BWNRFsioo=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=0tApOW/IF82Eyo4QYx0jHf79aQWnMBt4tiFgAQiWawt/Hk5icbg9am6XY+7DqRmuN
 zt+gvXfeCjBOOG2tK1rcbSZ9xX2TmE6UiLZ+mShYcpTX/2wuAFACXBnYOQ5WALzdlK
 OyMw7LUKAWkkHP4PO/2baErwXnqGV5FU2ZnarNOU=
MIME-Version: 1.0
In-Reply-To: <20200419170810.5738-16-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-16-robh@kernel.org>
Subject: Re: [PATCH 15/17] vexpress: Move site master init to vexpress-config
 bus
From: Stephen Boyd <sboyd@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Date: Wed, 22 Apr 2020 02:51:08 -0700
Message-ID: <158754906803.132238.5380277174069330915@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_025109_318499_F4C8EADF 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Is the subject supposed to say 'set master' vs. 'site master'?

Quoting Rob Herring (2020-04-19 10:08:08)
> There's only a single caller of vexpress_config_set_master() from
> vexpress-sysreg.c. Let's just make the registers needed available to
> vexpress-config and move all the code there. The registers needed aren't
> used anywhere else either. With this, we can get rid of the private API
> between these 2 drivers.
> 
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
