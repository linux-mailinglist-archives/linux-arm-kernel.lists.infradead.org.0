Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B76CE1E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oP2EC06fSgQDe78wJASAI9bOItwQyngEk6sEcVfwiO8=; b=ZCXp3W5/PSLzXj
	D77kBhbx9/B+p2WYSwpMg70asXWetsB7ezNxHz+HPqi93fX0IvicyCfvqRTnNCPPJRZ25wFxTZdPp
	L76hsgcdaZVN1gSwTfKWBEfPjvMjX2y2AveA0feloE86Il+Fc5m25b6I1bWToEpovmyG50zQCZts9
	jQRipIa0yTUGH8xSQbgRw55qAPLdlzgODWTcFP4MmMadzn3Or8FsixSz0wYp8rlPnM3/TQtDEt2OI
	zfhhRVJVWQa4J76FYsFnZAwnc0+Y3ziMAmyfzsL9mQl68R0L7dC2MthhlwkyWn2y/UXAXTfSIi6JN
	IHyWIzGaKif02u1C84AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSHv-0001vj-Sd; Mon, 07 Oct 2019 12:38:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSHm-0001vH-7n
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:38:47 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D725205F4;
 Mon,  7 Oct 2019 12:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570451925;
 bh=k0aYuyiQaMFdE8N+htYyu9VJRKvGUtbLczel8OfShbE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F93vk3WvYAQTsHjp9YcS3NsiJiJCg/tE0O5CcHpjCDyk2E4YrPpeB+LH/wsKB/+XP
 XYQKw7iDG5pcIg5mIt6JWCqK4xTKlyR83qJEgZ6vT65hdfNfH5ofEl1K5rYRSnI/Xz
 qvdqPgw1RTbFgx0jW/S0jLPDnMYpkC4FJ7im7xsQ=
Date: Mon, 7 Oct 2019 20:38:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anatolij Gustschin <agust@denx.de>
Subject: Re: [PATCH] ARM: dts: imx6qdl-wandboard: add ethernet PHY description
Message-ID: <20191007123824.GN7150@dragon>
References: <20190921120736.32290-1-agust@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190921120736.32290-1-agust@denx.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_053846_296201_DA013B11 
X-CRM114-Status: UNSURE (   7.74  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 21, 2019 at 02:07:36PM +0200, Anatolij Gustschin wrote:
> Wandboard devicetrees lack the ethernet PHY description, add it.
> 
> Signed-off-by: Anatolij Gustschin <agust@denx.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
