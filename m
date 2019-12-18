Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 158F5124BAA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 16:28:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEsvX08wm/VgJf/9OXrs8Cc7+W1494Tkt+/47Re0wJA=; b=I3FkUVvbWzY+1o
	41a817hModyuJEoaWwXCF47BwSnbTLyUkD5FwOapyY33aqpTw1cZVpDrmUZUDclm3MTyO2Rm1VeDE
	uTK0VVIIMKPGfeExRedTT1RuIIAF/gVmp8L64ueXEKYmmn907PocELoNJoMFHeFLA1nQeyFLGRClC
	EtHtb0vqDn8atQ6GrH8Q5aDje64QDxJUj+dPLQpim1+sGmjNajl6akthzQBS0F8RaRychdJB/dfqr
	PxwPoyi5XywD0ZSDzwYf3FEcUcMHSyk2+L2hRt3gCrqP5Q4/ZqbDfchG5zbqiUla7Q904tnTxvywj
	yu/f3abTXnl7qdS43IsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbFQ-0007xb-FQ; Wed, 18 Dec 2019 15:28:24 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbFH-0007ww-5f
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 15:28:16 +0000
Received: by mail-lj1-x243.google.com with SMTP id u1so2598620ljk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 07:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NGB0Bht5iuAhGYY8+BK8lXynDdbbH0NCySaOeUZsF9Q=;
 b=CElXgf2Klb0noNFucfG1GDOjLqnMBNcOXXqZdVOK6xOVs3KX9bggRS09lL5rsfFVtm
 yXEywA9e5CfLlR0B2XhQyzUMJ9L83+aaXAO4v/mxfrwtQF/J8vTUouACtLVHSTq/RSMI
 gUHTSBrg2ZvU8dy7xidG8UQptYGyBozEXoeaA8KCoDSpGSc+SC+eh9AqZXixC3d0Ic5d
 N4I9FKec8Z/VeCi6whOwWsTE2jHgM2Pm/DvHM9lFERLNdaQtzoAU+O+sCqgb8MTXN59Z
 KyLnvt3x+fgtbmF6b0dGBbUmXrUmbhL+DHQBY+MSpQrIULmHt2ZfnM7GpTDUMwQgEJr/
 72Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NGB0Bht5iuAhGYY8+BK8lXynDdbbH0NCySaOeUZsF9Q=;
 b=r705lB22OVuDXXTWUSZHyddQID1Y9Y82uqFDua806p0z+TcHRW4XMW9ctbjYMK2qMA
 xDWfS8PgmPD2ATs0dpoEl40X6DBQJBMzY6AZFOj7k5HsAgRAf7U0+jISE7ctPtyjARuw
 zcc7rvk8i4Rg92A+KVKdUdCcUgNE9dmdY5ppOA68mi+6SySfKKdhwrTY+mhu/6XG5MGM
 H+Rr45ajcNtqPxiHb6F2+mWg6FGNaLU3AfZCMPEDC57upzxNbzJaKUzIeRvngh5+NYHt
 MQ4yH8eZ0WAjfQvpxf0kXZVDqUKj8UjQU920tBHmIdWhW9n/8fU3juUN+FDIjE41MCzJ
 kktg==
X-Gm-Message-State: APjAAAUf9AAK9fWzZvn4zOsrwaN48Rh4TbP6IUvjmbRmAPDmgcKsqQDX
 7vh3DPL2W3jLThsUa2QYWH3kvN8VhphqRFejon8=
X-Google-Smtp-Source: APXvYqwRXR6SYoiNPvwbThVTZFiIWXv19mPiee7yYheOO2EF59zuRJmhpBpkJVuauhHrW8NUK5B5sny+ZKnji/BawQc=
X-Received: by 2002:a2e:6e10:: with SMTP id j16mr2223416ljc.202.1576682892704; 
 Wed, 18 Dec 2019 07:28:12 -0800 (PST)
MIME-Version: 1.0
References: <1576672860-14420-1-git-send-email-peng.fan@nxp.com>
 <CAOMZO5DeA24EUjr-E=V=tGNaZ7UkOEi+F5-kEBqEB288DSNSoA@mail.gmail.com>
 <AM0PR04MB4481B3EAB2DDC42A137E8AAB88530@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAOMZO5BK0Pa6Aw6n7Tf+C6+Fg15WNbEUOzKCQTaWqTUu6yoPjA@mail.gmail.com>
 <20191218145955.GE26938@lunn.ch>
 <CAOMZO5BibF5A9sw=fLr3DXLf9LXYdxWy=aK7KCE3L0bt5eX+9Q@mail.gmail.com>
In-Reply-To: <CAOMZO5BibF5A9sw=fLr3DXLf9LXYdxWy=aK7KCE3L0bt5eX+9Q@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 18 Dec 2019 12:28:07 -0300
Message-ID: <CAOMZO5BOv2e2_NWHxXRQk0v6Q10FgKLQO-HvTgi5oF_bwUEphg@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: mvebu: armada-37xx: use use platform api
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_072815_214382_E7950538 
X-CRM114-Status: UNSURE (   8.42  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "wens@csie.org" <wens@csie.org>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 12:09 PM Fabio Estevam <festevam@gmail.com> wrote:

> Yes, I think that returning the error like:

s/returning/printing

> dev_err(dev, "Couldn't determine irq count: %d\n", nr_irq_parent);
>
> would make the code cleaner.
>
> Maybe just a matter of taste though ;-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
