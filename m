Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D24221A7EC9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6joi591YwutS13EUCZTjpPX/TYNMOUvpNfDih+NpcSU=; b=QTqPhc9IPy4kCD
	rXRcSFnnY34fLUBwRd+n0xwwOeeJBUL9Frm/9vQdD0c3tyOcA33pFsauMIGwHvYA3rFbcCOsB7K2I
	cizxedJ4hoNz98Cor7OI4lP+MJJCsIODWshcLHpbwvbhBQclHrcBFSpJB3nomv7F9wotRfQqbu5aX
	ukdOEtRIz0KiAhzbgyMFdHcjWwebLYWcPAoCjma55EZXkdnLoFiRGw1sjtvMp1Fgj7h/Uif13kpSm
	E06vMizY7jZUB9lus+6xjF/OZ23wc28Jy5Zm2Soh2gv/voVZ7LjK5m4ZOq9D+gBSYHDXDDy2vzJOx
	8Gzeml2w5EnkDaaOmwrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLxA-0003NU-5a; Tue, 14 Apr 2020 13:50:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLx0-0002Qd-NZ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:50:08 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A0EE20578;
 Tue, 14 Apr 2020 13:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586872206;
 bh=J219MSRXUKPZH2EStCL5siV8XbW4jBEU9sMYg+idjEs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oX+bu2h0Y1hGAhPHf6J3887A1OwNuPr2ZMmG5bn9cVof2u+3AYfQlCGxGAMom7Xds
 bneoXL403uvuGTUNdKfDlw/bqXhuMwn2DHthPPuX7uoRY5wNvewA+pyrXRDz7QBELM
 pjId3Cl1Fkk8EsapDeQJuF7dwtHeHWvm6coJpPak=
Date: Tue, 14 Apr 2020 21:49:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Igor Opaniuk <igor.opaniuk@gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: fsl: add nxp based toradex
 colibri bindings
Message-ID: <20200414134956.GF30676@dragon>
References: <20200316143345.30823-1-igor.opaniuk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316143345.30823-1-igor.opaniuk@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_065006_801350_1209D64E 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>, Robert Jones <rjones@gateworks.com>,
 Rob Herring <robh+dt@kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Andreas Kemnade <andreas@kemnade.info>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 04:33:44PM +0200, Igor Opaniuk wrote:
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> Document Colibri iMX6S/DL V1.1x re-design devicetree binding.
> 
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
