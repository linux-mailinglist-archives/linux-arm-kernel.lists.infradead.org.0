Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F7570F41
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 04:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WmVtLcCgQuvXvs4tUu3OYDPqrZDAG4Pee8Lf2SkDKA=; b=a9g5WMF7IBB4bu
	vbq2VsCStuKKADo7W6rj5trOKb2Qu7vflbxA95driMMgs2XqvDb/eDvmPlE4Mwx9+cA+nLptRSZoA
	MANBrkLLcOKpZQUapFS0dIeKRcjEqHGzU9aTWvn1IZ+i9btgQQpUj/OP4m/rFi4FphtaRcU3tmaxz
	KzKW6o5aHq+cUPnzKYW4JmvfdMXppmmPWghw0Me4Szy0TpKOX1VZO7sFuect+QpvXbU4+g34WS5bU
	ev8wKtyZBTIw756Tpd0WMEB9skI5tLEKqSckvft5qTsoBWPjkk22LeLQx0ROpKVPbBU3BwTn/uI1J
	oldab3q6G2XVPVERYJ8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpkq1-0003Ps-5u; Tue, 23 Jul 2019 02:47:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpkpP-0003P1-KU
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 02:47:00 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27EE022387;
 Tue, 23 Jul 2019 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563850018;
 bh=B02LoeW7Qa1LMBUvgIbOHbzfXb4394XW0uY/PVbA/yc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TX18Xtdt61xVRBwQownmhcOuxApSYnUdt7ZcSDqkTYuo0sJqMUAQiw3+fm5lhFZJs
 pmpGgEXcpRRm/tZVHEjJWV7PCItD5X8QNZAO/9HD+4lNYo7H5hD1aJWKt+PnGlVoqU
 9IcRDcmA6MvbQqDFC/nFHjTzkb+V2I99rnkSaClQ=
Date: Tue, 23 Jul 2019 10:46:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: fugang.duan@nxp.com
Subject: Re: [PATCH RESEND 1/1] dt-bindings: serial: lpuart: add the clock
 requirement for imx8qxp
Message-ID: <20190723024627.GH3738@dragon>
References: <20190704134355.2402-1-fugang.duan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704134355.2402-1-fugang.duan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_194659_699114_C8AC7FB0 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, daniel.baluta@gmail.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 09:43:55PM +0800, fugang.duan@nxp.com wrote:
> From: Fugang Duan <fugang.duan@nxp.com>
> 
> Add the baud clock requirement for imx8qxp.
> 
> Signed-off-by: Fugang Duan <fugang.duan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
