Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C20ED19938
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 09:53:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tv+YfFZ5ShNhJpSJmE58gaik2JLPoYGpH3n4AwhxAmw=; b=KBkSgc09vIYRBU
	EHmRL6zLih8PWuhIIl4tQNufYlGJ9hKIU9in6474I0XhBxgWbp5QA9JYEgOjPBjZ61EHSmMBWmwtb
	UqdxpMosavr8B1tMx/EkQ1HW3ZkFnTENGJ+wn9KnVczYySoqAE1iOqnh7p6bHSLpNEYptii++sE8i
	GZ1KGDdL9GGwFW4H4WFqNnUzB05PILYih4dhpC5pKOuURDO1lf/tK2UKNPE1ZnR+H2A0WUSHSrZ2Q
	53RuRIkjC4//kZhU8EXF73Y/GK4FKc4o2ympWovdZekfMAxPPtjMgsYy5HTSaVrCr1uHOmuaoQXc9
	HDQ1zAl94uF+RJrxSHug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP0L3-0008Li-US; Fri, 10 May 2019 07:53:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP0Kv-0008LJ-PL
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 07:52:59 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF63F217D6;
 Fri, 10 May 2019 07:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557474777;
 bh=dfJ5cDE8S6aFtBlS+mbYcZdo0hkC30M9EBxUWXrn1MU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JowxXFCRc7htA27Yf9LmkUfNifx6blVId8ug9OItw3EigQK61RjsPcrHUZ1LNdRii
 ssl0bwd74wNDos4dA1+m1ZOzFnL3r2waSDSeQsfIJQVUzQYf6Y4KjiPRw+9AsZ+rx0
 Q6Tu6TC76fZ0d0o98pXWt1z0plAj5As7HNPyTQYw=
Date: Fri, 10 May 2019 15:52:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2] soc/imx: Read imx8mm soc revision from anatop
Message-ID: <20190510075232.GH15856@dragon>
References: <95ae35956d5488989833e2287f3c6fef55ba2aa8.1556212347.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <95ae35956d5488989833e2287f3c6fef55ba2aa8.1556212347.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_005258_042135_2A184C90 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 25, 2019 at 05:17:39PM +0000, Leonard Crestez wrote:
> Like on imx6/7 we can read version information from a register in
> anatop, and in the same format.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

I do not apply patch using base64 encoding.

BTW, we use format 'soc: imx: ' than 'soc/imx: ' for prefix.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
