Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA5CC453A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 02:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZoUs77is2dW/jQyPSCtYeXUjutuc4BB1G06DuGi498=; b=dPRUieelbMAXTo
	9b/oOKj/DPjzX1s3/ovAOOx0o+wPeBLCRFF9WNFUB9eKgwJ6/lADKF1EEVaFvd9bphWNzM0EB6J8+
	NI3TcREPdzCp60cxxu0rRMhfMsEgqDflG1q3zDZ8juVlySSEj7wa2DcHnthLhGFXCpPJoZQg9D5Bx
	B6KD0IJZEbSkJ32ZMppQKiLZONsv3QZcPWVGY8k8wbjBymk1ZBhPCb/5IzxVzloyrLy3MZXL55i0o
	1jrxSQC4cxTt5OufdtUZ8n++uJS2fX4zS74a+ZT+fAUNsVG4Y9Z/oJeuquWhMaJu5RH+YDXn9HyiY
	XRQJrluKVrFl7bxoMm6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFSxk-0005xF-Og; Wed, 02 Oct 2019 00:57:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFSxc-0005wI-LB
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 00:57:45 +0000
Received: from dragon (unknown [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 14CC620842;
 Wed,  2 Oct 2019 00:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569977863;
 bh=MG19YeAOY8LCvIuIz4SQI0njSnM6m5/3C+dLNtuySv0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e0AaBsHhbgJbbTWaxd924N4N5TkZV/Z/owgmD037LXSP7CbXzmVZW0sHmyJLyjuT5
 /jYm6JmI/Gtrh7R3c8XISpyMKlHcBC7ZqyNIA/WKkHe/3gR5l5IIjZ8a0uudxq8xMs
 6jNC3TT7TKDiQkfFFO3JG5dZOktqSDFSUF92vpjg=
Date: Wed, 2 Oct 2019 08:57:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yinbo Zhu <yinbo.zhu@nxp.com>
Subject: Re: [EXT] Re: [PATCH v5] arm64: dts: ls1028a: Add esdhc node in dts
Message-ID: <20191002005723.GA18972@dragon>
References: <20190815033901.18696-1-yinbo.zhu@nxp.com>
 <20190819131033.GH5999@X250>
 <VI1PR04MB4158E2E8C626FCABF089E15AE9840@VI1PR04MB4158.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB4158E2E8C626FCABF089E15AE9840@VI1PR04MB4158.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_175744_717109_9F45EE75 
X-CRM114-Status: GOOD (  10.03  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ashish Kumar <ashish.kumar@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "Y.b. Lu" <yangbo.lu@nxp.com>, Jiafei Pan <jiafei.pan@nxp.com>,
 Xiaobo Xie <xiaobo.xie@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 03:02:04AM +0000, Yinbo Zhu wrote:
> Hi Shawn Guo,
> 
> I see that you had merged my patch, but I don't see that in 
> url = git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git master branch.
> Please help check.

My master branch will only get updated to each -rc1 tag when merge
window closes.  I just updated it to v5.4-rc1, and it should has your
patch now.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
