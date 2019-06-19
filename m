Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FDB4C10B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 20:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/wuU2cj1za+PhTFZnje0M8Gi9X27Wm4BYIEvY2C8R7c=; b=AIC3Z2YV9kGzzskwQzizJfPVi
	OVx7gfVuZisS2WgCmOFApH2EVyG3sxyKBwRon8gY4plYnLsOqN40u5NiT5tLnucdQ0xABY82d56sE
	zrcjRbsNw8QJmAa3dD55U8tbsvVt27EFhJaKPoQ4GqF2EFRvHb9Uckq7O8vZvlJT0B7UhKOxBJxjp
	H+upVIgAeU/RR0F0qlEXRR2UwtlezO8vpF5THDCSWa+UNfosN+8T6Qy/MZLlOp1ORtFWdwa+6I8u6
	P70uaxAfZ9IYOmtRJT+Vt0vE9ITckyUliRHi44vqOwyV4XeR7F53fr7g1eyRKKFA/ilaR8FFO3lCC
	wTWC1YI2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdfcp-0001do-DU; Wed, 19 Jun 2019 18:48:03 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdfcV-0001dR-KR
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 18:47:44 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id EC4E26087F; Wed, 19 Jun 2019 18:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560970062;
 bh=1yZ8gW4omtDGb+oqxDGLEnHBunqq4YkklbYTCwDXY3U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kQIh5jOa/cXWbooFqk3WCsn70ABRuoV0jnfVYeJSkyHfIFkju+3qmGPNMdevfks3e
 f2aBzUFDFi1wJmBElItePeSJlBzfqspKFXRjp/1g9ElfshPGiseUjQG0rTGega79Xr
 IfBUZMyHrJlFlYzC6kSekM3CXRd102LAksKVSjrU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id DADCA6063F;
 Wed, 19 Jun 2019 18:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560970061;
 bh=1yZ8gW4omtDGb+oqxDGLEnHBunqq4YkklbYTCwDXY3U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EYJPfomCH0dyi8k+h1DqgHcD2V+VGlCjTr2UW5kMNzdEfu1KOLIsNdJLhoktaOzmA
 m/h33t+EefNSvWuAkeKELMtnzWcc+qBxt8d9cgJtkGZ48T9SKBFnd9AXK8qipv82lA
 v0cg/okvJwlKbZsTmYQvUj8EwjwxzJTMZbjQGxjY=
MIME-Version: 1.0
Date: Wed, 19 Jun 2019 12:47:41 -0600
From: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
In-Reply-To: <CAK8P3a3e+U85yHTeE4dHa4okLVHgBd8Kke9=FytzvMwz+wB0sQ@mail.gmail.com>
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <066e9b39f937586f0f922abf801351553ec2ba1d.camel@sipsolutions.net>
 <b3686626-e2d8-bc9c-6dd0-9ebb137715af@linaro.org>
 <b23a83c18055470c5308fcd1eed018056371fc1d.camel@sipsolutions.net>
 <CAK8P3a1FeUQR3pgoQxHoRK05JGORyR+TFATVQiijLWtFKTv6OQ@mail.gmail.com>
 <613cdfde488eb23d7207c7ba6258662702d04840.camel@sipsolutions.net>
 <CAK8P3a2onXpxiE4y9PzRwuPM2dh=h_BKz7Eb0=LLPgBbZoK1bQ@mail.gmail.com>
 <6c70950d0c78bc02a3d016918ec3929e@codeaurora.org>
 <CAK8P3a3e+U85yHTeE4dHa4okLVHgBd8Kke9=FytzvMwz+wB0sQ@mail.gmail.com>
Message-ID: <2926e45fd7ff62fd7c4af9b338bf0caa@codeaurora.org>
X-Sender: subashab@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_114743_706598_86159AF8 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: DTML <devicetree@vger.kernel.org>, syadagir@codeaurora.org,
 Eric Caruso <ejcaruso@google.com>, David Miller <davem@davemloft.net>,
 Dan Williams <dcbw@redhat.com>, linux-arm-msm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Networking <netdev@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>, Johannes Berg <johannes@sipsolutions.net>,
 linux-soc@vger.kernel.org, abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> There is a n:1 relationship between rmnet and IPA.
>> rmnet does the de-muxing to multiple netdevs based on the mux id
>> in the MAP header for RX packets and vice versa.
> 
> Oh, so you mean that even though IPA supports multiple channels
> and multiple netdev instances for a physical device, all the
> rmnet devices end up being thrown into a single channel in IPA?
> 
> What are the other channels for in IPA? I understand that there
> is one channel for commands that is separate, while the others
> are for network devices, but that seems to make no sense if
> we only use a single channel for rmnet data.
> 

AFAIK, the other channels are for use cases like tethering.
There is only a single channel which is used for RX
data which is then de-muxed using rmnet.

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
