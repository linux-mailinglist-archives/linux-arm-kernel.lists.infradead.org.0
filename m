Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9275924EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7A8xP4GaBdfy3P9Dstdbm4uYbmZXKKekPH9WQO99xos=; b=uQZU2o7m6eAHQu
	QEFrXfwJHjUpNrabg8CEHiyTTm5dK1t/0Xn+saSA8hQzqrF7qjSo6xy297D5KjXjmcH+fY3rpa/WY
	/docZToRK9urI6JoWPTRGYUkiAg8HJTSQzfaG+Q80FAQuPCJRm1NeRXRoep1wz9GcD5OVL6q6OUdk
	DhZHuURw9sHRR1pDy/nvc56c91ImfDpcJ6G4X0R/41/zUkIvj+2gcXEz6POY/i/DsfWMSH3NUalJA
	WfY1sLLm3ynfMSCE7tdpOe3kYDLoqSrNsQNhl3FQr1zDCRAuIeTK1pOuLI9mrlqV+IwDZalFRw+nM
	hh7ITAwKCEvBQIxDt65w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhfM-0004Yg-5Y; Mon, 19 Aug 2019 13:25:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhfE-0004YI-Lw
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:25:37 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41C9E2085A;
 Mon, 19 Aug 2019 13:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566221136;
 bh=6r1/vyEsP1XDK18vZbK7ergEOexctMBSCUjVwG/OuV8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=17e7Jjs9xizwLvMtiPB8x61b1RM3ss0gRAoFj+3cPgyKgkQv/azXq3hqC/+cL4R53
 Un1MjUEBoSfJgjbG/uJR26Pmh0iz4aGoGrJ4htSVkLG2eNeOiURrC+xHRxJzNzTgKB
 2HqeNipJxkP2Egx1ZkDyw12kd16G0FHFMwpaK5CA=
Date: Mon, 19 Aug 2019 15:25:21 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: Enable cpu-idle driver
Message-ID: <20190819132520.GK5999@X250>
References: <1565950383-589-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565950383-589-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_062536_735326_CF8D10B7 
X-CRM114-Status: UNSURE (   8.42  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, abel.vesa@nxp.com,
 daniel.baluta@nxp.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 jun.li@nxp.com, robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, ping.bai@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 06:13:03AM -0400, Anson Huang wrote:
> Enable i.MX8MM cpu-idle using generic ARM cpu-idle driver, 2 states
> are supported, details as below:
> 
> root@imx8mmevk:~# cat /sys/devices/system/cpu/cpu0/cpuidle/state0/name
> WFI
> root@imx8mmevk:~# cat /sys/devices/system/cpu/cpu0/cpuidle/state0/usage
> 3973
> root@imx8mmevk:~# cat /sys/devices/system/cpu/cpu0/cpuidle/state1/name
> cpu-pd-wait
> root@imx8mmevk:~# cat /sys/devices/system/cpu/cpu0/cpuidle/state1/usage
> 6647
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
