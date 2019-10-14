Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD86D6403
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 15:23:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/G1QNIWRWNMQb0iZ3x4mXiw9g3UuN0/S0/ERIn61xDE=; b=dKx77Ijeczz1xG
	15CjzCsZ1e1OWbN6U5qLI1nuHwqa/JoEjKJ3i56XcMTI/KNhOF1oRob+vcgxHUUvtYpJlDn4NhCzp
	bi9xGsgHZ4mVBjXOoqYUGKo7ZhGjrV8T5zETJ0U+SIdZSON7QOZU9PbGxABl7+j6MZxLh/PUC3F7/
	0gnzlXyjSwpe4YqKtlKN8PqyGIlQWjn+qv9qlazo5cKKQRZZHsDHTIWtcxI2PPs9f7jNPBoyN45ur
	CiozeLfvsZBM7K9u7ppo8RsmNXkAF4VzM4BZ2F16f/+GAHORje3yL+3oV7qBhjobsdS50HBQd/0Dd
	tauR9yA6UP5EwljsuTzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK0Jg-0004o1-LO; Mon, 14 Oct 2019 13:23:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK0JX-0004nj-Vm
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 13:23:09 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 227D621848;
 Mon, 14 Oct 2019 13:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571059387;
 bh=/8QNopu9sg/HvKCl5p+5djIJbq//CVacOt1EOwSJXtE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jRkO2K34EPsHAUrgHWJK7FGDuYVosHluCoBbos0eb8HKebh0j0NygFfczV3PxeFTN
 GO3gNDnlmkT4B0YbXpPFY84ut0N/0dXFZUrBeCE6eDM5yKeWxq6jO7SN7bO48d8W36
 vcxl8Yn6bxZxz1r+IrqDbc6kedXhSt58NIlbRxFg=
Date: Mon, 14 Oct 2019 21:22:43 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] clk: imx: clk-pll14xx: Make two variables static
Message-ID: <20191014132241.GY12262@dragon>
References: <20191008071908.24568-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008071908.24568-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_062308_041963_1F01D2E3 
X-CRM114-Status: UNSURE (   7.68  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: peng.fan@nxp.com, ping.bai@nxp.com, Anson.Huang@nxp.com, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 03:19:08PM +0800, YueHaibing wrote:
> Fix sparse warnings:
> 
> drivers/clk/imx/clk-pll14xx.c:44:37:
>  warning: symbol 'imx_pll1416x_tbl' was not declared. Should it be static?
> drivers/clk/imx/clk-pll14xx.c:57:37:
>  warning: symbol 'imx_pll1443x_tbl' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
