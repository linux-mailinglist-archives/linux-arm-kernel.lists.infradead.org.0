Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFABD1C032
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 02:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OZGo+mA0UIJ79bZqnZFLFY85tFBpwERdD+RIrJMxYEU=; b=fKYNDvCZHX9JDv+qNijLplrMb
	fv09c6w1LYUD0QL1NLOHN6jJAbXRQtsQV87VodIsQnuK28vZbJ+j965CRMZYVV7mF3YZbfHIOhFpI
	PQq++3rA1/IItjo0iSTWW5lJPAxLDVxVVhuPKR9xWf3cYcEFy1RwUt/A/qAu+izkME9gZYZYEwyLz
	0EBKXMmaY6JM6+AX2yC+9Q06DCr3iNhOyLrUYNG8gtgGvwjzsVKzj0doMbaR1P87KVZmrDYWY87PF
	0RsI1PNZETcPnq9B9gsT5I5gJh08S3caYUVkUgjrg6zArVMnzxiTRF66O91BzK54Q1jm5obG27Zvr
	2T4P+/goA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQLZl-0003S3-4L; Tue, 14 May 2019 00:45:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQLZe-0003Rj-Ne
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 00:45:44 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22DC22168B;
 Tue, 14 May 2019 00:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557794741;
 bh=2dlFT5AfiE3crXCJA7cmneM0Ha+jZ7zu6pQo81eyP/c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UwPjuifrrPf4cd6uE/oE3jx5E0lMlLQCc7cV0BuarSJbDS90SopjgwZq9XUND0NBS
 I5ZLblUD2UWVFgCRxGulCLNeOBiu8p65CSAg9lOA3eibhICHlbTb25R1BbT5ES5ucj
 J0B66x/Cn93E9PO8huT8sm7hl8dKIwevyuoqrRqs=
Date: Mon, 13 May 2019 20:45:39 -0400
From: Sasha Levin <sashal@kernel.org>
To: "George G. Davis" <george_davis@mentor.com>
Subject: Re: [PATCH v3] ARM: dts: imx: Fix the AR803X phy-mode
Message-ID: <20190514004539.GG11972@sasha-vm>
References: <20190403221241.4753-1-festevam@gmail.com>
 <20190513171826.GA18591@mam-gdavis-lt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513171826.GA18591@mam-gdavis-lt>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_174542_791892_B3377395 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: andrew@lunn.ch, baruch@tkos.co.il, Fabio Estevam <festevam@gmail.com>,
 ken.lin@advantech.com, stable@vger.kernel.org, smoch@web.de,
 stwiss.opensource@diasemi.com, linux-imx@nxp.com, kernel@pengutronix.de,
 aford173@gmail.com, Marc Kleine-Budde <mkl@pengutronix.de>,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 01:18:27PM -0400, George G. Davis wrote:
>Hello,
>
>On Wed, Apr 03, 2019 at 07:12:41PM -0300, Fabio Estevam wrote:
>> Commit 6d4cd041f0af ("net: phy: at803x: disable delay only for RGMII mode")
>> exposed an issue on imx DTS files using AR8031/AR8035 PHYs.
>>
>> The end result is that the boards can no longer obtain an IP address
>> via UDHCP, for example.
>>
>> Quoting Andrew Lunn:
>>
>> "The problem here is, all the DTs were broken since day 0. However,
>> because the PHY driver was also broken, nobody noticed and it
>> worked. Now that the PHY driver has been fixed, all the bugs in the
>> DTs now become an issue"
>>
>> To fix this problem, the phy-mode property needs to be "rgmii-id",  which
>> has the following meaning as per
>> Documentation/devicetree/bindings/net/ethernet.txt:
>>
>> "RGMII with internal RX and TX delays provided by the PHY, the MAC should
>> not add the RX or TX delays in this case)"
>>
>> Tested on imx6-sabresd, imx6sx-sdb and imx7d-pico boards with
>> successfully restored networking.
>>
>> Based on the initial submission from Steve Twiss for the
>> imx6qdl-sabresd.
>>
>> Signed-off-by: Fabio Estevam <festevam@gmail.com>
>> Tested-by: Baruch Siach <baruch@tkos.co.il>
>> Tested-by: Soeren Moch <smoch@web.de>
>> Tested-by: Steve Twiss <stwiss.opensource@diasemi.com>
>> Tested-by: Adam Thomson <Adam.Thomson@diasemi.com>
>> Signed-off-by: Steve Twiss <stwiss.opensource@diasemi.com>
>> Tested-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> ---
>> Changes since v2:
>> - Also fixed imx6q-ba16
>> - Removed stable tag as it does not apply cleanly on older
>> stable trees. I can manually generate versions for stable
>> trees after this one hits mainline.
>
>Please add this commit to the v5.1.x stable queue to resolve NFS root breakage
>in v5.1. I can confirm that it applies cleanly to v5.1.1 and resolves NFS root
>breakage that occurs on i.MX6 boards in v5.1.x, tested on imx6q-sabreauto.dts
>and imx6q-sabresd.dts. Although the fix should be backported to pre-v5.1.x
>stable series as well, it does not cause problems for pre-v5.1 but results in
>NFS root breakage for v5.1.x.

What's the commit id in Linus's tree? I don't see it.

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
