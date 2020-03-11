Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B39118129C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:08:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1ZxqJkP6iPwudI+pWs01HgyC+c2hRqNGPhp3fZED1o=; b=B2LBpP4idBZF2i
	jV4vTev9qCX0cUW9Jfyn21lwKvvvMcReCqz/mQmQbx8tXf6suzCQcX4wbKOVGyMTV6oWugvgs0Z7A
	jsaHQ2CgW7Pa4iKkOVV7DC5C7uEmicv/jLQDlLapBa0EkA+viSfS+GfGc/JcZXYmq6a9CrNPydsRh
	EtSRV4rCxCsxP3dMfa92bSyVWtB+9S1VR5lW5Vr0tEKUQc9VSr5li6YAUAdaaWU5cNtB8vEmoqr/f
	yhz2mBYkJSamYX6K9iPfXTBxTxK7qol635B+Qmg90X1CD4nHSczKVJmkQUoprIacNpgBSWnkiROGj
	WNMypO4b52/VrjaJpkFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwP6-0000kQ-2I; Wed, 11 Mar 2020 08:07:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwOz-0000Wi-K4
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:07:42 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1D8B2051A;
 Wed, 11 Mar 2020 08:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583914061;
 bh=culj2ZVb1YkzuYMmBPDBiyKzZ2bpF4vVWyXAAjHvgCA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bf/PxpJMqiJuhNg/kLpWE+IbjwS6+zDM9C9NMei01C9AgmGXeWTJ/eWXHhyprafup
 PleVhD3qz5Ghc2xqU3kWKJjWZ+V+3HcBJT3bPxhL8EoQFRZpPByihUYXAWwO4I5X2x
 HD7Xlnkp45vSi/LdLnQuaYyZGxpWlK+fJpKTo2RE=
Date: Wed, 11 Mar 2020 16:07:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mn-evk: Add i2c3 support
Message-ID: <20200311080732.GX29269@dragon>
References: <1582984982-29151-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582984982-29151-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_010741_684997_56522A28 
X-CRM114-Status: UNSURE (   8.16  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 29, 2020 at 10:03:01PM +0800, Anson Huang wrote:
> Enable i2c3 for i.MX8MN EVK board.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
