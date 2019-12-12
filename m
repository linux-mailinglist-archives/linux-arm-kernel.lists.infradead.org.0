Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9402411C2FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 03:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ADVAE1X4zjCD0tPvNVnx0aDFUZFojPda0kAQmgPYfg=; b=FLM/FfBzXqHGBq
	spPJUmCFx/17NdsDkWN/fzHm6BDBOURm9/3Lsg3ZbOX9yD3Zm8VNsjyKeSg8745ZsyxcIzpIgUViB
	coy+5EBZyayGdsl2VDHG8dRzmliyzqq+4zI7991/G42DK8RpX/8/NIe7dkhu+ELC8BQ2/Dvo10cPp
	9BBHB6EWFY/qmVY8ndXOqmVATMxwWFVkq1PWX/qHG7PnsWHLFOsmPEUi3mJGl7WkI8/cdHCKagz9J
	jf+nvNRkt8jh/cEcJmGiNY9cSbcDPuN4ZdDYRXBnLv1YFxIu/iOanQlaEQ5pP8wtsUrppsPUiumLU
	QHDLA0vEqDCPF6IxiQHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDuH-00074h-3M; Thu, 12 Dec 2019 02:08:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDu7-00073x-Lt
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 02:08:36 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09BD7208C3;
 Thu, 12 Dec 2019 02:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576116515;
 bh=qDi3uJvjAKaun92DCYDw8S/irDOX3GzPB4HYR2BKMkM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bfeh7MLl53TKBh4PNmvXBb9JzdyNQLqet16t7UOiohNvtbyTeDaVXYd7CysEAmUtL
 jCeruvfQyJHlatQBreIykfx0KNkDwIQjXXesQJqpoCKUoOD7KFvbywxRpSgVqyiyC+
 OaK3VOkd+qKrKInJlaeBkx4c8rnRNYTyl92BZ22M=
Date: Thu, 12 Dec 2019 10:08:19 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2] ARM: dts: imx6ul-evk: Fix peripheral regulator
Message-ID: <20191212020818.GC15858@dragon>
References: <3dbf3c6b01b4c372544127d61746e2d9b62108d7.1576076393.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3dbf3c6b01b4c372544127d61746e2d9b62108d7.1576076393.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_180835_737292_11B8E8F8 
X-CRM114-Status: GOOD (  10.07  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 05:02:47PM +0200, Leonard Crestez wrote:
> Many peripherals are affected by gpio5/2, not just sensors. One of those
> is ethernet phy so network boot is current broken.
> 
> Fix by renaming reg_sensors and marking it as "always on". Also add a
> comment asking for careful testing if this is to be made dynamic in the
> future.
> 
> The "peri_3v3" naming is similar to imx6sx-sdb and regulator-name is
> same string as in schematics (VPERI_3V3).
> 
> Fixes: 09e2b1048954 ("ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO regulator")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
