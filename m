Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B418615B44D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 00:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95Tu355CsC4KkXaGcZ1Z8e7jtIZut+pJhCrjCyilxlY=; b=eM9L3XsLPoc4u2
	QMLUj6CpGc4tvUIEx+1EU+7LwnT5ImkBcwsAGBFouuMzWkJcEORnIOI0VVavh5Q28k538eIWei/eJ
	RbxFZHZlyk6N6J+2QICj5eS2vtleNNQCEc/PUMkyZOJqFdXO8p4FJd4zRlrud7IqC8ZAA0a57bmTh
	kcsq/jaYknIXPuIqz0u/1MMlAPxl6vMGZQknPW/VQr+chNlUwpzTpflI9XNmGHsKr2e4Fzykbkqti
	AYK7fEqSJBeBpPb75uCcdGnwBILDx1s6ifypJ8exYxHaVzfYZqeC/UPSuSX9zwnx9HsTDGleIaHSh
	aLB0UNQ0Jswplja2b/Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2118-0007WQ-Ip; Wed, 12 Feb 2020 23:02:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2111-0007VQ-A4
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 23:01:56 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D49E521569;
 Wed, 12 Feb 2020 23:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581548514;
 bh=1Dc+b6kANOK+MTUko6hygKOXL+SmgqNxbhJ3tJ96sug=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=B02hWz3753ZHM5ekoQQLoas2pIjQX/l6HIjRBD/qLVakEVqrolq2dMisDy2ZrmOBj
 uI5cD+KoD+MoDWoDB43+lY112neAIEoLEiC5BJTxVB5IW8iC/5G+7Lsn8WV40so9vC
 1/xXlA7jUoSX70HtV6x5CkGw/S7Q1b00RW+ZO23Y=
MIME-Version: 1.0
In-Reply-To: <1581498180-2652-1-git-send-email-Anson.Huang@nxp.com>
References: <1581498180-2652-1-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH] clk: imx: drop redundant initialization
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, abel.vesa@nxp.com, allison@lohutok.net,
 broonie@kernel.org, festevam@gmail.com, gregkh@linuxfoundation.org,
 info@metux.net, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 mturquette@baylibre.com, peng.fan@nxp.com, rfontana@redhat.com,
 s.hauer@pengutronix.de, shawnguo@kernel.org, tglx@linutronix.de
Date: Wed, 12 Feb 2020 15:01:54 -0800
Message-ID: <158154851405.184098.10235896077677896514@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_150155_371168_F47C3603 
X-CRM114-Status: UNSURE (   4.62  )
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2020-02-12 01:03:00)
> No need to initialize flags as 0, remove the initialization.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
