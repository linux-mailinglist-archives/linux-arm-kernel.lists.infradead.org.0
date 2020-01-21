Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AB01437CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 08:41:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DldHr5KGoorVGta9ttKxuF5WwtXkKSd4rJM7TXLJPdU=; b=LVpz/+MExgLqN/
	SXQ+1KiCjuYVrpsjUbUaHZnxCEhg07XeoG8VWzTermYqekNcP6KCHEPgvrvstzZ0Ek7VvimpZH5Bs
	u40CSmuAAaoS1pXCgz65p86VLkEu5iPKuc8cvduasN5oVbQKhoysmqU1SVfHLazHqOMhrBEGUPmpv
	V6HrifG7l9drnOGo3B4rGEp6IjiOK2Q0562b0LcCFi7EwbS1BE1ym1R25Oz7L8UxMmc5FdZmDqTiz
	RVjKA3xEElJy5cRESrMcegq7md1THSDEzoQ3uZQRpnapJBxcxEzy0xreTqjq/Z41TMQvYgectKqcu
	H1ZJ6w3A3gvthJyAQrIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itoAM-000496-1l; Tue, 21 Jan 2020 07:41:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itoA8-000483-VD
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 07:41:30 +0000
Received: from localhost (unknown [171.76.119.14])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34B2F2253D;
 Tue, 21 Jan 2020 07:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579592483;
 bh=qL0bG8t0a29UEckKmtSr4GhjBXsVZzayHhqiBlD7ISY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P2VPXr5ZvaJzoURnqhDyGmynma/up6Pi6xhYxTPsDAC9Xla4u+SRJEeYyHQgRYvOr
 Yx7LnZO0Lb5KIAo1ZB5T0v6QKhhVDBZU/8BCNcEQxpuWMaerIM8VLSc8FCs9r/Y/fT
 v0sAdCig0VXhDcDzc2GKgwTa59RaStewP2Ho+YSM=
Date: Tue, 21 Jan 2020 13:11:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v8 00/18] dmaengine/soc: Add Texas Instruments UDMA support
Message-ID: <20200121074118.GB2841@vkoul-mobl>
References: <20191223110458.30766-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223110458.30766-1-peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_234125_029427_F73EE9C7 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23-12-19, 13:04, Peter Ujfalusi wrote:
> Hi,
> 
> Vinod, Nishanth, Tero, Santosh: the ti_sci patch in this series was sent
> upstream over a month ago:
> https://lore.kernel.org/lkml/20191025084715.25098-1-peter.ujfalusi@ti.com/
> 
> I'm still waiting on it's fate (Tero has given his r-b).
> The ti_sci patch did not made it to 5.5-rc1, but I included it in the series and
> let the maintainers decide if it can go via DMAengine for 5.6 or to later
> releases (5.6 probably for the ti_sci and 5.7 for the UDMA driver patch).
> 
> Patch 1-11 is the initial DMA support which can be applied as it is.
> Patch 12-13 adds support for j721e tdtype for ti_sci and the UDMAP driver
> Patch 14-15 exports the currently unexported functions:
> 		devm_ti_sci_get_of_resource()
> 		of_msi_get_domain()
> Patch 16-18 makes the ringacc, DMAengine and glue layer buildable as module.
> 
> Changes since v7:
> (https://lore.kernel.org/lkml/20191209094332.4047-1-peter.ujfalusi@ti.com/)

Applied 3-11 after merged tag from Santosh, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
