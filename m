Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DEB31882
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 02:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QV+h/osF/cd4dtFfflpvCCP0pJXcWkRKCNTXFzXAEzw=; b=KOWKLOLvL0S7LC12Z+00B1PvF
	N/ej5p221VFnqy+gTuVDwPTr3OFb53ya0gYoMRkCHJbBK6al0VfQngQpYIGZxppbV3t9S0g6/VEin
	ORCaiucXyoYu4cYfsoii2zyzr007iWNXuA4p1hkA2pT86ZNwkdO31Ge226RsULs4BnEtUq7V/c34j
	a+8XnyowkFcN/ZUUmI1F2pnQ7XGNNOxna8qxxc5YWTayCeyHVN/AcYnBWLYdgJRrN1EnRXk1gn2bB
	cdFK4l6/I+IZDeK2dqMijWtfbQeEMjaOnRTAGg1iYijSkMHQOBhJ50wkX9AZkG45whhKZ/TCx4rgj
	CJwoYLqWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWrRB-0007bk-Mn; Fri, 31 May 2019 23:59:53 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWrR4-0007b6-7W
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 23:59:47 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6B97760CF0; Fri, 31 May 2019 23:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559347184;
 bh=tJJKl5ehmjDb2KK6XeMOmnd1rblvf2TEFa0oPKfTx5A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DrR5If3bSV4UtULQl7DoeUdYH0qFStHS2EZNSIBc+cRSxZWIZArUiSxyvoPNOcyc+
 BV1zFF3oNDbjY01hii7pjCDzqV2bQY+v6PFLeGPMvyWpdx0LSzd0kKC/qtsqXQKFE2
 F9xYliUcplczYufvnmMhN9ZUuMk3PlzArFyOZXIM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 2C6286070D;
 Fri, 31 May 2019 23:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559347183;
 bh=tJJKl5ehmjDb2KK6XeMOmnd1rblvf2TEFa0oPKfTx5A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JhHqfqgmdNVqLrmRdouTw0Seluy99Trhgv3NmXlFn69xRxPpycBc/Q+DRSfAeVwu4
 JTEboKLfLKX0c13lS4DlpcSurxqakUSwUHvxF/LXUHDnPuoHKctksui16YqOi10b83
 IBD+oLcK1w2+MnQzgPq0KGIsSeRbdNA1g0f1wxfU=
MIME-Version: 1.0
Date: Fri, 31 May 2019 17:59:43 -0600
From: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
In-Reply-To: <20190531233306.GB25597@minitux>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
 <20190531233306.GB25597@minitux>
Message-ID: <d76a710d45dd7df3a28afb12fc62cf14@codeaurora.org>
X-Sender: subashab@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_165946_304453_50B36D4F 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Eric Caruso <ejcaruso@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Dan Williams <dcbw@redhat.com>, Networking <netdev@vger.kernel.org>,
 linux-arm-msm@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 abhishek.esse@gmail.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-05-31 17:33, Bjorn Andersson wrote:
> On Fri 31 May 13:47 PDT 2019, Alex Elder wrote:
> 
>> On 5/31/19 2:19 PM, Arnd Bergmann wrote:
>> > On Fri, May 31, 2019 at 6:36 PM Alex Elder <elder@linaro.org> wrote:
>> >> On 5/31/19 9:58 AM, Dan Williams wrote:
>> >>> On Thu, 2019-05-30 at 22:53 -0500, Alex Elder wrote:
>> >>>
>> >>> My question from the Nov 2018 IPA rmnet driver still stands; how does
>> >>> this relate to net/ethernet/qualcomm/rmnet/ if at all? And if this is
>> >>> really just a netdev talking to the IPA itself and unrelated to
>> >>> net/ethernet/qualcomm/rmnet, let's call it "ipa%d" and stop cargo-
>> >>> culting rmnet around just because it happens to be a net driver for a
>> >>> QC SoC.
>> >>
>> >> First, the relationship between the IPA driver and the rmnet driver
>> >> is that the IPA driver is assumed to sit between the rmnet driver
>> >> and the hardware.
>> >
>> > Does this mean that IPA can only be used to back rmnet, and rmnet
>> > can only be used on top of IPA, or can or both of them be combined
>> > with another driver to talk to instead?
>> 
>> No it does not mean that.
>> 
>> As I understand it, one reason for the rmnet layer was to abstract
>> the back end, which would allow using a modem, or using something
>> else (a LAN?), without exposing certain details of the hardware.
>> (Perhaps to support multiplexing, etc. without duplicating that
>> logic in two "back-end" drivers?)
>> 
>> To be perfectly honest, at first I thought having IPA use rmnet
>> was a cargo cult thing like Dan suggested, because I didn't see
>> the benefit.  I now see why one would use that pass-through layer
>> to handle the QMAP features.
>> 
>> But back to your question.  The other thing is that I see no
>> reason the IPA couldn't present a "normal" (non QMAP) interface
>> for a modem.  It's something I'd really like to be able to do,
>> but I can't do it without having the modem firmware change its
>> configuration for these endpoints.  My access to the people who
>> implement the modem firmware has been very limited (something
>> I hope to improve), and unless and until I can get corresponding
>> changes on the modem side to implement connections that don't
>> use QMAP, I can't implement such a thing.
>> 
> 
> But any such changes would either be years into the future or for
> specific devices and as such not applicable to any/most of devices on
> the market now or in the coming years.
> 
> 
> But as Arnd points out, if the software split between IPA and rmnet is
> suboptimal your are encouraged to fix that.
> 
> Regards,
> Bjorn

The split rmnet design was chosen because we could place rmnet
over any transport - IPA, PCIe (https://lkml.org/lkml/2018/4/26/1159)
or USB.

rmnet registers a rx handler, so the rmnet packet processing itself
happens in the same softirq when packets are queued to network stack
by IPA.

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
