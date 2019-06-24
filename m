Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B165194A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 19:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17XzMzJIZ2Cb5iQVOIHk+novSp2f4uKWVxyn9IbV4wg=; b=tcMrrrQWsgUSB1
	bTDkegBNO4DIOiiLguyB9tWgRTmPjlxvqeOubAITVO8wYDcsfvQVoqWCRincovg0ap9UjDw2MQtM2
	2hsqL+jQUDfatSZ41XopFh/nVYUCw+UW7BMVkHgdMlmAO90JRSehLXzvxBZEztLdDueaaougCeNsm
	WmCKmNc/yiapuyvtqIxvJCkWtZd68aq0nkuU57UQbwxnjlP3SEX2fBhNLKcqA/2ZOwbomfSKQEu40
	kWGuusn5LrdK8EAyATyEuTc3p5x2N9wEVer7jLCZ+rOZtJCeMHzjV+6n+TDc4Yhkl4/VWB4Uk5L8q
	8xrWhMJLMlh6pATztrFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfSQJ-0004lW-Ku; Mon, 24 Jun 2019 17:06:31 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfSQ8-0004ku-8s
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 17:06:21 +0000
Received: by mail-io1-xd32.google.com with SMTP id k8so637361iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 10:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=iIXdeX2JiRmx4C9yHa4fiJw6+gLhZXZOz5wFmnOuZdE=;
 b=jxF6qb/sV7LdwL/M+hfpYLQ7N5FXZV6n9NR3jTyAGA+GplqKPu7nlY6GaDSV5WogpJ
 x5eIKLRlaYb94Or4C1um7mn7WyMOo4dBdef5p/nzVyUgjbyXrx8JH7EhAEca6FLfEfje
 nyB4Moc3cuXQ0mGOOtjDIj4Yowe3z2ODg6M4k2rpxg1D/1N9whY5BWQw6//5kdkEdi++
 Omw24Pvpq26FKnGtYJzLgnIvZHvyge1Woqy//RM3pArEUqeRr720cxBaRtcWL83at+Fi
 iFRy/xrZO9pexKsKLe8Zyr1lGXPKKen7I1pj+mLedfcptv9lvd/L17l65g1nM3cIwimg
 3tOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iIXdeX2JiRmx4C9yHa4fiJw6+gLhZXZOz5wFmnOuZdE=;
 b=el46Pm8D7BgIdtBuv5/0yT8ipziJGH3j0Yl8seGjF2FMcdTyuI9gy7RWcJMhakvee0
 AreWJ/aCR0HqzVgg9h2nwaegYC4cLrJSAUmeNzzdAW2tUMPs5dBMcc3VG1asL3iFVKDP
 rxvQeB+j7xyyU2xzUUxIjcOrTbUjPvPuQuQH6+qIigVbnLEWiJNK6fwLUB/my/EaaqQ/
 zUboYHy0mDXYhI/s1e/YkHBtpwX0DJw1jQHx8vTWzyWhW1bxr/SoTIM/bdbyDCMIVcWr
 OosxuTe4zQRCU82fUOBEEyBXYRAS5wzCNcIjIGRttG1Ay9uZQlUtoxw0c4ga2xTJmmzf
 C8qg==
X-Gm-Message-State: APjAAAX9lueAgZ2mlli0if0gdilt+jKPWA+BM65cmrtXkYSigal+yUnU
 gEh6gQAlFfaSmUALVJsXrr3l4r7cB7FLyA==
X-Google-Smtp-Source: APXvYqzVK8rqKQbqdwhHrTlxmKezzfLMdoJwvbpSG0OfjEOVBy5BTJ9p5dUhS23rTre1cQZCfpntYA==
X-Received: by 2002:a6b:8bce:: with SMTP id
 n197mr18564360iod.299.1561395978680; 
 Mon, 24 Jun 2019 10:06:18 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id z1sm24593121ioh.52.2019.06.24.10.06.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 10:06:18 -0700 (PDT)
Subject: Re: WWAN Controller Framework (was IPA [PATCH v2 00/17])
From: Alex Elder <elder@linaro.org>
To: davem@davemloft.net, arnd@arndb.de, bjorn.andersson@linaro.org,
 ilias.apalodimas@linaro.org, Dan Williams <dcbw@redhat.com>,
 Johannes Berg <johannes@sipsolutions.net>
References: <20190531035348.7194-1-elder@linaro.org>
 <23ff4cce-1fee-98ab-3608-1fd09c2d97f1@linaro.org>
Message-ID: <6dae9d1c-ceae-7e88-fe61-f4cda82820ea@linaro.org>
Date: Mon, 24 Jun 2019 12:06:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <23ff4cce-1fee-98ab-3608-1fd09c2d97f1@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_100620_346574_C97FDB9A 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d32 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 subashab@codeaurora.org, linux-soc@vger.kernel.org, abhishek.esse@gmail.com,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sorry, I neglected to add Dan and Johannes--who have been
primary contributors in this discussion--to this.  Adding now.

					-Alex

On 6/24/19 11:30 AM, Alex Elder wrote:
> OK I want to try to organize a little more concisely some of the
> discussion on this, because there is a very large amount of volume
> to date and I think we need to try to narrow the focus back down
> again.
> 
> I'm going to use a few terms here.  Some of these I really don't
> like, but I want to be unambiguous *and* (at least for now) I want
> to avoid the very overloaded term "device".
> 
> I have lots more to say, but let's start with a top-level picture,
> to make sure we're all on the same page.
> 
>          WWAN Communication
>          Channel (Physical)
>                  |     ------------------------
> ------------     v     |           :+ Control |  \
> |          |-----------|           :+ Data    |  |
> |    AP    |           | WWAN unit :+ Voice   |   > Functions
> |          |===========|           :+ GPS     |  |
> ------------     ^     |           :+ ...     |  /
>                  |     -------------------------
>           Multiplexed WWAN
>            Communication
>          Channel (Physical)
> 
> - The *AP* is the main CPU complex that's running Linux on one or
>   more CPU cores.
> - A *WWAN unit* is an entity that shares one or more physical
>   *WWAN communication channels* with the AP.
> - A *WWAN communication channel* is a bidirectional means of
>   carrying data between the AP and WWAN unit.
> - A WWAN communication channel carries data using a *WWAN protocol*.
> - A WWAN unit implements one or more *WWAN functions*, such as
>   5G data, LTE voice, GPS, and so on.
> - A WWAN unit shall implement a *WWAN control function*, used to
>   manage the use of other WWAN functions, as well as the WWAN unit
>   itself.
> - The AP communicates with a WWAN function using a WWAN protocol.
> - A WWAN physical channel can be *multiplexed*, in which case it
>   carries the data for one or more *WWAN logical channels*.
> - A multiplexed WWAN communication channel uses a *WWAN wultiplexing
>   protocol*, which is used to separate independent data streams
>   carrying other WWAN protocols.
> - A WWAN logical channel carries a bidirectional stream of WWAN
>   protocol data between an entity on the AP and a WWAN function.
> 
> Does that adequately represent a very high-level picture of what
> we're trying to manage?
> 
> And if I understand it right, the purpose of the generic framework
> being discussed is to define a common mechanism for managing (i.e.,
> discovering, creating, destroying, querying, configuring, enabling,
> disabling, etc.) WWAN units and the functions they implement, along
> with the communication and logical channels used to communicate with
> them.
> 
> Comments?
> 
> 					-Alex
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
