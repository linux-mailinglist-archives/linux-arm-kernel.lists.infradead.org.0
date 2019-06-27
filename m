Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514575883A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 19:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=07rdahAQ9r6JDobtmGKPhr0oPGYZElrnol1kWgf/YY4=; b=gHYBgrg+/7G4Fe
	9VUzMmcZqVdZEx0UIxpk2sDBLgjaKQ3y9gvEcARnf8OyEdWD0YiITlIUMc4nw0J7ZTZofH+EUE33Z
	3goHcPiabj3u8Neeeim3TGjWbGVsudIs3R5mFJV2ohhGYQEZZqh1jmocpZPbt2QBaDPp8+DAvjCqD
	f2EbUzW7UapXxMANNuZXSzyM69UFKYpCDgQT5JZ1Y6Bvnstsk0m0QKgx9plvXSzcIhA37Rg7q8KIq
	ShitxDxQyOR8y9nH+m71h3tlV1opISrVUzE9qHF05zxwVQqKla+wZrxnwdN+c5s354rwogxD9PzYE
	MgVsf9teOMx0aq/G8+BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgY7A-0004Vz-SR; Thu, 27 Jun 2019 17:23:16 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgY6w-0004VZ-Me
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 17:23:03 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4E1E314DB875E;
 Thu, 27 Jun 2019 10:22:57 -0700 (PDT)
Date: Thu, 27 Jun 2019 10:22:56 -0700 (PDT)
Message-Id: <20190627.102256.1839462093915893704.davem@davemloft.net>
To: maxime.ripard@bootlin.com
Subject: Re: [PATCH v4 00/13] net: Add generic and Allwinner YAML bindings
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
References: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 27 Jun 2019 10:22:57 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_102302_739271_3E5D3931 
X-CRM114-Status: UNSURE (   6.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 alexandre.torgue@st.com, andrew@lunn.ch, antoine.tenart@bootlin.com,
 netdev@vger.kernel.org, maxime.chevallier@bootlin.com, wens@csie.org,
 robh+dt@kernel.org, mcoquelin.stm32@gmail.com, frowand.list@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Thu, 27 Jun 2019 17:31:42 +0200

> This is an attempt at getting the main generic DT bindings for the ethernet
> (and related) devices, and convert some DT bindings for the Allwinner DTs
> to YAML as well.
> 
> This should provide some DT validation coverage.

I don't think this should go via my tree as it's all DT stuff.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
