Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 523D66083F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWVmN9VrjjLavarV7sO6nMcJp4hhcI+vlp8nE6QIW34=; b=EvpPJIRZ4kmYq5
	zw9dGSkPdFTwLbSru+5KgxuY78fUd/Sm1dwr/Pg58fsRSiBGUp89GeZ85FABQU8fgfpiDdYII4I2P
	8/RzBvpl/Rc9eEJywZMBGLg8h9nkFVFZkKIYn4QdudakhvkG0o6J5C//7MeBp/d/T+AK83oIUk1xj
	kNmunCyTU6U2CLkIXtbBQ6EwWMnC9XKm23fo84ryFcHYrde53q7FIEC5+pD1hBA/x6Uvavn5GDAVu
	gknTNc0vSfy3Thl6+5O8SL62KEEI0rEu2/Mw1Q7x/YkHfOnIVtTaUq/gV0HitkLNOO9B1n6h/7Khi
	GEN54MHZYtxsWDFNuIbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPUy-0002mk-Aq; Fri, 05 Jul 2019 14:47:40 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPRk-0006LU-GY
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:44:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xEyJOO8kYpWKc8QSO4ONNsoAI/4yuJeK2ThjsKjv10k=; b=jRdxSG3YJEwmHBaJP4MGIf7Et
 POMGJ36JZJcvGBOBsNRb1RmB5o8HNPcldC9E/6niS1yVgmsLnDw2Skeo+woioJNhiuRdFANddT0FJ
 YlbKKEgdFJlXCspBU/Dh4Y6dRqXtfL5IoGOwZo/nqN94Wssi38FGsLs4Tbxq8SAz4rBLIdfzhUPdC
 NaFtVwadzLscfJmOH1A3FNjI59nFZuEkRimsyOnWHrS1eecgldy5ojrvbGG0yjCN6pRc0fDNiN3O7
 yTFHk9K129auwyJ99DzOUAmQXHLc1aXnPP7uu7pwVTiAd8HU2lB8H3RqHIVGfDNn8Xeo5XHLM4LF9
 yX6vvKuXQ==;
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjO1N-00026j-Sq
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 13:13:02 +0000
Received: by mail-lj1-x242.google.com with SMTP id z28so309831ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 06:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xEyJOO8kYpWKc8QSO4ONNsoAI/4yuJeK2ThjsKjv10k=;
 b=DRDlErc+0kXzUdgaWp/ZaB5wi4aw2JvkIenojy2RYxniLxqdRdE7OhHk0OKezKjMk7
 mIzCmiFXicrLQFXrtAAX6Unu/lcDVUEBUYzcgoeRMca058CIp+veHiSR+0gEpAbVKtdA
 pbiHoscgX80CZp1rxPQNTLcgrMO+R9VxPtTu41FBuWk+MaLsV1cBZ5xS2tJookUbOABF
 VXJN6mCyQCDTPR37XXptcuKGQs7k5BORHje6PuZLnEzbIrVo+JciviDWdwF2vPVwqHNo
 Qr5FiOL24R528bv7CD14UXtyeraMCivrT2FwgeBjOZ9PFta4+ELpHCfCfl8l6i+vP6oa
 f9sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xEyJOO8kYpWKc8QSO4ONNsoAI/4yuJeK2ThjsKjv10k=;
 b=IN1izN2aYdbX+ZxAqWbn5ogPP2OX+zXABkJdoooLcrCB6n9EiNKZGrA6E6LcyxJ+em
 VtHnGihHRK2wJ2pR4bGqmrP+gXQOhjn0p7VdntbfMtFTxAG2eRNzPInbkpTYwfKkgQs8
 FbjxuX+06vuMX2mhhHOrOcB1QpLdrArSP3RmGcqZHdgVpaEdH8WDpvJGmvvcABBVntUF
 4aHl3d/o6apLBvFotpp/5s1ZHrr6QJ5d95aYny7nGZcWMXqrBJ3NfavErhNQMWZBkPdQ
 5MpFu2Zfgw7yyraoMqJGO9YK+JTFstCkrjBfPPgMIRnbd4OlpiRcj0kAIcF6ZDNYXtxR
 MSIA==
X-Gm-Message-State: APjAAAXey5St9FjRK0qQ+AWjZP8k5OhiJ9Ds13t0J5XhrADkXbKCyusV
 Vj/1QTy6MTyUlbsCoq+UYIcCw0C/uqPyKBTrJEk=
X-Google-Smtp-Source: APXvYqwWNOMyja5vtXudK/+kFDlFUKXSubGT1Aa9J+3NDl4NBx2ur1SfoYASTVZgHZ/Y44Dtc7FNDsRtfKOClAQi8e0=
X-Received: by 2002:a2e:4e12:: with SMTP id c18mr2152456ljb.211.1562332253406; 
 Fri, 05 Jul 2019 06:10:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAGngYiVsUZwCUEsqRk-YtZPGYxsqzHzD7U5GeeHyAa2Yw9Z6WA@mail.gmail.com>
 <20190624140731.24080-1-TheSven73@gmail.com>
 <20190705124646.GD2911@vkoul-mobl>
 <CAGngYiW2+sBv1WqB8+csb=mZm2owziJ5wWcWLNPy7=m72ppypw@mail.gmail.com>
In-Reply-To: <CAGngYiW2+sBv1WqB8+csb=mZm2owziJ5wWcWLNPy7=m72ppypw@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 5 Jul 2019 10:10:44 -0300
Message-ID: <CAOMZO5AeA2PryHHNqxfhTYjJd-QZrm++ctjuuiTzpGC4UuxZ3A@mail.gmail.com>
Subject: Re: [PATCH] dmaengine: imx-sdma: fix use-after-free on probe error
 path
To: Sven Van Asbroeck <thesven73@gmail.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 5, 2019 at 10:09 AM Sven Van Asbroeck <thesven73@gmail.com> wrote:

> You are of course right, I was looking at the wrong if.
>
> Apologies for the confusion, I did try to look at what you
> changed, but your git repo listed in MAINTAINERS appears
> unresponsive for me?

Works fine here:
https://git.kernel.org/pub/scm/linux/kernel/git/vkoul/slave-dma.git/commit/?h=fixes&id=2b8066c3deb9140fdf258417a51479b2aeaa7622

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
