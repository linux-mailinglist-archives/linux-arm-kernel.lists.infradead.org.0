Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ECC4A33A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlanU+CrQdF0KFZPAQDY0ifv49T9eGrli+WTteDV2b4=; b=Zh82WJQRbKJSWR
	XZo5huMfLLMwGPEay5FyaoAUu+EIRXgausV4oQ91AqPyykNPUOwSlqMGRwY/lOhqugPaajQvd5JXV
	onRa584zlvV4FgvJvYEcgAGNRjBuuijS8X7s7REYacSTzm/EFYvPVrca4lqaZe9AWTHV34siEueks
	LG9dlpQtT0fKGCPiJK/dMG6T/lvZi+JeyIesnGoQ0a5Rm2mXMtkSLvc9v5Xah8cC2WWo8+QrhF7cx
	Jguf+SMUK2kQoa83hWn2QSECQI98q0aiHXzrIttXROy2wT3Z8qp+DDoZBz3mfhDgx3H/BFLSLYnc9
	wWsxbvSM3yYmbyO7vlLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEfy-0005w0-0i; Tue, 18 Jun 2019 14:01:30 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEfU-0005az-O7
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:01:02 +0000
Received: by mail-io1-xd41.google.com with SMTP id w25so29962399ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 07:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=T08//zG45sCSOuqyl+ULwBSrl0f1cak1EG68a6PEKJ8=;
 b=DCfVfJ+4RhCLmqXG1I+bfNn3kR7BJa6paHvS14hZvfHAQIpw8sApKrLm4OOwt55yRX
 pUar7QENZ5rVi3vx5xBpoFxAeP7AAkq93rBdji27/dyohyKc32Ip9YAXESCu0LZLO+U+
 QNLBbnsHtVHcCKHo465UicQL3IhBbM1bwr713lG8frsOCsMS9C1QyL5GZ16MgqszmYrZ
 Ag/3p1Kqo7TzdO6dBp14GtnIgZA0QhDBM7NfUSf1RZGe1gAl4i0TtLlhUXiXblQHoR5o
 dlI9cWo5/AWnl4H4pUUbTDN3/cZY2D9M3uCuUQZGsKY2bqlmwj2g8YJMDzWpESxnTyeN
 yrGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=T08//zG45sCSOuqyl+ULwBSrl0f1cak1EG68a6PEKJ8=;
 b=dRWjB6Hd1SJVsl0BVz0PligEIREnl92SKEyPc0qiLT0PM+a3VpGkN4EfmkCzP5GUDY
 vVx1/MZ+iQZEPttJEgri0y0ImdpBMIH85n8WNEY0blvMeAQN3y9hOic2rYhI518kmB8/
 6o+yLbg5DePcc1dAlvOLRQqMM6u71q4580tPhljaI3D36ug+IQ1N+9LyHSoBdPPRAMx4
 7eLivnuKsU8yTE8rlwfTRelcr2jHFhdMMYjya438crO9EK9kwCazjuZKQL5JBsLi5NBb
 j4czqRWjmmPPHiURIBgbH8PHBiO0AFFgRIvj+0E7hybqq18ZMlLmiSWH1ScENpvl6Fhh
 31ng==
X-Gm-Message-State: APjAAAWGuvBM0mQSU9DOr6Z42SWSSVbihv7QWSEgRMfOFwRbO0OHVRoC
 P31vW/irfohFgVahOWUjIlrhNw==
X-Google-Smtp-Source: APXvYqyeM5LvRvVxTEQ8tVA4GnMVkdsL650S6irQ2mz0DzREgjKLrfiwAVj0tKHMvYligiNiFkETlQ==
X-Received: by 2002:a02:9143:: with SMTP id b3mr2339682jag.12.1560866459394;
 Tue, 18 Jun 2019 07:00:59 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id x22sm14207341iob.84.2019.06.18.07.00.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 07:00:58 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Johannes Berg <johannes@sipsolutions.net>, Arnd Bergmann <arnd@arndb.de>
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <583907409fad854bd3c18be688ec2724ad7a60e9.camel@sipsolutions.net>
From: Alex Elder <elder@linaro.org>
Message-ID: <31c2c94c-c6d3-595b-c138-faa54d0bfc00@linaro.org>
Date: Tue, 18 Jun 2019 09:00:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <583907409fad854bd3c18be688ec2724ad7a60e9.camel@sipsolutions.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_070100_914992_DDF3E2A6 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
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
 Eric Caruso <ejcaruso@google.com>, Dan Williams <dcbw@redhat.com>,
 linux-arm-msm@vger.kernel.org, abhishek.esse@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, David Miller <davem@davemloft.net>,
 cpratapa@codeaurora.org, Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/17/19 7:14 AM, Johannes Berg wrote:
> On Tue, 2019-06-11 at 13:56 +0200, Arnd Bergmann wrote:
> 
> [...]
> 
> Looking at the flags again,

I sort of talked about this in my message a little earlier, but I
now see I was partially mistaken.  I thought these flags were
used in messages but they're real device ("port") configuration
flags.

>> #define RMNET_FLAGS_INGRESS_DEAGGREGATION         (1U << 0)
> 
> This one I'm not sure I understand - seems weird to have such a
> fundamental thing as a *configuration* on the channel.

Let me use the term "connection" to refer to the single pathway
that carries data between the AP and modem.  And "channel" to
refer to one of several multiplexed data streams carried over
that connection.  (If there's better terminology, please say
so; I just want to be clear in what I'm talking about.)

Deaggregation is a connection property, not a channel property.
And it looks like that's exactly how it's used in the rmnet
driver.  The hardware is capable of aggregating QMAP packets
arriving on a connection into a single buffer, so this provides
a way of requesting it do that.

>> #define RMNET_FLAGS_INGRESS_MAP_COMMANDS          (1U << 1)
> 
> Similar here? If you have flow control you probably want to use it?

I agree with that, though perhaps there are cases where it
is pointless, or can't be supported, so one might want to
simply *not* implement/advertise the feature.  I don't know.

>> #define RMNET_FLAGS_INGRESS_MAP_CKSUMV4           (1U << 2)
> 
> This again looks like a hardware specific feature (ipv4 checksum)? Not
> sure why this is set by userspace.
> 
>> #define RMNET_FLAGS_EGRESS_MAP_CKSUMV4            (1U << 3)
> 
> This could be set with ethtool instead, I suppose.

As I said in my earlier message, I think I concur about this.
I think the IPA driver could easily hide the checksum offload
capability, and if it can truly be controlled as needed
using existing methods there's no need to encumber the
WWAN framework with it.

					-Alex


> johannes
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
