Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FC436036
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 17:20:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ez+NKJTzW6WlS0FLx0k2mEg1ThJ9H0FBaFiQ6mNj7ck=; b=dYGZby3tbTZcH2
	LCagzHIgBXF7eFcTnjguVFtB6GrUcmSjkCpxLGtISFdCcrZ6tPF0fMb9DiUq6W+oyl1rRX3GE6bE3
	OwBv/EKCGOft7Sxvi8m4drMRVZ3LG7ySeLyV5n9IjxdVajEyuw40hGRREGGK2+3pwRISEMC+vJDET
	ILAPdsul6OKnwWRMcHl0o+10ukJbIcCFh0IMkCDlxsWybH51st56NCskUI6FSxpJY+PGc+R8uvn6m
	WdxFBI02zijpN/B9CXsJ5H9+gKdImi3eE/DaTcNYdQxTJMgHMgkivBlqhf4ZJwkW4fv2OpjIUmaLg
	kWL08LOLbadTBe78H5VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYXhm-0007iO-LS; Wed, 05 Jun 2019 15:19:58 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYXhe-0007fn-0n
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 15:19:52 +0000
Received: by mail-lj1-x243.google.com with SMTP id 131so10960383ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 08:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=22hufaH3Q5GijUkof2n1pKMQKsh43fPBzC3gxcBif9M=;
 b=nq4k0NL3ENycKEi29BxWZsSxh+bQTnU1+dEa7P9RDoxs7aGxeP3oIjYtGjKpQpRszP
 RO6h9NQivWAo72wxZmYNu/nKtNq5d+3fZCsSZvPzmzYW6bmHpae0EBAA6fO5RdNayP3j
 EN99Dsg0TjHcN7QHL3fFPR913zE4JUW6/JOkqoYKv6b45bn67JjTfZoBAGxmP3Huox9Z
 Vw1RYcnaY/TQ9Iw8VLpthU9wJsu5SJwjlvtbU5Gs5zvt2aNaggy9PF/7gJIHAIIGFPpO
 PhSALNFY4adEWJK+8HJNOe0WUrtTp2FCJiRT/gw0noLwSzLF9N9y0A/iKNgHX6TbY5F0
 BNVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=22hufaH3Q5GijUkof2n1pKMQKsh43fPBzC3gxcBif9M=;
 b=Am6hKyd95/wczYommCf1TVvNbYXH4qMQ8KIBMqHTs1ntuydYWjgrV9RKdiA3BQgzd6
 tbvF4obGXpyKV6CmVSe7ez/yHqkVwrtSxMlfctBPjYtnw1QCaW9j1A/17l4Vgg2MGJVm
 /WnsUwsbZiPcUyDQekQAmZDF2FQUuy0ZGpKXYr5+LK1u6SxH0z+i9QLhyMJIlyzT4nPX
 pWFUgDj4TnRR+X2H//ZV28dIi4OSfCA47Jjj6MXWzH0gQ268G7gZdS3KPlGM40vnoPv1
 fY9DNAYfRJJNKHRk0Wut9gM48cI1JebyEWWipU135jgqpuVB+SQQw3hbS8CdwYKCsKaD
 rnzA==
X-Gm-Message-State: APjAAAWuw84Ss7hvIeE84IYSkiJ1Txv0lYmwXniNML+iD4YaOHVjDfjW
 nW2xRaiCqnA+26qnJnf0jp7BbBuWNAvDHAFb/8U=
X-Google-Smtp-Source: APXvYqxvgj6ZW9rKAvsmv5sC2dSDN1uEvfTtZl+Q3CGyV2RW/OLl6vkiaYubj30yO+nkm9RMk4pvHb+Ekj+UeNsto3Y=
X-Received: by 2002:a2e:9284:: with SMTP id d4mr21718777ljh.26.1559747986951; 
 Wed, 05 Jun 2019 08:19:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190601070718.26971-1-pbrobinson@gmail.com>
 <20190601070718.26971-3-pbrobinson@gmail.com>
In-Reply-To: <20190601070718.26971-3-pbrobinson@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 5 Jun 2019 12:19:38 -0300
Message-ID: <CAOMZO5AtsCBdxD_O_ke8hEZMx8Mzhj1V1T5XZ0RkSw+y7+VG0g@mail.gmail.com>
Subject: Re: [PATCH 2/3] ARM: dts: imx6sx-udoo-neo: enable i2c-2 and i2c-4 for
 onboard sensors
To: Peter Robinson <pbrobinson@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_081950_060513_8B2D18F9 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 1, 2019 at 4:07 AM Peter Robinson <pbrobinson@gmail.com> wrote:
>
> The i2c2 bus has a external plug which enables the easy connection of external
> "bricks" with sensors of various kinds, while i2c4 on the Extended/Full boards
> has a pair of on board motion sensors, accelerometer and magnetometer on one chip
> and gyroscope on another so it makes sense to enable these i2c buses for use.
> Tested on UDOO Neo Full.
>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
