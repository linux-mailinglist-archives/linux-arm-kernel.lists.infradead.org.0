Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A62E1905BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 07:29:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4NPljs0AwWuxMQJ2KOOGQr1UO7MOTMOSfCzyk7WFRq8=; b=Mdvczz/97M3TtT
	Z8v32HxOcNscPe7iYS5mz3xvByBIOp80x0PA53R2sfDTAvtad+pY5hfJdYZ0DFpC0hmEq8sQGRZL4
	lVDJVKLOePwaE2InBxZcONCH5kUf2CFkFIJpFJ409LCIPLBPxl+gdcvMDfCLG89zxDGUg0Us75Bne
	vLbe15nQNqxuZr0D8h+mZsDXClnnmWt7HC7mMzEORqGW6TvqWmDjUtFnjKWMh96loW5EN1++QIp94
	DC7X6Y18/nsO6IvuRZN7ngE+zGdt4qNn9jNx47rrEq5XyKzliFWFl3eHKMUNOFLBtI4NpaQ4PuI5n
	qvpmAoVAiDaP5SxqTXfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGd3j-0005hZ-0W; Tue, 24 Mar 2020 06:29:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGd3Z-0005gz-8A
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 06:28:58 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8597820663;
 Tue, 24 Mar 2020 06:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585031336;
 bh=QXnZDI5i54nlP9QF18vP1OcNbhYUp6bbcas64dls10w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u3rPCmFCYMNcFFoItsXZ1KUwNaD8tLa+PdkbHJKkOV+ddwKoY18kRUINpBbhW/ISl
 E3AzpcFkEWRa+PhPYD/y3eLdxUcYi1fHqLLItvVkx1TJtCpzWWNn5aWlhNAWmspXaV
 tSNOFKKHcnWruNLDgCtldVvr/dUrKJkeXBKu3fWs=
Date: Tue, 24 Mar 2020 07:28:53 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Eugene Syromiatnikov <esyr@redhat.com>
Subject: Re: [PATCH] coresight: do not use the BIT() macro in the UAPI header
Message-ID: <20200324062853.GD1977781@kroah.com>
References: <20200324042213.GA10452@asgard.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324042213.GA10452@asgard.redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_232857_312594_ECCF922B 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Michael Williams <michael.williams@arm.com>, linux-kernel@vger.kernel.org,
 Chunyan Zhang <zhang.chunyan@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Dmitry V. Levin" <ldv@altlinux.org>, Pratik Patel <pratikp@codeaurora.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 05:22:13AM +0100, Eugene Syromiatnikov wrote:
> The BIT() macro definition is not available for the UAPI headers
> (moreover, it can be defined differently in the user space); replace
> its usage with the _BITUL() macro that is defined in <linux/const.h>.

Why is somehow _BITUL() ok to use here instead?

Just open-code it, I didn't think we could use any BIT()-like macros in
uapi .h files.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
