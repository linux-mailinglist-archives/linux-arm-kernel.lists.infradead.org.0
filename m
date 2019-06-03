Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A1D338D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 21:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YT7jYeEm1I736uJIdozCZl1wmVTmnjnISx240i7/rP0=; b=XQu+gEoyXNqfZ5OxASRYYTBhD
	EkjCEZte0NooHdCVd1JKK/nYNfJyXWF/r3Jqrl8FcogHqoN5WZPQxDrVrEQgvK/XP7H0ya/nqZnIy
	9lcWAXElefIPnUXrfXHQG/hZPqIvFnqjgylPWLwKlkjkiMCEPmbTZci2PVBS7CcxarGrNoZZgI0Zm
	XvKTVMQOnL+EtGPKNJKDJPtNBmbiu62GStUXuy5SSUxX7bkaMbYOXNQ6REhzg+kf18UO9rwghuCZ3
	HI9PqEKBPQE7CW0ONOZJsp0iGzgE9uOd2eSAi2UIse+M4DTD3MEX5cVk/IXq7nUeDt1FHg0gFbgKK
	BfHjXQxXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXsGI-0003Qo-RP; Mon, 03 Jun 2019 19:04:50 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsGC-0003PP-1d
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 19:04:45 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 39BD160EA5; Mon,  3 Jun 2019 19:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559588682;
 bh=2fFF2UZ1IMZoss2BdlfTKftG1dBbtIAex7bZx7hQCNA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aSz/NurbMyqeUH2T7AzFoOZ/xsmW4Bf/FkDo33lpjwoR/+VFHCg6wSsM+iizRvLSh
 8a/N7/vJ1OSK9AWz2nfz2fHYefLlH8t5pztgjCj5u1JUbc8HNAmrQNhmHdBjuFGbVt
 316WuMJOnLtMatSgVgj+l47uQYdWAVwH5UsqFr9g=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 639956020A;
 Mon,  3 Jun 2019 19:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559588677;
 bh=2fFF2UZ1IMZoss2BdlfTKftG1dBbtIAex7bZx7hQCNA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MoQ3CkC5zUj8smO9TgVqkewwzN+bMdSvy1hwgvlG1qi8GDPxO9pSlf2g2VzGuEgZ7
 iW1JFRDNNyJGMxrHj2N2KKQJ1R9sOPUWSN2u7qkqOAa3Cy9TTjpL7rWs/BRNAqeBdM
 IM1gEWYa2IWjjsaxCuJWM6r5brDVUnpN2UWV4XPM=
MIME-Version: 1.0
Date: Mon, 03 Jun 2019 13:04:37 -0600
From: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
To: Dan Williams <dcbw@redhat.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
In-Reply-To: <0fc29577a5c69530145b6095fa1ac1a51949ba8e.camel@redhat.com>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
 <3b1e12b145a273dd3ded2864d976bdc5fa90e68a.camel@redhat.com>
 <87f98f81-8f77-3bc5-374c-f498e07cb1bd@linaro.org>
 <0fc29577a5c69530145b6095fa1ac1a51949ba8e.camel@redhat.com>
Message-ID: <c200581b8fc167f3a0c09ef6233b8d81@codeaurora.org>
X-Sender: subashab@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_120444_132068_F1D57421 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Networking <netdev@vger.kernel.org>, linux-arm-msm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, abhishek.esse@gmail.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> I can't (or won't) comment right now on whether IPA needs its own
>> netdev for rmnet to use.  The IPA endpoints used for the modem
>> network interfaces are enabled when the netdev is opened and
>> disabled when closed.  Outside of that, TX and RX are pretty
>> much immediately passed through to the layer below or above.
>> IPA currently has no other net device operations.
> 
> I don't really have issues with the patchset underneath the netdev
> layer. I'm interested in how the various bits present themselves to
> userspace, which is why I am trying to tie this in with Johannes'
> conversation about WWAN devices, netdevs, channels, and how the various
> drivers present API for creating data channels that map to different
> modem contexts.
> 
> So let me rephrase. If the control plane has set up the default context
> and sent a QMI Start Network message (or the network attached the
> default one) and the resulting IP details are applied to the IPA netdev
> can things just start sending data? Or do we need to create an rmnet on
> top to get that working?
> 
> Dan

Hi Dan

All data from the hardware will have the MAP headers.
We still need to create rmnet devs over the IPA netdev and use it for 
the
data path.
The IPA netdev will pass on the packets which it receives from the 
hardware
and queue it to network stack where it will be intercepted by the
rmnet rx handler.

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
