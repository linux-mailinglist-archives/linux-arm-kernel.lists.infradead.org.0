Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A071623B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 10:44:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zj02CuOjaXv5FHCi7fIj2MZvrEgCJcCk1CPDuOYVCmw=; b=n8P1gfPd4zcNDK
	fKQf43M+1q3jWXLJ/UeKc7PrpD5tQfZd74dPJaZljGRDIIdpWB2Fvn9eSE8pLVmZt18oCVyvdqfiD
	HXktewzsw5vigbm7nEJnFXaTDs2IhS7pHFgUIl4s9j3b6BuQinwHb+qlxhCBzf2GUXI+xaNuT4IOm
	1GqosHTtOdvb6Vwadci/HdO9mKSy4vFZ/PgRO9LMjwczN+70WAwCRBNKqY6jYnHsiz6pLpuP87gDr
	K6hSAtiEsNNRz4ghnIVqVo/BW17H3VD2vDXlnmXi7EH2C8igkQPR5s533ZIoNVUMNxPwcVZpdPQ32
	928TFEhKyEp5k/TFXS3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3zQE-0008TS-VC; Tue, 18 Feb 2020 09:44:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3zQ7-0008Sw-8S
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 09:44:00 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A37B7206E2;
 Tue, 18 Feb 2020 09:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582019038;
 bh=glEd8LJg33O82qVtAetCni+HqVd9K5Kd0qvxg1Lw4x4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BnC8as/2IqxRU9Yof3Riunpd5ghLEMkDOCHPGVqmZ92/AY3wlU0/16p4BSv3F/2P3
 jZ0OwMQ+mStgxWyfe79suW0thBq9gNYEgONjCXPQKAtG9hNsK/5rVxLXcxWyEUlkOS
 qeALyMVj3ieInr8CvOc2QiBSjnZ3iKyF6ieeZkEk=
Date: Tue, 18 Feb 2020 17:43:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 RESEND 1/7] ARM: dts: imx6sx: Improve UART pins macro
 defines
Message-ID: <20200218094351.GE6075@dragon>
References: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_014359_317090_2518133A 
X-CRM114-Status: UNSURE (   8.35  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, u.kleine-koenig@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 07:13:35PM +0800, Anson Huang wrote:
> Add DCE/DTE to UART pins macro defines to distinguish the
> DCE and DTE functions, keep old defines at the end of file
> for some time to make it backward compatible.
> =

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
