Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB32CDCC7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 10:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eLNV3Ctgbu9Q1tgB8q+k0mizpRK2vN6f8EGW5u6fJO0=; b=eccl2KEUT7rIXI
	KlAWGMD+i4N79A9bHvopp6HFGL7YnvlUbZaw2ZvQXh2JrR5k24iPMrg8zHYEyh72mRIbzzG8OfIBy
	7+YuHGXy4RbJ5ps45y10r+JsIHg4HNvowkfzGCDQJdEMgAbbBGkkLnzUCsik3pjzzKn/4/AJ7jciW
	hM1q6Jvp8eUZeSRfllXwPv68VLbxAwpOpiY8TWybJwzC1IuiwRkj0Z+Jn02Njb5RXnNVpcreGC+D5
	6Y7fIfvt9RjpMLWszQqG1fsYxxom2rm29XVQ5WwCQyAhLYK9iKRQMHJ3dFTOdQiKRzOdeUyod3/O6
	RAs3oBkSmdxHmbQfDvBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHNyX-0005sg-5f; Mon, 07 Oct 2019 08:02:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHNyP-0005sK-BX
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 08:02:30 +0000
Received: from [10.33.87.18] (twin.jikos.cz [91.219.245.39])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8CECD20867;
 Mon,  7 Oct 2019 08:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570435348;
 bh=DbrpAfomurrCCdFD0IJeUwRw1yWRYID3uypVq0D8MQw=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=ILBNzhemPwPmbQnaC2LVrUnAx54C/R93wfWv1G86UaG8h1UKlITDQ2NQj8Y09JZjM
 B6xS9BAgcVSnQ/aOy+/+snNJS3s0TNmJiUt4QkMuI+50OcVJ03oqyCnztKugeo0x4g
 R+lPPA2M1btyA+m1tgijqbN/px5ni5HfUoG7g40Q=
Date: Mon, 7 Oct 2019 10:02:11 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] panic: Ensure preemption is disabled during panic()
In-Reply-To: <20191004104947.vbxe5kv3nbjxqs55@willie-the-truck>
Message-ID: <nycvar.YEU.7.76.1910071000170.15186@gjva.wvxbf.pm>
References: <20191002123538.22609-1-will@kernel.org>
 <201910021355.E578D2FFAF@keescook>
 <20191003205633.w26geqhq67u4ysit@willie-the-truck>
 <20191004091142.57iylai22aqpu6lu@pathway.suse.cz>
 <20191004092917.GY25745@shell.armlinux.org.uk>
 <20191004104947.vbxe5kv3nbjxqs55@willie-the-truck>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_010229_411128_715F2836 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Petr Mladek <pmladek@suse.com>, Feng Tang <feng.tang@intel.com>,
 Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, contact@xogium.me,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, stable@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 4 Oct 2019, Will Deacon wrote:

> Indeed, and I think the LED blinking is already unreliable if the
> brightness operation needs to sleep. 

One thing is that led_set_brightness() can probably be forced to avoid the 
workqueue scheduling, by setting LED_BLINK_SW on the device (e.g. by 
issuing led_set_software_blink() during panic).

But I am afraid this still won't solve the issue completely, as USB 
keyboards need workqueues for blinking the LEDs in for URB management.

-- 
Jiri Kosina
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
