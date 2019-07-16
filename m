Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9236AD7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 19:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xJdh3Tue5t7T9bviiYaG3cgzJ+OQa8qpP40C6UvNHI=; b=l2LCVZ+9ekskka
	9YwQaMggDP0uTmbVsdl6DoPCSv/SPlGo3ThSA12ykz+XI9jDKWOYcFS+7mRxvWrYpDhZMgZiEL1VB
	23G87WZ7XQycd01XO2CbKF0f7LH8NHy0en1WYV0+hCNu6/34J7K+dNEAhj5TxM5pxwCaoCJMZ9ddE
	KPPn55GOpejd5M7Ops07kzbDI5f+kxJmCCNNkQH5xrjJ4PbcSt8y09Dp+Z2M1W1izxD66F7Qy30oc
	m7k1ybdqpUuNo4UkDQSWJqUYuPFuyiC6pWrm+4UrP3eMrVKeF0VFKBE8tkTfOZU24ynRnBvp7biCo
	CWFsBl4wBhpvPx/LanrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnR1s-0003ZG-GT; Tue, 16 Jul 2019 17:14:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnR1d-0003Ye-GT
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 17:14:02 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48DDB206C2;
 Tue, 16 Jul 2019 17:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563297237;
 bh=OMDVh4bAc08rVB18Se9IY+Dgw/527+md7p/KtELkBvw=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=xNnc4wQgQDZfQ+oxnkr6wJPXn1JgvSlYtW73olG09ASJEwRJEMNbufaEZIDbDWw21
 vGqjr1LzxS9bVwRfcbxjohKBIY895PlLv7xtgOvBDmlQIdzrpYZ1aXOMPxgeNTI6Rw
 uw3WOrWLLkL/Z8BcYEfHNvkd34PpQolp+FL0V1Hk=
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB5055F2D2C814BA8C83ACF273EECE0@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <VI1PR04MB5055F2D2C814BA8C83ACF273EECE0@VI1PR04MB5055.eurprd04.prod.outlook.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v3 1/2] clk: Add clk_min/max_rate entries in debugfs
User-Agent: alot/0.8.1
Date: Tue, 16 Jul 2019 10:13:56 -0700
Message-Id: <20190716171357.48DDB206C2@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_101401_567776_9960579A 
X-CRM114-Status: UNSURE (   7.56  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michael Turquette <mturquette@baylibre.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-07-16 03:32:44)
> Gentle ping.
> 
> This patch shows up on patchwork but not in my inbox so maybe it was 
> lost in spam filters somehow?
> 
> Geert offered a reviewed-by in v2 but I forgot to add it.
> 

I see v3 on the list and in my inbox.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
