Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC183603A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 17:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdbZywLONj1/Lu3gHEWD6NRfPFF6IwMgbZpnTV4Nyjo=; b=pKL8IAnG4zcpad
	zA+J1h129S1qBLgnIT2Zy8NvM7cUBic1D/TLZoTakY8d4Z8h3nv4rWcLKq7lWWkjHTWAmYBV8kZuQ
	LGir20dq4lVimlytBOyJRFpfu89VDrl7YURok0txaP/yYhgIU9gZmHda44RKxWNKuJG11SsWb270z
	qWnb96Vw25Zsv1sSyL1n0QJ3AuQ0xHh4MGPSy+69oE4sLASg6inLNVS6IKwtn0BTFuRrruHY5tXD/
	SeGJ/fvbPAJOcLReQAaFu9iV5J44dtqcTP21L6g4wYfP7STROxIOnUDL7sFIq0UDUgbz35vPxBcWd
	kvsP/1K0Yr9TudvO7ZLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYXiH-0000pZ-Q9; Wed, 05 Jun 2019 15:20:29 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYXi9-0000og-Cz
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 15:20:22 +0000
Received: by mail-lf1-x143.google.com with SMTP id 136so7848938lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 08:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=73MKzC4eufncyXFtj8U83qgAHAhmUvAHte32wW78vmw=;
 b=hpOcLqjAwkX3ykkfqCztHfm6aGxIz7fn7L0oqCkC76Im4ykJ6lBzzY41L7vrcKqZly
 tAkwxw3S/tZ16YJIe7ZOgan4wow09wYZkEqcow898ftNBJGND/2Vd5dz4LFrtHTVvLwW
 bcyWlTkrNQbONzk/2Mp0ASXPPbrjyOAjTFg8ltLV03bYyiBhcUvftNaO0YDfyoJ5J59R
 4Dwi+qVVxTN1rY4NycOrKCpI5WcXJezPbc4nrCV9tYrb9S9u+6RlsHxDd94uCHkhl7qV
 q/cJ2R8E2ANuM0FRppBCPwru6WOkURnVYnKzX7Hs2mcKAeGW3w4as5hdQrE5HH+XLoTr
 vGnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=73MKzC4eufncyXFtj8U83qgAHAhmUvAHte32wW78vmw=;
 b=R+EJpXI1R53cupsVWAkexy2QtwerwJakBtJO2yFbuHm/LevF8uwTvtowJ9EoAVP3fd
 JQ0r+R7jbno/3wBGh+ROv8HijnCMDo+k47qF+PEb4Ia7HYe4+DdJ3WsFveVTIx/HJO+/
 tCDp3/sujzRqUsqiRf7vt3kRGgqBtPIgaVMZ73HkRdrAbKQ6z1KNNWeXqH23Qtp7CEOh
 bmwOhzjjfNz6svHmBh+4HLEE1Z2UbhCW63yK/6cPu1GaUwuAqKi3gyGPJuvXQgJ+Xcr6
 VTBM9J6vwuCux6P1cqX5540CzR6em4qkD6FbrruuQhrv2n8GPr0y6PnEwoZRSQRxkvaN
 AQfQ==
X-Gm-Message-State: APjAAAXUKJO2EyExm5T38xL86Xfurrf63UPZ1Eb/2JXESI5xK4aBf7xK
 eA+Cb1+GQ0XzBAQlvGo8FGQnv/NOD0tG2r15M0U=
X-Google-Smtp-Source: APXvYqwG8Cw5ekYUpbTPhxvYYmYC7pjq7c/owRl1TZ7nz1kgesZgYvlQFPHKCjDQkm/UNmlGYywIavqEowzngZ+kmgM=
X-Received: by 2002:a19:5044:: with SMTP id z4mr19882205lfj.80.1559748016651; 
 Wed, 05 Jun 2019 08:20:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190601070718.26971-1-pbrobinson@gmail.com>
 <20190601070718.26971-4-pbrobinson@gmail.com>
In-Reply-To: <20190601070718.26971-4-pbrobinson@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 5 Jun 2019 12:20:07 -0300
Message-ID: <CAOMZO5C7gZ1RR8DHKsJUTTZ2iCZGUa7N3KooVFjsAvnytX7EnQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: imx6sx-udoo-neo: add bluetooth config to
 uart3
To: Peter Robinson <pbrobinson@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_082021_433465_ACD4381F 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
> This updates the WL1831 bluetooth to use the serial serdev driver
> interface.
>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
