Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D55C91F9665
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 14:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tnug3ttfiirlHUUXO64fdUVQ/7/0aWVAydGVi5Eacp0=; b=qctuzf2jevZqlQ
	II+nMJXFQo3jv5Sukvw4B11q04le4RJv18vybhJ7lV39RRhaPVcwLmKaW+JWZivaKTCrVz8IINnDj
	jcOdFTicEjKQCMrKxbRTtE15FajcHVWuopPfaXhxr08Ct3N+jiNCz7dUUOHLKao1mrFJkGHskb/ML
	lPrrmv2Hn3Nk2yV12lmkhFt7BPLD45HtjeAuehai0dY0l2WiQGNhWha5+NZrRDn2KhH7WB4KzjHje
	o7Uyl9wkyd2vXMm2Q7vk/9IDsQEL6iUtS5Od25Tt1EfK5nR4Ib5PUji8azfmGzqAvKoWcHp6wVYok
	zApMFFH98/RL4Z4+hefA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jko41-00022G-4n; Mon, 15 Jun 2020 12:18:09 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jko3o-00021V-TA
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 12:17:58 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05FCHIv9071938;
 Mon, 15 Jun 2020 12:17:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=kQq+4iR9f0rg4BQj2QPvNvq5A+juMIZDREpSm4s68U0=;
 b=uT4s2Uk+FczEXZYGYtBZhFKlBiDXJvvNy/r5hwSh7jheDZMMHPyq8ip75l46yrorq8WT
 HBKpZWLodZod7aPIop7+peQrTwjgKjeKUqY2crRblOoVhY4yBxShmLXovcSI3EAFyhkd
 oWbfguM7lIxWF2l8sM5MrcbJJnDfgs2a3Qid0+GJ+CsLAApHTUbDkoc5Cb4XzSljgOH4
 b7BLp4HTIzGHwEyIfsSaVvxpd1ZP9hu64Ac3HDnKuS5jo9Fnh5odP4uZZ+ejggYOPiAc
 0wZ55cy+0/oK3ffbTjAxsKKf9yDzrOEeS2cFf1vsH3Q4wzFI4RzXh1DBeB5AGNat73pp ew== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 31p6e7rpv8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 15 Jun 2020 12:17:38 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05FCE5cB113337;
 Mon, 15 Jun 2020 12:15:37 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 31p6s56wmk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 15 Jun 2020 12:15:37 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05FCFUEp032563;
 Mon, 15 Jun 2020 12:15:30 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 15 Jun 2020 05:15:29 -0700
Date: Mon, 15 Jun 2020 15:15:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] pinctrl: freescale: imx: Use 'devm_of_iomap()' to avoid
 a resource leak in case of error in 'imx_pinctrl_probe()'
Message-ID: <20200615121520.GK4282@kadam>
References: <20200602200626.677981-1-christophe.jaillet@wanadoo.fr>
 <20200613154954.GA98985@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200613154954.GA98985@roeck-us.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9652
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 mlxlogscore=999 adultscore=0 phishscore=0 bulkscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006150099
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9652
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0
 impostorscore=0 bulkscore=0 clxscore=1011 malwarescore=0 suspectscore=0
 mlxscore=0 phishscore=0 mlxlogscore=999 lowpriorityscore=0
 cotscore=-2147483648 priorityscore=1501 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006150100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_051757_042805_7689446A 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: aisheng.dong@nxp.com, aalonso@freescale.com, shawnguo@kernel.org,
 linus.walleij@linaro.org, stefan@agner.ch, linux-gpio@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 13, 2020 at 08:49:54AM -0700, Guenter Roeck wrote:
> On Tue, Jun 02, 2020 at 10:06:26PM +0200, Christophe JAILLET wrote:
> > Use 'devm_of_iomap()' instead 'of_iomap()' to avoid a resource leak in
> > case of error.
> > 
> > Update the error handling code accordingly.
> > 
> > Fixes: 26d8cde5260b ("pinctrl: freescale: imx: add shared input select reg support")
> > Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> 
> When booting mcimx7d-sabre in qemu, his patch results in:
> 
> [    1.835341] imx7d-pinctrl 302c0000.iomuxc-lpsr: initialized IMX pinctrl driver
> [    1.839702] imx7d-pinctrl 30330000.pinctrl: can't request region for resource [mem 0x30330000-0x3033ffff]
> [    1.840261] imx7d-pinctrl: probe of 30330000.pinctrl failed with error -16

Yeah.  Sorry about that.  We had to revert that patch.

The problem is that that devm_of_iomap() tracks if the regions are
already used and of_iomap() does not.  In this case there were two
places mapping the same memory.  I added a comment about that to the
devm_of_iomap() so hopefully we won't introduce bugs like this in the
future.

regards,
dan carpenter



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
