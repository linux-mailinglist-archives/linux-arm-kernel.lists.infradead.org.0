Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BDE124C5E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:03:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JApnaFYjymyjEKZbaQl0+/GTTUiiFOW87WdcGcwkptQ=; b=UgVn2mOJMfBkzx
	1u/uksW9aBv3COw21r62yn5SHSx9uH8XlsJlTkvHMr6EuM1S1xNKAcqNY0mwODZNCsZaEjwOHY9YZ
	OlMXjwe9IrfRRnV47gJS8U9q3sgKQHWmtUURLPKqQisniqXliLybBCH/N3xlDVTQmaGlEi6QLTjl8
	czARhcA1xMNEDdMdv+/EbXHYKnUCX3Co9E5vS+hz+8KnpwS7XWd+e0RRYKSaghi2nRpHCPd77DjAo
	ldOrBOxYe9Xv03v0fNCDuaGM610G83TaDeyz8XhwFtRlMOMf5cfDTq2JnqUWyOiIDZu0ebWmhJBmJ
	Eq0WGI3IaYb4rLqAkjwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbnD-00065K-MD; Wed, 18 Dec 2019 16:03:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbn5-00064s-Q2
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:03:12 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 831572146E;
 Wed, 18 Dec 2019 16:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576684991;
 bh=u8m+Lwq31qWhD0UzfhyK67aiuxro10wEUtknWSR8HnU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kUqZCG1mRrcc3nw1pAQnYsw/f6WB+r4UNW+pU21vUcKd5qoQ9DA+R9hKj3g758nrl
 6xA4kWlY1k4caNhXJatK+tejDtvcClFuya2OlTtxIBplp6DQY5+/p430IOX2N7S05+
 KUuFX9vu7lXNwd1vBdQWgcFQNpAYOMxdIOe9oUjA=
Date: Wed, 18 Dec 2019 16:03:06 +0000
From: Will Deacon <will@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH AUTOSEL 4.19 031/219] arm64: preempt: Fix big-endian when
 checking preempt count in assembly
Message-ID: <20191218160305.GA16411@willie-the-truck>
References: <20191122054911.1750-1-sashal@kernel.org>
 <20191122054911.1750-24-sashal@kernel.org>
 <20191214021403.GA1357@home.goodmis.org>
 <20191216094523.GA9938@willie-the-truck>
 <20191218104001.2b2773b7@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218104001.2b2773b7@gandalf.local.home>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_080311_860322_26DD521D 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, "kernelci.org bot" <bot@kernelci.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 10:40:01AM -0500, Steven Rostedt wrote:
> On Mon, 16 Dec 2019 09:45:24 +0000
> Will Deacon <will@kernel.org> wrote:
> 
> > Yup, without 396244692232 this commit makes no sense. That's why I didn't CC
> > stable or add a Fixes tag :(
> 
> I'm wondering if we should add a tag to state "not to be backported",
> to tell auto select to ignore a patch that appears to be a fix.

I'd be in favour of that!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
