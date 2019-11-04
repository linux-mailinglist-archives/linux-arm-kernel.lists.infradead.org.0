Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D191EEDA4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:04:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qx2qEwY7PMT5NbQissMoU4/YRooASd9eQONqLoQKpGg=; b=cNeGKJ+B3zqMLQ
	q7L3G/vHkNeSO0hodl1LCdsLkK9+TqmlNhIOOgjF0IIS9+G1jMjPBBb81TsTNeLagWgpmanili/E2
	a7suHegqjrtJwVzjjtV3MWxLswj8lzeZ8P2XgFWynM2OaNucLp09psEbmXHidKbJWQCaHS4QAtigA
	VuOd/6HA43K4u5tvai5Vevhw2N9yk4ZQbEhRW6oTx3VugJV9BLsyFaJgYDIDqLiunoyb2cym5Ot38
	FLl3ssp2UZ1toRCWm7frdM/ujVOiWQEPOD7l9Nz306qkJmDGwlADNc/rB9noKB4qupPnnjb41YS1u
	6c0WiyOL2FFZ08C5JFfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXLp-0007RF-Hs; Mon, 04 Nov 2019 08:04:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXLe-0007QA-EB
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:04:27 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6794421744;
 Mon,  4 Nov 2019 08:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572854665;
 bh=yvvBgsnn1Dvfpl7MkdqBpvNVasTL5nfoGuvqYlXORZ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tlEW4DfpGJBuDBodQMsFz6UbsP7s2PmqzUbnP/PqHsuVUiy8T7rjeLZN8kE8HXlO5
 2UGi2qat2Jg73ftxLY1lwtrWf8hFHZMK5pdCIyCpDbYzQGJnQ7uONM+DWsyPzxlRq/
 LO1VISd1bQDIgItxe5Wrj54lq/52NbQQYkOG+C20=
Date: Mon, 4 Nov 2019 16:04:01 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mn-evk: Remove invalid Atheros properties
Message-ID: <20191104080401.GV24620@dragon>
References: <20191031202028.26165-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031202028.26165-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_000426_510894_6A9AF867 
X-CRM114-Status: UNSURE (   7.45  )
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
Cc: linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 05:20:28PM -0300, Fabio Estevam wrote:
> None of these at803x properties are documented anywhere, so just
> remove them.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
