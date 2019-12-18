Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B1F124BDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 16:38:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JGM0PZz9oDBwWZzQ1R7DMbGMXjnnyMZPDa4ciwnoyAs=; b=n1OjuqDise9edP
	S497Y4PkGF16xKQoo0FteFvzHMQaOM0zfnsswm4rKwn/hKq/u3cpvqNZz4SzTvq3lMzavsgGG1JnZ
	COlIJ8WEMKV0Uld9SYNPwjiYArccVb/B+RWMe8RLEZHJF11nZL3bq8+jiiCGKX53VWwl7hUdaWhuL
	swQHvABas3/YF4HavUr8zw8hmH9BylDKTFV8JImk0vbUYBfWOEuB0JPUzDXXsSXXAc3/q+tEl02Bb
	WKeZbyWTmEAUUjOeEzQAK1WaE4I7Ue9uirDmjV0w3eSwJfhPcNbkFLlYpc4FEN1bhge/JHn+2I9bw
	MXnkvI9jX4MHuHjNWgqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbPO-0003hs-Se; Wed, 18 Dec 2019 15:38:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbPF-0003h6-PX
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 15:38:35 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEC9624650;
 Wed, 18 Dec 2019 15:38:31 +0000 (UTC)
Date: Wed, 18 Dec 2019 10:38:30 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Sasha Levin <sashal@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: Re: [PATCH AUTOSEL 4.19 031/219] arm64: preempt: Fix big-endian
 when checking preempt count in assembly
Message-ID: <20191218103830.3f396a6f@gandalf.local.home>
In-Reply-To: <20191216094523.GA9938@willie-the-truck>
References: <20191122054911.1750-1-sashal@kernel.org>
 <20191122054911.1750-24-sashal@kernel.org>
 <20191214021403.GA1357@home.goodmis.org>
 <20191216094523.GA9938@willie-the-truck>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_073833_842027_3A591E54 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "kernelci.org bot" <bot@kernelci.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 09:45:24 +0000
Will Deacon <will@kernel.org> wrote:

> Yup, without 396244692232 this commit makes no sense. That's why I didn't CC
> stable or add a Fixes tag :(

Yes, please have stable revert this change.

Thanks!

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
