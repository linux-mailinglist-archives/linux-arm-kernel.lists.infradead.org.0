Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB951BD2F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 05:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=12LWeAKN0Zcy+A8OxDuxcqij3YZiAOpUzkY7gaM2qoo=; b=oCcc8G6YpA/pV5
	5At8AS8T5Aj9pe6qkwKRI2mjkb9NsFiYnMp41951UankgtXKBHqgVqltjSt49ARcy6yhBGspvCMqY
	a/OR+BU1IS0Swijf16uYr86RhZrjyHlei/fVIgUDBBA5zZhzOX2dxT+Wpm+OkBhnm+zmZ1nbEB3kI
	wxaLzfdvHJlpfCUVt49miLHJtwwiXO2BQnJSd5uvTMVMT3p2MdrbhRdV8HutudfI1xGr63EHBg2p2
	J2bn24RjHrbdsjq5Gn7of4d1YBklfZh1/PXqNoLnc4N6slovFQxI41Xj/cAq2/id8I2tRLH1w7Sxr
	M2r1B3AxCIF0v2qXqhWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTdR7-0005fk-AB; Wed, 29 Apr 2020 03:31:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTdQz-0005eH-Ju
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 03:30:54 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB217206D8;
 Wed, 29 Apr 2020 03:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588131051;
 bh=qIWp40UBMVyqIHUX5jhv/ynDwCsy5pkdSuR+Fpjjbwg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D5zHhFGfgDuf9Pm9jITNH4Hal9+bC61h6UF3QWjz18lljYzNFSz6xptM02dowbq6Z
 4VTb+Aje2aBZfSrn+r6MQdoUYYAKdJES3uZBN5qZ4TNkgDJulngcFpgvVCR3pr+n0E
 VMfmUfCFC02M/z7mMuV3embpanStmBa7a9hokmXg=
Date: Wed, 29 Apr 2020 11:30:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Subject: Re: [PATCH] arm64: dts: freescale: imx8mp: update input_val for
 AUDIOMIX_BIT_STREAM
Message-ID: <20200429033045.GO32592@dragon>
References: <1587719115-28728-1-git-send-email-shengjiu.wang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587719115-28728-1-git-send-email-shengjiu.wang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_203053_674922_F3942324 
X-CRM114-Status: UNSURE (   8.27  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Anson.Huang@nxp.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 05:05:15PM +0800, Shengjiu Wang wrote:
> Update input_val for AUDIOMIX_BIT_STREAM according to latest RM.
> 
> Fixes: 6d9b8d20431f ("arm64: dts: freescale: Add i.MX8MP dtsi support")
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
