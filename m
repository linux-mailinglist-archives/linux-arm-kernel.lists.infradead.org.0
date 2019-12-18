Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5371124A88
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 16:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WLKAVPjkycM0UUbyJ2ramkH3OoCrBegKgss16JgBEJY=; b=O3HHgvAdq047A7
	WOM0Wud+kzIEnxpMWFsdb8vlbmgZo38FBWrTV4+9k+jnvTZI+raAuk5czyRf54JO/cSVpMYhp3ysR
	uCBswyY0dcakqW/Ks4ccgh8Pgu9fcKo33QE2QzQ66yAUUJAiwK5rk/7mu7kaGHR+9OJj7sIcYZeDx
	P5wjlm9vt6HkNN1+t9d3G0SZoVI7o4gAnrl1BHy8FoAqnZLTP4Ur4Q6ORn4YFXG3RyMucjLzSp0YX
	Db324CjYM70l1YAVNsV/iFE8zjW9zRaGJR/SxVsKnN90bObXjmFnqvWg6Nh5nRme3LqLHNdnNkfys
	6/zt5BFyTnkRYXVO2Xig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihaoF-0004L0-FL; Wed, 18 Dec 2019 15:00:19 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihao7-0004BX-Bo
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 15:00:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f44HdFAV8jybth2ZGlrp2hEZQWpq0Dc4ywyfBLAszj4=; b=qodjHLIOjJUGem2f4qg51/s7Pf
 XjP1b+NCalVACpUltTaqVVWbKGlumPJs0bfHSiN/nm5rsvvvj+lPG5573a4MXP+LcmP3XyqtuNsO0
 9DhNDx2fLVCoiaJnWgDZ5KdMBGlHKA2N0+4MZ5ZaQoe8AqIpcbNJ0PcNvXYcIRxsL1jU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1ihanr-0004A0-HM; Wed, 18 Dec 2019 15:59:55 +0100
Date: Wed, 18 Dec 2019 15:59:55 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: mvebu: armada-37xx: use use platform api
Message-ID: <20191218145955.GE26938@lunn.ch>
References: <1576672860-14420-1-git-send-email-peng.fan@nxp.com>
 <CAOMZO5DeA24EUjr-E=V=tGNaZ7UkOEi+F5-kEBqEB288DSNSoA@mail.gmail.com>
 <AM0PR04MB4481B3EAB2DDC42A137E8AAB88530@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAOMZO5BK0Pa6Aw6n7Tf+C6+Fg15WNbEUOzKCQTaWqTUu6yoPjA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5BK0Pa6Aw6n7Tf+C6+Fg15WNbEUOzKCQTaWqTUu6yoPjA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_070011_411985_0B4ECA7D 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "wens@csie.org" <wens@csie.org>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 09:57:57AM -0300, Fabio Estevam wrote:
> Hi Peng,
> 
> On Wed, Dec 18, 2019 at 9:53 AM Peng Fan <peng.fan@nxp.com> wrote:
> 
> > Please see:
> > https://lkml.org/lkml/2019/12/4/64

  +                       dev_err(dev, "Couldn't determine irq count: %pe\n",
  +                               ERR_PTR(nr_irq_parent));


> Still think it makes things more complicated than simply returning the
> error code directly.

Hi Fabio

Look closer. This is not about returning an error, it is about
printing an error.

I think the API could better. A %ie formatter would make a lot of
sense, so avoiding the ERR_PTR().

       Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
