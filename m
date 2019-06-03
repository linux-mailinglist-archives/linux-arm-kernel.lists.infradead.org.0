Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5DB33405
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 17:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=977p5LxogBqUiLi/TpCpxKtYQp2NV4BjPGXMZjeWZWk=; b=ez9yq6PZR32ln9
	yqt46x2nLV74w6M9AExrCcHGBpkhVej6OGvg/GrNmy5Es5vMgSXol+nhd9DEgdVDkbMxEANKdYXwT
	5uXuiynYndnJDQR83eUgTTQejtWPQnAHoB4jTC/rkux9ZGSz8uVzwD3LCJdEFaSfNyW2AMYn6mHjZ
	fsX0NEEZi/Iq8/whnZHinDW8Vwlnv/YTmka44jHcp2dfA0NJtAWf6b51nOnvJ7naJCUPLQOufqSJ2
	g4Z7u6cUC87Z5Kv6yDhr6empcfSpDEvuTMjG7ym9qrNakte0w93kmHVNpbTT85GQY/7717o4yOaoL
	JCSwnWcCNQa8tBhHhMjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpGb-0007bl-JC; Mon, 03 Jun 2019 15:52:57 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpGU-0007aH-Cr
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 15:52:51 +0000
Received: by mail-it1-x144.google.com with SMTP id n189so8929339itd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 08:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GpFzEpr1ezfAmPIG1U95ynZ5Rh+k9URxN/mncQwbUQk=;
 b=oBApCORx2TVaSa216x4E5fWeNliHwLcHKgzvAiwAQj8dhZ1r9t956omEZF1QQfS9Qn
 L4GYcQEFUI2hVJ5He6pUDQDUNyPznBtxjBYhYgWqf0fpncq8kFEDs/+HOYrnAP6r9obM
 T9qxjp1J8zHbaJiaXN6PDoLBGISs83YZyJ8Usa30SQiYXgwfXXGbF1s6FibOLcl34SKl
 vmBvNMOVYyW8K4XlWvfPG76wjQWDeeqOPEjNgfG57tXvxOLi3EN0fasmt5IWrPSqUfvx
 8DX+S2kyo+AAwLnSKCV0MFxSNOmOYqzTkLSHwEUJsGuBY6OmAel+brYjn8OUNx7Xym6d
 +xdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GpFzEpr1ezfAmPIG1U95ynZ5Rh+k9URxN/mncQwbUQk=;
 b=Qz8jR8Uae5VfzTLiksICmAjvf7gloErc5s6lBt5AIW5UWxwVYciHksAS98LgHzPUSJ
 Mwd5zYM/GOYja3S0U00CHULdJys6BFHMcK5pH+z2d5KjWZ4NtTsQ6A46b//LDfRsdApO
 FXP/myZep2v3Gtnlee4JFrEZYs+iCBnghUHIdkpqIaOq+cIpR2011hOCP8oBw+W6h2SX
 HO0lrm4ZeST30i2IETZhEAptRWknOjZUHlzOxi+dDk3FRBWYiIqwtc3e+wZHeSUJUQk0
 HawTGJxxm3XwV1MZ9gm8oxCOlI9SZ+pnwX2+SM9VmNXEWIRkujvdEnvh6GBJx5t6qq3u
 ZGQQ==
X-Gm-Message-State: APjAAAWsAVyV3JpDMTLaiow7ags+INdNs/xCy7ZzYzsdTEFd/IWyfxcj
 MpGHN/pDrRYysAWIGctivHQuBw==
X-Google-Smtp-Source: APXvYqzo9/FdjdMy/rm+ux/zzuCDzs64hnhuS0f9Cbu5oq0R0BChyY/kjFKdvtNpy1Rib9l/GhHFOQ==
X-Received: by 2002:a24:e943:: with SMTP id f64mr17241456ith.32.1559577169293; 
 Mon, 03 Jun 2019 08:52:49 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id j23sm2301492ioo.6.2019.06.03.08.52.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 08:52:48 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Dan Williams <dcbw@redhat.com>, Arnd Bergmann <arnd@arndb.de>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
 <3b1e12b145a273dd3ded2864d976bdc5fa90e68a.camel@redhat.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <87f98f81-8f77-3bc5-374c-f498e07cb1bd@linaro.org>
Date: Mon, 3 Jun 2019 10:52:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <3b1e12b145a273dd3ded2864d976bdc5fa90e68a.camel@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_085250_498798_F7928DF7 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
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
 Eric Caruso <ejcaruso@google.com>, Networking <netdev@vger.kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, abhishek.esse@gmail.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, David Miller <davem@davemloft.net>,
 cpratapa@codeaurora.org, Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/3/19 9:54 AM, Dan Williams wrote:
>> To be perfectly honest, at first I thought having IPA use rmnet
>> was a cargo cult thing like Dan suggested, because I didn't see
> To be clear I only meant cargo-culting the naming, not any
> functionality. Clearly IPA/rmnet/QMAP are pretty intimately connected
> at this point. But this goes back to whether IPA needs a netdev itself
> or whether you need an rmnet device created on top. If the former then
> I'd say no cargo-culting, if the later then it's a moot point because
> the device name will be rmnet%d anyway.

OK I thought you weren't sure why rmnet was a layer at all.  As I
said, I didn't have a very good understanding of why it was even
needed when I first started working on this.

I can't (or won't) comment right now on whether IPA needs its own
netdev for rmnet to use.  The IPA endpoints used for the modem
network interfaces are enabled when the netdev is opened and
disabled when closed.  Outside of that, TX and RX are pretty
much immediately passed through to the layer below or above.
IPA currently has no other net device operations.

					-Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
