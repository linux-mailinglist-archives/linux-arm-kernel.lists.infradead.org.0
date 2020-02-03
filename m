Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43D81500DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 05:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/VwHHXrpFvh5JV6smBk0F6wmU5iuk4isBTx/9JOWDTY=; b=SuvyjzcmD0AGZx
	1Hm4MNah9htZ3V+y3DIYaVonegOBX5NQBCV8ONVw1n0sxWYZA9WVLShlSspSxD5khdBNp0MAsmvX0
	kBbtZZlUTphoOwwyuhOjYhwJ9DyZrAmsGfK4NtXn170EmLYa4ZjmLpjBo29HzLgOVyFwRFtkKCazZ
	RgB3uM1b3kjxlhS0cj4WShwhAyObqt4FNp0cHMB4cvCJc3I1Ma+K5dP4V+/vpB3HMHG1oBWEH2xE6
	6mUPMNSBzAUUnZ+0RwqjP9aCkK9iYcSpOn/Nc2EVFaLaClQn3ujWLHRTF0vHeqAfLOHm+JVdcQDDA
	5kDqVLPkQX8DKPtT++EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyT1a-0001ze-GW; Mon, 03 Feb 2020 04:07:50 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyT1T-0001yy-GM
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 04:07:45 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 791A8647A;
 Sun,  2 Feb 2020 23:07:37 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 02 Feb 2020 23:07:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=L2E9Vl0A6zDfiBzKRlHxwBS22SN7gw8
 Ni7HSCZmgD0c=; b=a0uIK1I16pK/R0L/7jdmO1AfRzmSIFOIAEtcBGZbm+DjudG
 u+HYtskkc5PK1Bmgpjz61fLLRdZJOSA0C3XnPgzxr5L1nxDsuY5B4ilSghrb/AUU
 /CctlVldDLYBhX3I84zBiBdqqGxGl1xgNXIphoQ+xvExSdK3VOEKRRLcJRNCRjyi
 Ww5Xno7JkhzNVXOPM1+UAlhkbjQC2ecJLYMKa6Yo5tNQta2rlWq/6Ie9pvMj2mWE
 J+Zc0rSQOb/+Q1hxc5Bu1QDF3+PH+AyP3ir9CsPx7syyWo/+tYUPC/h3KSLEkzt4
 cm0S3kc10dr0Xrb8cxdCDtmEZLDHVA+I02WG9kQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=L2E9Vl
 0A6zDfiBzKRlHxwBS22SN7gw8Ni7HSCZmgD0c=; b=YDhwdctjhuNrquEhuL6BTd
 q8Zf2pczAhZ5LlXT1volMwZeV6F0j7CGxUgqAHRBcDIRD0Z0Q7pU17bg8rdMukCB
 nDfKF+SmzleJpAe8F2hcxD4frF3IF9t+9TcYi3Rt4Npj8oPHy7KOO85pslrrolKu
 +ltMSZac9gbhCWepvzUOXjcVnuRnLuLOICmc3gYWe1SEt9fC0fMpVDoPNEet1kY9
 NNqz4U3WMRhBpugpfnmsyLKGi2ccgMpakCR2EiqJCheg+2GyUWZoX5o988sMamVB
 t2BymEcwCrXiAx1tEKgLND/t22J99Mh5v3aP8NBXwjFhafZ3m6z4rQraTcKu4A4w
 ==
X-ME-Sender: <xms:g5w3XldTLriINYEp-o4JgnHkylXYfVP7EIYxJ9IUZTyHKVJRg5nQaQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeeigdeiiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucffohhmrg
 hinhepghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
 pehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:g5w3Xob-1bdMRufgDray8pkiN6Dg1biu3CwrBc6gEspBu-auRxJnIQ>
 <xmx:g5w3XvGZnvvVhGL2OBQ7K-prT0jA0jeriCHnot0hde-Dzdpz2pyHgQ>
 <xmx:g5w3Xp0JdFUhJ9hyjkk76S1twLq1zN5k15x2_q3BSEx89jmk1pPKKA>
 <xmx:iZw3XnFd0Y-afvKeeSWV7US9IZzsO_Ba-Y7eh48Gt9kwOv2dft7JcQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 5E131E00A2; Sun,  2 Feb 2020 23:07:31 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-802-g7a41c81-fmstable-20200203v1
Mime-Version: 1.0
Message-Id: <f6beee98-360c-4239-ab01-86ba41629f9b@www.fastmail.com>
In-Reply-To: <27c5505acd8d09f70ec9cd12982b2e3e@neuralgames.com>
References: <20200120150113.2565-1-linux@neuralgames.com>
 <CACPK8XfuVN3Q=npEoOP-amQS0-wemxcx6LKaHHZEsBAHzq1wzA@mail.gmail.com>
 <4446ffb694c7742ca9492c7360856789@neuralgames.com>
 <575811fd-24ca-409c-8d33-c2152ee401d7@www.fastmail.com>
 <136bbab84d13d8d56a5ac297e415975e@neuralgames.com>
 <b83f2a1f-e1be-433c-8dc8-c469cb38f423@www.fastmail.com>
 <27c5505acd8d09f70ec9cd12982b2e3e@neuralgames.com>
Date: Mon, 03 Feb 2020 14:37:16 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Oscar A Perez" <linux@neuralgames.com>
Subject: Re: [PATCH 1/2] hwrng: Add support for ASPEED RNG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_200743_711700_A4D57FCD 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Jan 2020, at 10:56, linux@neuralgames.com wrote:
> On 2020-01-27 18:53, Andrew Jeffery wrote:
> > Not that I've looked, but is it feasible to augment timeriomem-rng with
> > the ability to configure the RNG rather than implement a new driver? 
> > Why
> > didn't you go that route?
> > 
> 
> I decided to wrote the Aspeed-RNG driver because was under the 
> impression that the community would prefer dedicated drivers over 
> generic ones for these SOCs. 

I think we should leverage existing work where we can. Lets not make
more extra for ourselves :)

> However, enhancing timeriomem-rng module 
> is not hard at all.  As I matter of fact, I'm currently testing changes 
> to timeriomem-rng and so far so good. If you would like to have a quick 
> look to my changes, I just pushed patches to the same repo a couple of 
> hours ago:  
> https://github.com/operezmuena/aspeed-rng-testing/tree/master/patches

I think this is a good approach  so long as we can create a clean interface
to the control MMIO(s) inside the driver, i.e. we shouldn't be baking any
Aspeed-specific information into generic sections of code. Usually this
means sticking a pointer to an ops struct in the data member of the
matching OF ID struct.

Input from the RNG maintainers will be helpful here.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
