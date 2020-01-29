Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BE414C713
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 08:52:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i31ZZaltTdRCNLMiTnxTZ2YhrSVSKrUDfYBUhFNoQ+0=; b=sJ5+JcXda5mP5Y
	hklQKmti4v8hVJuNn/WhZbFi9oDAQ4bptPh7LoJYvz9Ae28EYA1MXLQRRqUdic/YKgSBrr9DsLq+5
	P/vjSR0SwnrwZd0GZdPNCxXhPlg3hwVyz9drBM1PPj2yfh2qC7IExecQVu6zd5UsfkRPamlMg514J
	BxtOLX62c4KwbiytQrwKkcbXb792gff0+KmdCvpun46DocLOLJwGGCL6LAdXPlsqhYkPDFwdxBPAq
	s/WWjbsFQHawVWH2FSYJKtrce8iwd3ImXKO/dVdsKgCqnQHJJOI+U7/Cl6Tof94To6Ag9tH2Q0p6a
	ig/sha6fMVX2IIzzGPTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwi9Q-0006um-8r; Wed, 29 Jan 2020 07:52:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwi9F-0006uN-Vp; Wed, 29 Jan 2020 07:52:31 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F142206A2;
 Wed, 29 Jan 2020 07:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580284349;
 bh=E2gB8/IVYfzCG8u8xgT7bImHIwd51ldFMW6eqcDAvb8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zpEMqlQPSjBfOuVeijexexAZ9NASLTff4lkKWYeLMj2eifuhCGX5PwFMaGR4y2CPN
 aNlRnZ8y5WAxFXJQmoS8HZhO5grNJvzsU56p4fNU+DUnOLNCh9A3WQD/SoO3wpnvp9
 VBG3y7lR3zfoDKkVTGQNRu7/EgeGh3GV1ySWfaZs=
Date: Wed, 29 Jan 2020 08:52:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v3 3/4] scsi: ufs: fix Auto-Hibern8 error detection
Message-ID: <20200129075225.GA3774452@kroah.com>
References: <20200129073902.5786-1-stanley.chu@mediatek.com>
 <20200129073902.5786-4-stanley.chu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129073902.5786-4-stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_235230_044163_DEE33094 
X-CRM114-Status: UNSURE (   7.70  )
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, avri.altman@wdc.com, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, asutoshd@codeaurora.org,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 29, 2020 at 03:39:01PM +0800, Stanley Chu wrote:
> Auto-Hibern8 may be disabled by some vendors or sysfs
> in runtime even if Auto-Hibern8 capability is supported
> by host. If Auto-Hibern8 capability is supported by host
> but not actually enabled, Auto-Hibern8 error shall not happen.
> 
> To fix this, provide a way to detect if Auto-Hibern8 is
> actually enabled first, and bypass Auto-Hibern8 disabling
> case in ufshcd_is_auto_hibern8_error().
> 
> Fixes: 8217444 ("scsi: ufs: Add error-handling of Auto-Hibernate")

This should be:
Fixes: 821744403913 ("scsi: ufs: Add error-handling of Auto-Hibernate")

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
