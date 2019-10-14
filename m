Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBDCD5AE3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 07:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INbcWVo3V4pXUEqgTqqqQl4pzWE17MD52XGt3HN2ob8=; b=mmBqFiPz3ZCiJl
	QQn2Eo2dISoAYkhIzfomvdm9lrc/Nw9L5qIAZy89xtPM9Jhrwx8KKS3STUNEOYENiti4R7RT7eWzu
	IrDLigD5TlLhz2+0+Rhh/FviRauYOB8l46w+/ohmhzYlO2U5RqowcXlfv+DsmtgkNZYmKXJnBb1DJ
	0hh1+KLYWk2GWr90fzsqRyCdcbsVpemj1weZIrJ+lSPGyY1me5TuPxvNZQB4VSvw+ccsyi11bxCwA
	FXLQtLIB4oONH6yG4mWSux7kZ6NKlWnx4YwV9V4X+RyMnNgqd9NGioLTEBkXZvoMjz/twVcs3CIUB
	Sx7D1NipvER9iaFeUYXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJtA0-0001n4-F0; Mon, 14 Oct 2019 05:44:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJt9l-0001md-2e
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 05:44:34 +0000
Received: from dragon (unknown [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFE4920873;
 Mon, 14 Oct 2019 05:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571031872;
 bh=vsklJ1aQIJVTHMMlcpWk6UVcFsa6nZxkigPpSNGLoPs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EJTlJ0ei+XSYfi5w86FMeEP3FwZCWIEK5XG4Ck1AExRX6QwB/c3Hc7gHcWNj6xiVa
 pHMnADLsucAoI2OFlRqUXAp7gQAwZvb9iOTeTYdhEaKjjilBQ1MSEv4TfKcwliYmHA
 Y9nK1KBOlZ7b8Mijykl/9WIxip19yWORiwlIaQyQ=
Date: Mon, 14 Oct 2019 13:44:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ran Wang <ran.wang_1@nxp.com>
Subject: Re: [PATCH] arm64: dts: lx2160a: Correct CPU core idle state name
Message-ID: <20191014054416.GA12262@dragon>
References: <20190917073357.5895-1-ran.wang_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917073357.5895-1-ran.wang_1@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_224433_142659_CA4ACD6C 
X-CRM114-Status: UNSURE (   7.67  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 03:33:56PM +0800, Ran Wang wrote:
> lx2160a support PW15 but not PW20, correct name to avoid confusing.
> 
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
