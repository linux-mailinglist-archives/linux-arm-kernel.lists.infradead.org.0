Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C304C831E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k6Ui39ujkZwEr0aPF9/upcV8RhB2xae5yXwY/2MYOYM=; b=lwivH9b/6fsnSS
	72auXGXSea8EK9t6HyPgj5EgOtJhdU7jlF9S1XFvXjNARQnake6sRjnHQ+6EJyWBXOpRKdOHPQqcz
	xei5yzf2YILNNhykhVGPJpdKTNRqSgoLj4lcBf+Wlhpd20AYliDo6cg2j04pVWu8hvylDPAGkyvI/
	ihdO6zUB8Q7z7oJ0RCdwIOxYgBvoUtGORmAWz0UmA6TtNMSIl+G0ZHz0wVjWdnX4yLt0sf+W4fWhl
	9SMRfDXqaqy21XdbFJ4+N4aBwsqBBqURFPsDL6/YZHJHl9C2XE3dvPFNvL4/QlvSXcy3b2VffPKTf
	GlgxBU021oWM4nuDUekw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huyxl-00031L-2G; Tue, 06 Aug 2019 12:53:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huyxX-00030t-N8
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 12:53:01 +0000
Received: by mail-lj1-x241.google.com with SMTP id v18so82089229ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 05:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2PudYazJ0p3KTshxoeOZExo9Ln2hf1lM+uINGK+J0Ck=;
 b=XmPnGWMndnMrMuzBZVSfKS4EQshJtycIvTBhuBSO30h/RjY+6dhLgfW9Z7nmmD3Ecm
 /fcDcNZDMcmQoq5sM8NNmI396PiD0tLuTq4yqjEmQtj0ncAGnIdFrnMP4Qm4w2XPqyf1
 ZIF97Kq+EdUx68qrz/MyquyvhbhudaiL8eRbFS3M1B4Km4nhTIRCwU1XF1P/puVBOKIx
 d6HKO4Rf6Ky+IP9hdshuos5u7HeSschI9iQYpsKbW0K0NMhVhJVOpFdXV/jq/A3O+7Jm
 jSCvJ56hbv/A1TjKxgdGS9n99NVWYGzjYUBjGVzLEjvZwntLKOLdwOlqpt2FDfdlU3nJ
 /ZpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2PudYazJ0p3KTshxoeOZExo9Ln2hf1lM+uINGK+J0Ck=;
 b=U4E13luHYR9zzqNICBiUyE6r9j3TlxyVNCQIWILbX9MDTcibpdeDia62oJL/ReZMsz
 Bq3wXXRvKf+2GTNXzmdL2g3ljJTId92wSY6Xrx8W13bi/VlJKsFNMoZu1tj24P26GydA
 v0PcW6jFwermnGT7poUuZ81Pfcn9msbpzSSRrilFFUMcP1sF57NdnZ32YajPvw/ehhhJ
 dyEuTVFpEwNXZ6Ip3aUeWytfnn5K8/k2Qe8oJpHgxPounoIyEuE70/quspb0oMkjJ5yo
 eZe0jbMykJa/aovPMwUJ7fEIE4aoU3Zx/nUHXmBpsObaPlR/FiYixEv6BGYXgwFykZJQ
 pEew==
X-Gm-Message-State: APjAAAVLdEIjvw7EMrzrrI9g2tNIiBlRJq35TUl9KOx5Jr98TolqDv/r
 S61RND5kucuYbDKdmlF6O5eRkrYiSBCyRJCO68y8pw==
X-Google-Smtp-Source: APXvYqzfgGq/ZYQsfFCK13Rsb+YD1BLFA2AtGY1Qijrs1rJf+sW5Vx1O3pqqyeyDuUoUDkQ8qwRhMK/zKY34TJ3pNvk=
X-Received: by 2002:a05:651c:28c:: with SMTP id
 b12mr1734115ljo.69.1565095977930; 
 Tue, 06 Aug 2019 05:52:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190804160420.5309-1-nishkadg.linux@gmail.com>
In-Reply-To: <20190804160420.5309-1-nishkadg.linux@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 6 Aug 2019 14:52:46 +0200
Message-ID: <CACRpkdbkdGL-dsHTns3GUKOXF5ci-sYMkWKEEMgjBxJp5CgByw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: freescale: mxs: Add of_node_put() before return
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_055259_752405_C65F8AFF 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Stefan Agner <stefan@agner.ch>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 4, 2019 at 6:04 PM Nishka Dasgupta <nishkadg.linux@gmail.com> wrote:

> Each iteration of for_each_child_of_node puts the previous node, but in
> the case of a return from the middle of the loop, there is no put, thus
> causing a memory leak. Hence add an of_node_put before the return in
> three places.
> Issue found with Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
