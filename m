Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A13C3972A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 22:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gHakz02k2TUisjBprHCvCzK+w0Wvtlev7I45O1jt6Z4=; b=upgoZ4gbISryvA
	bwvCnt+JEFYhUDmgPfOJmWDEr1MwFHWhPWpPaMpVTMGk5FAJwTPTfueJVsdeyVuUhEPbWJnCkXzXn
	b0Qw59lqgPLhS/z/xtJ5H+vq03wzEoat4qOB2tSfNeKT+2uGsS4IzttyIr26MPogJK8bfagbzMyRS
	oTRTd52/DipvK4ERpNW7FBjVfpsFaCB+zK1zkNa+LC39HhuOTTLobqH0s9fGlMwpW177HtIfSlsBc
	bG3CNHrJIcMtqkwlqjSFqK8JkPBHMWNgNl3SNZ9BABlK+kXMVWQHWQCOX52kg9V++F4UvZQ24mCJ8
	vRCYVW+joI3XrOv0+qsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZLxV-0003O2-3j; Fri, 07 Jun 2019 20:59:33 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZLx9-0003HK-0J
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 20:59:12 +0000
Received: by mail-lj1-x243.google.com with SMTP id i21so2901667ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 13:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tEZvWJsFue7fCIY7RY9rcYSd3HaVbUE9nAN1OkAVWME=;
 b=zKZercwpsPXX2K9QFr6z2ZW0wE6hyQk4g2lpewtU9wiouEVRmpfzXJ2VygkU4n8H8m
 8c2xBCQWDSy8rslj7GVT82J32G1k5dUcZSQK2StFiSRstoq08PXTblGP+tmvyrO61A+b
 cUzpdTPsLrJAHqZWd9LirbPd3tNmwJh2c114GMeFGiCu6OtXeVfiaRHVKhr8sT78fYz+
 +y6Z2yxXoy/wbOz6++aYBeQN5aX6qabuor2J8GbgWvnRrA1Mh+zwhfAnqWcti2HlOolw
 MLOw7T6JSlZRCbJxHvpQnTmpwYKOZvuyJMa49Yu26JrfN22afylMLUQ6pAjek5Lq52u4
 YmjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tEZvWJsFue7fCIY7RY9rcYSd3HaVbUE9nAN1OkAVWME=;
 b=jTU6e5zC1DSxPg08GpyedF7lcXIFiaVUJBW8vnBhaBnwWcPLkKbW/BWr1fEu7EHPm+
 rVtulOzuAztmByE3iK824FpEs/+sIzNYzaHhO7bE7PolFQV+/U7Rn2hseEykRsd/U4jQ
 XWUaZ87JcbRLaDvGT0hflFJmS69OJhNreQKPrMyxAqyvt8atXIcBosuzwYYhtr9IW9g8
 OX74l0txfPh9b75FgPOnOSYO8flDmI4MQN7Ic/ERsTaOpxXmXSCYFuXWz2uTPgIftd2H
 mzwll2LVgzX6PdhTZOdNjBY0LmHCkOhFdHeLeu3gVMRQB5sTtREIBAAh+Vj+9DS0MZjx
 9dxA==
X-Gm-Message-State: APjAAAVxHb9YqPu9nuFZHhrsLcbuDrQoTdGuZeWn0izi7zZdqvtu7BKX
 +5T+4Wvomw2dSE1Fg/XaqASbfkxoDW8YZ90NLoHe4g==
X-Google-Smtp-Source: APXvYqybb7KzOkDvVRauSyZjrruBmBWId2yXwpYH1HIMQi6UsJ2mD7CwnPWMbaLG8x56HQlC6vvpZipHjgVXHICJWec=
X-Received: by 2002:a2e:9753:: with SMTP id f19mr5258986ljj.113.1559941148941; 
 Fri, 07 Jun 2019 13:59:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190530031357.17484-1-Anson.Huang@nxp.com>
In-Reply-To: <20190530031357.17484-1-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 7 Jun 2019 22:59:01 +0200
Message-ID: <CACRpkdYmX3GRmXCuPe-zoQE6PEYr_TQruj_ymR3G_jBjtjrwpw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: imx: Correct pinfunc head file path for
 i.MX8MM
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_135911_070710_3327E53A 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <Linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 5:12 AM <Anson.Huang@nxp.com> wrote:

> From: Anson Huang <Anson.Huang@nxp.com>
>
> The i.MX8MM pinfunc head file is located in DT folder, correct it.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
