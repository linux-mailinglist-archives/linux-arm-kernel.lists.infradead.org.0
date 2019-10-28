Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6570E6B84
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 04:48:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZPE9tJJl1FFzjOmiGkXjsPekZxKbJR4Wk2PBSoAN08=; b=S8KgeJwsyi4SxC
	5EUq2UCbUiUvzKhTZLM600k3jHgtNZqYsDepCmCnT5FPBkCL2KlJdRwYEucqvD5x81Sh0SeAC3ZGN
	Cr913vs5G/Szibm4RKaj5E7Zd7i3tkNE4fDxZDdNmfY4qYcHFruezRWjLi6SDGHkS+/uVt3htmTNY
	oT52o4V/9XpIUQiOPZMVr8VVxGqYYTjBVrX3p8RiZ/FTD8hbzeFICNjKgiBpNR4ajE4iWY1pfh+yd
	LAal50qTwvni+RPSP+Ol/Slx2cEwgxGLGXiXyuNmbP+UwtsmrU3OUy3QAqlsQUKYrY2+OkNxM47a7
	1s0Vzlcg/O2cqdmJMl/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOw1S-0002UP-5i; Mon, 28 Oct 2019 03:48:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOw1I-0002U7-Fi
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 03:48:41 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E804D20659;
 Mon, 28 Oct 2019 03:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572234520;
 bh=+v2nHJWW8uJ0j5XhT13GaUAs7RJX1oty9dbstfaFroY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DWNEMqZgdJ6nfhjBNdTsSyu/VD4Zw1lpdgN/lHi9MvTZda6XGDqU5UId2BpVK3Isk
 CvwL8Q3MILQKgln5TSP3fl1FImUIBAuTb+JSdf6pazOxZTWNEaJBteFaNbEjCEfju7
 /+hqwlgtO+ckln+BoXYEYMrmX/gRC9vuCKMAvqq0=
Date: Mon, 28 Oct 2019 11:48:20 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/3] arm64: dts: imx8mn: Create EVK dtsi file for common
 use
Message-ID: <20191028034819.GJ16985@dragon>
References: <1571281984-7125-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571281984-7125-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_204840_546052_7B4F77A1 
X-CRM114-Status: UNSURE (   8.10  )
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, pramod.kumar_1@nxp.com,
 devicetree@vger.kernel.org, andrew.smirnov@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 ping.bai@nxp.com, Linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org, festevam@gmail.com, bhaskar.upadhaya@nxp.com,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 11:13:02AM +0800, Anson Huang wrote:
> i.MX8MN has different EVK boards to support different DDR types,
> the ONLY differences are DDR chips and PMIC, so most of the devices
> can be shared between these EVK boards, create a EVK dtsi file for
> common use.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
