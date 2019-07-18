Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 339306D3B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 20:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ouuLojnjw1Qt2vMqRZb6+xNPHPf+U963TK2XBZBMLOk=; b=gCyJuCaLJskx+Q
	pRUvZtD2uWYUHdMU73J67OwnYsAxCXiEYmUeDY52ha5DHBkePtf4a0pY9wsR4EQuGfwMPm5I1j6cr
	Fx9u7hKiO4uLX3EpgYxppftNExVoe7zdyC7/IspneqM2Azfczi1emLGT1t+eNqBw79VF2MJBr2D5u
	DsgWYu8xYEnvw/nhn2P7+njCpJEYg4qPjNdUrpsR/rGZc+MjvkgDKcajAHWSmiHSOwrUIYSqyMevF
	BXabM9j9cqqwff17xO5ZcfaiGuZMXDBJMp9bmnxHw0o2+mObfhsq8qH1y3J/ym4nBl+9AAY/Fk93k
	9Tb8yj+OVAT1A/fAGZ0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoB0p-00048E-R6; Thu, 18 Jul 2019 18:20:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoB0R-0003xE-R7
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 18:19:53 +0000
Received: by mail-wr1-x444.google.com with SMTP id x1so14722888wrr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 11:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
 h=date:user-agent:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc:from:message-id;
 bh=h54rmMahMqQvVKBhITb8s5JIpbi4ygr4KLMdeUUjp5c=;
 b=NvGgMqGi4DQkqonQ5JRy7hfyXgfhCcRnyIYbadqN3cQmpkdacDJ1xuz0VN3nFSjGLs
 UBtzi+NbmsJUlq+MGWsBptcDbwweXqYanVDcdJaWZMH2bmlB52NZUTmxdsZ5gC0GtlyT
 ynWLc9gqpfFUxwRrM2GjGTgfWjUsN2nJTvlKItPbqNsNs+Y6TCe7AzVObIhdpC+LwPEK
 6xKsnEtdjvuRggm7zX9l1s9tJ/LFsg9uBj6aOp3UrQXtYEPoApT3cTmi9faTSbD9Yn8w
 uzseyyJTX/B/aUf0VXuQ/KyIe/tTjo6n0z7SCWoS3v/hJeckFlt1rFVprs0TtrFljoHB
 Xgtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:user-agent:in-reply-to:references
 :mime-version:content-transfer-encoding:subject:to:cc:from
 :message-id;
 bh=h54rmMahMqQvVKBhITb8s5JIpbi4ygr4KLMdeUUjp5c=;
 b=BwcOYzDlg2qt6kPNTtIFmm9V9ew37/XecQ1z891K6Mtpws1hf8rTPZGteHsO6itUnU
 Sxm3hzWA5rkOn0frHsp8mQttzHkvDFFu5CKxQNW3WKsLkVp+ZiaiDpU9pzFTWWeOnWO1
 QsPiToV+/tYv+NiFnipqFhZshCUE2NnjstTtoUpRNzY492rVxzPKNB66GsgwGRxS0e38
 u6oSS3b/6EDgES1h4rzBSAVRAD349poXnF7siOuEOQpQJd8MjYZSbCeiapvl9+G6DepB
 MwVDZ7lzB8sHDhJKTfLdmzsXQCFpw2mPQ4OrjrOGnHM05zM9GOxW+FbzEZ0zfYE0iLQU
 yBBA==
X-Gm-Message-State: APjAAAXSpBXbLeHaEGmBTVqUOtsHeGYbdVyVBoK5Jm+0K892BGfxOGWc
 +0qTIel1gNbcwZz0vITNLyo=
X-Google-Smtp-Source: APXvYqwo6V9hv13ACCPH6SRbBgE3buHWOcSI/9Bq2O3qsH95VhMYEUFfuKGFklECvN8FlhxhVEaXJA==
X-Received: by 2002:a5d:53c1:: with SMTP id a1mr22307849wrw.185.1563473989688; 
 Thu, 18 Jul 2019 11:19:49 -0700 (PDT)
Received: from localhost ([185.69.145.45])
 by smtp.gmail.com with ESMTPSA id o11sm27119837wmh.37.2019.07.18.11.19.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 11:19:49 -0700 (PDT)
Date: Thu, 18 Jul 2019 19:19:46 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <7537ea7a-9e96-e6f1-231c-9f2d433884e0@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
 <1563393026-17118-10-git-send-email-wahrenst@gmx.net>
 <048fc038-4ba8-ddc9-fbdb-aefa7a35b41a@gmail.com>
 <2a400a9b-9351-ba6f-adff-3e3916efa6be@gmail.com>
 <74ee5be5-3840-3a70-0f2a-60d86bcbeefa@gmail.com>
 <7537ea7a-9e96-e6f1-231c-9f2d433884e0@gmx.net>
MIME-Version: 1.0
Subject: Re: [PATCH RFC 09/18] mmc: sdhci-iproc: Add support for emmc2 of the
 BCM2838
To: Stefan Wahren <wahrenst@gmx.net>, Matthias Brugger <matthias.bgg@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Eric Anholt <eric@anholt.net>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Mark Brown <broonie@kernel.org>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <C7BE1BB6-3118-4FD8-835E-0BB825F33FED@gherzan.ro>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_111951_929501_31F04BFA 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan, 

On 18 July 2019 19:09:09 BST, Stefan Wahren <wahrenst@gmx.net> wrote:
>Hi Matthias,
>
>Am 18.07.19 um 18:48 schrieb Matthias Brugger:
>>
>> On 18/07/2019 18:40, Florian Fainelli wrote:
>>>
>>> On 7/18/2019 1:34 AM, Matthias Brugger wrote:
>>>
>>> [snip]
>>>
>>>>>  static const struct of_device_id sdhci_iproc_of_match[] = {
>>>>>  	{ .compatible = "brcm,bcm2835-sdhci", .data = &bcm2835_data },
>>>>> +	{ .compatible = "brcm,bcm2838-emmc2", .data = &bcm2838_data },
>>>> As far as I'm aware of, the RPi4 FW provides a device-tree with
>compatible:
>>>> brcm,bcm2711-emmc2. Shouldn't we add this as well so that we can
>use the DT
>>>> passed by the FW?
>>> Downstream typically used 2708, 2709, 2710 because those are the
>>> Broadcom internal part numbers, and upstream has been using what's
>on
>>> the package: 2835, 2836, 2837, 2838. At the end of the day, it does
>not
>>> make much functional difference, but if if we have to be consistent,
>>> then Stefan's approach here follows the consistency here.
>>>
>> So I propose to add both, so that we can use the upstream kernel with
>downstream
>> devcie-tree. I'm thinking of the device-tree provided at run-time by
>the FW.
>
>sorry for the second mail, but this is a slightly different topic. I've
>seen that Andrei already submitted a patch series for u-boot with a
>different DTS file.
>
>In the past, we had the following workflow for DTS submission to
>u-boot:
>
>Downstream --> Mainline Kernel --> Mainline U-Boot
>
>So we have at least one review by the devicetree maintainers and avoid
>inconsistence. It would be nice to keep this.
>

I had a private discussion with Matthias and we dropped the dts files completely relying only on the one provided by the firmware. I'll post a v2 tomorrow. 

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
