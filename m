Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E5FA3CA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hVd3hgn2lCiV8ShsaFQx3nALw3o02nXvd86aQ8i2WM=; b=EPo+vp1cYTUXrQ
	IkFsT9QJVz5g7jG5FTvp8hIaphUs0zXuRR6ivBy+M/Qq/jT4qV59IAJoKDNI0vaLuHjfJ4l+sFgj9
	fVtqk/aLyfeK9dnn+uWViG3X7uIw8qE52kkQXib2z/GW3OCsbYSyDiEWOpMkGoOIi8zJ4Jv6z9UUB
	CxX3RHdx434NQGTvUlk9CfAZOcSpc+otcQgQvLPcZg+u83j0lRqzu0IVUjRCm6P7m9W8ruQy3Nzdw
	ZMUUTZCG3Z0Xt9kfrPR5hJSGIgDc2gcy1k9C5d0+F9Ddgho6RfTdf1mlaoHosNzVjHW/vWEVarsBu
	wO5WP1a++EP+G8X9PPHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3k8R-0002S7-Q8; Fri, 30 Aug 2019 16:52:27 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3k8B-0002Om-K0
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:52:13 +0000
Received: by mail-io1-xd44.google.com with SMTP id d25so12832105iob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 09:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SFX0aYjr12ElBxGUUuhmY02XvhQTT8mqSM2FhQu+1yo=;
 b=HwFFZ19rxfnn+04b1Fr5rxhs3yfgcYVDVOTgKOICvS7Vje0P49EkKSbtocdc/9zLWl
 dxGRUNg782DyUerU+Dqk1UqTnHE6f8Ek6Te/hEbgue33eB2Du0Qs7yeWFz9gvDwFOOoL
 0wt61hfVhfQ+FcEv88vCKbX1sY4EZ0cV28FsfNkpaqgL5vHT7QeQb5m2jZXo/c/99jVz
 Qg45hz8w9fCRCb9H+9mJbJCN06R35ff7rer6FTu9xUvDSd1hTLhKsxdnIgyBonUm7QFy
 jlqtnwF1BuJy743RtUXI/EitGhKAHOIRr45QoooQUG3Sd9xyqJQa1bYTs8EDTTFUcGUn
 88Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SFX0aYjr12ElBxGUUuhmY02XvhQTT8mqSM2FhQu+1yo=;
 b=qNOs0LjT4cAbKU8cxjagkup1Xa9ZnhGALkjVKb0xzF8KXTIiW40UXe+syhLyAzc0zF
 657jOvgzG17rRdD/SZCVW+tZn3wdptyCZqwRwRWnIUX+W/nTktt1DCFQaKU0vmWfUHBf
 aXpTswKdT8Q8gpHX8AvD1mCSXZNeF5DaWEQKR3QZz1Brs311C+3M+qAwgXMzI9VWBfgt
 jnYlX59J9NoZPfcFV4zijYZGQwQq684Lmy5fbWZuTa2gdFd6fdpNWOcBKG6VcUsevFeA
 yVHvc5WpQN0E8JTybf79vBC1j6eRT72fh++vUEDNKdCtiX4oS9o7DOmSHWMyqhElFbqo
 cHOQ==
X-Gm-Message-State: APjAAAUeiqbU2m8k7BEo4cO2Nre/nTdTLxnaDb8DjnpnVxFMNHKB3i3y
 QvHEn/u8u8EcsI0lbxgBShs7Jz5qYoviT/mDNJY=
X-Google-Smtp-Source: APXvYqzlWKFgDjjTrfQIk2y6OxaZynvy50zrh4t0KFl0mhFUbX+7qbK9xlyq9+st7WcODuPeEFGuzw0P4nS0q6CRW4k=
X-Received: by 2002:a05:6638:143:: with SMTP id
 y3mr16244129jao.68.1567183930478; 
 Fri, 30 Aug 2019 09:52:10 -0700 (PDT)
MIME-Version: 1.0
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <CABb+yY2tRjazjaogpM7irqgTD+PdwsfqCxk5hP-_czrET3V5xQ@mail.gmail.com>
 <AM0PR04MB4481785CABB44A8C71CFB8D788BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2TREpO7+TFcGgsgQrkmMWwFAgtuJ4GnLPPQ+GEBuh07w@mail.gmail.com>
 <AM0PR04MB448161C632722DF10989008088BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2SrMF8e1iLyLqb-rJyBx4ajA0hZ6D=LFtuMNtXYjgccA@mail.gmail.com>
 <20190830093224.GB31297@bogus>
In-Reply-To: <20190830093224.GB31297@bogus>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Fri, 30 Aug 2019 11:51:59 -0500
Message-ID: <CABb+yY1cpGVHvHz4MCwpmVXSYayWt3HWMLJKZTrCb_LXroBc_Q@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_095211_755148_03503E01 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 4:32 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Fri, Aug 30, 2019 at 02:52:40AM -0500, Jassi Brar wrote:
> > On Fri, Aug 30, 2019 at 2:37 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> [...]
>
> > >
> > > If I get your point correctly,
> > > On UP, both could not be active. On SMP, tx/rx could be both active, anyway
> > > this depends on secure firmware and Linux firmware design.
> > >
> > > Do you have any suggestions about arm,func-ids here?
> > >
> > I was thinking if this is just an instruction, why can't each channel
> > be represented as a controller, i.e, have exactly one func-id per
> > controller node. Define as many controllers as you need channels ?
> >
>
> I might have missed to follow this, but what's the advantage of doing so ?
> Which can't single controller instance deal with all the channels ?
>
There are many advantages ...
1) Design reflects the reality - two smc/hvc instructions have nothing
tying them together.
2) Driver code becomes simpler - don't have to pre-populate channels,
deducting from the size of func-ids array.
3) Driver becomes more flexible - We can have channels that pass
func-id runtime and channels that pass via DT (if we must have the
option of DT property).

-jassi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
