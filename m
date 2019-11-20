Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE07F1045C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 22:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMOGbwJ5C6CsT/PcJFKjMbRnQxqmmJ6LEbpfJQui9FI=; b=PJPDoiAP1HSLAS
	2JUqnBojtBE//ChlTPZig06tAM+51sgOb2BNQoQCjoJ5K0/iIJCPtCSkSpYMNKqpGNqt/mo+Yrvk4
	bFroU7MN+S6fUmgp611BMJwWuYvc17io0YSJpEDwsCtJJkn+WLUZlXT9pkfx0f5eFaCEAGYDKVR2Q
	/MPfNckXuG4CSUa9TNq4EhwcXiZMuUhLuh3Z9o3+6PAVOF9x30YrLFY4BFvv8bJI5ZF/O6W4upLnb
	iNZ61luht/RjgrpeaZSlrfJuP/ukWsHjgZQsn5nAJMX5U6wLeVBs4VMHwyahTH6c2AwGWsWTNlnQo
	AgAjLRRFCN9EO+uCMUMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXXWb-0000Ev-SP; Wed, 20 Nov 2019 21:28:33 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXXWO-0000EN-0f
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 21:28:21 +0000
Received: by mail-lj1-x244.google.com with SMTP id v8so777385ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 13:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4AlBzJzPNV6WmO7BOKxphXcqJibhWddufaH3SnTFx3o=;
 b=Yi5K9wX2Ss3ZUwsOQnemA58PHSHXcA8FTp5TzY2SoDwVhmwn1yF7jx+ImGxOcfVvIs
 adaqnP6TqkySNuaEDsU0bMxMn0in274ozQZMQsAxFVzAVDTzSQglNhI8698GQhVCuOsF
 6bmrOttv+LfPdQj0E8CpQ0yypIssgv5Cg5GYYTCL7nl+/niFakDxkkBhbWZQIIvVCbyU
 hVdG7nWGbDIpeWThv1t9EJGIWifcZCaQvfE2Rc09K1hutStWpHsas/B8HMNK/oGi1F+O
 sDPVERP7HwBBkyCnXdJrlt6bYuHOifEofF9Qxh/2BzL6V31Gjdr1M6tFwBNFyrc9C+PV
 WctQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4AlBzJzPNV6WmO7BOKxphXcqJibhWddufaH3SnTFx3o=;
 b=LZUkJDzxa2XhUuowk3yCFvG9IYqoJk9RV/rMFt40QF6plmOUMp6RY/ai/8+FtKZl+V
 OeWLnSUcjIqwOzfcERU7JftUxub9pko2MByVqWIO2Dq3BVdoWtdX6d/t3NhlZA0tj0QY
 Py5eUuA7KEMcbP//Y867l+MyotYU0yOpqyJGGn5BFaabxke3/IzrjzPZ4U97b0EqnXlB
 TH3mqCFoKPQd2tZJcukQTv/kDG650cRX9h2NjKwqxCIJHHdF+LFwdNQXXql4IMmEuYgq
 3au207vv3VCCyF3A1EHiVFTL4dt/SnCW4zLKU0i3U8a8ZpXf50nB8Y/j8867pd4vcHh+
 meBA==
X-Gm-Message-State: APjAAAXZ1tbcN5EKZXEyarheckZs+rvb/aaf2JyeeVzh9BVZeRuO05jD
 rUV6DdDLaV2hSRojWaZXQOjHnLvWt96Dlopu1K4=
X-Google-Smtp-Source: APXvYqyivxCTlR69eJbUiJ3qNnphZIvKFLKcgP8DZeFvc7wwGrBx1ylG75AuaC6m+OdUbfw9EKwNXOBUS3uZNcyUz+A=
X-Received: by 2002:a2e:8e97:: with SMTP id z23mr4444619ljk.149.1574285298161; 
 Wed, 20 Nov 2019 13:28:18 -0800 (PST)
MIME-Version: 1.0
References: <20191120082955.3ovsoziurntmv7by@pengutronix.de>
 <20191120211334.5580-1-m.grzeschik@pengutronix.de>
 <20191120211334.5580-3-m.grzeschik@pengutronix.de>
In-Reply-To: <20191120211334.5580-3-m.grzeschik@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 20 Nov 2019 18:28:18 -0300
Message-ID: <CAOMZO5Bs20c3_4rWS1n3h6sRyM2PBx1=B1sJhbkPWs_1xLUaVw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] ARM: dts: imx25: describe maximum speed of
 internal usbhost port1 phy
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_132820_055649_6F73DAAD 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 6:14 PM Michael Grzeschik
<m.grzeschik@pengutronix.de> wrote:
>
> The internal usbphy of usbhost port1 is only full-speed capable.
> We set this limitation in the dtsi.
>
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
