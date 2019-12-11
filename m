Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2842C11A698
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:16:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKCzYyP+zNbyMhJeJKEMJQrdHiyBOGP+pMsop2tZhKY=; b=i8qLAiTk24cuZN
	ES9V/hXzcpEhR2LPElGwOFZou/sNf4tbk52FDNVU8xl71dYQalf+MY/6XxlpA3ZEnI26qbxasQiG+
	Zip19I+4sPMPsvJshBiWhKRbEg3CEqrI1A5DiBsr8VfbGH+dv1Vssz7dIQcOZ24SJboj+EiwVjasC
	dk/bELzbO6tff6BMTuEfdIwqHtI3Ihdbb4vWq0pWBa//Jo4Ovd+BRG9SIUxUgjUusLtsGn0npIggJ
	d0BRkeyBJ9jG7gD2ngwx3FvvNNRLI1Lf92Wi6tgh3uTAHb+MoJ35IoCKiwWCBjZos9eJOiwX52ka/
	rAoFycUu1aXvZP5IxzmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iey6y-0003Ew-Uk; Wed, 11 Dec 2019 09:16:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iey6q-0003EE-JH
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:16:41 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3CE58214AF;
 Wed, 11 Dec 2019 09:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576055800;
 bh=kOERCDjA00aG8Ioga+ne2Tj7EeKJabiHflhZVyi4e10=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QCuTKGDstLhwyH6nYr4xaDdAtGMJHSs3zygvBjfCESAPG1VH0oEh7xCT0xUFent04
 ltKTQTEWfkcdZe+a0Gbcc0ETgWEbaKXazF5vaTslmStBrW1KcQwlpVoCf8B0KB3+rG
 6lYgkRrsYWCvoJBn3dGPb8m8gq+Ax4WVPFC42sPM=
Date: Wed, 11 Dec 2019 17:16:30 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v2 1/5] arm64: dts: ls1028a: fix typo in TMU calibration
 data
Message-ID: <20191211091630.GV15858@dragon>
References: <20191209234350.18994-1-michael@walle.cc>
 <20191209234350.18994-2-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209234350.18994-2-michael@walle.cc>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_011640_660006_A0B17BB1 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yuantian Tang <andy.tang@nxp.com>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 12:43:46AM +0100, Michael Walle wrote:
> The temperature sensor may jump backwards because there is a wrong
> calibration value. Both values have to be monotonically increasing.
> Fix it.
> 
> This was tested on a custom board.
> 
> Fixes: 571cebfe8e2b ("arm64: dts: ls1028a: Add Thermal Monitor Unit node")
> Signed-off-by: Michael Walle <michael@walle.cc>
> Acked-by: Tang Yuantian <andy.tang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
