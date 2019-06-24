Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E70051C40
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 22:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udjgswP5gLi91AQNMkZTH2hDA6hGzcFf9xacownMPLw=; b=ePDVM3tZCJTvNI
	hUt2kvrDUdPBhik2PW5RYdSSfQ7/jd+ErpSPZIFsI/YtlB+UH0ZWPZ/bXwYxqKbxD/E0oFxFHPky2
	kUwNb/EOl8itbbmgVEpTnJWTV1QKysy4tBDEgrvlfAKKQoZbBOdaXejRPMcLQnEXj29nPGynz0HaC
	lS8DH3iW4miFzo6fnmPjgJZc3/CWVJctQyWn9nKDdPieb1xiWXLPsopsLQx27WVgZuWihg9xoUYwi
	Fbx7fvQHXcavWmOGwut7kcyxc1Ko9VOebbdzrzqqHofoUQ+1awgLr7act9vphTIffkL992nMOTsvZ
	2pBJSHTZn0muT+eXR6Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVWe-0004Yu-JQ; Mon, 24 Jun 2019 20:25:16 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVWQ-0003wG-Pn
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 20:25:04 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 378BE126B52D0;
 Mon, 24 Jun 2019 13:24:59 -0700 (PDT)
Date: Mon, 24 Jun 2019 13:24:56 -0700 (PDT)
Message-Id: <20190624.132456.2013417744691373807.davem@davemloft.net>
To: megous@megous.com
Subject: Re: [PATCH v7 0/6] Add support for Orange Pi 3
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190624174637.6sznc5ifiuh4c3sm@core.my.home>
References: <20190620134748.17866-1-megous@megous.com>
 <20190624.102927.1268781741493594465.davem@davemloft.net>
 <20190624174637.6sznc5ifiuh4c3sm@core.my.home>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 24 Jun 2019 13:24:59 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_132502_848972_1D7C2C3B 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, joabreu@synopsys.com, alexandre.torgue@st.com,
 devicetree@vger.kernel.org, maxime.ripard@bootlin.com, netdev@vger.kernel.org,
 wens@csie.org, jernej.skrabec@gmail.com, linux-kernel@vger.kernel.org,
 airlied@linux.ie, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, mcoquelin.stm32@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ond=F8ej Jirman <megous@megous.com>
Date: Mon, 24 Jun 2019 19:46:37 +0200

> This series was even longer before, with patches all around for various
> maintainers. I'd expect that relevant maintainers pick the range of patch=
es
> meant for them. I don't know who's exactly responsible for what, but I th=
ink,
> this should work:
> =

> - 2 stmmac patches should go together via some networking tree (is there
>   something specific for stmmac?)
> - all DTS patches should go via sunxi
> - hdmi patches via some drm tree

Thank you.  So I'll merge the first two patches that touch the stmmac
driver via my net-next tree.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
