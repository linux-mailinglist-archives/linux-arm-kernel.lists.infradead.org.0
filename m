Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DEB1BA5FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 16:13:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBP89hbhZx44wHEhHYV7UK35P+PHnp+VetbJ+CUDLUQ=; b=BdHNzxWIETU11G
	T2cb46qwqxwoM/J+k9pAyZV4odW5UIIJ0qWjygOq3NsXN9NVfKJouyCfSDReMhrR4d1mOyyb2Wgsu
	l9JiWZqAo7tOySOyASXWrGg2P/4830LEwwC3PP/jFu66+e2MhZQogSsVUG3DLSG3D/EatyIwWMSNB
	Jc5mnXxZvPG3++MDCA5r+TlBlBPB/moCT1phuul/69CWmnmMNrrRuR2yR5FcTDlveZNvMKurVK01j
	jQ/bDcioa1p163MZGZkw8CwnnvNUMrQwkskJ/JRX1lIaLg4QJ4Ptpv+ou7V9DevBlQPmeo9TK/Zm2
	i7EXYZb8PxzJyBfdJt2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT4VO-0003iJ-HH; Mon, 27 Apr 2020 14:13:06 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT4VE-0003gu-3V; Mon, 27 Apr 2020 14:12:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id u127so20641680wmg.1;
 Mon, 27 Apr 2020 07:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hXzFCii8TK+6j4aoUMO+iQEJf8FgxRpxLE2R58+xhnU=;
 b=oAbzNbnGmUqYwp1txITipiEvjxihbS2UCHOaOjmg8ovkCNQAlfLRuGTyWQwyIjgWD3
 E073JSClILB1nA3qt8tGjq+VRPpC7UfwW299JgADbvNkeXyEC+1y0OUTeXhWEP4CZx/Y
 Hwy6cHauz07E0P2uR6KIlRaU181SkT8g0ollwYYgCEAWxHEafxWNphYdzrnGdZwTD2v3
 AWzP4/tjFBVKACwEHa/nmOj3X4idoIRmtZs25KcEtEOa31ZTkwHOhmt7gquE/kY/ImN2
 K0RlE8d0zVjzM4IOgHIGC3xlzS1/ooV/olNIbhDzTPufkQRMgcnxjiOjfnhZBf17eU/A
 Z5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hXzFCii8TK+6j4aoUMO+iQEJf8FgxRpxLE2R58+xhnU=;
 b=W4ZOSew/HEk0YWZ1lyFE65efIrCOymx83FFHVarbAwAox8K3uKoNtmAkIUMOda2C0O
 6xpLXiEbngHw3B7yqtcA13rPHDsnS8S7Fd4QunY9eIP+wsiVvN64t+eBGB97IRbSctip
 JH5Uuhb6NeiqGod8rBiZBQU8T4HFtOiY01Qs+5qJRMa1C0a+bXkojSyJispjJ7Htz9B9
 FEPDPQ9BZyozrORZljTHvXcra6sGAfSNvQFeQBhv5bJuN8gl6kUJ1w9U2sVryduQGFnL
 lIugekS5qIbYHQFTcgZPrP40hGOaB9dJegkPVuEYzZdduE+beF7WlOqA6XMCnlsa2SU/
 Qo6A==
X-Gm-Message-State: AGi0PuZOu4FutsBdWb7FrhieHXhvSRzGr4zYjnN+7CFKQpb2CJzh90uj
 UQlDrT0G1b4nPYjHxxCT9pY=
X-Google-Smtp-Source: APiQypJiOnJfu2lTVpb0BgX484TchdDbu6LXcPdFTw2LgdaUXl1ACqMYRiadebISaSMGvTJodU5KsQ==
X-Received: by 2002:a1c:99d3:: with SMTP id
 b202mr27301491wme.126.1587996774461; 
 Mon, 27 Apr 2020 07:12:54 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id e13sm11841282wrp.15.2020.04.27.07.12.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 07:12:53 -0700 (PDT)
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
From: Johan Jonker <jbx6244@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>
References: <20200427073132.29997-3-wens@kernel.org>
 <684132b8-4a84-8295-474b-38ccb992bba7@gmail.com>
 <CAGb2v66Piu5_2bdqvWV3eEn2Se_y1MNKWvvYBv_J7DA-8jBhbQ@mail.gmail.com>
 <65d15254-08da-895c-1a0c-ef6ce231b620@gmail.com>
 <CAGb2v65fGYguNoksq5Dyx3HTKeYg+U82TiQSL+NO8AUcQJQj5w@mail.gmail.com>
 <74a984fc-ce57-211b-936c-2d77e2e642bb@gmail.com>
Message-ID: <a81840d3-813b-51b5-767c-e0d9d270200e@gmail.com>
Date: Mon, 27 Apr 2020 16:12:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <74a984fc-ce57-211b-936c-2d77e2e642bb@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_071256_163795_ED8EBCE6 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Pavel Machek <pavel@ucw.cz>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, jacek.anaszewski@gmail.com,
 linux-leds@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, dmurphy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

>> So for fixing up the LED node names, we'd probably want the following:
>>
>>     diy_led: led-0
>>     yellow_led: led-1
>>     work_led: led-2

Change proposal for led nodes to comply with preexisting dts.
Does this work?

diy_led: led_0: led-0
yellow_led: led_1: led-1
work_led: led_2: led-2


blue: led_0: led-0

A check does not give any warnings.

make -k ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml

> 
> That doesn't look pretty either.
> Would like to hear the maintainers view on how to handle other cases
> without 'led' like for example 'blue' for mk808.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
