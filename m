Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EABC618616A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 02:45:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQ6GpeTCG/U7xdsfLi/TecinnUXyxlxUwMvox1r4RV0=; b=kCF+VJjzICt8WO
	Amy+sW5eO+N0LJYWM4c46WA6wcdbK+I7Nw8QEK5R+lZv8CpozUBdQu5CaV+wfJ49418MqQcuhmzK3
	lX6MqvUDS69zRxzJF5F5KhXBAyzvJ/KslOKiZtUjXurH/mHAx8F7LqZ71v1KIwPy6TYUfiY7zDup+
	F+p/J/J+G2w26bH7waKBdySmuLuhFqaJZA3a6Vg6UnR7odOv+Z9zLCyTRPZDK0NZWFCEA5fj/04ad
	kwCXso+27JXMSP2m2f2yaAS/XqeSSh44JCs+y2uX/W3A3qpu5Css4l8nEeIGIO85y75rkoCE6QApv
	o98dc+mU/W7ecEnKcCzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDep6-0003PR-Lf; Mon, 16 Mar 2020 01:45:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDeow-0003O1-1C
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 01:45:35 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06AB42051A;
 Mon, 16 Mar 2020 01:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584323133;
 bh=tzHkYQUduhfzNU7kQbblTYrs2p7fAYSfY48bdXcW9T4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P/JrR3krA9rtF2c1tDFQKGX1CKpEZMHNe0CY54/MhV+rRtonplL/qaxyXZ2TKBjYi
 SJRhGj8qtf0CuStBqwFpB1KPH3l3rfvwVCL+G1UQjTbxA/Gr7oMrbvdFwsKIPend8u
 H1yDgtt35G52pl550vvhvSabNXNqXWkvw7cP2iU4=
Date: Mon, 16 Mar 2020 09:45:26 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mn: Add snvs clock to powerkey
Message-ID: <20200316014526.GU17221@dragon>
References: <1583998450-19292-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583998450-19292-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_184534_096533_DA83B049 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, horia.geanta@nxp.com,
 daniel.baluta@nxp.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 03:34:09PM +0800, Anson Huang wrote:
> SNVS powerkey driver needs snvs clock for proper clock management,
> add support for it.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
