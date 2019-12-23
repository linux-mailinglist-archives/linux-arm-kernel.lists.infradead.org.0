Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 050441291F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 07:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bf+pTvht17QJknfwIyIRC/PsC86NtYp3caHx5JYGqKg=; b=f2ZfHr9IQ80Cjn
	UpdUWJvEd9wXJD4VWtjCLQ0R4HLqGJGh2VH/0an9/RrXu/lzgXHzoOf/Bkt2mSbGfBmUVX5FraeD3
	hA6IiFDqkIQTn5XYiA3MGBxjwRoyjtoRLcj+Y+3rNaI6nsOkLfSG+cRHniC9j+5JJHgz4zSdRjegY
	75p3WUE1TkO/i6kTbDjvViZSChGwJxb8IKeNWWMJpMyC4S2by8IUc2DAHxEHGBNg/N9ppwyJ7wkLi
	eriMBUPtNGNmWgAGIl7ae+vXC5tXJII/apVsI2QmwJlIxCqtd4mJnOBrXzR0dbGqZgAqTQcv2G9DW
	/c7DI64lnT3FJQKk3IIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijHJF-0002t8-9r; Mon, 23 Dec 2019 06:35:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijHIx-0002n4-NQ
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 06:35:00 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 212CE206B7;
 Mon, 23 Dec 2019 06:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577082899;
 bh=aifSwT+U001Tz3mMLZeIPRYImgdEpSnQcl6GRyY93G0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=efuDH9mMieMlJxEhmlramS97GV2GsH7iKIAKFsJ2/alazix2bloyp7RP4bb6FJbHm
 jBxfuPbk9zd6TAdphAkmFkyJ8K87rPUUZyj9hRJTUuYdN2K9pwF+Z1yNF3u7LoWWGC
 UnEdZfKwLzCv2pwEZhEIRrR00tTGK/KttrMNUG6Y=
Date: Mon, 23 Dec 2019 14:34:39 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] ARM: dts: imx6q-dhcom: fix rtc compatible
Message-ID: <20191223063437.GM11523@dragon>
References: <20191212230814.66663-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212230814.66663-1-alexandre.belloni@bootlin.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_223459_783202_499706C8 
X-CRM114-Status: UNSURE (   8.35  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Ludwig Zenz <lzenz@dh-electronics.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 12:08:14AM +0100, Alexandre Belloni wrote:
> The only correct and documented compatible string for the rv3029 is
> microcrystal,rv3029. Fix it up.
> 
> Fixes: 52c7a088badd ("ARM: dts: imx6q: Add support for the DHCOM iMX6 SoM and PDK2")
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
