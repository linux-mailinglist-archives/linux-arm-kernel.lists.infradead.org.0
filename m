Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C800B22A3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 05:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OzrCxsw7GjQY/XZXz4WViuqUaF2dZfJWwEBPYxulRf8=; b=Lhlh2Tlh0Cpm1E
	ExN1ZGbllU2KUy3GEZwsq6PIZ//mp0d+24nokUu4fbnWiA6uWDntbT4UvOcjAG/+LjvVn0w8NyGTk
	rbhgPfoFmhbx8UMYLLWPRDs1CNWBZ+3QTI+ebYkUJXDTL5S8RsrtkcD8oPwojprRnxecbov4Sko4z
	dwwNKOwbeYfaQ+oGe4CPxm4g7Bla7PtFFZnsl+6jGjWBlC6zAaeFe6hOChescvra7StV6EXRREfcN
	JHZFu3SEellxk7+tCTqavfoK6J9JquTGdxHLpMrIM0nKaeFpHGVptwmaCWjI0pHexPgwzFLiwGeuw
	2NjPA4OzXvUo+6PdMyRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSYbv-0008Qa-Sw; Mon, 20 May 2019 03:05:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSYbk-00081n-LU
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 03:05:02 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68BFC20645;
 Mon, 20 May 2019 03:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558321500;
 bh=sZpSsCuj9TYfdRouk20kA2yqk+mSZuz4MahQwFHC/SA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KS3Wtmas5bnXKXjzvCRHxw67pjjMY6zmRD8sB/hxuWfM2ug/h6zTeymiVZV5Dy+Id
 kjw6ZiDGhgVykEoj8OmLfw7lmxFyzpiUFEOmlI2Rkw5WVyovAA4i9a5OLtpBVeclEw
 AcS94U7UmADYJTgNk1zA4zyU0AJHxQZPSrZvGZ+o=
Date: Mon, 20 May 2019 11:04:09 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH RESEND 1/5] ARM: dts: imx6qdl-sabresd: Assign
 corresponding power supply for LDOs
Message-ID: <20190520030408.GN15856@dragon>
References: <1557654739-12564-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557654739-12564-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_200500_722852_EF4BB2DD 
X-CRM114-Status: UNSURE (   9.75  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 12, 2019 at 09:57:20AM +0000, Anson Huang wrote:
> On i.MX6Q/DL SabreSD board, vgen5 supplies vdd1p1/vdd2p5 LDO and
> sw2 supplies vdd3p0 LDO, this patch assigns corresponding power
> supply for vdd1p1/vdd2p5/vdd3p0 to avoid confusion by below log:
> 
> vdd1p1: supplied by regulator-dummy
> vdd3p0: supplied by regulator-dummy
> vdd2p5: supplied by regulator-dummy
> 
> With this patch, the power supply is more accurate:
> 
> vdd1p1: supplied by VGEN5
> vdd3p0: supplied by SW2
> vdd2p5: supplied by VGEN5
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
