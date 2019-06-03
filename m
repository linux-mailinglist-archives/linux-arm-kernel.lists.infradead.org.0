Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0456B32CEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 11:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+NodQxJtex3hWWFv1twB7IbmVFLo6U4yvFNkI50zlI=; b=eLMnTWnuDeZ7J/
	I+DTSNjqkCw3N1UP5NgEkjcKy65ocWcKeh4gQME3exqjiOZJeXTBZ581Rbskl9CXlPc/6JOnPsiG5
	eCevT+RXYUzAnqClxQGgyLn3wNgGUvq0XzoFKq2Hkv3kflf7JBcOt8fgR6LDS5924IjHwoyuOBo62
	XscP1or0l4GKSD+wUxJyRiksGwLXYI8Vd+rI99GJHEYyRyfx6hBrExzbM02AiKWIfx2TAyWN62pjY
	etA1X/BTq5lFwetIR2wbHAwgOZqc0OIIy+H2HD7lfd9tFFU5OD9XPpUWF3hMQS4/k18RaDy0KbaPF
	yaKO0UCRhq5+B1Y5fn6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjK1-0001qU-EG; Mon, 03 Jun 2019 09:32:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjJv-0001p3-B2
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 09:32:00 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D67228006;
 Mon,  3 Jun 2019 09:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559554317;
 bh=EMN8Iq59ijXBnEHjrjBo+85LTiDDMfUpO35bS9zD+hA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S+FM+LyaDtTO9EKGzJuxtIkNDUabPe0tJvMKkEUDdOe4Nm5SoFmNliu7cmoDPRXir
 BA/Txj7hGqIEzAhO2Vat8/5P2GGHHms8+HAX/bFc1mkNgNF7HtZUIhQVnf8ugoMxSB
 ek+G0XoWMjgCmdTS8UASEtCUMf3ulub46wFJdFgY=
Date: Mon, 3 Jun 2019 11:31:54 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH v4 1/2] drivers: base: cacheinfo: Add variable to record
 max cache line size
Message-ID: <20190603093154.GA29175@kroah.com>
References: <1559009814-17004-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559009814-17004-1-git-send-email-zhangshaokun@hisilicon.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_023159_402637_9B33322C 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Jeremy Linton <jeremy.linton@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 10:16:53AM +0800, Shaokun Zhang wrote:
> Add coherency_max_size variable to record the maximum cache line size
> for different cache levels. If it is available, we will synchronize
> it as cache line size, otherwise we will use CTR_EL0.CWG reporting
> in cache_line_size() for arm64.
> 
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Jeremy Linton <jeremy.linton@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
