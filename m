Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B35F196AAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkFXHwBj6aQi4+QwGLWRIEQHi7ZcTb8nwXxZdISlTMI=; b=TvPJRJiR8XJ9Od
	W3kQVaaXjyfLhHzO43PHemB7qRVjbmU6m2EoC2YV193XcIKhgZghwAji3AmkxfjoVAn/iWredc/38
	9OfBhKi055N3M/90BTZWwcrHT1Gy8kmczqpjH19G0K4Rzr3Sf/J6Ifn20DBTo+FOVMplU/2yVGuuN
	PVJtHzZ2MT6mJYXueSVtpVCmOKz17yjiZwUftURapXsaCGgBaQrCwKQ9hmGmJN9Plqz3FScQmMgy3
	BYvCHdInGcux/7/7mROpHzy/mYEB558xRhUx+UevrPRHhyvbfU4OYYVZQY+FrMi21xZuo7pTNBYCR
	+abtSLT8+ypa2z2DtyWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0AoQ-0002ZD-4f; Tue, 20 Aug 2019 20:33:02 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Ao7-0002LT-6Q
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 20:32:45 +0000
Received: by mail-pf1-x444.google.com with SMTP id w26so4052582pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 13:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=kyEHbcI8OaQsdijhpYJ247ryUC+AhRoozS5mgSer0Qw=;
 b=oDSjhL2YNHp14i8G4UOYppX2LDYc+KQATpHHF3wGLc0y5v0WksfEU2Q+9UzD0p0SHN
 n/Nr+6HeVKShQwoQTzdLC+R8lxmiDFcjgussLq1WpOPFpSPqxMKByyofImYkvntJqwNk
 3Mbspm+ItArW2F26vGCm2bdg0vYXDZe+SrhMg8zu4du0MoVWXnSLPMyxsSf3zianCYo0
 A02OsSc2AWfDxCB8b0GLmTc1bblPdww2Yjy+0cIBAaQjiRmhYf1Uw/plFXOQsUJnD0QW
 6pwxwP4B3WbDJbe15yloVqI100IM4BuDM/PPqkWuKpqgAk29WzRZDCGu+ayucYgoznCT
 RcFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=kyEHbcI8OaQsdijhpYJ247ryUC+AhRoozS5mgSer0Qw=;
 b=Bga3LAJmxyKmuk25p+leSCiDeKsGu9WHsqplIZ48TAGmqk6GIOhXi4oOtLUwwOrSQs
 DU2VqJ23P1NR1t6DbTX5BBXzl1IySeguOCvbJmKcHLCaXPsC/LWBhZK18F1c/gUnphEf
 4dQ2nRfCzRhgvBlRrThWUf5foUdOSq3HaAFPpCOT3lIEd70sjWoq6UNq/U2zfCDX3JiM
 XBdGMMGPaaJOt9tITRUjpyGk4UijdqJzx9Zzj1s7TFgwqAm+R/3hLa7dANe0B9tWeknp
 01EozuFwpWkkrKQSDWtoIK15Srrpn0dUiY4K+kY24yVX84cd1U2Wg6qOO4CkgSedAa1O
 TC3A==
X-Gm-Message-State: APjAAAXhJCJjl2Km7zxiH1GRVHC8lMRdJTAAimQ8Mtx2VbupsiwJ5ja3
 9V66z1kJh6BFi+Yv1GBkfvQBVA==
X-Google-Smtp-Source: APXvYqxRPX9c2O6zHA+5ot8vijJAGlXF9Zjo5KF2B+Iw4rrZszh1tbBUVvSTk6/XMqwI7rzVhcpG/Q==
X-Received: by 2002:a63:b346:: with SMTP id x6mr26638801pgt.218.1566333161272; 
 Tue, 20 Aug 2019 13:32:41 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id y16sm27494422pfc.36.2019.08.20.13.32.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 20 Aug 2019 13:32:40 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 6/6] arm64: dts: add support for SM1 based SEI Robotics
 SEI610
In-Reply-To: <CAFBinCCNN_DBiriJRjw-AA-OCMFc+UgYi4oSJasJSypYFSbw9g@mail.gmail.com>
References: <20190820144052.18269-1-narmstrong@baylibre.com>
 <20190820144052.18269-7-narmstrong@baylibre.com>
 <CAFBinCCNN_DBiriJRjw-AA-OCMFc+UgYi4oSJasJSypYFSbw9g@mail.gmail.com>
Date: Tue, 20 Aug 2019 13:32:40 -0700
Message-ID: <7hwof7d1cn.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_133243_906603_430D78B8 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> Hi Neil,
>
> On Tue, Aug 20, 2019 at 4:43 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> Add support for the Amlogic SM1 Based SEI610 board.
>>
>> The SM1 SoC is a derivative of the G12A SoC Family with :
>> - Cortex-A55 core instead of A53
>> - more power domains, including USB & PCIe
>> - a neural network co-processor (NNA)
>> - a CSI input and image processor
>> - some changes in the audio complex, thus not yet enabled
>>
>> The SEI610 board is a derivative of the SEI510 board with :
>> - removed ADC based touch button, replaced with 3x GPIO buttons
>> - physical switch disabling on-board MICs
>> - USB-C port for USB 2.0 OTG
>> - On-board FTDI USB2SERIAL port for Linux console
>>
>> Audio, Display and USB support will be added later when support of the
>> corresponding power domains will be added, for now they are kept disabled.
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> I don't have any details about this board but overall this looks sane, so:
> Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>
> [...]
>> +       /* Used by Tuner, RGB Led & IR Emitter LED array */
>> +       vddao_3v3_t: regultor-vddao_3v3_t {
> that should be regulator-vddao_3v3_t - maybe Kevin can fix this up, if
> not then we can still fix it with a follow-up patch

I fixed it up while applying,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
