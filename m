Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F3F16A5A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 12:59:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4h6RfGrXucsxjhoDoG0+dqDw+GHdnwPAjh72sTts3tM=; b=sMTPHm/hWLursj
	+62NZkHlXaV40eqspF8nyovCtjb5CS5iR/Xm3TWluihbu1l/0Q3F/9gnydKgqt5mWBk8lxMVubt/+
	5FyFL9xDxSJ5t/VHUAOm7eo97qvuabnuulhLM5+C8GLet03RCibTEEdWapTWy3Y9DauTNTAz+qstP
	dwUjtcOUrbaFB+XB4ie/lOFgAjbOpVwD0jKStNhONJH+PZsxzyln2w18+C8IsUVYM5C6LrTytFXoQ
	5S+3PQ57AyVfVeg+inItsR1p9UZsvCtaRGBJZKss2d8BKy6nfHb5+seiGI3XeGnk8x1k4LMN1qAFk
	i9SEc2YMQr2sK7hH+iWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6COG-0006tJ-CW; Mon, 24 Feb 2020 11:59:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CO6-0006sp-SF
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 11:59:04 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B914D20828;
 Mon, 24 Feb 2020 11:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582545542;
 bh=527/P0PCxAx1P3oVPckFcLKVR2UnWZl2M0CPxqoBIk8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GSTFUuC4JnlbirXZ+HGrAkvpP4DjdiSDsPM/8vaNQ/PdHplKpt7o8SMDP5X+QAGDZ
 XphGKVbFzlZ5C7s1+3sNbaMLp+VUtyJuONxTUP57vTEcx6ETyWOG3/n1GH4nNwOo6K
 eMFJVma+cPkZWrzifs/dc/QW0e3OmBlFzwoKoLWQ=
Date: Mon, 24 Feb 2020 19:58:55 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH] arm64: dts: ls1028: sl28: explicitly enable network ports
Message-ID: <20200224115854.GG27688@dragon>
References: <20200224115052.27328-1-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224115052.27328-1-michael@walle.cc>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_035902_938049_A6CD4857 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Feb 24, 2020 at 12:50:52PM +0100, Michael Walle wrote:
> Since commit b9213899d2b0 ("arm64: dts: ls1028a: disable all enetc ports
> by default") all the network ports are disabled by default. This makes
> sense, but now we have to enable them explicitly in the boards. Do so
> for the sl28 module.
> 
> Since we are at it. Make sure the second port is only enabled for the
> variant 4 of the module. Variant 3 has only one network port.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
