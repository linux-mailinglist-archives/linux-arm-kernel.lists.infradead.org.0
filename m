Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DB6200865
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 14:10:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHeb47p8K3U0T7WQmK6hBT5KEayntKGMW2sYzPc84Yo=; b=dXrDnuIbwUSYqu
	HQuKAeCgPObBdeovb7Tb2iwJ8kp3tVb86r7yuD9WZSCB8s3MDYQU2+obBz6gko4FG8gc9ZC2kDN+G
	AIQ6WFMMlKihaDxHyC8bE6zoKxyDlRFQQHkaHJpnp6VJRGiakaxnFAq8ui7QiWbUY6HhHdpxAhKl2
	fjFypR465OgTHS2xxVvhdqQsP9Ug2do8feXci991h9JdnT93e+5qa5lfuV3J98NNZ1YBlAmfyTiXp
	KzAGQGth8kw85PF407d0iW4Apek1ysFI/1ofpqNh+EZpYHzSu1AQt+pCcq4HK5qsKX31j6k0yla+A
	YTsYmQB2iWXAOjcJnnqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFqG-0000xY-1M; Fri, 19 Jun 2020 12:09:56 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFq3-0000uk-BL
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 12:09:48 +0000
Received: from mail-qt1-f173.google.com ([209.85.160.173]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MuDPh-1isMOR2cY9-00ucYj for <linux-arm-kernel@lists.infradead.org>; Fri,
 19 Jun 2020 14:09:34 +0200
Received: by mail-qt1-f173.google.com with SMTP id x62so3598193qtd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 05:09:34 -0700 (PDT)
X-Gm-Message-State: AOAM533NW2RCkN6tutoEw8yiwtow4jS2hga6COgfxrJc0z3aELchDg58
 InxotuUW+KwlHInNItWvF1HPmdImIqkGj1tVI7U=
X-Google-Smtp-Source: ABdhPJxA0xAoTTK83uVN3FDnLwdbtZgW7ukPPu7FTx6JnhSlyVPHYpyZqYx5kttP3YZlWw/HjwTmkIUAT2zUBrSAWJU=
X-Received: by 2002:ac8:7417:: with SMTP id p23mr3002032qtq.204.1592568573384; 
 Fri, 19 Jun 2020 05:09:33 -0700 (PDT)
MIME-Version: 1.0
References: <1592369623-10723-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49667E1B41DC2A77B3E2FEBF809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <AM6PR0402MB3911B852B49E194E5FE84505F59A0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
 <DB3PR0402MB39167727A8B7CEDAC531D94EF59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAK8P3a3zHBRqSg1VeuKcmyQquE7n5wrEViw5KFbDGJNaMjtZRw@mail.gmail.com>
 <AM6PR04MB496696A8695FA85D1EEE276B80980@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916B7B5E730E2D2B93C5ECCF5980@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916B7B5E730E2D2B93C5ECCF5980@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 19 Jun 2020 14:09:15 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3AnZ3LpYmeerHQUWNWE4iT6Zn=QAiuJb2Crz02Pc4kAg@mail.gmail.com>
Message-ID: <CAK8P3a3AnZ3LpYmeerHQUWNWE4iT6Zn=QAiuJb2Crz02Pc4kAg@mail.gmail.com>
Subject: Re: [PATCH] soc: imx-scu: Support module build
To: Anson Huang <anson.huang@nxp.com>
X-Provags-ID: V03:K1:0wVWFeF4PW5cWJ0rowxwUCGWsQiFWuNSVPyVqJrvzK8kMF/Tgsk
 uHs2a0LrRo0DPGj4S9Rryz6sfO1kGtnv0E3RYAUXDSh4t9gbwAHwhtoopgX2L7BVJLVoAvV
 8GpdaoejPe034WVBRGG9N06QiigAvEasMan15J42hKoR8+4ghKHzwal1DpRq8vgwJrQnCz8
 BoSvIdP4GbxuaRZjx9lZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Z+O68mkqT/Q=:sRDFq8JLqZJRjk4b3O9M2G
 L8PKRpB53Hf673aQ8ET/NXqavTu5+3wiQnV8wptUSFtV0Kvh0WQq4kRHpxGTxIhbN8fNqvFuV
 0XSr4u1JMRi0+Y4nlg/gWV7CfhnJOP/QMgokLKrQPiNIhNsWefJ+IMt9HpkB2tB7esZP5dRzY
 s30W5NXUr9slI5CzS8fbhTJ23GF15D4kKWPfwBo8elAfnJGQVsDMQRkO5ykifYplWtx+/c/O7
 qFaYjBpHogQ8+5Jq3FFZiVOaWXVGyWURNipIdB9nXqODzP4dnm/hbStx1aKenAGUZRcTwYV9k
 iweKp5C43Xy0dFujV0El5AAyBXl9OV0IorvH6HsxUxwS48vdFlTpdBLjNpqZ2UoSTiXS16gJb
 NTvTnNd50q29jSjNM7mf2h2cVJgYHpnwQ/lxfKNGTGHqeB5H97pxgceC8L7wctcjnwh1OTSsX
 EhBWoHH8pzm9HO5Skb/+lzMOAZQZjgLTPcxjoFVYad41BjvkNNbRxhKXnZrYviPLn6Bs6gVA8
 toZsoudPK8hPGn8AB/bz31o5Wz/jtP7JdwCGctmbOVViIKoP/XAUA42DtKbD8V+twKW6sWLQu
 SXo8b1C1E/LK8E54b6kjSliuqVlOwygfnoc/ecBv7qTdx4iz9/7o54zhzOgQjamZKgDBzxMc9
 kGq0vwzKzmQ1/6ujDuGOqV2kb4Rc5izFXZ8B2Sd2n+yd4YJnOvgV1iNTCYTGqxNYnY+fehycR
 myiwVFIOfi6m19M4JyoWhwxn2/An+ovqh56DInxegxtVcj4XrtyAzorL3/G0/2BE/mlvi9Ih3
 Rkj2gpko6aS0IJDjqS/MiCODlJNoPNqPleChamHEObwnEBUKtc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_050943_678020_C5CB531B 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 19, 2020 at 9:40 AM Anson Huang <anson.huang@nxp.com> wrote:
> > Subject: RE: [PATCH] soc: imx-scu: Support module build
> >
> > > From: Arnd Bergmann <arnd@arndb.de> Sent: Thursday, June 18, 2020 3:21 PM
> > > I see that there is indeed a driver for the device node in
> > > drivers/firmware/imx/imx-scu.c, the only reason for this module using
> > > device_initcall() with a manual
> > > platform_device_register_simple() seems to be that we cannot have two
> > > platform drivers bind to the same device node.
> > >
> > > I think a cleaner way to handle this would be to just move the entire
> > > soc driver into the firmware driver and then remove the duplication.
> > >
> >
> > Yes, sounds like a good idea to me.
>
> So the idea is to remove this driver and implement the soc id/revision/serial_number etc.
> in drivers/firmware/imx/imx-scu.c, right?

Yes, I think you can basically merge imx_scu_soc_probe() into imx_scu_probe()
or call it from there, with only a few changes.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
