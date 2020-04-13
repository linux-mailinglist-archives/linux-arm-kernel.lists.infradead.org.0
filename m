Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3641A673B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 15:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ex9xNRlW94MXFcA4ruUVkizqTNi1RCL2v1tYNDTO2h0=; b=qfvSRRsfnbeyTc
	KB/FiE8fHEsXHvL7E89DqaSGrFarB/annrdBPOiT0BDQ+MsJj/4JoXAz0kgQfi/rJ21LRCqun2arm
	gPd6B4Tf5jD6BX840S+6UWft/Hqti/RL8hJef1UoJqpcvOKc1fzHZTGSjL9RPx4Xbh1v5Ns6igDy5
	tE8UdO7EZ3BtmW4dYDv8XYQWODT9ZJdT8v1wIKonCg4ZgqXQxoYETi3frvRfvdyLt75aHDO7u69xk
	66GnvsFPCjuAmDRIZ99kNpRREp6Sx7ZpOhbOkrPagaC2E4/syZeEqjGvA3vCcZ4m9c5rfSE5yfOaf
	pHmL1WStK+z7HMEoCCeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNzJG-0007fT-8A; Mon, 13 Apr 2020 13:39:34 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jNzJ8-0007f9-NS; Mon, 13 Apr 2020 13:39:26 +0000
Date: Mon, 13 Apr 2020 06:39:26 -0700
From: 'Christoph Hellwig' <hch@infradead.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v5 4/5] scsi: ufs-exynos: add UFS host support for Exynos
 SoCs
Message-ID: <20200413133926.GA29228@infradead.org>
References: <20200412073159.37747-1-alim.akhtar@samsung.com>
 <CGME20200412074218epcas5p3ef7973c8a47533a15a359b069da8003c@epcas5p3.samsung.com>
 <20200412073159.37747-5-alim.akhtar@samsung.com>
 <20200412080947.GA6524@infradead.org>
 <000001d610e6$e8b11450$ba133cf0$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000001d610e6$e8b11450$ba133cf0$@samsung.com>
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, 'Christoph Hellwig' <hch@infradead.org>,
 avri.altman@wdc.com, cang@codeaurora.org, linux-arm-kernel@lists.infradead.org,
 stanley.chu@mediatek.com, 'Seungwon Jeon' <essuuj@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 12, 2020 at 09:54:53PM +0530, Alim Akhtar wrote:
> > So this doesn't actually require the various removed or not added quirks
> after
> > all?
> This driver is actual consumer of those quirks, so those are still needed.
> On Martin's 5.7/scsi-queue need to revert " 492001990f64 scsi: ufshcd:
> remove unused quirks"

No. You need to include one patch per quirk in your series to add them
back.  Please also follow all proper kernel style guidelines, as the
old code didn't always follow the proper style.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
