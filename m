Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B0CCCF5A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 10:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbncoPQf79vs/wBpfm7GtH60pPfdv+cxR5TS3jb9bZo=; b=qSNcm/TuzHLdhr
	SeLIdRSyYQM4obCVDIGT0TLvIRwzLbpq9PzCajohSuKV056Hi325nArrMILMPxMNbNtafaZpFH67F
	q7SanObO/afnmv5EsURQcc7yB0OSlMyxBZAGJidjXlDsN2ffcNpIzduZ31v5M9upCBtOf70TLKUhw
	7N1KsQL+iwL2aJ6QEZILVGtzur64VSFhAdEa4bSexnGw42buDzLfcxNVMaq5xB3Ij/NuZJScyP1GH
	en+9ghnPqhYaUYrPmWg8iBvdH9Stmxh2K7bxMTSePkh9pDXpFk9jGo8KYxK1RgcqJRg5hrt8Uv9ra
	4Eh2MUnHzLMbW2DnZQFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH1cR-00011l-Tn; Sun, 06 Oct 2019 08:10:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH1cI-00011O-Mw
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 08:10:11 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3D8B2084D;
 Sun,  6 Oct 2019 08:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570349410;
 bh=Ejn7qCzT2VXUEJ25isLaRS+0gqOkA65KyWt7HUIz7Yw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xXQbydn1WijoAspGMdkpZZqONjjExKaoPDfPs4q10j7UKUyt74fbKHJs1EhRMUiOW
 2hxNPUnNeZ8feCIIZphpzYtR6XankQRp+FqgzZ7brJxCxtKH2BYGyhskZcV1yL6ut6
 pfYgmFt4qkpzMJKhATqOZDRNTd+n4A3fXKCIT7HM=
Date: Sun, 6 Oct 2019 16:09:37 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx7d: Correct speed grading fuse settings
Message-ID: <20191006080933.GY7150@dragon>
References: <1568256992-31707-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568256992-31707-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_011010_769247_76469054 
X-CRM114-Status: UNSURE (   8.10  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 10:56:31AM +0800, Anson Huang wrote:
> The 800MHz opp speed grading fuse mask should be 0xd instead
> of 0xf according to fuse map definition:
> 
> SPEED_GRADING[1:0]	MHz
> 	00		800
> 	01		500
> 	10		1000
> 	11		1200
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
