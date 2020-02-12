Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30F915AAA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 15:02:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/JuialAJhfQq81SQL3slszzVzrpdlXL2N58s0hkVJk=; b=dKEe4LrmftxULJ
	I/03pA5UsOC2mBp+eVaLONyViWKz9nnp2xq9hd2xTj7SwujfXyjdK6+DjCHaRJ+sNOaaUN0qK9tJD
	gFMEnkS5cAVsNkq9dSVSRfxWcNp5QXbhfoaQa1uO16ibLz5iA0qHHzvAQ5c6FGIV2EO7bW/PMEZvv
	eNILLcnU+FLQYCr6EVkfRGwAEUfuqecQ1qryBTZK/OUsb6WxuhSy81kEVPE51/2XRpnhtXJYuPfOf
	70lS3KYaV1XxvtRmRb7icJvsYp6xDH78crDLQ+gRipSuHJ4FuG6NvbDhtuugRR64RuDjXGns9DghT
	JkRAvum4wxegax5Yjb3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1saY-00066K-Dg; Wed, 12 Feb 2020 14:02:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1saM-00065l-L3
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 14:01:51 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48D3320724;
 Wed, 12 Feb 2020 14:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581516110;
 bh=Vl9oWFtrvRnj/ynpV0yaxfYSghDQP0TDSGdD9cWeP2w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R2lPdg74T8JyrWqBSmco28KW6WbKaFCw05f9VCD9YwUwVSkWPsHQDc6fi29AybgX+
 6t+oa/ZewL3YmPHruoS5TVRwLUC/WKQf01xseZTMKLSh3M7B8NLmQqyWt9pVYts01w
 7k1akI/vTDSjxKwnCSVnwA/ockHQD76qFEruUf/w=
Date: Wed, 12 Feb 2020 22:01:44 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [PATCH 0/5] Voltage monitor on ZII's VF610 boards
Message-ID: <20200212140142.GH11096@dragon>
References: <20200114151906.25491-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114151906.25491-1-andrew.smirnov@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_060150_706587_ADCA2BD0 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 07:19:01AM -0800, Andrey Smirnov wrote:
> Everyone:
> 
> This series configures voltage supply rail monitoring on all
> applicable ZII VF610 boards. Should be pretty straightforward, but let
> me know if any changes are necessary.
> 
> Thanks,
> Andrey Smirnov
> 
> Andrey Smirnov (5):
>   ARM: dts: vf610-zii-ssmb-spu3: Add voltage monitor DT node
>   ARM: dts: vf610-zii-ssmb-dtu: Add voltage monitor DT node
>   ARM: dts: vf610-zii-spb4: Add voltage monitor DT node
>   ARM: dts: vf610-zii-dev: Add voltage monitor DT node
>   ARM: dts: vf610-zii-cfu1: Add voltage monitor DT node

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
