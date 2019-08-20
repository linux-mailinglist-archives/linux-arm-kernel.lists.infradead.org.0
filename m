Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699F195F6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 15:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nd5WiIIP9VyIP7HhVUF6lu/0w/guJr9G7LK1J15QNcY=; b=aT73R606Zd0lOu
	dR1o3dNF3McxnsCjkpsLGRxF4GHtEmp8KMKcSRzBZ/tcWCJIZOPYA8Rpw0aOWmKwcYklO9PuaOVaz
	AkeodijcaWMfUCv9NzGRk2JALipqdrsNNQGLlX30geRwkYhL6NWUW5SPvVxy7of9B2MdFavTcIMeV
	W5QzvZrHwdAy2NXCD6cvP1krJDYdL/BzOCt6E9+ermjDqE6frgBixWC9vALUKe+KWm3PN/SEcsaGL
	jTCF97MqtFJFgCyxk4QbkBDyuBxgQ4pczZmUfr9Zgphg6vYp/catP3Lxi1eV1mHY1rb/yzoKs2PD+
	E44G1N38Js5+GrTsyYfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i03oh-0002fZ-FQ; Tue, 20 Aug 2019 13:04:51 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i03oM-0002eG-9Y
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 13:04:31 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7F2B72078;
 Tue, 20 Aug 2019 09:04:29 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Tue, 20 Aug 2019 09:04:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm3; bh=V
 m1CFRjugck3T4LV10KBGOIjut7rhdmdTJNUs23j25Y=; b=uyIw8ZsfWR5+kbJwD
 1XLvPyPtmFKTlNYxQgwvtj4MQgUBJBPF0mHKdhRYRGw++m3cJx0yfRSEQxt/cF5b
 qmdtaI+spMaidZxbFT2qmXdsBuHsYq93yNO3zOM73KQVtbIq4q9TM9/JYjmubXC5
 hGqgQ11n5kFeFZ2BctUuA0B4kM1+0lZ9CCgWHAx3r2PUGPPCa3SJXSfIRrLQiFJ0
 tC8pAARLMh2X1kSzkjq3lFwV9APNORvuTYgozIqx/qRBuoCYtarpj/T+pj02Qjq0
 18Pai+Cpx2e2Bj4gl9wZPt6xQ0zdykvEzzdoiqMPLDBkuxy6XAIUo2oGXLMrPbCj
 oZM0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=Vm1CFRjugck3T4LV10KBGOIjut7rhdmdTJNUs23j2
 5Y=; b=XCLLjV2vFteWfosJVq6bWG8eVc5Nt3Oxi3IwRqI3q93n4qtLk0LOAFjb8
 FEo+kP8W0s92G1kVjp01yBLjIFANutwdhIOJ1QdeOafP3iFo9nk7vgemgsj5CRJ5
 RE/Nw63yyd83j6WYABkHxCCoASz6Z0ou39yjuqPpt4WlQ7yCJ/LssKJ/gTYsuYOB
 I8mFZoETt3pACpp1lFZRfhJp/SxiRCFRAWtE4rTFepz1QzARbQ5T+N0TloceZ/fn
 emUV0ko4MdoW/PNAZ+cyDWCF6BcHgNg+o/fju3dvPKEQuS3eG1asQ10dt1DxwsK8
 6EG+PvZRu6AgqFDovk5DKoaZ9j4Rg==
X-ME-Sender: <xms:3O9bXYj2uoRVqgsCR1c6WNlaSvqn_ZSbQM6kA6WBe3dMoemb5RR46A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeguddgheekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhprghmkfhpqdhouhhtucdlhedttddmnecujfgurhepuffvfhfhkffffgggjggtgfes
 thejredttdefjeenucfhrhhomhepufgrmhhuvghlucfjohhllhgrnhguuceoshgrmhhuvg
 hlsehshhholhhlrghnugdrohhrgheqnecukfhppeejtddrudefhedrudegkedrudehuden
 ucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
 enucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:3O9bXVQdnlMAXlwCKGNpRsMX2FbwkgUeWCHt7qv9JQlQ3AbcidXMvQ>
 <xmx:3O9bXbHhxkvx79jOXqOUTReXe9UyhhRxbk0T4iuWv-hwBGid4NqqAQ>
 <xmx:3O9bXdknno5SerW0zMRffQzS7Fl0Ju3GAoBzCpD0x0NIME4bpO160g>
 <xmx:3e9bXcTk0XxrUmePsC8qEkFdgmcAlueXMGrddox6jSYpqU2VMAiXCiaFJLw>
Received: from [192.168.50.162]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 24416380075;
 Tue, 20 Aug 2019 09:04:27 -0400 (EDT)
Subject: Re: [PATCH v4 03/10] dt-bindings: mailbox: Add a sunxi message box
 binding
To: Maxime Ripard <maxime.ripard@bootlin.com>
References: <20190820032311.6506-1-samuel@sholland.org>
 <20190820032311.6506-4-samuel@sholland.org>
 <20190820071456.if5lyb4t3em77svl@flea>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <8947f4d1-3bb4-11b8-b114-5016339514b8@sholland.org>
Date: Tue, 20 Aug 2019 08:04:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190820071456.if5lyb4t3em77svl@flea>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_060430_474314_54ABD890 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/20/19 2:14 AM, Maxime Ripard wrote:
> Hi,
> 
> On Mon, Aug 19, 2019 at 10:23:04PM -0500, Samuel Holland wrote:
>> This mailbox hardware is present in Allwinner sun8i, sun9i, and sun50i
>> SoCs. Add a device tree binding for it.
>>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> Signed-off-by: Samuel Holland <samuel@sholland.org>
>> ---
>>  .../mailbox/allwinner,sunxi-msgbox.yaml       | 79 +++++++++++++++++++
>>  1 file changed, 79 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/mailbox/allwinner,sunxi-msgbox.yaml
> 
> So we merged a bunch of schemas already, with the convention that the
> name was the first compatible to use that binding.
> 
> That would be allwinner,sun6i-a31-msgbox.yaml in that case

Okay, I'll rename the binding and driver (and Kconfig symbol?).

Thanks,
Samuel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
