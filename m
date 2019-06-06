Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE9536A25
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 04:48:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVGdDI5fZIPgtwRY10SxWxttmivfRvZqNzVEmwCEM0Y=; b=MY5zjyq12uby+D
	loI/DxoCSdRBeqgI+yZuXX6srzw4JtvStzM3ZWElMeG/7jwJFHaDaxzUkJOQ72C3cNai+GjGDu1Zy
	XdCYqzdQfJPAiJ9mOobp8OfyG3p44rISNZu7aznIyjx2xlibElqBq5mrEZYi1jlh4e5ZxS3msHqkN
	xyEaGAJDvRnJGtZJHYQSwUVZFj5JqFBCZNc/YU2UJjsfSTgT0zs+GNW4N8jlSyvOkHMXkUXet6XkP
	WmWCK5rm1FFJLtNWZo3X3PsTvxER0hIrdWv26Uy6wjUzVUwSMdGAxXfnR2UgtMFONtIiuDcDpi87J
	rpj6cS4JlSaQkW2Pk/lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYiRe-0004Zq-8M; Thu, 06 Jun 2019 02:48:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYiRW-0004Z6-UK
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 02:47:56 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A600A20684;
 Thu,  6 Jun 2019 02:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559789274;
 bh=+MwTvxbeyR43AvjkDTTFN/CTZFvCYYxViVY1qhfn7gg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VnFq4myrIEwfsdgcKq8f7jMPDLWwi2QIWPzypddKAc8XmCbstWNFjlYAbiU3i4DQT
 7rpVlOww+ecBDtJyuCXN0Gr0jGpkraG+Pyy+rdE9QjpBLkLlYpBRhreYxJ6oTeivwD
 Vix7ivQFZd19t5/IYR1x32aCBJSuVw55pVh2Ox5Q=
Date: Thu, 6 Jun 2019 10:47:36 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH RESEND] arm64: dts: imx8mm: Move gic node into soc node
Message-ID: <20190606024735.GX29853@dragon>
References: <20190606023936.25543-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606023936.25543-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_194754_997271_6E4ACE12 
X-CRM114-Status: UNSURE (   7.79  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ping.bai@nxp.com,
 daniel.baluta@nxp.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 10:39:36AM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> GIC is inside of SoC from architecture perspective, it should
> be located inside of soc node in DT.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
