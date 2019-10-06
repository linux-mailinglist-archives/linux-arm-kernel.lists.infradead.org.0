Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6719CCE1B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 05:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0aPLHJbnH+tzoLOWhZMU2ud8P6MOjZRsusT+z4Yh1U=; b=ONcb3mTDPeiuHb
	BTH2DOwXvk+sKqW7infkJszzgkWFSZqUyfpJREzxq7aRK+2hyTx7Z8vpdqFqoJuilJnIIyz+NqTrR
	eXKPSFuLbHMBexFpK69a/3NOaIOgTVQveObX3ZbPo4hCgg6sbiT1efDS/GRdlmaOzv/QqAmCYJDyz
	UM8sYkv9aYOTEGuYMMSRj1+C1sSct6cEolU17GT3s8g0wYVMFKeLZXJw1ePfoeDhgAGlZ4OBU1Vwa
	3w/xzcVrs5LkrEZMzKdcGOR95b4qzz6UVNEY9iFOKeP6GXtGbHD4N6SlGEilPsEtlgRlCeVwb4Egb
	JxU1NA8mjLQmnPDVb/CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGxdl-0005pm-FU; Sun, 06 Oct 2019 03:55:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGxde-0005pI-Pu
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 03:55:19 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99E4C2166E;
 Sun,  6 Oct 2019 03:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570334117;
 bh=0jSvV7nxVs9zvgYK7gtXs4KinaxY+FIlbXfuFyO6Gq8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=w4Sq3muDAK60snX8++MvYdjyBtvre05wdeWM7kTXBzG1ZOanzkXr3vk19lKxO/4aI
 Lhsz9mD3+aTHwySKvquUtQhfzojHQqwxjBCEvbbCJK6W1pE/YuefsLMNB4J1+UmqhM
 llMwryoRpwMLMMhg7WmNk8WF+s/q8AUdy2U6EQU4=
Date: Sun, 6 Oct 2019 11:54:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mn: Add "fsl,imx8mq-src" as src's
 fallback compatible
Message-ID: <20191006035449.GQ7150@dragon>
References: <1568126359-2887-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568126359-2887-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_205518_865452_B86C4F16 
X-CRM114-Status: UNSURE (   7.23  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, daniel.baluta@nxp.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 10:39:19AM -0400, Anson Huang wrote:
> i.MX8MN can reuse i.MX8MQ's src driver, add "fsl,imx8mq-src" as
> src's fallback compatible to enable it.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
