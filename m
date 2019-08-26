Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA949DA38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 01:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OjKs1KgB1NMFzENS1syqTg0fl8qZ5IuLv/E5vP8WKd8=; b=tfZ1IHMLo3QHUh
	N9b6MLIhWlPwqbbkRZ/veZEbIIhFcHBS78cojoqQRiemx7Esp8G1ukO+vEoik2bHWOHp5vhxpMArX
	ZzimFDZNQmSn1UncoRRwG0qCdvEu+CC2LutJ/FSJDLu6MYO820GhsyVbY12EhHFgikGb9w6P2sEc6
	3SGLxai5fMnOomml5OmclFCBGfw44JuHtvIFnHI3M5Inc5rDUv3wmSwFPJZij+BOjk0eMRXQxps/b
	Fz1+BWa/aBmBTjUVHFvKNHS8r60I2KN0rL0OZeVX7Hapk2VW3R3G45mHWso77mN3gn4RI9vTZynHW
	EYyaqaozEKzJzzVnFrPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Os4-00044f-MM; Mon, 26 Aug 2019 23:58:00 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Ors-000439-Cx
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 23:57:49 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 01DEA3CB0;
 Mon, 26 Aug 2019 19:57:46 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 26 Aug 2019 19:57:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=XME7TZm7cj23/QLbq4OVXeIVehmG6Kj
 rwVjJRtju3yU=; b=Y6cQ437A8Ha+5sMISr5HPLDDUBGIXZGsj1+W8orSgA+stbB
 N6MVEEoXQl6B6fp4atWu3Oq6lpm06RBHKxVHgCuB+rQu2M0ZG1ZZNohGEtD/Vxwq
 lGht1LDPtUHknaJXvkN2VNYPU7ua2NC1LFBWNjuJwkqJGARJjQrL46KjHAad8RPM
 fdMpUJmNm36qFMPjZ9KKWb+MZeOf5ycRkWAxrgJa2WQvt0I2rHG+PuigTJLaSRK6
 lmPlL7l5kB2QjYcyoRHTis0cyo5OsJCdWo+Rkq9hfsk5gXx90ONp60x49vkCuA8Y
 /4znYi7TWepBXZtezyzLhYRlkn/hsgGRSJzODLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=XME7TZ
 m7cj23/QLbq4OVXeIVehmG6KjrwVjJRtju3yU=; b=MAW8POA4VYmSqQDxi9ne09
 FvO8QIzWrk0VH53/UO7gGZvikmkY2ot2SOodhhNQjluNNZ9Y3sP92CvgLWsQbPiO
 LcU+2no4uTMqJGx+5AkuxEKAQy5PBVIe1/NFUjdHrso1f9zGpD42QlMAaqYfEDwJ
 HseiIxMzENi3CMwL2LIRL7+J8i7nMVC+MIgeMH80KFcDX9TBBXdM9No1SYH6xlSC
 4WTVBbsbngHlh3niChfWJzeZkX2X0FDKKte2tbvPhPae/oPm418DJibQb/0hNfPd
 u+JgFsM3NdrVwmpPfGbZ49by0JWB7KPJBTJYp6SkvDg8qhq/vgQAM/0LWE/d4asw
 ==
X-ME-Sender: <xms:93FkXZyTfM9gce3i09PhNxeK-Vitwb5shQUh0jQkqC8ikS8QV72Ydw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehhedgfedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:93FkXZaSNOM0ClCzMJM1cIjEANP8sMQ3vGeSgUato47e1v6mlPzLFg>
 <xmx:93FkXaxCkrZHNh3HyyMgrYSzokyfvUw-MZvVlWlst8Ri9_ROzb2ZUA>
 <xmx:93FkXSGLg2_V89JgCAYaDmhJYlylJ8v8rYEZH5ee-pmGLAj1TbLmRw>
 <xmx:-XFkXSXqk18oyb9Hz3459qfh9zxfAOV5T12ZjJBLlEmSOsHQgRQdWw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id A3882E00AD; Mon, 26 Aug 2019 19:57:43 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-139-g73fcb67-fmstable-20190826v1
Mime-Version: 1.0
Message-Id: <f33aa4b8-6d06-4226-8859-ce21a4b8728b@www.fastmail.com>
In-Reply-To: <20190826104636.19324-5-i.mikhaylov@yadro.com>
References: <20190826104636.19324-1-i.mikhaylov@yadro.com>
 <20190826104636.19324-5-i.mikhaylov@yadro.com>
Date: Tue, 27 Aug 2019 09:27:44 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Ivan Mikhaylov" <i.mikhaylov@yadro.com>,
 "Guenter Roeck" <linux@roeck-us.net>,
 "Wim Van Sebroeck" <wim@linux-watchdog.org>
Subject: =?UTF-8?Q?Re:_[PATCH_v2_4/4]_dt-bindings/watchdog:_Add_access=5Fcs0_opti?=
 =?UTF-8?Q?on_for_alt-boot?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_165748_581482_5115908C 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, Alexander Amelkin <a.amelkin@yadro.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 26 Aug 2019, at 20:17, Ivan Mikhaylov wrote:
> The option for the ast2400/2500 to get access to CS0 at runtime.
> 
> Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>
> ---
>  Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt 
> b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> index c5077a1f5cb3..023a9b578df6 100644
> --- a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> @@ -34,6 +34,13 @@ Optional properties:
>                  engine is responsible for this.
>  
>   - aspeed,alt-boot:    If property is present then boot from alternate 
> block.
> +                       At alternate side 'access_cs0' sysfs file 
> provides:

Why are we talking about sysfs in the devicetree binding? This patch
doesn't seem right to me.

Also if we're not supporting the aspeed,alt-boot property we should
probably document it as deprecated rather than making it disappear,
unless you're going to fix the systems that are using it.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
