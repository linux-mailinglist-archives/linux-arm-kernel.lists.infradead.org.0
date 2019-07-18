Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E926D229
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SE7aYcZiAfPxgAQpG5PUpxFUa9x4x6e/X6SKgjwTkJc=; b=GQPPRuiWYrC+F1
	+XotkBmzw2zDiHFN6+tan1QQz39V33qphN6VAwm8h9wwXusBDCUDg9BnJj9lCzknWZ2RGGc7KAEr1
	V9UCk5QzN/y4C5Bll9v+m0BcegUndcjySD+rI7kmxZjWkYwbK530iwac3elmQGOHgewX3iNtz08WR
	5PPgGOBPNH0SaLJJDIT4Q2ErCz3AP+JQRvq+7Hm+704lH4WrAvzaMqjqDxD11MPOKvgCMcTBwDh5L
	L2V6Mzc/Yk5Xhngz4uAPBaLkfwy9NRLqCmgjSMPKdPuM58sS8wIiwA3IPPlifIFcaIHLzYpU90JtD
	7QRdWrW8YrUM2eNjyFPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho9Sw-0006An-JT; Thu, 18 Jul 2019 16:41:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho9Sc-000665-9S; Thu, 18 Jul 2019 16:40:51 +0000
Received: by mail-pg1-x544.google.com with SMTP id n9so6922010pgc.1;
 Thu, 18 Jul 2019 09:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xeeHRa0ssv0L72zbsHGyKtNG2FAMMW9IemnyCPGdtss=;
 b=DJonCO6N8yVIISCk80CBunUXjcTlDZ2dWrUnkpkEt4cnXpZdKHPXzcDun7ZFO9vbcJ
 Pf4/2/MQQyGxY3/B0LMX5pCCIaGmlWxi6jEKamPEFX0SlYuz+0O7DdX+6V22WMxMgWyv
 7PlegqwB4yzLlGVWN/sqKBbP2K0gn2JQJoDL8MZpHc1Ue+7gXCmEIMgotIwRrE1AsyhE
 9oU3PjzZ/JaKg73NgQBaj9maD+cVeL/a+na/SxLtxjrt27Mgk+8kZxL+sSdo7KgYO1f9
 CFE1bskZiApOy2o9ASoHV9PCbch3z/K6OIsKZyf7X+cNV6M8jyho8L7xz5+xnxZbJApy
 VGaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xeeHRa0ssv0L72zbsHGyKtNG2FAMMW9IemnyCPGdtss=;
 b=pGG/kXf+ZZXQMIPc2q5IV2JooHJpx74odS91JSajKJ/VFyWuu/271k8N265Dji+++1
 kGaVLL7ea/DlmjDyfO5/SFimwwtII3f1bBfETn5W4/YIhwEfhHwAqJcqreLhVQglxXbD
 fOg6Gi3s0jUz3O74YEAC3mua3Nq7vwymFY2MJfT+7MI1a/5aFkI+hye5CPRws7Fh1NhS
 D82wXvn9sXAFPt4Rdu4oVizCRzg8hdLRa0SJclZsHvHHqkwyqMuWV94xo9j+R0zXMTYJ
 ZwMTCcn9nwd2usQlHvu/z6bUNp1VT4rnfC7pyh8GXFMPXcNYw2dF+BYaFi5NQbevOZH4
 8aDg==
X-Gm-Message-State: APjAAAXxmVIFii68fHLcD/AuGYcnqD9SMFBCFhmJg0Q70sVWWF8dxryC
 9y7ifGmvHqj7mfil8DsHsg7GT5D3
X-Google-Smtp-Source: APXvYqz+zPNCjp7ef/Xg/YyCSnKahnVjwyiVNTkT9MzWouQrJ7xQroJ7crJhMjHkOy2bnTDbsu03cg==
X-Received: by 2002:a65:4c4d:: with SMTP id l13mr8392266pgr.156.1563468048784; 
 Thu, 18 Jul 2019 09:40:48 -0700 (PDT)
Received: from [10.69.78.41] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm26328001pfh.13.2019.07.18.09.40.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 09:40:47 -0700 (PDT)
Subject: Re: [PATCH RFC 09/18] mmc: sdhci-iproc: Add support for emmc2 of the
 BCM2838
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
 <1563393026-17118-10-git-send-email-wahrenst@gmx.net>
 <048fc038-4ba8-ddc9-fbdb-aefa7a35b41a@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <2a400a9b-9351-ba6f-adff-3e3916efa6be@gmail.com>
Date: Thu, 18 Jul 2019 09:40:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <048fc038-4ba8-ddc9-fbdb-aefa7a35b41a@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_094050_372364_8CA1E9F8 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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



On 7/18/2019 1:34 AM, Matthias Brugger wrote:

[snip]

>>  static const struct of_device_id sdhci_iproc_of_match[] = {
>>  	{ .compatible = "brcm,bcm2835-sdhci", .data = &bcm2835_data },
>> +	{ .compatible = "brcm,bcm2838-emmc2", .data = &bcm2838_data },
> 
> As far as I'm aware of, the RPi4 FW provides a device-tree with compatible:
> brcm,bcm2711-emmc2. Shouldn't we add this as well so that we can use the DT
> passed by the FW?

Downstream typically used 2708, 2709, 2710 because those are the
Broadcom internal part numbers, and upstream has been using what's on
the package: 2835, 2836, 2837, 2838. At the end of the day, it does not
make much functional difference, but if if we have to be consistent,
then Stefan's approach here follows the consistency here.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
