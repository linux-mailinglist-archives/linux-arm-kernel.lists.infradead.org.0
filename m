Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B080019A431
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 06:24:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXSqVPlnxvy7i9EjHCAt8pcabmtCAUIXFxevocIcJIc=; b=LbKyKgkUa3hHFK
	QbJ97tBiGFbr9kJgRUfJqG8K22aBPjutsUopaghi04QSfZ8OjeEbZrnqqKxgEoleH2iYWEqgenO0K
	qJHIaIAvAmw4BgiJfCF9OUpMFU1O4dPC/nleLOaKNTrpAcf1OL/7Tw6fACZgPSoirWP/yYfcix7BA
	LFndRU/xevd6w6yJlaf6mraNQjAC9QXAY5HpbIiGr/aobRnXnSbZoQCrLhMzsfvTnxP4JLBB1jcj4
	hv+VTSKodxZpUqNfThB46ZGHHMc5K84UlcYxcHhXdDmpOpOWNKrGzjNQFsSI4kQFeMPZgQoB5VSrG
	Fdj80svaEKJVlh9Z4vcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJUvH-0007GL-OQ; Wed, 01 Apr 2020 04:24:15 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJUv9-0007Fv-1i
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 04:24:08 +0000
Received: by mail-io1-xd41.google.com with SMTP id y14so7125546iol.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 21:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J6FYICBSJfbwirVW1y0OAiy0C1pnsi4snfn4QjE3qwQ=;
 b=EK/qKUpHpUV+9QRlxccDiPEo+A05wpcpLa1gCS40owpEa70V18ost5JI6y/H946fwF
 n+DhhjoadnmCQjQquWk5+vIUllbXLnCYwqXI3UD/FUiGUllXjCMrbhF275oq8EZbmusX
 56R84bHQz28k+b10p/iK4tQRhx3bp19dveinb+n3Rp2IA1EZsm2O3GQLi3jYSGiEiCDa
 LcQf0glmeHhKxNUqAxLJt+iavl0mjeZOxBoT2fICLFT8NJ3NGxeXsx+yIZZ5GiJh5ARR
 ekl2KWVqC1oXLwOPmbs5wONZ41LbfbT5barXjoMc5OFJ3DPZccF4lilyAthao4R0aUew
 WPCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J6FYICBSJfbwirVW1y0OAiy0C1pnsi4snfn4QjE3qwQ=;
 b=F+wTLnzD1aQnk3APE2Ejj7DyS4UnbCXqzpRX2+G89Lo62Kl7j77IDKdiFMqzfwcM2m
 GJLNzfGmlVGeNQolBPRMkBJAJwIScBzDLZ763zouWiJYTDluor4T+RjBM+EdtZyhagwI
 w7YhT67pHNbw10CCbufQnqZ1H9yQGj0Xafp9iXgJ/kq3kbHYOAjfU0G5LAe1hm8hxQap
 C36uFu+NTOpwSvwhbsFr2D2Pu/HJ/FHqbtpIh/qIDxsP/eM0dgTKrIr94RgO/JPPoXM9
 H6F0G8q59OnIjmvg8dfTHQJQ1r+NnwNcxA06GVg9WZkj4+m2luTY6idMqlFli6WHxMlu
 NHgg==
X-Gm-Message-State: ANhLgQ3I+P4Neh8umeMGqo6sLLeBgUW7ZJcd8qqe8TYxBewgLwDrttsb
 XUHzVa1fxfx5QHLsmFJ01JIMVXJyuPesxcs8EfQ=
X-Google-Smtp-Source: ADFU+vsYqeN9OOoJESGw3IyB1X1G3OR/ZmLnj03QuzJ2E1Qrh28p5g5s1RTH+AU2J1NlvLAGPM+ML9dmdPRT6e3Bkxk=
X-Received: by 2002:a6b:b78d:: with SMTP id h135mr17926718iof.84.1585715045618; 
 Tue, 31 Mar 2020 21:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <1584604193-2945-1-git-send-email-peng.fan@nxp.com>
 <AM0PR04MB44812577EF272CA1D457A1F788C80@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB44812577EF272CA1D457A1F788C80@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Tue, 31 Mar 2020 23:23:54 -0500
Message-ID: <CABb+yY3jqhQpDf3eBMrGRfYeS2-Gj7o3YfZJVkb7Tp+4i-QZ4g@mail.gmail.com>
Subject: Re: [PATCH V7 0/4] mailbox/firmware: imx: support SCU channel type
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_212407_113030_599374F6 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 8:34 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> Hi Jassi,
>
> > Subject: [PATCH V7 0/4] mailbox/firmware: imx: support SCU channel type
>
> Are you ok with the mailbox part?
>
Is there anything you think I might have overlooked?
I already queued the three patches...
  dt-bindings: mailbox: imx-mu: add SCU MU support
  mailbox: imx: restructure code to make easy for new MU
  mailbox: imx: add SCU MU support

Cheers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
