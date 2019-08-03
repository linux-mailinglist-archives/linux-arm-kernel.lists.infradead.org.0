Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE3D80634
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 14:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/vlDBjalK4GY45fpY+bznagkMkKhM0WMsb5K4SVBCU=; b=Hji64ERmYoI2mm
	O+mLmmtjPH8lUbEY5b3suP+FgmlrqslQKiROg9hQNKn7zkPDLhcnQwsENMOS/7pQuJtOZJdv68ewX
	UGBvCMxyigrWjgmSWwii9ckj1SjKNI1bCrDp185UA8injP/qbyKuKkmZHfPB8Pn/w3mOxyrBEdQ9N
	v3H92D5clClwKMuBuyLjWhocq0bSOQfA0s/AU/ngOiTCeUnHLLRuGUHna6NplIT6uepGMs2ugBnyF
	8B/w1bMQ/bRDsXk4xaDBf6yuzsOQzE+pdBStez0a5/1RlUfJUY+NyW/l4feWfqQGfyhUv0e3teCJs
	Y4s4I/RKc1AAchDRHupw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1httS6-0004Th-Pk; Sat, 03 Aug 2019 12:48:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1httRv-0004TO-37
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 12:47:52 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E39D2075C;
 Sat,  3 Aug 2019 12:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564836470;
 bh=pllsLfxNUy9pQVHRymID+Y11h3C59hCyercFPr/4xbU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=timv9BqKhr0tO7pNzECe9oJCJ4S7EMwfXGIkHPIcPq00U2YNoYeufMeejgCpHb5lh
 pw+F/ltzc63vP6Xs+Seo60M0eiZAD5W6NrQAdR8cVT/SrF3m26762soLfFMEumpF0o
 A8j2uecTu/LE7BO8yiSk/Iq+1kus/s8clpfHk6EA=
Date: Sat, 3 Aug 2019 14:47:45 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-nit6xlite: Remove invalid properties
Message-ID: <20190803124743.GK8870@X250.getinternet.no>
References: <20190725134412.7872-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725134412.7872-1-festevam@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_054751_159355_93CEBA95 
X-CRM114-Status: UNSURE (   8.01  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gary.bisson@boundarydevices.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 10:44:12AM -0300, Fabio Estevam wrote:
> The "vqmmc-1-8-v" and "ocr-limit" properties are not documented
> anywhere, so just remove them.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
