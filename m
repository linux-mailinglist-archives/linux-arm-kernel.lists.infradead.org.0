Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D444EE70E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 13:04:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apJyIa9Ek4t6dQ7ycWZ9Ey2Sc3tMGhq0I+UAj1wWKQc=; b=Sc+cUkHs4MdTu+
	MknpKulMJRyr8OPcZftfo+dfqRFxUHSCVJXKyaJzihsEAHeP3p15ZciDZP0QbB+HJwb7QtBoWKzsN
	EDEB+NcunKbrSVxbezLmf+/fh3k27xKuo8QQJQHGAg9+IdknuUxoXKLGyWpuw85Fv7EWM334YNRVo
	7cY99sFfQwTwUvQFnRAxOeV6dmyGE5dR09e2kIbOmG7GE3o6kdmCfuRlERYQTxyzKJYMVCOVx09oC
	rCAeUbyImaKVwHaIrt/oS3ge4tYdxnGr3Co1gnI25PUZ5Bdsf7hQ2881Hb9Se4ezJlQqcenUodg8D
	Em1qTdI5LCFyo1FfSvWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3lT-0003Qd-Fz; Mon, 28 Oct 2019 12:04:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3lE-0003QH-So
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 12:04:38 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB0E32086D;
 Mon, 28 Oct 2019 12:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572264276;
 bh=zyG5Y+J760QevxoHDxz7mE1bnyRmrOKKPhZ5PA7C9rA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fvrCWX5eXTpSwK7e8QkRd6CBhvJLmx0M6tlFpxLkdQgcAGypUr9zCSZhlK8QncFFo
 hTmQPJflORixz9sWSMg6F+lETVDM1LavajrkTe0GsObFqddORwrEwYIJLgK3/bbldk
 T9rmdaclD8KTYVCtZFTg83lASTsYeh3WAuiZyr4E=
Date: Mon, 28 Oct 2019 20:04:13 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] soc: imx8: Using existing serial_number instead of UID
Message-ID: <20191028120411.GI16985@dragon>
References: <1571986583-21138-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571986583-21138-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_050436_951323_78476434 
X-CRM114-Status: UNSURE (   7.93  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aisheng.dong@nxp.com, abel.vesa@nxp.com, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, viresh.kumar@linaro.org, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 02:56:22PM +0800, Anson Huang wrote:
> The soc_device_attribute structure already contains a serial_number
> attribute to show SoC's unique ID, just use it to show SoC's unique
> ID instead of creating a new file called soc_uid.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
