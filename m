Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3FA19CEF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 05:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUeD+b/haoF/smI/cSS0oFnknQ1Bf2/CHVAzJgKf2ls=; b=soKQQ4YWdkfMTb
	A/02ox+FDjBu9Tcjkz9GA3MedMIYx/c3nTUvUX2Y3DXXeLQBIPNwvVSzGJNwTVyNbZ4Z2VYQ2d1cQ
	1voo53guPPuMcRNenP2Hcnqgy/KvtMS1yijREksUJ/ydeSZNsdTVXfVtNqR3dMAah+FylwMWRsKbO
	D2sP2YmNCa7DoVBQB7EVdHit8HBesmEUST+PRo08CsJWGsClTCY6dTWEqIMoa19awQgE/9Ra3qLoK
	n169Tt3y5Vi7+JkEHme/JmN2FM16D5S+Jt0MPjnMMFPNoCrs8DUfUS0fM47PwbL/MBYDYTTlX/cpu
	uIurVhC0AEbIrtenVL1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKDLY-0005eN-Ik; Fri, 03 Apr 2020 03:50:20 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKDLS-0005dT-Mu
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 03:50:16 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id D3E795802F5;
 Thu,  2 Apr 2020 23:50:08 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Thu, 02 Apr 2020 23:50:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=P0i5a44/PsPVXizK2loCZDTGox+XOyW
 9+9DooRb9EMI=; b=xCpnIFv0cZaUC0AT3DOLbflHBL9J8ZgbLYc5wbe/jrK9xf0
 2DrW2l0EHIfkNsyHA1GvpB7OtMjoRjcPThiu1r4wTCJJOnrfJyZPiFq4Dg3AJ6wf
 a85rCFiUQkwyYiwQOtCWvxoHxzKiqttkGod6I0yWN/TioFl+i1V7Hj5IQTYCwbQC
 znkD6kxL2gP/y+MCtrePHGlpybz2YLv9gsZyE7LY9Op1vYXzEstBJtZ4vRbOeaZF
 vTx+w1purQ9LiCNNN1fxdjz2t3ZXhaUKs/FwwOl8bY3vHTrntt2MYrpNxcxZxRzz
 UVhqrJO6Uhqo3L0+MijmP3fdZAPUbPcAaf8l0ZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=P0i5a4
 4/PsPVXizK2loCZDTGox+XOyW9+9DooRb9EMI=; b=spNmuEnPJL8Uu297qnnHKy
 rVOe2vFT6f/6b+xH026WDSohpHZdg8xnj9yghCLCKM/rgNrP0qcKPPvuEq3bz91c
 IkLsmP8xu1bPI2TfqfgUQUOHRQU3C9Lb1ukkQhXGAbCYh6bizNqEYrv9khjRe5wZ
 VpxfvrnYKrJYAH1X5aeawv1fijcB0QqbTnJEBIL2i8j7OWw2zsRljAEOfL4ISZ0p
 wo3BZ2RoeP9T46XJgve+IcLR4rEpIH8oPKxmdTjQEhUxhzf62WB+8z9+VUlPdAHR
 Li/tpyMFcYScbN0Byx2BjzYEvBksqSffm8w1fyHumWEm/LlV/MOVHc601cm5UMag
 ==
X-ME-Sender: <xms:abKGXrawh2OniH8S0iCs40jn3tE3MLaWUO1O7DzwPZMwVHiZwOiUmQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrtdehgdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucffohhmrg
 hinhepkhgvrhhnvghlrdhorhhgpdguvghvihgtvghsrdhpihhnghenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiug
 drrghu
X-ME-Proxy: <xmx:abKGXvlPkC1DxluARvIz4GaXXaHhMdSSm3xWLd9ypVAGbxaeaS2-Sw>
 <xmx:abKGXu3Aj5bepyhous-L-NVYVZy5zOZEmFcgFo4Z9CiCwBm8fmqjmg>
 <xmx:abKGXn1jySVFIH3-waYbwYInoEN1TIXY0UmbLkxz2p-O6vvw7YFerA>
 <xmx:cLKGXryKVaezoVOQ2k_ilBFTF_ZS0jkbQmrbG0_MwuNVc1LC4v28CQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id AFA09E00B0; Thu,  2 Apr 2020 23:50:01 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-1082-g13d7805-fmstable-20200403v1
Mime-Version: 1.0
Message-Id: <7734002a-181e-4baf-b9a3-af66894acc16@www.fastmail.com>
In-Reply-To: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
References: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
Date: Fri, 03 Apr 2020 14:20:21 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
Subject: =?UTF-8?Q?Re:_[PATCH_v2_0/3]_ipmi:_kcs-bmc:_Rework_bindings_to_clean_up_?=
 =?UTF-8?Q?DT_warnings?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_205014_882843_D96FC4F7 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Corey Minyard <minyard@acm.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Haiyue Wang <haiyue.wang@linux.intel.com>,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 16 Dec 2019, at 12:57, Andrew Jeffery wrote:
> Hello,
> 
> This is a short series reworking the devicetree binding and driver for the
> ASPEED BMC KCS devices. With the number of supported ASPEED BMC devicetrees the
> changes enable removal of more than 100 lines of warning output from dtc.
> 
> v1 can be found here:
> 
> https://lore.kernel.org/lkml/cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au/
> 
> v2 cleans up the commit message of 2/3 and changes the name of the property
> governing the LPC IO address for the KCS devices.

Ping?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
