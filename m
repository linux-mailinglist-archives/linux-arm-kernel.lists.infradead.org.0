Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C2E124770
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:58:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4r36pZmUGomhKOjZHyj/RQ4ZqhFYx0Ooqn7vHDDhqEo=; b=lzF+6Ffq/cJoTw
	ejvqx/vmv11jCqLI0LC/RZu5rFcToPxwRkK+qKQ0QSngEvgpTpFGoVhCqz02Av+KViDFzYQT0f2M1
	76uSiB3DJgkPO7Esj4pNqc5qqmi4qjsbJGeU2kF/QqmI7jLk6NRry5g3yb8/F6TfaLAC5+PJsQeUD
	DJqxf4cOJhMO99JoczpiMHm7dKuIeBJezBditW4jGk+0WgiVC+Jhu9NfSu4xsOR82BXYFH4Db7EX+
	Q+AE7y/8ShyMMVzAUSzrx4pnuO6lS401bSBNi75H1gSl+3qjtrGnHqzW8JRuD9zkmDQo/hFBKg/j8
	HjIoIjLBiTXGwj+HhzZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihYuN-0006dX-QR; Wed, 18 Dec 2019 12:58:31 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihYtw-0006RY-52
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:58:05 +0000
Received: by mail-lf1-x141.google.com with SMTP id m30so1618095lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 04:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ASaJPJBN2HsLsWsnypB+YwvWOZn53+hOnwRBL7yClhA=;
 b=aJl6QakGTEpkgYfnwTBX+EpZvbBbFiD/CQzxwCdrl6X+oh04/Fy9goYwK/q3tYGxOJ
 Rh7b5z/o3O9XOx+eDrGR9vdmWxyYv3kgk4WfinxfEuxO7ackbVes4l8JDaG8jLv2ZgZX
 oOF9PahEj2lX1fgHe+xeXt/6IvibAVwQlUrSAcdeAdNr/oskhIGiqYzEIqVVkHO4zQ4N
 iSod6mBf+IF32cMHkYKDxh2mDCOuI65px4Y/nJ8ohRhsNuCoSUinmLOWICYX4BHnEggO
 ww4ZsEsDnhaGqQ3f766uFnwm9Ju0VG4SqKTLue7Qo6nV+z+EfqWqa2B7UmCnFdbXoiPX
 j6qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ASaJPJBN2HsLsWsnypB+YwvWOZn53+hOnwRBL7yClhA=;
 b=oP061nfVjrVE2xjZWkMUuLH/+KRp4pNt9sj8EUiXgP1O4bFJHaC+Ep74F4chAv4Zwg
 YEIWsnyBR32x0ydv2EBtdivdun+Dfkon93wUlHiLVvF1Hyrjt6a0Tq43vSzc8lKFdKgj
 O//2iWgJaGisLFlVd05fPpNq85/kzgBsSg+8pmcCWdN8SOPxKmlA7ywPrtiw8d6Uof4Z
 vSdFEP6Dq405nDktxW0lad+koNdHnkSJlvyvg9IeE8iSfez2eT/TwmNDGHcr7zcpGi7r
 GsuWj21pLIdFRL4ReARPGtu0hcMGuptT7RnOI7Sh9w/1799cpiziDEsLBtIljVOgSqzw
 vhEQ==
X-Gm-Message-State: APjAAAVUov/HKuxdVBFM0CcYRqicPlHwz06abeQqtICM7jVrnLga3MJT
 Lye765DBZdjW+wbyRRX2CqFqKW5cjoxeLrhYk6E=
X-Google-Smtp-Source: APXvYqxdBG2m0DRFHWFtNL//RQAZyHCVqNW3CGx4IQTidfrdmSIHPvSAFMLHrzeGQkfOEEiU/OMLRsvyIK8fNwchn1g=
X-Received: by 2002:a19:c648:: with SMTP id w69mr1643668lff.44.1576673882326; 
 Wed, 18 Dec 2019 04:58:02 -0800 (PST)
MIME-Version: 1.0
References: <1576672860-14420-1-git-send-email-peng.fan@nxp.com>
 <CAOMZO5DeA24EUjr-E=V=tGNaZ7UkOEi+F5-kEBqEB288DSNSoA@mail.gmail.com>
 <AM0PR04MB4481B3EAB2DDC42A137E8AAB88530@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481B3EAB2DDC42A137E8AAB88530@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 18 Dec 2019 09:57:57 -0300
Message-ID: <CAOMZO5BK0Pa6Aw6n7Tf+C6+Fg15WNbEUOzKCQTaWqTUu6yoPjA@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: mvebu: armada-37xx: use use platform api
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_045804_214356_1CD0207A 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "wens@csie.org" <wens@csie.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Wed, Dec 18, 2019 at 9:53 AM Peng Fan <peng.fan@nxp.com> wrote:

> Please see:
> https://lkml.org/lkml/2019/12/4/64

Still think it makes things more complicated than simply returning the
error code directly.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
