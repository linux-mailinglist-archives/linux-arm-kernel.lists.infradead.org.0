Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E072179B91
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 23:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0X77z0iZ3k/y+Bc3AyrqyFQWW3mWHk7YM2U6VIAD58=; b=IneuS/1Ei065WM
	deacd/F7APGoQf8TVzkp1/hnJmtO/JcuZbyIe9HnzPZd8ng2mtrPLdYS6MzclxCCXOkCbtwrO8Ov+
	M20SVK8kVFQO7KHK/7ccQoA6i+HyTnIQDxs1VVfmGCd2qe0lqvIH1hUCBK5Pc2OYDU3P/w9Ij7vCq
	A9qHF3Ih112ehLLvJdh3CZrB/ZShSN6VkzB5qyoIl/nlDfVqeK8o5kPZn+Va2uNkG3CVZL4l7ybis
	rHiy1HXhqgBcY3rZykAp4ltVz3PeG/zJS9NnNFm+WkSRkfJ7IBVXUZLzHz50qDHkK8YaWAqO4Say7
	ijqx09INU3mdwtIWFhdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDaG-0004aS-D4; Mon, 29 Jul 2019 21:53:32 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDa2-0004a0-Iu
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 21:53:19 +0000
Received: by mail-lf1-x144.google.com with SMTP id z15so38863024lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 14:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hr9lqY2qIqoidNcb1If245IBNP+0DnlTQyMBCAdK+Ik=;
 b=HyKoqtCfFxuQVsAb5+vFCCMS0YilOQ1m3ow3QG9i/222LTjAwb0dTsHGlPD+wgv5xz
 yxGmG2uQ+GXy8aVfTb8iVnwyvC/tFZrzdYTE/IZ4sxhoD+JyDgZyLo7es1i3GvdlHBsQ
 9KgXU0BH2XWgII/r1JW3XwxEm3xlRUdaD2PMugZ8eAgETdmbyqtgWltBwZADfZ/JOgK8
 KGO+bVSe18/XMctvQdt5o+uFkTKAodeWoduSv9MReky4YEXExt/yAYz8vY8G82yiywnH
 zQxG63/KMWFy9NT3upE0a37RA41t81MOhYrxs1P+JPFnQ5o1xJWIKRx+3guc5NFy4d/Y
 LVww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hr9lqY2qIqoidNcb1If245IBNP+0DnlTQyMBCAdK+Ik=;
 b=nL2C6I5WSk/y5VrCIQH/+xV2a3HvMAX9o2GwF3aXvSUGAkhO6ap81aBb6qdInQuaAT
 F6Y52qWdLo6T57vs/umv5yTo4oRG1s5RsoVQ7PJzafgrARsFsc+9EyZ2YIWSaqx4hEDo
 c432Kt//1/ioHAVWwRV3Rf0ja2yZOIomf87kR7E/m2qm/bGTsi0HMd+303Gjt3evJYiB
 yrcqc+ZCPCH9YbC5BhGptavjG9dbedA9xmrqn4EAChFqGfbkQWhDlnm0BsVOlFRIPhuB
 NhNnClWvOe1r3hE4PLe3xdld0Hvvi5mW90c1NycUibpKGas4dwACFxYrbSQ1c3ibEfvp
 Xkrg==
X-Gm-Message-State: APjAAAUP7pKjzkm3k0/shUxGzKvQeVuaBiw81zxmi0OTj/xpWl+K8WqI
 VWSjqv1MWTPKB946Wz6VfpJyGB9nXdmjR2g2SltAKQ==
X-Google-Smtp-Source: APXvYqxrcwQ2xt2eOrJdooqGsibkSjjLkGu0LUS1zOLSFKz3m+Xi0j4+Rh01BXuTGe2jOXpQKVloomM4o+1wiK44pnk=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr42403912lfp.61.1564437196737; 
 Mon, 29 Jul 2019 14:53:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190724081313.12934-1-andrew@aj.id.au>
In-Reply-To: <20190724081313.12934-1-andrew@aj.id.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jul 2019 23:53:04 +0200
Message-ID: <CACRpkdapypySGPrLgSMSNy1fzkca2BfMUGzf3koFWQZ-M5VOvg@mail.gmail.com>
Subject: Re: [PATCH 0/3] ARM: dts: aspeed: Deprecate g[45]-style compatibles
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_145318_633240_3277D321 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 10:13 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> It's probably best if we push the three patches all through one tree rather
> than fragmenting. Is everyone happy if Joel applies them to the aspeed tree?

If you are sure it will not collide with parallell work in the
pinctrl tree, yes.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

(If it does collide I'd prefer to take the pinctrl patches and fix the
conflicts in my tree.)

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
