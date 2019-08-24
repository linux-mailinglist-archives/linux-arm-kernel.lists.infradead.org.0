Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B179BF42
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 20:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXUJqFxvFvnHIEHFtPkebaenCtCxQBfSISeWvSDLjqg=; b=ZPfvxLjMl7s0sT
	EUPAC2t8Ho+O+4uuF8074Lz7st5RrxoheSMt2k251NSt5CGPwh4xIpVc2l2rzUXh6uOZAGhw+HpEA
	MgbTwH3J2tpw9Vc7cF6Gj20GazOBy2HiZzy4heWgLlYV3PTo8sFIu9pWE7oFE3XgzV6Dve1sUBkUG
	wnIKH3Uq5oXVgtJwdvG+1MAUzT+1ftEkRGJZMi75wqxEmAhGrWpknneyRVDh/he7pAlAANYJ/Ozo5
	I986uuOqVM21CV3HMNk0/h05WKwIr8i/+QuNuWtRzKILH4jAUKhSWpt4XJkqY/oTvCdR0JDL/ogNi
	tNJGdd7h6eEmesXIo+5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1agz-0005Gr-BP; Sat, 24 Aug 2019 18:23:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1agk-0005GZ-4t
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 18:22:59 +0000
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com
 [209.85.219.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4591E22CE9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 18:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566670977;
 bh=wwn25KAtlhTVxUgyGHWFSw8XC0EUfcLAQ3jg1KljjlI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LKTcsNkvPNCSKUIZC0u3jRO2pc4WgqFHrfUPdBW0QAFFJp0l225WURQDltf19B32Q
 xkNmanmdoK64D6CIqSMpghEpuJ+dkfBoE8voNMLtaZ7B2wamJN0dy/GcAW8Lyf1A+n
 b3DSsG9QO/n12nUT5H1TgcQ2kPw9+/xCeo4GYsbs=
Received: by mail-yb1-f175.google.com with SMTP id z2so2091717ybp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 11:22:57 -0700 (PDT)
X-Gm-Message-State: APjAAAUEfLG+REuhP4EDJdp5nX5dLy7cG8sr08Rmx2CS5sFP+q3ll0+q
 zjylCD/JK9xzf1Uo5l4OhJ1OCR7693LxBaBlziI=
X-Google-Smtp-Source: APXvYqxjxYuDkT7G2sfsbtYdGdTut3HUbxdvhgcLlUhp9PLXvtGkuWRbFcM9/bJA4qrQOyr2eHTzdHwpbuoGt5FhJzE=
X-Received: by 2002:a25:587:: with SMTP id 129mr8070270ybf.121.1566670976521; 
 Sat, 24 Aug 2019 11:22:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190822213503.14726-1-alexandre.belloni@bootlin.com>
In-Reply-To: <20190822213503.14726-1-alexandre.belloni@bootlin.com>
From: Shawn Guo <shawnguo@kernel.org>
Date: Sat, 24 Aug 2019 20:22:39 +0200
X-Gmail-Original-Message-ID: <CAJBJ56JQ1P9zpT6EadPgAxrauSS3fp8TqYmv=VkVvUvD1fLirg@mail.gmail.com>
Message-ID: <CAJBJ56JQ1P9zpT6EadPgAxrauSS3fp8TqYmv=VkVvUvD1fLirg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: pbab01: correct rtc vendor
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_112258_213019_76DDB320 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawn.guo@linaro.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 11:35 PM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> The rtc8564 is made by Epson but is similar to the NXP pcf8563. Use the
> correct vendor name.
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Please use my kernel.org mailbox <shawnguo@kernel.org> for future patches.

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
