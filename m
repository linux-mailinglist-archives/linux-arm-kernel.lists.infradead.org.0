Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F67156FE4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 19:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DvnnM0It9ihvIt56k0MRxK4HyqdEjgAzCjLmExdB6Xk=; b=VEaFbJYGHkwauO
	sqLmwLK0dNbmb99MyP/M31U9Mxro0sZyt1Gh6ZPK/6iXtxM8tb2PJqqPcz49AQXCqAjGDlmyAlMhk
	U0B4TVdfPxlCXbNroL24ez6NLP5HsTcb2R6LGo3kk+ulUk/rrQjY0//5jiZAyysovF5WRTyNsrefM
	spDzMj6VTcDrXFLE0IG3ZmNwkaqlx5hVZ2XOWS2ax9pNGPqWGXOCR3LJCLp7qGl9mYDm9reig3QtV
	NTU84G8nJ3Q0HHYnEyCCJr9+1J0xHcFrwhMnAfJETr7PdEPa4SSw5Mla3HeMkkupYDDKcGKk/zNy+
	2zDYByPYaUEUmeByXBAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgC2Z-0002ri-Gh; Wed, 26 Jun 2019 17:49:03 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgC2L-0002rN-6b
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 17:48:50 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hgC2C-0007vw-Ho; Wed, 26 Jun 2019 19:48:40 +0200
Message-ID: <9e46f95b8727c8b95aedb144970986a21266983c.camel@sipsolutions.net>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Arnd Bergmann <arnd@arndb.de>, Alex Elder <elder@linaro.org>
Date: Wed, 26 Jun 2019 19:48:38 +0200
In-Reply-To: <CAK8P3a3wHe_6ay8P+F9Vo=k19P5fifs6RWozxFF5nGYYjO_=Xw@mail.gmail.com>
 (sfid-20190626_155908_107021_A3066824)
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <fc0d08912bc10ad089eb74034726308375279130.camel@redhat.com>
 <36bca57c999f611353fd9741c55bb2a7@codeaurora.org>
 <153fafb91267147cf22e2bf102dd822933ec823a.camel@redhat.com>
 <CAK8P3a2Y+tcL1-V57dtypWHndNT3eDJdcKj29c_v+k8o1HHQig@mail.gmail.com>
 <f4249aa5f5acdd90275eda35aa16f3cfb29d29be.camel@redhat.com>
 <CAK8P3a2nzZKtshYfomOOSYkqx5HdU15Wr9b+3va0B1euNhFOAg@mail.gmail.com>
 <dbb32f185d2c3a654083ee0a7188379e1f88d899.camel@sipsolutions.net>
 <d533b708-c97a-710d-1138-3ae79107f209@linaro.org>
 <abdfc6b3a9981bcdef40f85f5442a425ce109010.camel@sipsolutions.net>
 <db34aa39-6cf1-4844-1bfe-528e391c3729@linaro.org>
 <CAK8P3a1ixL9ZjYz=pWTxvMfeD89S6QxSeHt9ZCL9dkCNV5pMHQ@mail.gmail.com>
 <efbcb3b84ff0a7d7eab875c37f3a5fa77e21d324.camel@sipsolutions.net>
 <edea19ef-f225-bdcd-f394-77e326d1d3ad@linaro.org>
 <CAK8P3a3wHe_6ay8P+F9Vo=k19P5fifs6RWozxFF5nGYYjO_=Xw@mail.gmail.com>
 (sfid-20190626_155908_107021_A3066824)
X-Mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_104849_243813_E78A1F1E 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: DTML <devicetree@vger.kernel.org>, syadagir@codeaurora.org,
 Eric Caruso <ejcaruso@google.com>, David Miller <davem@davemloft.net>,
 Dan Williams <dcbw@redhat.com>, linux-arm-msm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-26 at 15:58 +0200, Arnd Bergmann wrote:
> 
> > The IPA hardware is actually something that sits *between* the
> > AP and the modem.  It implements one form of communication
> > pathway (IP data), but there are others (including QMI, which
> > presents a network-like interface but it's actually implemented
> > via clever use of shared memory and interrupts).
> 
> Can you clarify how QMI fits in here? Do you mean one has to
> talk to both IPA and QMI to use the modem, or are these two
> alternative implementations for the same basic purpose?

I'm not going to comment on QMI specifically, because my understanding
might well be wrong, and any response to your question will likely
correct my understanding :-)

(Thus, you should probably also ignore everything I ever said about QMI)

> My previous understanding was that from the hardware perspective
> there is only one control interface, which is for IPA. Part of this
> is abstracted to user space with ioctl commands to the IPA driver,
> and then one must set up rmnet to match these by configuring
> an rmnet device over netlink messages from user space, but
> rmnet does not have a control protocol with the hardware.

Right so this is why I say it's confusing when we just talk about
"control interface" or "path".

I see multiple layers of control

 * hardware control, which you mention here. This might be things like
   "enable/disable aggregation on an rmnet channel" etc. I guess this
   type of thing would have been implemented with ioctls? Not the
   aggregation specifically, but things that affect how you set up the
   hardware.

 * modem control, which we conflate, but can be like AT commands or
   MBIM. From the kernel driver POV, this is actually just another
   channel it provides for userspace to talk to the modem.

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
