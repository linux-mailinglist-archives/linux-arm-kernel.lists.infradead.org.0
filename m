Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D39351E574B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 08:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIVbZhwiVkjvJJ+Dcyw4NgOjxzd0aY8PnHnQsomlHoY=; b=EdYTRZNg05zWvB
	khsYTuTP27slm9sn5Y7VtHN8iCaCCZaY7BXC3en++/qRgBywIm+/ymZWcibv9pDSCe3g+msjhTo2v
	N3nSZayyaaU11t7V/Azdl3zkjpVrOJTohqnjMfe0q5MmCBA+JOVvEIxeqJufuxy74S0iyWHE1ukgc
	ZcsIZWTNHj2WkVZURjScCYozwEVMM0w5maT68Tth87XzY5zA5Dswoe9kg33DDCHr0bDyDgkkfdvMD
	I3nDNZ8TUfAFbE1KjpYMzkNcgEzyhM/X7yrzV2hSZI6uh5Boo3QwVZG7jIi2JMyDSwtK6OdRxUwuJ
	plBU50DhHUT5HnSEswug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeBjS-0004Ik-8f; Thu, 28 May 2020 06:09:34 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeBjE-0004Bx-GY
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 06:09:22 +0000
Received: by mail-ej1-x644.google.com with SMTP id d7so30739859eja.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 23:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AFkvUrZ53K38iM6K70Bw5BpYtWPs5fTKAiJKykq/90E=;
 b=EMACQIRRY/P23fjlJGO2UQeQf22ld2CCr6OmhYHqxzorlBalEfk3VGwP2VlKG0rhak
 K2zv43+W/YL2Ebniw7ttQmRfIOw5csqY/r/i5sosJfIPYe0sx7GjxlKU6Pn4Ujjg0R9i
 AEGOQRlJAh32jxh6ElxMREnz1Yu/6raWjNA7A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AFkvUrZ53K38iM6K70Bw5BpYtWPs5fTKAiJKykq/90E=;
 b=P8ISbAfcWNQeAtDCODFRu3Jdx+0Y3l+sZn1MV/xjLaa5VW8FkzYGUGff5E6e6ndPzR
 JugWFyr5dUSOF2RQSqLrO8OVJwWPANtamv5klg98pJdZNcgjR/qkhQxOJfDOhoxs8gwR
 PfB1NNB/7L5WfNMAZ+G3UqeabgQ/+tYJ3iDbUWz2zi6oYZDSZZJS9MCMdzA/QeP0NXAe
 BZ0H1GJcBKIZ3D8UV2aiOggbhSGpGwVer/kZ+lrGcRJMQ83iLIkgw7jdcYljtvXEzSPv
 KIzpc6pV3xisYpPMP1Dfj4BMjU9S+o3b5IBur2AgVj7rrNWLZMC88gXLa80yR81NO+4U
 x/xA==
X-Gm-Message-State: AOAM530OSqI0eCQM544BY4rBDo3j/oNN3kb0uNfH1U63IMcJJUlIryTl
 3/zb5TItiGaGHVHQ5dROdvaCNvoiyRgjsS/RTGo=
X-Google-Smtp-Source: ABdhPJyuTSOUAFBgEP95VIDfhaFlrkd6ylLcaIdXIcwRQEKEvcQbU7GYjOW7HH937u+OUqKn0oohu7sGUdGjY8dQzGk=
X-Received: by 2002:a17:906:9243:: with SMTP id
 c3mr1541260ejx.400.1590646158509; 
 Wed, 27 May 2020 23:09:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200507091008.1bd38185@canb.auug.org.au>
 <CACPK8XfOJqj=E4JwQsZWvAsp7cv=bjqj2twZk0=MR+ZJQP1nqQ@mail.gmail.com>
 <CACPK8XcUydETZvJEkWPvLnLXatAg3D-MfA1yeDzE0epc-hisJQ@mail.gmail.com>
 <CAL_JsqJWXH4JMZgRQa9r_aPLW6Muz6BRtf_NmeqJv21Aefji1A@mail.gmail.com>
 <CACPK8Xd4651vtBTbBoGk0G7daunmF2CCOsDZ-ceto7Yu6A5z5g@mail.gmail.com>
 <20200522101638.052bd0a2@canb.auug.org.au>
 <CAK8P3a323rPCDDws+us4UYo7ZO6XvkZ13hBChZ40_DwCxBZj_g@mail.gmail.com>
In-Reply-To: <CAK8P3a323rPCDDws+us4UYo7ZO6XvkZ13hBChZ40_DwCxBZj_g@mail.gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 28 May 2020 06:09:06 +0000
Message-ID: <CACPK8Xdm91DwuKcm_d9xh_+8gPzxWpWWAzJzq8pAFVc79x-q1A@mail.gmail.com>
Subject: Re: linux-next: build warning after merge of the aspeed tree
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_230920_596618_BDC2A593 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vijay Khemka <vkhemka@fb.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, ARM <linux-arm-kernel@lists.infradead.org>,
 Olof Johansson <olof@lixom.net>,
 Manikandan Elumalai <manikandan.hcl.ers.epl@gmail.com>,
 Devicetree Compiler <devicetree-compiler@vger.kernel.org>,
 David Gibson <david@gibson.dropbear.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 May 2020 at 08:16, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, May 22, 2020 at 2:16 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> > On Wed, 20 May 2020 07:56:36 +0000 Joel Stanley <joel@jms.id.au> wrote:
> > > I've sent the patch so it applies to the dtc tree. It would be good to
> > > see that change propagate over to -next as others have reported this
> > > warning.
> >
> > These warnings now appear in the arm-soc tree.
>
> Right, I also saw them earlier.
>
> Joel, have you sent your patch to David Gibson for integration into
> upstream dtc?
> I don't know who sent the other patch, but as long as one of them
> gets merged, I'd hope we can pull that into kernel as well.

David asked for some extra features (and a typo fix) before he would
merge it. I'll take a look at that now.

The patch is 20200520075134.1048589-1-joel@jms.id.au on
devicetree-compiler@vger.kernel.org, which doesn't appear to be
archived on lore.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
