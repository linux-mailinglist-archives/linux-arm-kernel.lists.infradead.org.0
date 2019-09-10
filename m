Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A721BAE399
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 08:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dmQOUrhnm0VNS+3VpMVQoLEVQFyQ+7bNJJ923Em+qq0=; b=V8+MvJk1wOCZJr8mZWrFYwXTo
	dU2EbMi+1eH/sxjd5aQaQejeqb3+r8indYrNSNPFxyHOp/JzjBnOkkj+E0JvXgO33OP5dNLc+jfCa
	Afk7bqBzP9EzdSdMbWSzyj4ydGYZj2hR7z06SeHC8IiJ4UHAuHffm8YGxMP0QuyHkqE3+iINkITtQ
	VP85/JkP9Wp1aTirvfAWlC8CNkycRTNoBG5zAIDgRFPbJCpNQrF3frzQytkct+zmow7QsCpbrmEhi
	4ajX/VZPNyQDbM3NIFmUSqDUdZjG5W8yJjN/zPGEFdh0z8a/Uxw3dR0nmtt/dNzJ7nXnIJJSj6W3Y
	W3Hyti6sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ZUN-0007IQ-Dw; Tue, 10 Sep 2019 06:18:55 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ZTy-0007HD-RU
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 06:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1568096310; x=1599632310;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=NUby1e5z8ZmZZG/r8xjMa7/ADWenJfdiJrb9sSaJJJI=;
 b=F0z4G4pptJydpBj8+wQJIGI5dsQYq5+fFHe3OePB1zl0XcO34BqcuFvB
 4hNoiSuwVbv2DiBFRBW1Zr3COGm7QUUYddoQ9xf4eLc+EHg4s/p0suzrh
 wmcS6zNvM+RO7+Cird6hZOLFjROT5ORd3SGJdTGTom4vTHmJ93qWRUpOb o=;
X-IronPort-AV: E=Sophos;i="5.64,487,1559520000"; d="scan'208";a="701737185"
Received: from sea3-co-svc-lb6-vlan3.sea.amazon.com (HELO
 email-inbound-relay-1a-16acd5e0.us-east-1.amazon.com) ([10.47.22.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 10 Sep 2019 06:17:38 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1a-16acd5e0.us-east-1.amazon.com (Postfix) with ESMTPS
 id 374E0A226A; Tue, 10 Sep 2019 06:17:28 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 10 Sep 2019 06:17:28 +0000
Received: from [10.125.238.52] (10.43.161.82) by EX13D01EUB001.ant.amazon.com
 (10.43.166.194) with Microsoft SMTP Server (TLS) id 15.0.1367.3;
 Tue, 10 Sep 2019 06:17:17 +0000
Subject: Re: [PATCH 3/3] arm64: alpine: select AL_POS
To: Arnd Bergmann <arnd@arndb.de>
References: <1568020220-7758-1-git-send-email-talel@amazon.com>
 <1568020220-7758-4-git-send-email-talel@amazon.com>
 <CAK8P3a0DEMeFWK+RuAdSLyDYduWWwj9DxP_Beipays-d_6ixnA@mail.gmail.com>
 <ab512ced-d989-5c10-a550-2a4723d38e7e@amazon.com>
 <CAK8P3a34eKFXoAPOfkFN5+H4kxOhRjXgws_0wy+d-186LFxcTw@mail.gmail.com>
 <0d36f94d-596f-0ec7-6951-b097b5ee0d2d@amazon.com>
 <CAK8P3a0RUHxcpyUJU5bpd8nqpm0Sqhy4aJaoh7K9jVn8zJC6aQ@mail.gmail.com>
From: "Shenhar, Talel" <talel@amazon.com>
Message-ID: <a616c903-6d3e-cf84-8afb-ade48d5ca68f@amazon.com>
Date: Tue, 10 Sep 2019 09:17:11 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0RUHxcpyUJU5bpd8nqpm0Sqhy4aJaoh7K9jVn8zJC6aQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.43.161.82]
X-ClientProxiedBy: EX13D08UWC002.ant.amazon.com (10.43.162.168) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_231830_939218_B5FEBC6B 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, mjourdan@baylibre.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 jonnyc@amazon.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 ronenk@amazon.com, Will
 Deacon <will@kernel.org>, Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 DTML <devicetree@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, hanochu@amazon.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, barakw@amazon.com,
 hhhawa@amazon.com, gregkh <gregkh@linuxfoundation.org>,
 paul.kocialkowski@bootlin.com, Patrick
 Venture <venture@google.com>, Olof Johansson <olof@lixom.net>,
 David Miller <davem@davemloft.net>, David Woodhouse <dwmw@amazon.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 9/9/2019 6:08 PM, Arnd Bergmann wrote:
> On Mon, Sep 9, 2019 at 3:59 PM Shenhar, Talel <talel@amazon.com> wrote:
>> On 9/9/2019 4:45 PM, Arnd Bergmann wrote:
>>
>> Its not that something will get broken. its error event detector for POS
>> events which allows seeing bad accesses to registers.
>>
>> What is the general rule of which configs to put under select and which
>> under defconfig?
>>
>> I was thinking that "general" SoC support is good under select - those
>> things that we always want.
> I generally want as little as possible to be selected, basically only
> things that are required for linking the kernel and booting it without
> potentially destroying the hardware.
>
> In particular, I want most drivers to be enabled as loadable modules
> if possible. When you have general-purpose distributions support
> your platform, there is no need to have this module built-in while
> running on a different chip, even if you always want to load the
> module when it's running on yours.
>
>> And specific features, e.g. RAID support or features that supported only
>> on specific HW shall go under defconfig.
>>
>> Similar, I see ARCH_LAYERSCAPE selecting EDAC_SUPPORT.
> I think this was done to avoid a link failure. It's also possible that this
> is a mistake and just did not get caught in review.
>
>         Arnd


I see.

Will remove this from v2.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
