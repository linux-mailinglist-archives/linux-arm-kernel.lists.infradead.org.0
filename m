Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9BD1C39BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTpPJ2ROijULeGj4UOLt8wvc3YOFW+ycJSdUTppLRFM=; b=kigOCsTF8NSIfB
	C6i1plkrdjPsj6c9orfWM6S48goSMHD/b2IHXYxJ9AXOnaGSKMw8ZzhW4ieL0ANrXDjBSgcuJ3SgZ
	DopGFMcwgN8Rc1WsYBtdkZlZcHSwqKjYHY5pqsDV8mo5He2kFgpupI1hCfg9amToCkX1JPp/Nh9mu
	ZT9gh6S+HY6DfR6jhra7sjlJWMVSOS9r/u4JC5IFNddlWfTlW5pIGnrG8j1jVUcza++2yuNSHytdI
	WmswwhBfDTHOaxYkc37Wv3Zqz2uVpiswsfPvnc8DhtoeHYD/Lwc6kHLvUyESJInQiZaEiuGf2y0qa
	oieez6WfrHB4Uibl/9gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaSq-00038T-0h; Mon, 04 May 2020 12:44:52 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVaSX-0002xk-K0
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:44:35 +0000
Received: by mail-ej1-x643.google.com with SMTP id x1so13719116ejd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 05:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KvTx81p1Or0dC1AYdpQVhyeYDLLZOkvh0mdzl023l7M=;
 b=mDnyGV9vyqN4qdNFSgPodWfKAeIJdsnzLWCVE8hkdcgscKtJcmm+zWzb5sIPtxxFbW
 cTqYaxtqfa9KGeCG5wazeiWXdHFyxOAL2+z0npBw40wxhWLJWQl0H/Q2z3hpJyZcw4hy
 aRDSBJ7r82H61YpnPyuDlgWBQEmRvXn2MX5EE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KvTx81p1Or0dC1AYdpQVhyeYDLLZOkvh0mdzl023l7M=;
 b=Jcua86fAEY9iOuSwHRQIdqnX53z3IztxyoaJHl83lO9gKcYf+rhQNz868gLtMxvDQs
 1xWOcmQA04xfUmtokQ9N+iOGyOH9UPdRscZw5vodsT7EST5PoaK+UHTkBXtTVEbUX2Ee
 NuUSsuhdGlyXwRx2AggtEa9d32OSp8mUq4TESlsVwTOZgOgM2lPRcUyZlJ8AjyockQRi
 PEoQiLWW0QFyXhY0+ALFe/Up7zLVqwmTBUaSuT1BwXd6j6UEAa6o1VRuaGs3aA6bMJua
 CNnsbf3J9sJa9cAClJ2vlJ6bvrYvIfcfErBeg2o5HMyLG1QnPgQL3MM0c1S+0IA3pHbY
 +AyQ==
X-Gm-Message-State: AGi0PuYYqIHsRGO9/ftQIEZ0jPVxAVTxv4tSby3hAlxKFoJJPKDRybBj
 zULbM/q+wb+H3XLmd0kZdQOwpVZljoZkeDF4SFc=
X-Google-Smtp-Source: APiQypKejwm/lQkWQj4iWmwktQXWSonZw9Wd0eQ/NGcxoYqEAKwt5FFlvQ4MvtMF3OCEEc0RhtVTDF2rQMF4pnE6tDU=
X-Received: by 2002:a17:907:43c2:: with SMTP id
 i2mr14786264ejs.185.1588596271042; 
 Mon, 04 May 2020 05:44:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200424135303.20952-1-a.filippov@yadro.com>
 <CACPK8XcP3V=8fAUfNvRFqPU9G38dGR43Kpp=Uxm=P_AjrMnzBQ@mail.gmail.com>
 <c1de0c90-d486-4855-bb26-0f3cc416b05d@www.fastmail.com>
In-Reply-To: <c1de0c90-d486-4855-bb26-0f3cc416b05d@www.fastmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 4 May 2020 12:44:19 +0000
Message-ID: <CACPK8XezSFzCeQN4tkvcmjOHEAgrRGYBiBzRymaazpv8Lh-gTQ@mail.gmail.com>
Subject: Re: [PATCH v5] ARM: DTS: Aspeed: Add YADRO Nicole BMC
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_054433_756759_597D07A3 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "Alexander A. Filippov" <a.filippov@yadro.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 4 May 2020 at 11:04, Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Mon, 27 Apr 2020, at 20:41, Joel Stanley wrote:
> > On Fri, 24 Apr 2020 at 13:53, Alexander Filippov <a.filippov@yadro.com> wrote:
> > >
> > > Nicole is an OpenPower machine with an Aspeed 2500 BMC SoC manufactured
> > > by YADRO.
> > >
> > > Signed-off-by: Alexander Filippov <a.filippov@yadro.com>
> >
> > This looks good to me.
> >
> > Andrew, do you have any comments before I merge?
>
> Not other than muxing all the ADC lines to enable just one seems a bit strange,
> but Alexander mentioned previously that the rest were simply grounded so it's
> not going to cause any problems in practice.

Thanks. Can you say the magic words for patchwork to pick up?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
