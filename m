Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 042B31B6485
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 21:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFwMt0JwzYM2VfiNSGvaHOh+zKrrkSBGuIT7PNRxv7I=; b=g+kusK5Gdc+Gvk
	vVR+KzyiZt2gObV6gv77kqxao/pM4E6kdFwe81IGNl9vino/o5KkpimLXfbBzxja+Pjrz5dVX4eUD
	yI1QdiX7hP07hexFwIAIhHl8z+tGu8vJnMmvm3eoZnU9PNEuTGb/ew8kQXFYYqoz4OQvy72XLVQhY
	IxCd5ie7B/IuZqKk93xkYpNIiZLNVZKOqWDGLz0MVk3HkasoML0YYgS1hDvCnRDA/StNm06aDLNbn
	5tJ8dwQlNrAu7CSVfAw3LAnRUhf7hTuYhMEDqyV/JiHuTrmGAp+7ZpASTLGdSDUgNLG3qt3/jhe8P
	dk8MvLN6IK3HE/Y9haJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRhbw-000123-Mh; Thu, 23 Apr 2020 19:34:12 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRhbo-0000zl-Aq; Thu, 23 Apr 2020 19:34:05 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id EA79412776892;
 Thu, 23 Apr 2020 12:33:55 -0700 (PDT)
Date: Thu, 23 Apr 2020 12:33:55 -0700 (PDT)
Message-Id: <20200423.123355.1116107619410931438.davem@davemloft.net>
To: bloodyreaper@yandex.ru
Subject: Re: [PATCH v2 net-next] net: dsa: add GRO support via gro_cells
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200421134108.167646-1-bloodyreaper@yandex.ru>
References: <20200421134108.167646-1-bloodyreaper@yandex.ru>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 23 Apr 2020 12:33:56 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_123404_373744_7B8A857F 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: woojung.huh@microchip.com, andrew@lunn.ch, f.fainelli@gmail.com,
 hauke@hauke-m.de, linus.walleij@linaro.org, sean.wang@mediatek.com,
 linux@armlinux.org.uk, UNGLinuxDriver@microchip.com, claudiu.manoil@nxp.com,
 netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, p.zabel@pengutronix.de,
 vladimir.oltean@nxp.com, matthias.bgg@gmail.com, kuba@kernel.org,
 linux@rempel-privat.de, vivien.didelot@gmail.com, linux-kernel@vger.kernel.org,
 maowenan@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexander Lobakin <bloodyreaper@yandex.ru>
Date: Tue, 21 Apr 2020 16:41:08 +0300

> gro_cells lib is used by different encapsulating netdevices, such as
> geneve, macsec, vxlan etc. to speed up decapsulated traffic processing.
> CPU tag is a sort of "encapsulation", and we can use the same mechs to
> greatly improve overall DSA performance.
> skbs are passed to the GRO layer after removing CPU tags, so we don't
> need any new packet offload types as it was firstly proposed by me in
> the first GRO-over-DSA variant [1].
> 
> The size of struct gro_cells is sizeof(void *), so hot struct
> dsa_slave_priv becomes only 4/8 bytes bigger, and all critical fields
> remain in one 32-byte cacheline.
> The other positive side effect is that drivers for network devices
> that can be shipped as CPU ports of DSA-driven switches can now use
> napi_gro_frags() to pass skbs to kernel. Packets built that way are
> completely non-linear and are likely being dropped without GRO.
> 
> This was tested on to-be-mainlined-soon Ethernet driver that uses
> napi_gro_frags(), and the overall performance was on par with the
> variant from [1], sometimes even better due to minimal overhead.
> net.core.gro_normal_batch tuning may help to push it to the limit
> on particular setups and platforms.
> 
> iperf3 IPoE VLAN NAT TCP forwarding (port1.218 -> port0) setup
> on 1.2 GHz MIPS board:
 ...
> v2:
>  - Add some performance examples in the commit message;
>  - No functional changes.
> 
> [1] https://lore.kernel.org/netdev/20191230143028.27313-1-alobakin@dlink.ru/
> 
> Signed-off-by: Alexander Lobakin <bloodyreaper@yandex.ru>

Applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
