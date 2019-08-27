Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A3A9DF00
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 09:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2ecQcy1xb+Dyu/9IQNz01RP8li0jfZlz+OAqnMgR7s=; b=KoaQ5XLMCz+GQi
	DZkLf7vaKiY+u4pQtlEfPs0SNqaWCsh7ArSAPPxkK2ohEXCuXhqojNPvlYydqDcYcj7Lqa216/Vqu
	1w4rZf/zzutaqpIpBTJuFcPdYUH3eFVjPaR61O1PNzzKxOcV4Xx/StkuYh3EDW8AMQFclJfzBT+q8
	fl4YUonIWPwd+VnOyhZRcSz4Cs87q5Xto9AkHWgXDupAjAQniYvOYntCKMSSgXFJf03aKfzhmSrPh
	uA+AZxO5Cv1rFMi37NObHz/S/EgAIoABqrZB8JjfThw/C8R+MEgkeS7YRAWm5IrudnKxAQLQBZxk2
	8XRz7U0bBduoF3wVjp/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2WCF-0007MR-6K; Tue, 27 Aug 2019 07:47:19 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2WBv-0007LO-6u
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 07:47:00 +0000
Received: by mail-lf1-x141.google.com with SMTP id h27so8489874lfp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 00:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dFOqKfbpfyZwn4Lyu2FeqhkpQf6JFuziIop7qSWTXvo=;
 b=o20jXDDPPvxsDErqPFhPbfNrq2zsAHXv/blUGUUzxgi9ZujS2x3dWAXkVTJkZvSiRp
 XLQYJ7cS5xAsRz9QN5DVVevEEPm26i/0CDuG/bH+j0WidzzWVNm0GhjLFyUPOgmrYO/I
 d0Vj52vxskMPnsYGqKcvsL0A08TxjsahAWGQR4FPYo3EasGLcyzAbeIh6v/tZj5iEoOQ
 6dsrGi1rLGZQLzn38pc2y8nOUx8Lea9k+lhUEt/HKQ9lqrfux/gx5pPdZYOvDlpS7a+w
 P8BmixbZNLImDZeI1aWMxY+C0H1waPmA4soCZRh42waMFt94rl1RNwb62jC4CFsKfcrF
 RBWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dFOqKfbpfyZwn4Lyu2FeqhkpQf6JFuziIop7qSWTXvo=;
 b=s7pP0E6rFMwnDvYCjTKv7rzO6V+ceDZBeK1IeULDrG/SSk0iNrlriYTOG4moRkVpXm
 YNTajER/OICJFUMkjL/62yCn3Gjd+7iX4fzMMqrn8BhGNvLCetfsgIIcEXbtWYLhPeqZ
 aG1GUVeG1oJ3WBz5BHiFUaYyC1RfsLOokEq7RhxOw5SyQcTXKl9yt6ZV7iEmClHXWVcf
 B33WwxDJznpKwI40s2oOSR3ykSv0m+TXqPyd7z/1lRM6ehKnBsBrhUHIMi+iQ5KLcS9E
 YuwcSyBAB3DXmH5qzOMDP5R6k4ScOFPMmPUnwR8zNRu5T2NBKdCNAnV4RNxTu8REHYvZ
 SnEw==
X-Gm-Message-State: APjAAAUBOZ5XOL0WC8dWLOP/doOACrc6EMvp1Aa1kzElfb7V9A1g8cXX
 /L5NFUt/IPu3ymakQVhF4HIZ9YqXaKk3s7vmxo+UNA==
X-Google-Smtp-Source: APXvYqxixoiN4Btq5D4VdRTz8xdDlhBGXd+FvALGAPeghizFIx2u8ZlMTzyPN6AT9HwLGk6zEvIAWZ7sUfdYixXZlD4=
X-Received: by 2002:ac2:5939:: with SMTP id v25mr13672672lfi.115.1566892016527; 
 Tue, 27 Aug 2019 00:46:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
 <20190805101607.29811-3-miquel.raynal@bootlin.com>
In-Reply-To: <20190805101607.29811-3-miquel.raynal@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 27 Aug 2019 09:46:45 +0200
Message-ID: <CACRpkdb4m9RJ_e_ykWu2-FEOXP3X3K04TX5nPFjo482iY15j+A@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: cp110: document the new CP115 pinctrl
 compatible
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_004659_255385_55D171B4 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <devicetree@vger.kernel.org>, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 12:16 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> From: Grzegorz Jaszczyk <jaz@semihalf.com>
>
> A new compatible is going to be used for Armada CP115 pinctrl block,
> document it.
>
> Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> [<miquel.raynal@bootlin.com>: split the documentation out of the
> driver commit]
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Patch applied with Rob's ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
