Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEC0D322B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwVRQbT6U8QS75p/l9WcQ6zbg4VGtNN6VoY+L2t7GW0=; b=niqBG85gEfk2zR
	ftTnfvGYpdudgNfO5dHGQyXp+GkfIpsf5RmVlIKWHAQiB9a44nePF01gxSlpdR2PDfN925FgTNfma
	xVWxdKEKf9ayclJdB59pxnKWWw/pBh91FCx+ZuDiVlgOI4mHTC4mUlhtNUhW4mObEqNlck2HP6sUO
	1CJN4F40wXutzCqzTmAbZgi9nXCAgpmKHn6CfabAMNGQG8V01/umCr/SItVVo9lA+DuQihNcvUO1Z
	dKJUFkl3+B5b0MtoY4pX3wC8Sk/tl5hhY3BM57s396bEgBYbKFgy/iYPxj3W9YtmNcLMtB+fHCF/V
	NY/5rrKwvbzh5SN+zbXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfCK-0006bj-Gf; Thu, 10 Oct 2019 20:38:08 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfCC-0006bP-UD
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:38:02 +0000
Received: by mail-lf1-x141.google.com with SMTP id d17so5401874lfa.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 13:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ShpnUR9IksmbycNlBIR91qM7M/J3IKihNEbDXluNa1w=;
 b=idbI7fkPGq/pk0ij1uYzeBm+MQ+R88VCYBy2lJulNk/9zGUfOgpwX7M6Ar2OeMRJcp
 cp5/ITe/TsvKEV4aeTBUkWht1etoCD/Ax+jd0tnVQmjosSTq4LfU7CGGSctbi0+YNQni
 93xuQ1VfvSLMaEYygLb5+DgZ94Fr45hj4xXlrnImfPS4ZuV29aqv/JruLCRLRwlRL5HI
 n0Q9I1enPD0fwUOyHTEwbYU8HAKQ8M5TZQ6V0BoOt4ZipAK4Rffj11F/JFWrCKJX650A
 x0d+G0rE7L9jTQGvKgK2n5j7PywUu7PmMUGvaYPvRxdVqDAGqLjTF4313J8kTdiPSKaT
 MsAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ShpnUR9IksmbycNlBIR91qM7M/J3IKihNEbDXluNa1w=;
 b=YluYvbWs7h54myJ87oU7RIWdvq8Np5FNigrgNOas1+EHliA760wXrCBK/kXZT/IPZc
 sb+zO9/S+Ka8R9SHKQoas+BqkNBiJLQgf30O3/Iqz8mkgvH+o5nPnkorwc0ju7PS6LaO
 JVsAjFvq26VvII73Ar8qu6cUppSo+p02sudf46A/kfX5wkD5PqBjZNlJIB2KxpBbOYLv
 9ZPK8TAMHJw/aahrGoOUYZedc735Wye+YrKJ/uqRMt3uOLWJVqOVB1TCqJUbsm8RLTgY
 zENRP33uyCC0FttdcrgVoJolHnh2pf0p6+u08tlAIBBT7ZatykwLAMYzNtcgaKLmNmO2
 VegA==
X-Gm-Message-State: APjAAAU6yE5HSgGuEUfGDZ4WSe0cSfEZsCl/nZT967Ee3y2wgHJHtTeu
 2/0OCJhjx2fx0hjHG7agYbrX7H5EdCA/fDg7Ndw=
X-Google-Smtp-Source: APXvYqxngI2FhZerCWDywZ8LRUg/z/0H+TbpGJomik+Rr5ab4MlDiKaBrymVBvnc6zmtPq6deMlLwB9lA5b4Oh4ltNQ=
X-Received: by 2002:ac2:5468:: with SMTP id e8mr7004073lfn.12.1570739879174;
 Thu, 10 Oct 2019 13:37:59 -0700 (PDT)
MIME-Version: 1.0
References: <20191010125300.2822-1-festevam@gmail.com>
 <CAHQ1cqEVuf7yBM5fTyRUezJSARuSBG2ohyisufAxy=ME0-p=OA@mail.gmail.com>
In-Reply-To: <CAHQ1cqEVuf7yBM5fTyRUezJSARuSBG2ohyisufAxy=ME0-p=OA@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 10 Oct 2019 17:37:49 -0300
Message-ID: <CAOMZO5A+3KvWLbsMCO06e1qp6Jf_bEPeWP1=oGACJHaPG+7Wmg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-zii-rdu2: Fix accelerometer
 interrupt-names
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133800_974045_1027DE7D 
X-CRM114-Status: GOOD (  11.56  )
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
Cc: Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrey,

On Thu, Oct 10, 2019 at 5:35 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

> Will do. The binding documentation is actually a bit misleading since
> it makes it sounds like configuring both interrupts is a meaningful
> option, whereas in reality the driver will always use only one line.
> I've been meaning to submit a patch to re-word the documentation,
> maybe this is a good reminder that I need to do so. Do you mind if I
> re-spin a v2 of this patch and modify it to specify only a single IRQ
> line?

Please re-spin it.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
