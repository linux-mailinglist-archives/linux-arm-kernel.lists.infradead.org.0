Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 068A817E36C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 16:21:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=UMDTqnx+10xPeDPSs/fvKBO6uqGfMywHZABGBpQi6Mc=; b=Nbawhr93RpEjDm
	WYl/SYljDUzro8nhUUM/eLW8pAWLO+0YkX1BZuNzu3KYvtmqcGW9+90EHPwXG84ixFMEi+VEgLq4g
	ajFALnmOU+QjYqEd55mFYexwYwo9RWwcAQHQ5XJm8PA8Tr3ncwyAKNLWX29XtLrjF6kXPu/ji7zAE
	J4ME3eYOk0ZXZdMc6tGXtYEx13GtqmwcgcRXw2rplQixevpRPEGJFHe/pH20o9kDRpVzyTbWWN5h3
	R9u0mtvRWbZUs8VkBdpdJL0NbHvr9DwVJUl+3o9ksdMCckgwSFIpdIj9vVGecPqf1sj+aVq8oLLXC
	u9ElXt6DryNRxvhg8s2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBKDH-0003eQ-4m; Mon, 09 Mar 2020 15:21:03 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBKD8-0003dl-44; Mon, 09 Mar 2020 15:20:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0FE2AAD2B;
 Mon,  9 Mar 2020 15:20:52 +0000 (UTC)
In-Reply-To: <20200304132437.20164-1-nsaenzjulienne@suse.de>
Date: Mon, 09 Mar 2020 16:20:33 +0100
Subject: Re: [PATCH v2] ARM: dts: bcm2711: Move emmc2 into its own bus
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>, "Rob Herring"
 <robh+dt@kernel.org>
Message-Id: <C16EMMYP9HNH.163772OHL9QL4@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_082054_308891_E8FD1EF6 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed Mar 4, 2020 at 3:24 PM PST, Nicolas Saenz Julienne wrote:
> Depending on bcm2711's revision its emmc2 controller might have
> different DMA constraints. Raspberry Pi 4's firmware will take care of
> updating those, but only if a certain alias is found in the device tree.
> So, move emmc2 into its own bus, so as not to pollute other devices with
> dma-ranges changes and create the emmc2bus alias.
>
> Based in Phil ELwell's downstream implementation.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---

Applied to for-next

Regards,
Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
