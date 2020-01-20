Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A981427A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 10:50:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5F1WpfxCvvelfeIN7Wnn1KSzaAzycs2rIuNqkvZq8MM=; b=k9UMpxOCmvUyabrFzgylba40G
	h3gF1rdJiLZMfurr3zS6ZoTQAtaukxOJIv9vR7wlEUo9OlIqd3spuGXX8NUUMj04A4n5hBBRdNxjz
	Ms2nWvbpRYWw50tKdu9mo10klHj5rocli5bv/jtDbrPG/7TXomPamH+azpjp16m/cNptEjnbwx22S
	rjyNGyucn4FylqSu1oa1Z7ODs7yx/afNXdq7F7BfTa3TX7jrIuaxZqJLMHKV3RqhHbfl+Ilkg5Cls
	0HCS7F7uHuIcc9OuTYgzd6cJskjrZYdX+vKyf0oWYMayGXUdEo4Ds4XeK9LxRrYe7kFUgKwx5BcJ8
	KRSO1xdow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itThI-0001Gz-2a; Mon, 20 Jan 2020 09:50:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itTh7-0000Bh-00
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 09:50:08 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1itTh3-0001PY-RY; Mon, 20 Jan 2020 10:50:01 +0100
Subject: Re: [PATCH v1] ARM i.MX6q: make sure PHY fixup for KSZ9031 is applied
 only on one board
To: Andrew Lunn <andrew@lunn.ch>
References: <20191209084430.11107-1-o.rempel@pengutronix.de>
 <20191209171508.GD9099@lunn.ch>
 <20191209173952.qnkzfrbixjgi2jfy@pengutronix.de>
 <20191209175119.GK9099@lunn.ch>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <30b05289-2cd6-6ca9-51fd-0af351506b6e@pengutronix.de>
Date: Mon, 20 Jan 2020 10:50:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20191209175119.GK9099@lunn.ch>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_015005_049951_4F43DFBF 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09.12.19 18:51, Andrew Lunn wrote:
>> Yes. all of them are broken.
>> I just trying to not wake all wasp at one time. Most probably there are
>> board working by accident. So, it will be good to have at least separate
>> patches for each fixup.
> 
> I agree about a patch per fixup. Can you try to generate such patches?
> See if there is enough history in git to determine which boards
> actually need these fixups?

After some attempts to make it and more discussions, I tend to provide a Kconfig to 
disable/enable this fixups. This will provide an option for users with old devicetree
and possibility to continue development on clean setup.

What do you think about this way and what default state it should be? FIXUPS default on or 
off?

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
