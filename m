Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEC2138E54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:57:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q05lCrqfPneGCt6Bcr13uPqCDT8EpkeUTBub2pjAxj4=; b=czyZAxvvnJRwcw
	QYfhHoDZoEcyOUAJeQFXkLeScyS6PC8r631eusdrraABNEc6cZTBLvhfPMyt/cRWylrZWcGp8ermL
	vQGH9IXY2KCt04INbJSILG2WRbI2Ym+wpGOB/j07D5Nd6xRqlJtB/YyM7V1j2kTwITd2HPryjM8Rp
	sFB8AV3DabrT8ZJB6dZqYJKoZsriVU/VLlG9dzW/Rj9JYh4DFdCBncXDWGR1QWsM5H6HKjpJPR1yz
	PIsPsQm7iomXKtDTysJU3gkfEy07tPQmmbt4Z9BT1iip9uaD464Wry2X1wrV0vw1eB8jvAGUfIF4N
	QHY50Lf4Gwe4NO9cje5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwTW-0007eH-8G; Mon, 13 Jan 2020 09:57:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwTM-0007dP-DE; Mon, 13 Jan 2020 09:57:25 +0000
Received: from wf0253.dip.tu-dresden.de ([141.76.180.253] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1iqwTL-0002BQ-3R; Mon, 13 Jan 2020 10:57:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add GPU cooling device for RK3399
Date: Mon, 13 Jan 2020 10:57:22 +0100
Message-ID: <2721205.SfLTEEbdde@phil>
In-Reply-To: <cb905e17526d846d6d35fb86fbd3c8ba4af4cdaf.1574974673.git.robin.murphy@arm.com>
References: <cb905e17526d846d6d35fb86fbd3c8ba4af4cdaf.1574974673.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_015724_596102_5E0850B1 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 28. November 2019, 21:59:27 CET schrieb Robin Murphy:
> As for RK3288, now that we have a binding for the GPU we can
> hook up the missing cooling device for the thermal zone.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

applied for 5.6
(and already in arm-soc)

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
