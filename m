Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1B41A468D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 14:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1e6UWu+018Mrr6u98aus7xH01+G2+lv1AWG6UVzRYY=; b=WMtJVWhmk4Iigg
	f9dzToaVlNXuRr/opyl+OVqnInK2OLwXSccQ97WjHoUIzgbs1Ab7r03r70OSC6BFdGin49kQEyb57
	3T0ybBY689vKvvnQ+m5o37p+iT6eB3QjaGInci8z1VixpPxwMJxWGRjxQJqPUj43grknU8AKdru/I
	2WBFL8+J8fAnwUaE0ii4exTXmWXMEljnVl1N/c4K21oKl4phV2MLJBTpMaCKA1Sqj2xeVZMJcVcJ/
	6VysgV/VWXyGm2uqtIyf/KLm15/REyIolPMdGEQDd/lhNM4EMDSbOsZJI0nvdXPlXbZzZP9Wrjw9b
	VcmcG/IepJA6RqyWfmkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMtDW-0006xy-ES; Fri, 10 Apr 2020 12:57:06 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMtDP-0006xf-LV
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 12:57:01 +0000
Received: by mail-lj1-x241.google.com with SMTP id k21so1892260ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 05:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wZGLlXFa9BMlMphwKHzLxdDqmfz+d5IQ0la+96J6uLA=;
 b=jRWsPN/q4w8R0K1NX4BIweHQRnqggiAxiN01umnhH/GU2QgTPY6eo1nXL3xJ3brfrP
 EvsaV8jmZmi7oJpMPTx69DedRLAUfXowfEF8GG9z+EP70m5n0lh+j+DxKJuOTn1XvFf8
 dq2GN7pV6958BVWIybrGb3b9W35ZI2HHMfx386w57uD987ESAuVZkmn12CfMcqj1EStr
 Dav+E+7lDswNC8oTEud7WdsiT8zEKa5CcUepW6KTEQhuCu92LeI9uYHtU+IzxnpNFro+
 C0kv2KHcPOPm4XQrr1yXs9dsDcn7z0ER98kOq6bcN+ilyMaJzFE/nL7QprLALNeiHcbo
 F3dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wZGLlXFa9BMlMphwKHzLxdDqmfz+d5IQ0la+96J6uLA=;
 b=h65teY3tBFV4xdvDSwQxoEgMy3WyKIUT+2vouQ579m/iFju8Rc8HyFAyWtLnDNBAg9
 cvi3BRzXsgo29c9Bj6tY+y4A2TGl/OUIIOoLEVB8Rpd9V6G1odCQiuUVjE+6XMc/aa1W
 HwHoZk/FZ/UH/Ge5FHDpeJm9JoiJDCTPelobFLzK7cxk97Dqxp2E18gEoWuE/dzroU78
 vTvHJsXv7OJgCBTdaYhk9+mQ7IF7+Xkn676SqVtnIkJrwIzQqsaNRdhiQD80Bp4ct1TM
 m9KQlbHJmVZ9mBJZSRZ91ilvzXMm0P0DiOUF0ObfHTdpU7EUcVlGvEgEaY+tJchUeBDS
 azBg==
X-Gm-Message-State: AGi0PuaQHIa2C/eDolRPxvpeiSRMeqlgldH7uIqP3eAG3dZw3BFf3MRl
 U9sNnJQ0pNe2jq/k8VrC/fYnoPf8NP0eEoOx2EY=
X-Google-Smtp-Source: APiQypJJXUKGskGMpbpEP9q9R7kkXnKsW+kEywaCc/jfEw1V4RieDufDc9+AW+YUfJ+Fa0VkdsJdHUzkO2j3QCmHhbs=
X-Received: by 2002:a2e:6c0a:: with SMTP id h10mr2803753ljc.195.1586523417912; 
 Fri, 10 Apr 2020 05:56:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200410004738.19668-1-ansuelsmth@gmail.com>
 <20200410004738.19668-3-ansuelsmth@gmail.com>
 <CAOMZO5AKYO3xLsp4k6_fJCV9qW=rAtRKEGWnxksixU794dOw8A@mail.gmail.com>
 <003401d60f28$3d045190$b70cf4b0$@gmail.com>
 <CAOMZO5B+rEoQD_ujt9cx9VXO-i2oqfW2UN2cVeB5hZB3aVpGeQ@mail.gmail.com>
 <003401d60f35$3725b630$a5712290$@gmail.com>
In-Reply-To: <003401d60f35$3725b630$a5712290$@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 10 Apr 2020 09:57:25 -0300
Message-ID: <CAOMZO5D+nMPDcQ3rPB+QC437tXYoa2VKdZtZzFdAnBkJEa=A6w@mail.gmail.com>
Subject: Re: [PATCH 2/4] drivers: pci: dwc: pci-imx6: update binding to
 generic name
To: Ansuel Smith <ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_055659_703687_8A6B53A0 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
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
 <devicetree@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, linux-pci@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 9:40 AM <ansuelsmth@gmail.com> wrote:

> It's really to not have the same exact binding to 2 different driver.
> If this would cause problem I will use qcom,tx-deemph...... but still it looks
> wrong to me having this. How should I proceed?

You could make the imx6 PCI driver to accept both the new and old
binding versions.

This way we can keep compatibility with old dtb's.

Also, if you respin this, please state the motivation that you
explained here in the commit log.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
