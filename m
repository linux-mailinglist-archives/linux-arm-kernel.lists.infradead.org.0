Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911A51BB787
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 09:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJhq25mohUldYtlFqXSMWZ0Ln7HZFMvU5THXIU/IMYE=; b=XoXDffjE2i9P3s
	kK21xB3hjJ867sjHoXS3VaRfkY15IvvHwtT5o26FcRLgxTPPIS+GQ6ThVdlIrtOF0WNKNIcoBNXLV
	/jXUiss7CUDTHJUvIf94Iz+/zHpSK9iYenmHzG4+sltCS5ZSo562vPY9tURXcDuEgclYOxXwOEHT5
	POsr0q5sOf7e4WwtfYCk1QZZ5jFUX/BJ4SjqD57hJ/PfF9vavK62OogY/flVtdZRFu38QiGOSX+up
	M7XY88cJt0KjxiRhzXuygYjOUNJ+xJYuHQf/ZNXHcCdB5Px0YA5BXRcE2Zi63To+zStTUrssAMPEf
	Hi4b0w+hamXMjiXYfayg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTKhb-0003n0-Ux; Tue, 28 Apr 2020 07:30:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKhQ-0003lr-8G
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 07:30:37 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F5F9206B8;
 Tue, 28 Apr 2020 07:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588059028;
 bh=lt9Ss7Lhe+IkC8Wr+elmsXdyPZ1tUoSwVIeuzTfvlPI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c6A8DxJ/RoQ17XqK/nqiSkerPTPQmw6Q19eWiaBtJoYrWK5cf0NcSCPT0lp0iP1ni
 LOSdbhwMjadscRqRsNMLioRlN3tPMopECuN7vC1vojtpvHXvP7uxAGVAAbRiN87SKv
 0jxKOQ6qU5+1Xt469H/nO5ul9F0xUTgKPWijGGTk=
Date: Tue, 28 Apr 2020 08:30:24 +0100
From: Will Deacon <will@kernel.org>
To: Oliver Graute <oliver.graute@kococonnector.com>
Subject: Re: arm64: imx8qm: tlb SW workaround for IMX8QM
Message-ID: <20200428073023.GB4049@willie-the-truck>
References: <20200427082348.GA98329@archlinux.localdomain>
 <20200427130328.GA101181@archlinux.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427130328.GA101181@archlinux.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_003036_318621_961E669F 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aisheng.dong@nxp.com, anson.huang@nxp.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, oliver.graute@gmail.com, linux-imx@nxp.com,
 jason.hui.liu@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 03:03:28PM +0200, Oliver Graute wrote:
> On 27/04/20, Oliver Graute wrote:
> > Hello,
> > 
> > is this nxp software workaround already proposed to linux community? can
> > someone point me to the discussion if available.
> > 
> > https://source.codeaurora.org/external/imx/linux-imx/commit/?h=3Dimx_5.4.3_=
> > 2.0.0&id=3D593bea4e36d8c8a4fd65ef4f07fb8144dab2de1c
> 
> sry for the broken link. Here the right one:
> 
> https://source.codeaurora.org/external/imx/linux-imx/commit/?h=imx_5.4.3_2.0.0&id=593bea4e36d8c8a4fd65ef4f07fb8144dab2de1c

Hey, if we're trading links then it should be fixed by:

https://www.hobbytronics.co.uk/jumper-kit-140

Unfortunately, I don't think there's a gift-wrap option for the hardware
folks ;)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
