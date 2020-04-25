Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199841B8302
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 03:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwCdU4eOCYqfqMu0vM/wdkX6i+fcnXufWqNUmCO+lVA=; b=ZqoSYLkUQpb9YH
	OmW1yGVCcoe9ybXLeM53rwokJ4lau1cOtXIClbbz5sdpNcPUTqllaN8u9izTCvtPTzwSaxYSo6GnW
	2cbBeV5WbmfJ/06pGXKuCVTFkVnDR/k/cMtxk1hPeosYmi+fYPqlTTXlvVhrFFMYG6MMToRJmLieL
	VrOo7ZaOadKTKxDq9QKAIpEQsg3mfOp4oU49Dcory4FjVMQn70ZvWd5AYG1530dm20qvJvZBR8yYa
	hQEJC4O23TQ3q8zA35NaNGLGTkUvElslg09CT6AFAJKjLiEexNncIQpicjlOMVtE2cbP7HVzu1FlQ
	9hn5CZ0YLZVve7ywkc+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS9Re-0005vz-RD; Sat, 25 Apr 2020 01:17:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS9RV-0005tl-3z
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 01:17:18 +0000
Received: from dragon (unknown [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B82C20748;
 Sat, 25 Apr 2020 01:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587777433;
 bh=Idxg/CHEHUX2quDQvmQ+IGIQKvLPhn0rX68vGxJyrw8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XlAu9bwuvMSQG4JuLn1X8jL6UJRZDrw9tWe/0xx0vmqnQV3ONcIAMpivkKQrLJBtB
 BwU01mYtdMYrRpZfUvVBdSaw20rdXdqkhC6zSdlTpgQEUFqLPGTzwFCXPqRIjGQwRB
 sDvHq3PAPq+7bgwiWKYjJOFXs3Jl0L+nJGEofrCk=
Date: Sat, 25 Apr 2020 09:16:53 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Kuldeep Singh <kuldeep.singh@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1012a: Add QSPI node properties
Message-ID: <20200425011642.GJ8571@dragon>
References: <1585566991-24049-1-git-send-email-kuldeep.singh@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585566991-24049-1-git-send-email-kuldeep.singh@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_181717_182221_60E2D810 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ashish Kumar <Ashish.kumar@nxp.com>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 04:46:30PM +0530, Kuldeep Singh wrote:
> Add support for QSPI on NXP layerscape LS1012A-RDB, LS1012A-QDS,
> LS1012A-FRDM and LS1012A-FRWY boards.
> 
> LS1012A-RDB has 2 Spansion "s25fs512s" flashes of size 64M each and only
> one can be accessed at a time.
> LS1012A-QDS/FRDM has 1 spansion "s25fs512s" flash of size 64M.
> LS1012A-FRWY has one winbond "w25q16dw" flash of size 2M.
> 
> Use generic compatibles as "jedec,spi-nor" for automatic detection of
> flash. Configure RX and TX buswidth values as 2 as only two I/O lines are
> available for data transfer.
> 
> Add ls1012a(si) node alongwith flash nodes.
> 
> Signed-off-by: Ashish Kumar <Ashish.kumar@nxp.com>
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
