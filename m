Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C456CB64AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 15:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjVsGHAAANXLnmii9ckKkuI73fPo/7Um5iTDL//Nb3Y=; b=oh6m5QDthk8VFv
	1mcX0JjplrO6nx7XTbu+8wcL55Q6DECCpGXGA+INBEjfJM72HVGKVcYk3AR5w67tJSzR4u0q4aYyc
	yhlJb+qhestJw/U7yjEPXzWv5Icqf3pVRj8q5WEJELwTArscbQ3hKnYHN2VsK7FqhEEDl1LY0wpxz
	npD72B9JeO6RkQacpR5qAQNh89mMuJ8uzKyt3iT4EXLexUNompXG2Ig2TxjS05R78Vb5lHeYEtyBT
	CK/zLcGanFd1VcLDID7m2rXF7Ahwd5fQrG78AfmtylGDz1b7RnMPqrGZOPZ4uyDZdZ5u3YRcdQw7o
	77HsMP2UbsuhEgKWnCkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAa6y-00038v-Kq; Wed, 18 Sep 2019 13:35:12 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAa6f-00038O-Qp
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 13:34:55 +0000
Received: by mail-io1-xd44.google.com with SMTP id b136so16215121iof.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 06:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z7DBqMKpu8EzrBgPlSX/swxD/iXqKeDnzas5M8XpMNM=;
 b=X57m6I5uEdcM7IOv9cwHXfJKmMwICvxVrcmsxGyL0hsBKBo0S2UGhLBiSKA1mPSEmH
 ImSJbIaUnaB9C/PnaGsrREbbmVhcXFwdkvzopGcD3rO1DdFWggbMPkIM4PBQJnPuFAuY
 Yd9LdvxrerRCpSak8mQO61eVY1Go42pccz1qBbUry2lV3YS7U3I5K9ejahYOBpLUj4+Y
 NnOqXuVov0Tkc8BFiTFPQYu0mpTKQ7mrH7DLd7iM6bnPA8oApaJZBCyfwhkZStXuO8x0
 q18zKHQ80Ffoh1t3nGrhiO99Jy9xU8lt/9dWTnNNgG9C9KCLvhA/FMtnP+ggDg4Ycm27
 cwHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z7DBqMKpu8EzrBgPlSX/swxD/iXqKeDnzas5M8XpMNM=;
 b=FCSfaHfz/RVSf49ufXXzStHi9Y0QNqLZBGgbfQ3BO9Lc7n63P3WhzetJQiiTTZ8tug
 PQxAxRIU4Ab5EjJ33ujU2HsnR24MDT87VrZ3VZGr4jjWsmIR+/pEdKDVns6es8M+Rkhm
 U19OkBZ0HEHmePW/sd4Tg8875jxz/H4w4+xIe1mFPEMhrOOeTUI4FBca+mGYjcoRWJGu
 DWAjLS+FViLuU5coJVU7NqySJPKdkz8yjpxlBPd9cTlE+/QBFNiOpKO43IibBZIJjfqc
 wP+0r8zasBa6w3uSUG0uoX9RaDHGptIzagUNLvooESa8le2FiXr3Rhk6kATqR+O1hL+v
 MP9w==
X-Gm-Message-State: APjAAAX5NVySrf4d1fTU79MN3aCspcWw89KmrdFlmq7iOXC1RBuEMHOY
 N5NAqGJPdqRasuKo3Wl7c9iXoqtpa9z2XTDqnSU=
X-Google-Smtp-Source: APXvYqyPfI9/m7GnP1eANreUWIaOOQA0gr9DlEx7bsFmpyWiTYmXn7+hz85mRymp7juNdZnEMSA1GLfP1jKOSjVOKi4=
X-Received: by 2002:a5e:960a:: with SMTP id a10mr5401041ioq.87.1568813692672; 
 Wed, 18 Sep 2019 06:34:52 -0700 (PDT)
MIME-Version: 1.0
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-2-git-send-email-peng.fan@nxp.com>
 <20190917183115.3e40180f@donnerap.cambridge.arm.com>
 <CABb+yY2CP1i9fZMoPua=-mLCUpYrcO28xF5UXDeRD2XTYe7mEg@mail.gmail.com>
 <AM0PR04MB44811AE46803D10FD8A5B8B0888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB44811AE46803D10FD8A5B8B0888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 18 Sep 2019 08:34:41 -0500
Message-ID: <CABb+yY09pPqM-47zNFVGMNM9wrDF9iiVuqKTXrEd4-PdOxBPrQ@mail.gmail.com>
Subject: Re: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_063453_904771_9D215CB5 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 Andre Przywara <andre.przywara@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 3:53 AM Peng Fan <peng.fan@nxp.com> wrote:

> > >
> > > > +
> > > > +  "#mbox-cells":
> > > > +    const: 1
> > >
> > > Why is this "1"? What is this number used for? It used to be the channel ID,
> > but since you are describing a single channel controller only, this should be 0
> > now.
> > >
> > Yes. I overlooked it and actually queued the patch for pull request.
>
> In Documentation/devicetree/bindings/mailbox/mailbox.txt
> #mbox-cells: Must be at least 1.
>
> So I use 1 here, 0 not work. Because of_mbox_index_xlate expect at least 1 here.
> So I need modify Documentation/devicetree/bindings/mailbox/mailbox.txt
> and add xlate for smc mailbox?
>
No, you just can not use the generic xlate() provided by the api.
Please implement your own xlate() that requires no argument.

Cheers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
