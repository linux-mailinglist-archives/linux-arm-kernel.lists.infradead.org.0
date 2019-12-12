Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A677A11C267
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 02:42:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cnx5Ca+cz/rmhgD0SrA5dyAjJXxrSyfw2CAjGAR2bw=; b=cX8A1/Q/ZaEl/q
	FALQjF9TiVHPjXbrM4ONjxAAaGAvo/AkRwA29COAr/FSwUw6eIYF7bZwCLbfXxB5vTapGMx/eKnor
	JA+HDCUG+DSET/nrrnhm9Om53s9a5hiTNe2hwpAowpqAPcI4fcRdyNLeAdX8jdrMX+SEjgum7a4/P
	DEKXnFyJ0/+SWRzV9Um7M9MBXZjQDJjyX8Z4CiNEvC20a7ElaZ8nBgpIX9p4f2C4WMM5E/zdA6z+E
	on1rGIyYesDLXrZtEMnb8QBR0bEy7c3+JIoCJS4C4bOUD+7MtVqNsBhj88jCpPX5juPH3ZsO7CbVZ
	HERXCZ6qU/vPVrfyGG4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDUN-0003Se-No; Thu, 12 Dec 2019 01:41:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDUC-0003Qb-0g
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 01:41:49 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8B7D2077B;
 Thu, 12 Dec 2019 01:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576114907;
 bh=CSgfeyRS6Qck1tWShVAUaL1hhLTnFqNxjE6l1DED9ZU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fqNw8OCERhxz18dncWAP4oOqpSbTMpX2OLneqxHMP9gURInlmpu07rvcA4DTsAtjM
 gIvhM1AAhN2wU3tBVOkXstWtiG0/QOXphqBFoQHON+ACzKZ74P9Z4qT9N3iGHfumId
 QSt0e9M1egittPCgodfwCSEqMI2JlwhkrejhY8Jg=
Date: Thu, 12 Dec 2019 09:41:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Christoph Fritz <chf.fritz@googlemail.com>
Subject: Re: [PATCH v2 4/4] ARM: dts: phycore-imx6: set buck regulator modes
 explicitly
Message-ID: <20191212014132.GA15858@dragon>
References: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
 <1573652416-9848-5-git-send-email-chf.fritz@googlemail.com>
 <AM5PR1001MB099480739860863EB08EA73280760@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <1574973044.2362.11.camel@googlemail.com>
 <20191204125336.GM3365@dragon>
 <1576090586.2695.1.camel@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576090586.2695.1.camel@googlemail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_174148_105128_A25C878E 
X-CRM114-Status: GOOD (  12.17  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Support Opensource <Support.Opensource@diasemi.com>,
 Fabio Estevam <festevam@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Lee Jones <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 07:56:26PM +0100, Christoph Fritz wrote:
> On Wed, 2019-12-04 at 20:53 +0800, Shawn Guo wrote:
> > On Thu, Nov 28, 2019 at 09:30:44PM +0100, Christoph Fritz wrote:
> > > Hi Shawn,
> > > 
> > >  any chance to get this patch queued for the upcoming kernel?
> > 
> > Sorry, no.  I need to wait for DA9063_BUCK_MODE_SYNC landing on 5.5-rc1,
> > and then apply this DTS patch.
> 
> 
> DA9063_BUCK_MODE_SYNC is now available in 5.5-rc1, could you queue this
> patch now?

Done.  Thanks for reminding.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
