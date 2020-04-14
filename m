Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D99A1A7B58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MYEny9ob3CO3WGMXK6ksX4HfW6bJqn/kFwcTtPlHBVM=; b=KkATJlnpmWkoj2
	6XJXglfl/OKrYsbBIymKroAR8taJndtqW8yhe+gVrLNFjqLCkumkDzKEcJahwYrP6biUL1JGbfSrt
	YxmGBF32qUbPgsHcO0o2V4g06bzD8j2fuOxckzKF/32fwSdJmzQciFKjNAnXYwLUdaf73ZP65RXNb
	gk7smPU0WEDH1AUamZ1x3rd1/rMD/Uv6mPLZFm4qjF+5VffbFDnlXhVg6/ccfo77QSGBLAMGA2cYj
	iM/m24YYlGTpPkeYIh0Z+pF2oZKpOCGHoX4nE8Tmp6xRt+VLllCu/SRRWpqWEPMTlPLz9jB+fDBQb
	hqY5MFPGA2TYgSc8S2/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOL44-0006MB-GY; Tue, 14 Apr 2020 12:53:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOL3w-0006Lr-2L
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:53:13 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C57B5206A2;
 Tue, 14 Apr 2020 12:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586868791;
 bh=1Ze3diwrbjA7BtxT3+FyzxurdagX5pNnS3OkXL/9zBA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ltk6dIVxKSMbIoO/6xziiLfPHOBD06ak/vGRajgw9Fr20DqRWd0bFwPdbcC7aH9uB
 sc3uwRBMIu6ITAnSc6IxD3dZJRYnViF4Usu/Es3m1eIM+4kxEvwB3R4tj1vXffvn6p
 OKFv1jDjpsHeGTSiIAIX1jgUjYVgWEIPlGuaxDAQ=
Date: Tue, 14 Apr 2020 20:53:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm-evk: Add secondary cpus supply
Message-ID: <20200414125302.GA30676@dragon>
References: <1584006465-28494-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584006465-28494-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_055312_133229_71401735 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ping.bai@nxp.com,
 festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 abel.vesa@nxp.com, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, Linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, shengjiu.wang@nxp.com, alifer.wsdm@gmail.com,
 jun.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 05:47:44PM +0800, Anson Huang wrote:
> Each cpu-core is supposed to list its supply separately, add
> supply for secondary cpus.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
