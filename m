Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26494168A99
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 00:57:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yhnJPBTdK3h8C6bC+UdFNHh5r1ZD9WXHzSzT3zGL918=; b=dF1B0ud8nRcwbw
	eitooek1e/somrAIuzY+7Evx0WyP3jlpHe1khEEN3eGX+ztVZzFl9PsmltE5lcZt1wwUw4xkaC8zz
	2ulNkDuNpwqRrQdFkrh9GL+yDHfq1TqiInMpIIKg6Q7XOd5S2S37OEcW+zn50cL6kicyj39KQ+t2Y
	fNsv5eznsMkBppwftjQ/FWl0ji5wCJyVFM+lMNsGN0sh1ZrFkJCQrZhWIbhZfR+9XXNShcUWXEiZT
	6SrpRsoEh9NHqTmq1vPdEVLJDPH2DKPbDFBO/WhuNpmrW4NGabmNMl7rIeT6s+FOxW+9p1cwe3vrY
	9tLm64adq0QzhSZywLOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5IAx-0006tj-14; Fri, 21 Feb 2020 23:57:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5IAn-0006tN-NK
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 23:57:35 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8EDC92068F;
 Fri, 21 Feb 2020 23:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582329452;
 bh=lcNJ4N2cNdsfaAhCE0btC66qSo+qzJsDMEfe43gVqUs=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=W+HysxCObViod/QRMGereEr4TyfFwvortsYBGG0TujR7rAUuIScNbRtgW0W2UDFm+
 n5isUNsA+YGoqqbquxCRFcqpyybhNtPRwPGO3W3mwkGmHrVyOl3eCZyJT708GW5vrJ
 bqxPfr2TeGHlJkn1TKrm8UigSVgqW6XvNUzcsYHs=
MIME-Version: 1.0
In-Reply-To: <1582268376-1672-1-git-send-email-Anson.Huang@nxp.com>
References: <1582268376-1672-1-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH] clk: imx: clk-sscg-pll: Drop unnecessary initialization
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, abel.vesa@nxp.com, festevam@gmail.com,
 heiko@sntech.de, john@phrozen.org, jonas.gorski@gmail.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 mturquette@baylibre.com, s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Fri, 21 Feb 2020 15:57:31 -0800
Message-ID: <158232945185.258574.18038079737425200654@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_155733_889828_7E5C6C6A 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2020-02-20 22:59:36)
> No need to initialize 'ret' in many functions, as it will get
> the return value from function call, so remove the initializtion
> of 'ret'.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
