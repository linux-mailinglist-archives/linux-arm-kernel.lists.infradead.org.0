Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A15F62FBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 06:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0tYHeYppt6eZ7r1IgzD5HfA2U2vHNYwKVgzcwUTbPw=; b=bjUkIpzM4KjmQK
	nNqTFh1envhl76z48uFx9PaVtgIoYvzzMKKhEDpiXsCCfqXPKA2kGeriiiVsAjTzGYJnWlxz/gBvM
	m9u8qDQSr18dI9wK+9yM9SOCg5UhgcwENywOR+u+fYwT9AVGMb40xvQuKedJ5HLeL78+TN3ll6t4S
	NFW59fRI3eqNjZhaa0mUz++twMeKUvjivrFxemIGtxug8t9OuFcf06+RvrBEoQR1epq+mpEilBybX
	05kkkqo/LUDzeC5ynIStwExRBAwhE5AMUoOte+81wSNjgc14MqBqd7QlzsEu01ZGZYLlqUNen77lA
	le015Z/ggWTwRkQi9mdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hki0N-0001Lz-Je; Tue, 09 Jul 2019 04:45:27 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hki08-0001KJ-EF
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 04:45:13 +0000
Received: by mail-pg1-x542.google.com with SMTP id m4so8791500pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 21:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w8T1boIzFFoSOnmUYhW8pmkZUoG7ex2MB+rDKpzf8fs=;
 b=XfZKXd7gmjz5FPaPLVypAzfMeQL7XUAQdYsunJCY3edTML1McnkNitbWb6ADc6SBhM
 Qo0eMq66Gu9Gv56plq3V0zoMDHhQApGnazKdIpO84Qk9i6oqX32jNLCetDrieaCdg+v8
 EJrv1Cy3o3HIijQtdKVW1jbOnR62iGkmeLqCOrMOtR7lQwTf7qKtB6WW50HzQHvyaW6e
 w7Oiq41vBHBavgTsowi5sXY3Wm/rL+7C+KAK/1lwea//U4oQmdcylRmlpNm8diu/JF3+
 M9vnE/7+ELnEwQikJXNppyxGHxZjtjIm3Nz+RMt9X0D6uI/jIQg0NYt6YEOV8gY8gTXt
 zIUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w8T1boIzFFoSOnmUYhW8pmkZUoG7ex2MB+rDKpzf8fs=;
 b=ig1EKF8iKHkCfAE+2NBtRv4wAwlmtgbCAk07tfPPEXsd/ZreF+8BwK7+isuhtyE2Xu
 Gpl8FK+Qcf4eawubDfaJDYe3wdMIXmH3GVQc4Xt71xkGMdiaY/8dNncAYcKg1zWUSAQd
 NG3NaUs8s4i2OIFnE1PSdvk4e1w3MgPq+L2kQXGeRtasagvo1IvfmoHZLfSn81Al9qxq
 li3ZmLNQ/4G1TxVCg1mAW8XZb6Kdcpv5n8SKwCd7qgWf0pFaysj7/mrDlsICeGkF9yeY
 tW2wi4y2wq4erus0qA6Wmk7DIvKdTv9qZmoEx0d198Kl6eKO9S3dPyMboDgPHLaO0WNJ
 kRmg==
X-Gm-Message-State: APjAAAU8vD6FJHpib17KkHs5bZgXc3S1Ws0Ohz/U7035lHi4EEaNdwuC
 ilsjBzV1VMqNgVSrBoxcjN68Yg==
X-Google-Smtp-Source: APXvYqxS1+TfUWQ4K5tWV/rky+PwoP/Nuue4PVUm0srLpT8NGOpInpCXQV6wKkHekUNntK1m1G9cwg==
X-Received: by 2002:a63:e953:: with SMTP id q19mr28343284pgj.313.1562647508410; 
 Mon, 08 Jul 2019 21:45:08 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id 14sm38828425pfj.36.2019.07.08.21.45.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 21:45:06 -0700 (PDT)
Date: Tue, 9 Jul 2019 10:15:04 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mm: Assign highest opp as suspend opp
Message-ID: <20190709044504.gyljwwnxdt5niur5@vireshk-i7>
References: <20190704061403.8249-1-Anson.Huang@nxp.com>
 <20190704061403.8249-2-Anson.Huang@nxp.com>
 <DB7PR04MB50519C02D90675070F21501DEEFA0@DB7PR04MB5051.eurprd04.prod.outlook.com>
 <20190708082511.py7gnjbqyp7bnhqx@vireshk-i7>
 <DB3PR0402MB391622133CD116FDE26A4F9AF5F60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190708084957.waiwdun327pgvfv4@vireshk-i7>
 <DB3PR0402MB39164E2F386181255ED37F45F5F60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB39164E2F386181255ED37F45F5F60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_214512_486418_D0EE4D5C 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08-07-19, 08:54, Anson Huang wrote:
> Each OPP has "opp-supported-hw" property as below, the first value needs to be
> checked with speed grading fuse, and the second one needs to be checked with
> market segment fuse, ONLY both of them passed, then this OPP is supported. It
> calls dev_pm_opp_set_supported_hw() to tell OPP framework to parse the OPP
> table, this is my understanding.
> 
> opp-supported-hw = <0x8>, <0x3>;

Right, so that's what I was expecting.

One thing we can do is change the binding of OPP core a bit to allow
multiple OPP nodes to contain the "opp-suspend" property and select
the one finally with the highest frequency. That would be a better as
a generic solution IMO.

And then a small OPP core patch will fix it.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
