Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AC4E3B1C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 20:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsZmKM/3D4zMX6XZ8cGEsENQTrbo/9laROvA45zqHTA=; b=pzfi/qCyLUXuJo
	kUJZ83eZ7WtJ3kIgW2wJ4vnyMPw6Jc/0d5Te1ne2BSqLOKX1c5S5sO0gixZ7Grl8r7qqYASCX74X+
	BSupXCGt892GERlObzJsFVtnwh0/Z94+2NPK9ge81/IT5lk//XFGY72TirKPdbvbhxNvKl8IrnQkT
	0PYlbDJgXwciuQ5nmZ4b4PPylVC2rID5VkOIDj5nPfEnn8bPTXQmEqUZylwULl72RNzNCX4EoDjHi
	rasmnsfjxTm6LkLEf7Y/mjWto/kKaU6d1ssnAqNL7QiYdLZgE/VvWAgxqm7LZi3jwbn2ppPh0SdQM
	8bOOec2TvAIF3ufCpKjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNi0F-00068b-7V; Thu, 24 Oct 2019 18:38:31 +0000
Received: from baldur.buserror.net ([165.227.176.147])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNi04-00067z-M7
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 18:38:22 +0000
Received: from [2601:449:8480:af0:12bf:48ff:fe84:c9a0]
 by baldur.buserror.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <oss@buserror.net>)
 id 1iNhve-0007jA-Qd; Thu, 24 Oct 2019 13:33:47 -0500
Message-ID: <ef150e9eb155eff410194ba5362ef404ce117c4a.camel@buserror.net>
From: Scott Wood <oss@buserror.net>
To: Ran Wang <ran.wang_1@nxp.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Rob Herring <robh+dt@kernel.org>, Li Yang <leoyang.li@nxp.com>, Mark
 Rutland <mark.rutland@arm.com>,  Pavel Machek <pavel@ucw.cz>
Date: Thu, 24 Oct 2019 13:33:45 -0500
In-Reply-To: <20191021034927.19300-2-ran.wang_1@nxp.com>
References: <20191021034927.19300-1-ran.wang_1@nxp.com>
 <20191021034927.19300-2-ran.wang_1@nxp.com>
Organization: Red Hat
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2601:449:8480:af0:12bf:48ff:fe84:c9a0
X-SA-Exim-Rcpt-To: ran.wang_1@nxp.com, rjw@rjwysocki.net, robh+dt@kernel.org,
 leoyang.li@nxp.com, mark.rutland@arm.com, pavel@ucw.cz, biwen.li@nxp.com,
 len.brown@intel.com, devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: oss@buserror.net
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on baldur.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  -15 BAYES_00 BODY: Bayes spam probability is 0 to 1%
 *      [score: 0.0000]
 * -1.5 GREYLIST_ISWHITE The incoming server has been whitelisted for
 *      this recipient and sender
Subject: Re: [PATCH v7 2/3] Documentation: dt: binding: fsl: Add
 'little-endian' and update Chassis define
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on baldur.buserror.net)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_113820_789034_A444C139 
X-CRM114-Status: GOOD (  13.34  )
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
Cc: Li Biwen <biwen.li@nxp.com>, Len Brown <len.brown@intel.com>,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-10-21 at 11:49 +0800, Ran Wang wrote:
> By default, QorIQ SoC's RCPM register block is Big Endian. But
> there are some exceptions, such as LS1088A and LS2088A, are
> Little Endian. So add this optional property to help identify
> them.
> 
> Actually LS2021A and other Layerscapes won't totally follow Chassis
> 2.1, so separate them from powerpc SoC.

Did you mean LS1021A and "don't" instead of "won't", given the change to the
examples?

> Change in v5:
> 	- Add 'Reviewed-by: Rob Herring <robh@kernel.org>' to commit message.
> 	- Rename property 'fsl,#rcpm-wakeup-cells' to '#fsl,rcpm-wakeup-
> cells'.
> 	please see https://lore.kernel.org/patchwork/patch/1101022/

I'm not sure why Rob considers this the "correct form" -- there are other
examples of the current form, such as ibm,#dma-address-cells and ti,#tlb-
entries, and the current form makes more logical sense (# is part of the
property name, not the vendor).  Oh well.

> Required properites:
>    - reg : Offset and length of the register set of the RCPM block.
> -  - fsl,#rcpm-wakeup-cells : The number of IPPDEXPCR register cells in the
> +  - #fsl,rcpm-wakeup-cells : The number of IPPDEXPCR register cells in the
>  	fsl,rcpm-wakeup property.
>    - compatible : Must contain a chip-specific RCPM block compatible string
>  	and (if applicable) may contain a chassis-version RCPM compatible
> @@ -20,6 +20,7 @@ Required properites:
>  	* "fsl,qoriq-rcpm-1.0": for chassis 1.0 rcpm
>  	* "fsl,qoriq-rcpm-2.0": for chassis 2.0 rcpm
>  	* "fsl,qoriq-rcpm-2.1": for chassis 2.1 rcpm
> +	* "fsl,qoriq-rcpm-2.1+": for chassis 2.1+ rcpm

Is there something actually called "2.1+"?  It looks a bit like an attempt to
claim compatibility with all future versions.  If the former, is it a name
that comes from the hardware side with an intent for it to describe a stable
interface, or are we later going to see a patch changing some by-then-existing 
device trees from "2.1+" to "2.1++" when some new incompatibility is found?

Perhaps it would be better to bind to the specific chip compatibles.

-Scott



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
