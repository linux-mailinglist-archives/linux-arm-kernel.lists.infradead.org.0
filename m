Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD72D21164
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 02:40:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fc8MXvq0zEa8mrLtaJiD3yvvUKPoRi8kHsJ91LOMQpQ=; b=q9qzk3MeT+hKHZ
	4vsl//4Rg+Q716OWFteF4WiTbn5Ymn3Dw2r8d2t72xxE7bEn0TVoxkCQTXciQyddt9IRon67eeNPa
	cW/Njq91LO9OvtZWomB8QBxMoYivRB7dfDz4rgqC6ZTyJwaWGL0prceJzS/blLd8dha7+nkCyKRPd
	hUqTsIUrihF31G7xmfQWuQzovdFwqtkh6g9C3XYA8PvOtsHlP4ZdUf0SRO51zaGgEjroVvE5DNWPa
	55uEboXVlylyCE9CtZDaPUwNWFPISj5WunVgUjcFMRPnbaWk8zSxNqLGwJSb8wjH7bmxR1LZY1fd8
	p/Q0YbuxnwNvNIEsOfOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRQuq-00044d-Cr; Fri, 17 May 2019 00:40:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRQui-00044L-Lg
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 00:39:57 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11E0D2082E;
 Fri, 17 May 2019 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558053596;
 bh=a89U/CJdEILTKwMT/VPoWfvtUFKtIeDwa3U/zMM6LHw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jS/MEdbTcZVTGZAG39y9ZcRKdYnLM5hU7QL9Ht2Vc4YRBluBR41V7CSi0H2u7pXCV
 btfnwhF3k1SGBLIHGqy8WyeX6HKpJwhoWernp/YeTFKpuYsFV4bU0bPN8I6gjaf/RB
 4SYMXU0e+NyegKaUwLRDdgRoP+hGguAZJbVIMgfE=
Date: Fri, 17 May 2019 08:39:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: imx_v6_v7_defconfig: Enable the OV2680 camera driver
Message-ID: <20190517003915.GS15856@dragon>
References: <20190504144645.32725-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190504144645.32725-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_173956_728862_7FBF7DA0 
X-CRM114-Status: UNSURE (   8.48  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: rui.silva@linaro.org, linux-arm-kernel@lists.infradead.org,
 otavio@ossystems.com.br
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 04, 2019 at 11:46:45AM -0300, Fabio Estevam wrote:
> Enable the OV2680 camera driver as it is used on the imx7s-warp board.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
