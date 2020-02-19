Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EEF1639EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 03:18:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Kx91YfnNxjJbaClviD9uzrj21B9X3FN44aeaSWEsOg=; b=RjPP83g4v/Lh9f
	KpLwMMNvy1hvtrb43ZkH4y8vxZVbH1jWGEOHpYoZJo4Bu06Lq6DUC2jrH8/D3iDHEFz+u+iy4xa7W
	hzj1R/gKAYeBa/mfUuktSa/NFi9LM8CsLQ9vh+flIZHie4qiwZcE/FXbDby859UaC4L+GP1oGjddW
	tBVQURh0v+OqYxO1y2R0yAL+qhCp6i3dtBEmNfjsfrPd8CXzCFayu9T4AjBkG3vEiq+c3idLsMWv/
	c5rfqhtC6mBpLeSjQG8FDcWVUsTFlRxgpYdL/dulwXicmP/l6RX2KF6C8hgnrFFoLrMdmRlEPIzBq
	uq3DtY1w58kVzjDHsa6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4EwH-0008QQ-J4; Wed, 19 Feb 2020 02:18:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4EwA-0008Q6-EJ
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 02:18:07 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EB64207FD;
 Wed, 19 Feb 2020 02:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582078686;
 bh=JA4nav9WNgI9FlwXSrYprZ3MJTcNklbbd74cAeesTao=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QjLa7jpibMwkMEZ6dsZGF21NFvuYGCVjsrB8PBrCOAj/dDBYiyaWwGdW6gBOMIq5x
 ktRpjjgUdQLoHyt1Y8sRZQpMYc+U4CXlMJvGxb/nDV7qojG/5MuI/hovXfnabCdEud
 DfCG106ea/qZCPjks7o7iuyUq4uad3EiNrszs87Y=
Date: Wed, 19 Feb 2020 10:17:59 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v2 2/2] arm64: dts: ls1028a: add missing SPI nodes
Message-ID: <20200219021758.GJ6075@dragon>
References: <20200218171418.18297-1-michael@walle.cc>
 <20200218171418.18297-2-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218171418.18297-2-michael@walle.cc>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_181806_499541_3F61C1D6 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 06:14:18PM +0100, Michael Walle wrote:
> The LS1028A has three (dual) SPI controller. These are compatible with
> the ones from the LS1021A. Add the nodes.
> 
> The third controller was tested on a custom board.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>

Applied this version, instead.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
