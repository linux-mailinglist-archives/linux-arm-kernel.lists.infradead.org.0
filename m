Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6F74B387
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 10:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7VYSLcOtaW76flNNRxvZBvv0RNgYLNKhzxOX+HBsICA=; b=rxX78lcTxxLK9D
	y+ePVp/Bw9nbzd8t6GJ1mmIxAuXS0JvoPj8W6Bfo8hBbNoMzQzMdV0V9GMOD+6v9SnaAsFROQpFZK
	o6KQrq2APEV5Y1g84lLLtggpbDejJSJG2O67zydMbmB2oGVtCVri5dhkn1vJpauV2UazytLAHs42G
	qz9xZ1U5MyjRneMKSGccR/z6mR+SQAQopUZ5omUKkHthsnevjmpreENFWeBjVLq0CAMlaR8c3oGrF
	2bGDBrIJrIvAZnniI0bJG3CT01RS416rjiAB4UkIIE3PV36mK2zZUeD1mMsswgccYxj7FxNWi2dla
	e4EKw+j4SYkxyOrynBWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdVZn-0001Ss-GS; Wed, 19 Jun 2019 08:04:15 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdVZe-0001SE-74
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 08:04:08 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 4498F634C7B;
 Wed, 19 Jun 2019 11:03:24 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.89)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hdVYy-0000zL-A5; Wed, 19 Jun 2019 11:03:24 +0300
Date: Wed, 19 Jun 2019 11:03:24 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH] media: atmel: atmel-isc: fix i386 build error
Message-ID: <20190619080324.nc33gtuxzwpailmy@valkosipuli.retiisi.org.uk>
References: <1560928828-31471-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560928828-31471-1-git-send-email-eugen.hristev@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_010406_438975_F280007E 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: hverkuil@xs4all.nl, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eugen,

On Wed, Jun 19, 2019 at 07:24:41AM +0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> ld: drivers/media/platform/atmel/atmel-isc-base.o:(.bss+0x0): multiple definition of `debug'; arch/x86/entry/entry_32.o:(.entry.text+0x21ac): first defined here
> 
> Changed module parameters to static.
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
> 
> Hello Hans,
> 
> Sorry for this, it looks like i386 has a stray weird 'debug' symbol which
> causes an error.
> I changed the module parameters of the atmel-isc to 'static' but now they
> cannot be accessed in the other module files.
> Will have to create a get function to be used in the other files if needed
> later. Any other way to make a symbol static to current module and not
> current file ? It would be useful for other config variables as well.
> I was not sure if you want to squash this over the faulty patch or add it
> as a separate patch.

Please consider using dev_dbg() instead of a driver specific parameter for
debug.

For the patch:

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
