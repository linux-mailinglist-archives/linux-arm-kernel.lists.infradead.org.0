Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C02112A1B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:27:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djXwZ746tW94eO4PGogYYdUbJ5ctlujRCfejaVBH5Gs=; b=YpbpbtGbHxYZSl
	d1f51z4GAlOTreEbRdC9Wi2s73bPVTcKONEHMx5QnG/G9vtUOMGc0BQS75ufv7Q1vXLwBlW6xDRB5
	2wiEP3hMLPpWhjbLiw7IYeUl2hs2Tvv1ihbStSTPM9Juo+HjpJLOqTHN21EJRTPxJLiiPSJCWn3Dv
	437Ip2mC0kcqjDkBS+j4CiXcGRyvV1xWQqKOy27iWOrevr6kMu2S872oAvMiPCuL8Lh/UURcQuNSY
	ivmj+5ilpp95c8ZdkbJcd4ZpAOwbQgJE1TkYlED5UlivPEXQFFNMqrhZWPiRZ/Oh7Uv6AHgmomUG9
	El1+1vP8Hu/zCWLvaKzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSoP-0004PU-LF; Wed, 04 Dec 2019 11:27:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSoJ-0004Ov-5e
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 11:27:12 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BF7F720637;
 Wed,  4 Dec 2019 11:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575458830;
 bh=6Z0f+GH4Z7+tlO/TeA6h4wk+X8g4hZtHpvHBDJn+b18=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2f8Fse1Zp/kxqBfYLtLFtlWmUQULLl36F8QmrptmbxwWWIqm9mwFZumN3Mc44StCY
 jZSnhJT6Whb1m5h6DDcLu1ihiZfmXXP9EqKWZq++sH2wFOxWmMyS5ro92moKGx/b+P
 /7B1rbGr0Otv5DBGlSIS6YZIjpBUzMiwzEFNrBd8=
Date: Wed, 4 Dec 2019 19:27:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fancy Fang <chen.fang@nxp.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm: remove "simple-bus" for anatop
Message-ID: <20191204112700.GG3365@dragon>
References: <20191107103332.16485-1-chen.fang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107103332.16485-1-chen.fang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_032711_235447_C8499AE2 
X-CRM114-Status: UNSURE (   8.55  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Jana Build <jana.build@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-devel@linux.nxdi.nxp.com" <linux-devel@linux.nxdi.nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 10:35:26AM +0000, Fancy Fang wrote:
> Remove "simple-bus" compatible for device anatop,
> since no child nodes exist under it and it is not
> a populated bus.
> 
> Signed-off-by: Fancy Fang <chen.fang@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
