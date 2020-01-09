Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 634BC1353C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 08:35:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJO40kbT4DuqMRFl+P+aY2jZjFVXE07ptv93xwzbjEE=; b=u65FRZgKENavyY
	iAAfqU/wREpzoqOrgHDOPvmg7kEAWyjEYWh8gKC35vk8kEcJ02fmj6hsucpWE3lrQgd4nZLJLfXTZ
	7z4pIXV1U+Wmgex9Udu9DD3uRNQH3LR1absVi+30QbqinTsbZztV88AfyBN5OImy0p3L//2D6z9WF
	e0b7BLvhPb66VaK0JdPM++MEbDmnl83LfzF001HYkOASOT4l7jNsQJ3FLCsqF4SbZ3IK3BNkn9Pq7
	SXWl4VDkJP6dYyl7YN3jTy/qUxgW9/t+5RIRAH5vJvtSg7n9zrb+WS3y8ZCs4SxDQUDYr8Cmlhvgi
	e7FaN3hCRYZDfU0UP6DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSM3-0001nV-O7; Thu, 09 Jan 2020 07:35:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSLm-0001ik-Va
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 07:35:28 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E4B3720673;
 Thu,  9 Jan 2020 07:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578555326;
 bh=LBZcB4ZPhcMLMC2MDHNLxhWRe934Xzv6zheivRkJnJU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mZUAvSDU+nHa6MUnJp67FGYfnJQUFOdk0uhBDDXR1f6FYSU/TOXIc7k4Ztz3Nzu4g
 NQa+ZVCMyBXmO8qcwfqYmgpMVg6NzxznQa+cqji7lGOXHKiBHovnvzPqi/wqC77nXd
 QPRSvrcyQXPMdkS39vuVrjUa8GUr2ivrjtF/jiek=
Date: Thu, 9 Jan 2020 15:35:21 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2] ARM: dts: imx7: Unify temp-grade and speed-grade nodes
Message-ID: <20200109073520.GD4456@T480>
References: <20191223120719.7448-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223120719.7448-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_233527_069333_3FD54DF0 
X-CRM114-Status: UNSURE (   8.26  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 09:07:19AM -0300, Fabio Estevam wrote:
> The following warning is seen when building with W=1:
> 
> arch/arm/boot/dts/imx7s.dtsi:551.39-553.7: Warning (unique_unit_address): /soc/aips-bus@30000000/ocotp-ctrl@30350000/temp-grade@10: duplicate unit-address (also used in node /soc/aips-bus@30000000/ocotp-ctrl@30350000/speed-grade@10)
> 
> Since temp-grade and speed-grade point to the same node, replace them by
> a single one to avoid the duplicate unit-address warning.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
