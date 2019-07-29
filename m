Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39A279B46
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 23:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Wwr/c5hqLErFoWqbs55jlv+IAmaTaZSuVaolJu8SG4=; b=EjCm5sv7zckmCR
	uLERZvYeGwno3T+M/+WOkjuWevt/Xd4SSuS6CMym7rVKr3hkfny9HaWQOk0zdFAMr8gh7pFgHrbBo
	YBn9lvphmuvk0BuGKJLIZGfeKKH82f8b+4MxteNMRlfbVz0jD01/PaPfRR7StOTxo4p7BfCA7EXB4
	P3mpTr4xbUR/SfSruKxRw+Si4mIh0h2So7fHnU+M+5x0Qv7uDYk4RbiMUOcWCM39EDdhaVAPoCfg3
	xJVByexK/7bYBb4WU8rFugHPe1OBdnMUwei235Tvggo9jhJOLG780YrXf/EOoObdra+NYh6/H+vUL
	kMbjL3TOvfXqOAmtfLgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDLN-0007NS-5C; Mon, 29 Jul 2019 21:38:09 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDL1-0007N5-UH
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 21:37:49 +0000
Received: by mail-lf1-x143.google.com with SMTP id z15so38838755lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 14:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N6SGKTpDBVf1QoMNMHV2QxgTIUw60sPAmgJMLuUozsA=;
 b=u8iapjwNjwnZ7jcCyKefFe+jgiBX5u5HsLpuFvT0Z1yV+9VtwjFOQcc8ZOMl6KvFPF
 M7QYUd9GHwY89FO/oIy6Vs7z2LpUu7VvpqsZcilOTsOKDmMpm2e5QMU1PO9cNUZZbgSl
 E7qc0BLNAU+W0cXByg1aaGz7e1qqPtAIKoeDdHRcuRXAV/U8FwFMO2v9GRT6O4lnbmv0
 STtsybUIKUHzspa5YXLLFmIVORmtDhBfSpcRz6FxasXB3ukoXv4J6Xx0nc1CqaS0brjS
 KAatnGipYKvOgHMS/jo0jJcdLtJrjGEIa+gqcxm6qIaCuw0UWtIpdSCMFAF/cUigb6S6
 L2jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N6SGKTpDBVf1QoMNMHV2QxgTIUw60sPAmgJMLuUozsA=;
 b=YY2Na3hMFFDKkDdQLAzUPQ6UdZd6LY9KgQnGy7MFQocsWXSUzByJm9vOCsY+gzoHxW
 zbEfm3pUlDDCqLlrCqqBMIdpph1gCQLsxF4hOMj1EdKh8KHvypYmij6RM6nefd/4k5zs
 gw76Ayihz6iB57AlhaG3SbUc9fGN57Fl2w0hEpkV+/firfI3oPR18psdsPkWCS5aQgiH
 sc/pjWwyGi3a8C47vL1Cx5pQHtMPS5YGdR1LWKcUcCpK8I+HApDXMipoumnsZ58OuHwL
 1EccMqj22bLvb/EkAOkhJuh1f91QZL91HCoEJxxVOuq0x3w/abQ4g/Hf8lE+9Ia9M82d
 iewg==
X-Gm-Message-State: APjAAAULh9hrk99WTv8JKTMcRmX9aqKlX3FckCt4w+aSfe3+uOrFi8ZM
 QGnCQaJ+oK+J5Rs0ZkOPAGIjl+zlRE/tUiwitalMtw==
X-Google-Smtp-Source: APXvYqz3UTZrxCuWCFpHX9xCUQzE7FgKee1vYyZDSUrGPt39sYEtKuROQUXJZ4DR6J5QXxct4aus6tuGSmQowU3As4s=
X-Received: by 2002:ac2:4891:: with SMTP id x17mr54407619lfc.60.1564436266269; 
 Mon, 29 Jul 2019 14:37:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190712061721.26645-1-andrew@aj.id.au>
In-Reply-To: <20190712061721.26645-1-andrew@aj.id.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jul 2019 23:37:35 +0200
Message-ID: <CACRpkdZxcRqV18tfcJHNVD=FUwDShwJsJm-v9+SVrxGPC5jvxg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: aspeed: Strip unnecessary quotes
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_143748_016298_935857B2 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 8:17 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> Rob pointed out that we didn't need the noise of the quotes in a
> separate review[1], so strip them out for consistency and avoid setting
> a bad example.
>
> [1] https://lists.ozlabs.org/pipermail/linux-aspeed/2019-July/002009.html
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
