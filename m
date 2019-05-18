Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 246EB224FF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 23:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPrgnxA5xEFzq92vwkXS7wa4jdoku2XDTq+pbo57Cfc=; b=UfA5I+/hcky4Id
	sKcbJM0UZt0UjC8TVd9phsD2rsMYUnxRKz+TCfuUQRmZcW3qFzov1qom4X+1NuT9RDiqRtGlwJxof
	h5UjalZ/8qC2YFtNRp/IlQIJ1vMnAl0hiHbdkL8asQCN/wtPJDd1nzTw97vnBUL8hseMR6Rp5tqzO
	fp7bI2lCOIcYkzINqu6fzxW4HIPAS/EgTTFsk2ZOBfgBYOocv1t8bDMuhscTKRcWVud5SfXpAva3n
	8DFgulpjyCpPEeCZEmfyV2Subg4YChKJsuRn0F501y5T2BVkDEN5+yS8ohiPEI00N4Bc+RZwYCVG/
	S0z7JytO3Zyt+ITTSLgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS6SD-0002t1-Gg; Sat, 18 May 2019 21:01:17 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS6S6-0002s9-Sk
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 21:01:12 +0000
Received: by mail-lj1-x241.google.com with SMTP id j24so9210117ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 May 2019 14:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GjVQ36VwzFJ7223GVX+W1QUwbbB9XFPvg3hASkJmDUE=;
 b=kRi08ubsnM+ykN86OGVCMysxcVyFgiHLV0b9Fr5ew9x6FdqJsy8RjcIcHaTPXgYKmm
 d9J29YZ8wKZ/wqisIZCggD2OTJlDFI4EqxAo5uyb91meiXhXpkATPV+mqDRW3cmyPHkX
 3XbgcF7MFCIgtbuwm+ReN7wbA62uj7EOJoMwVYslAIsKcLC7kxKGjMpkrLm8pFn0WumH
 oUnqD/c5nHDKWSPTpB74hAfowS5FbTi6RLxKw1bqw7mIUlNbTJJQQf/H3gdEnOrDa1uE
 qZc0C0sQ7lBMw6/Ew01qw9Jk2fXF8lBI1M64m//I24dV9uzG2Ydm6ayj7oXjhOe62ZLV
 9NDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GjVQ36VwzFJ7223GVX+W1QUwbbB9XFPvg3hASkJmDUE=;
 b=eppSiwombV7ub8Ou6F/c4YH5KMKUQgQtv4RPhb63iRS/e4Geyb+3lO3GI3vmcK/dDN
 PbymSwzDVq//gt50S1uwI6MnIXXSaYfkzHStdxrf7VqCXO1sj5MUaSSDAj9sUHiuHTUF
 tKl3L7FmI/UJ+wGujGZh9rPp2ErMNju6rnm2LlgT/WiL3gelHZ3lAjbdWXhG41jjn6T9
 eRkhfgr5XP32xAh+moVusxpKPj/RIFdDXTGscCxJfBsDzbWHo7ZHDgXIpPfjFzZApU/u
 qygbKp5duJ4ieT20lhcJuAp4qU9uQrFGyI+M6G7ATzh9UEK87jru+tkxt4kW94A4D5aN
 xgFw==
X-Gm-Message-State: APjAAAWhXuU1XO9MQZXYfMKKMX67tL4AmRkwT5p4+n23mDQfQxES40GJ
 d5m+zXjGdCgryKFnuzUGU0Q1eezn+KhsEmlY+bA=
X-Google-Smtp-Source: APXvYqz5V1Li5FC7AKD0AQty1G5o21b08C9dVNe188+/PFCqLvAreMM45t6P1vCeSAEyPNJZMmZrxAYvskKc+t8Jt58=
X-Received: by 2002:a2e:1f02:: with SMTP id f2mr31672771ljf.86.1558213266061; 
 Sat, 18 May 2019 14:01:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190518173852.GA1191@hari-Inspiron-1545>
In-Reply-To: <20190518173852.GA1191@hari-Inspiron-1545>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 18 May 2019 18:00:56 -0300
Message-ID: <CAOMZO5AjtnPhPsQqTqb+FgyEU7kVp+i+6M1AOmwm9XwzTE9rPg@mail.gmail.com>
Subject: Re: [PATCH] staging: media: imx: fix Unneeded variable: "ret". Return
 "0"
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_140110_931415_3231C956 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 18, 2019 at 2:38 PM Hariprasad Kelam
<hariprasad.kelam@gmail.com> wrote:
>
> fix below warning reported by  coccichec
>
> drivers/staging/media/imx/imx-media-capture.c:617:5-8: Unneeded
> variable: "ret". Return "0" on line 630
>
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
