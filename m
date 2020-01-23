Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F8C146C4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 16:07:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3C5a3I9o7tIivYPkpkx5aSdT2xoxuqwrmSpiUnbggi0=; b=VVxIG0Ydl7+9Xu
	bG+uSP/ssDevH8kUjXfvpwGQIG1LRRmgmStpoABTAWW5Ae6rAS77qRm7x4qX5vHevZyK5qaARXhYA
	T2RkW7kuprDFM324MIMY4+7VuGstnORcFwR/Z/GXlfZFIJe3lohchXbg0qGQor/ttMAzv4i8P9Zet
	fbChpLoTQ0+ytd4ztzZv+4vsoHVD3clS0fpxOwkwqfrZFJA0zsYYMg0GO0+sf7/qXod+26tb+s4V2
	CCSK9yEzRrYkn2apF0jVyVnAN+etASyhc7aT8AuFMH47vV7kzFDHOMCaAqudHc2azVoYQMfogI2Mk
	YUYs/Zz1HXbh/FwYXkHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iue4m-0007yn-Ev; Thu, 23 Jan 2020 15:07:20 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iue4d-0007yE-L1
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 15:07:12 +0000
Received: by mail-lf1-x142.google.com with SMTP id 9so2510889lfq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 07:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LO2b8uVYVBtkLDQSkWiZOiZeR9UaVRc6c7oLAxiq0hs=;
 b=L8NE79R9J3d4CO6b59XTiUIFYotqfCg7rEI6/iByzUEA3FODTd/T6JOtG8bUKnUoc6
 78/roEZXuyoIbVFDHsUiAr48VYDPT65EQBJoADV/TRCYFM+GsDEAl8jXJqvy93dy66Of
 yqwZ2YcadIjcEOjCnxXmFlX+4e97Tn88hLMiG49i4NKufYwLjwe9IcD6IoRu2so+ShEy
 Aqga92LMx7pO0sXUS5lkn2zDNOYjilWoxQRjLsWdenwGBUqr5Z+F2fYwnWlngIywgiEK
 QHr1OI+M7XuvC0jZ0rufP5WFZYbbOtwrNIch5Fh0Q3+TwyldE2Ops76pGUemkVFhyPeJ
 SRTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LO2b8uVYVBtkLDQSkWiZOiZeR9UaVRc6c7oLAxiq0hs=;
 b=b5F601690Hh8eyXIwo/Qjwq06Jt3ZtPfp5JdvpKXHZNZJcnJOOg4Wb8bKQbbwquwMc
 7wWvO0LuYHhvI6uEpGcdjNIauo/p0njj7fVcadrNhD6kTm7303yIcZ0EGmV5vVcVlgUz
 L+s0e2eeu9ofBMNFg2cxfU8Qu7w3IsvrtY/VYOdn0Bnw3zT6beXoonq7iRue/HIjl6Rk
 jsLMdpS4BY58ZR2OPjJhMEANOW2Jki9F7kRoWR+b/IPs8mnHx+tcCEoiE3wD2BTX5Yw0
 KBl+vPtaxvZGatzBJP4sNhPDSfglf2Xw0eaB5d8Fn4V0xs+ulHp5C50Jy/QwnaI9oMJa
 olLA==
X-Gm-Message-State: APjAAAXz1WLo+t/rR9Dbh5kSn+O15SRECe86aZUk47RKa61XxNY3AWRw
 U8++EBjLemyIMBmDSNTiN84apIgpp+EtFlyIz/ACmQ==
X-Google-Smtp-Source: APXvYqySCUYd+U3ZvPuMwCzrM2ftGIrgnFPVoMuA9jR8gZ3PcpcdibtTAWSuOFjbM8o+bjA9sAjze4V6fKpgDMdCUSE=
X-Received: by 2002:a19:dc14:: with SMTP id t20mr4884795lfg.47.1579792029804; 
 Thu, 23 Jan 2020 07:07:09 -0800 (PST)
MIME-Version: 1.0
References: <1576672860-14420-1-git-send-email-peng.fan@nxp.com>
 <AM0PR04MB448174E1DE647E9F2F65106988360@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB448174E1DE647E9F2F65106988360@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 23 Jan 2020 16:06:58 +0100
Message-ID: <CACRpkdbi8KTEEEpv0fv3Hq_gyRqR0Kzeb799P6woq7+xwhdgUg@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: mvebu: armada-37xx: use use platform api
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_070711_723317_CA7A0B6F 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 9:28 AM Peng Fan <peng.fan@nxp.com> wrote:

> Hi Linus,
>
> > Subject: [PATCH 1/2] pinctrl: mvebu: armada-37xx: use use platform api
>
> Would you pick this patch up?
>
> Per Uwe, this v1 patch use %pe is better that v2 use %d.

OK patch applied to my devel branch for v5.6.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
