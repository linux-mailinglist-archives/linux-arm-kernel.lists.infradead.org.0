Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B65124ABF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 16:10:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=296N/TEZQzyjabCQf6c9OcKWt7dtvewl/PNOSf1DFAE=; b=Y/0QSqlBJ3lW8y
	3Im8vfppFOzQePSnO0IdL/CLU+5rTsOdo+Q5ZEB4UbFMvd/JahRUx8cuarVD3zmPQ8Xtx9PJdtu79
	Q8CEulSigU/6YqrqxZJ6BS4yaF9sOatD7asFBKRSx//Z7MNLMw6uFXgF5j9YVuM7CncxPVJCkexMU
	P45M31PSTBimGTxaax8Ax/ZbUrdALrbzBvSOChcC/h4VWRQvU9WJJV4FU13okQaiN5xj+ZoTs2VdP
	2vqazL3bSLta3YnV0fJvlFSabAKjIcjNNraxA00Z/jpMCBsMd7547lP8Hk1PQHy63s+qSYRHYsq69
	5Pawi2DgcQvuUQmr64+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihaxi-0007Ut-0k; Wed, 18 Dec 2019 15:10:06 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihaxS-0007SN-L9
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 15:09:51 +0000
Received: by mail-lj1-x242.google.com with SMTP id p8so2559458ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 07:09:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HhJbWUsWwTIyi0nz4fJwHURTxI1Rw4XYrR+51bn6K04=;
 b=n4CnIRpgiWYaPqhrTGDqoNhiTBR0o5Z4TZgEmVJjUqrcxs/eZ/RmRLpYvIVEjSMOuw
 zj7m3K6IjnEBCb0Znun9ZsDmmSn1LRVTajc0FgbgZMrc6WGWZUMFHAASKtM7AI1xdD+x
 B0nJEXFCWymrx5jxZ+vCYGBdE/nRahl8x+0BZNk01+p865de/TDTBDKa2Er4pnzvhxN5
 4+pmsqRkwZVO5VdTu6YWuFDTYVudquuDrwZkO5oJ4rXj00ugbbpz86t8pTfa/P+Y0w4X
 BQfClWxwjmtj/ejYcqXHblGAqzIUXUWDmAtlo7XoQtG4Mro9KTRTQm3w/ajdp+uV8l0r
 NDrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HhJbWUsWwTIyi0nz4fJwHURTxI1Rw4XYrR+51bn6K04=;
 b=jikhahAFba0WiIdBoOXSdgi7EIJS+12ixzNwUpuTdIaEj5rMDJgWc8ZSFb0hIWf2a4
 hDVZhNFPjKCzsF5jvQCqKolj2UD0dZjS9SBqi9EHF0qnhmnlNrtz1TFgka8vV6VuNNaI
 RN58tNyK3Wsg5Y8HK+7/jQt3835szIYvOLVxfjQCXl+7Yve1JB/oLCsfFxB4PAuuQ06C
 /WEZiRIIoMhKTkdPHzAqqTLWKT+fMs9lOYcLEwJAd88IYCHCh3n5GILVVeoLT8gW+UPI
 HBnjWnMnDCtd8S/G5c1syfqUPIc3K71DsmOCG6WbzC1VIl7NLSJJBo+wN9GlSSkuJeIy
 ws1Q==
X-Gm-Message-State: APjAAAVW9IEm/jsbd6JW3PH7zrHHGqALQ7wkpYLnfHVKqpwXbJefuYpR
 E+H6cRnmLUuNqbnxa40e4YJG88XrAsGX48WWKGU=
X-Google-Smtp-Source: APXvYqxcQGEJtnYA9Dox6wkCmoNhgi0nQlVxmrljxdbiXh66FZxbDmoKUQbvXOU6f+M6uubdRb2209sGGo+XVq9qTo4=
X-Received: by 2002:a2e:814e:: with SMTP id t14mr2079402ljg.149.1576681787440; 
 Wed, 18 Dec 2019 07:09:47 -0800 (PST)
MIME-Version: 1.0
References: <1576672860-14420-1-git-send-email-peng.fan@nxp.com>
 <CAOMZO5DeA24EUjr-E=V=tGNaZ7UkOEi+F5-kEBqEB288DSNSoA@mail.gmail.com>
 <AM0PR04MB4481B3EAB2DDC42A137E8AAB88530@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAOMZO5BK0Pa6Aw6n7Tf+C6+Fg15WNbEUOzKCQTaWqTUu6yoPjA@mail.gmail.com>
 <20191218145955.GE26938@lunn.ch>
In-Reply-To: <20191218145955.GE26938@lunn.ch>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 18 Dec 2019 12:09:42 -0300
Message-ID: <CAOMZO5BibF5A9sw=fLr3DXLf9LXYdxWy=aK7KCE3L0bt5eX+9Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: mvebu: armada-37xx: use use platform api
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_070950_690548_691EA124 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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

Hi Andrew,

On Wed, Dec 18, 2019 at 12:00 PM Andrew Lunn <andrew@lunn.ch> wrote:

> Hi Fabio
>
> Look closer. This is not about returning an error, it is about
> printing an error.
>
> I think the API could better. A %ie formatter would make a lot of
> sense, so avoiding the ERR_PTR().

Yes, I think that returning the error like:

dev_err(dev, "Couldn't determine irq count: %d\n", nr_irq_parent);

would make the code cleaner.

Maybe just a matter of taste though ;-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
