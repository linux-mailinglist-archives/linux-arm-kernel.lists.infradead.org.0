Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1163549A14
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjgQTt7HrgOVPTblZsl1BbDck18phMAghCZ7NEaSpy4=; b=bwrwb6CoTmZVh6
	yTjwDE2O/lQedEV+dwmiRhAflrRM6uAQNoDm3bmB2Co8GHDxeMDWWBsUE7Wgq+/mr6aEHPAtYThkb
	46RRppPmpuYh1BKujAzwPVSu4SUQGJtCMSgmDdeWhUeGup1ntRr2NtbhLoMZSlTk/ICaEVXbss+Ye
	S6KQGMgqLgcrtwqT8jRnhw6pwyJzEEIgIjL51ll/C50jKDpGSkpp7KohkpRtDhd5lp1IN4FgQhp6F
	NvmVtJnSKF6lRDBwsrJJp8uuh8RYJzz/cL/vkSFEEMVmXXfUo/idAJ/5XvxPYLoyE0NbAWMXHZHcW
	NpjDf95ARNNXBwcoUDyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8Ix-0003wt-M2; Tue, 18 Jun 2019 07:13:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8Il-0003wF-Ff
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:13:08 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F00DE20679;
 Tue, 18 Jun 2019 07:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560841987;
 bh=iSzPbJOxtUpG63TXwYWTX8utSWETqRhTDTXN4LMFPKw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M1dES81Pzw/AzeY3PeaMwfrxTHwVwe6MN+8JHE6Ab3tMbWm6vQYPxghH7tzqAupzo
 cvAdEiq+SUEPxVa9ZY2ggTDLKVIMv0tOeLClBlQEZuSN4cmoRk+hCEE/8YmHDU+NTg
 2RsHvYJcFQIoOozSxtTullHSStHDrmSLQdkLja4w=
Date: Tue, 18 Jun 2019 15:12:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH] arm64: dts: imx8mq-evk: Enable SNVS power key
Message-ID: <20190618071210.GF29881@dragon>
References: <20190613010227.46860-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613010227.46860-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_001307_539681_56CAAB03 
X-CRM114-Status: UNSURE (   7.04  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, baruch@tkos.co.il,
 abel.vesa@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 daniel.baluta@nxp.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 09:02:27AM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Enable SNVS power key for i.MX8MQ EVK board.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
