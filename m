Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3BE6D266
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mtjpW/VBxiwShFoymxVNUa67u7gjCMM9j1OoCoRw6i0=; b=R+3idee/cqpzQt
	kgNqyTpFlZ/0PyUgaRf8+CNNJ337yfL5ycuPQvS8hIhL2UPx7zwPdluTSoPMuVhKdjPDXo1ipAxWE
	YMYeyQ+GV0NKG9Dm4OhPKc74cfkxJ/ikBXXFcOaFX8dibnb6YtPEt14/SmlPJrs1FDilOxAvc1MeQ
	JxKmzI816tydIK+i9KRnDKpcO+mdxihP2dtSoQihhikY6q/W2XXE77ogVmEdm72tBQ13CL+nWSeL4
	S7brzOjesigLGDTtmqtKP6O9Ylw7q+y4N0M8mvFLEETEYuzp3SbWfGW3bD/60sn1oW5IH7yiN9W4W
	97kHCP0t4DByC5R44Vrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho9eR-0003IK-V4; Thu, 18 Jul 2019 16:53:04 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho9eE-0003HU-OX; Thu, 18 Jul 2019 16:52:52 +0000
Received: by mail-pl1-x643.google.com with SMTP id y8so14173731plr.12;
 Thu, 18 Jul 2019 09:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=B9sXbIAgCUxYbdMP7tdn/QQo9lsNyd/aDKcl5v3D8RA=;
 b=TCteih+D7dKNx87H8hXAvFATrkrFijrBrYpkrzkW7KHHPYj10IoUBDMuR35/P2rinM
 dfOuRHULT6V1KnJdWIT8dZizQzw/+DQ5tRKCsfNqPu3ewSvfwX225S/IK+5i8GwNyJCX
 zCNPG4y1ZogBH5FLv+Z8x265Of/oiTGPMT3TfF3Fu2MbN/tpV+nr7IF2JRRiKBOXJ8Ma
 bvufOeKdU513oB1ynVfhLNvryhVmdfwubGqDpNZxjip/HeCsQkZub/q2Q63JxDUVYneA
 wNXnYvXW4qpL67qWoqY5eRGdW4JTXyKBwuiOB60iQ+S0m92BmrwDFMw9fUZMwPgmGZso
 XzQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=B9sXbIAgCUxYbdMP7tdn/QQo9lsNyd/aDKcl5v3D8RA=;
 b=VerqbvzQJ4EthweeSCr26xLQjoHM3/FdwNzCsK2U2HUTIamBmSOYMLDVYf/w1bMs/+
 6fQOW4oMyLV+g19TD+sPsLWvIEm4sh4ujT8f+MBuo5TSe/h1C8/0gQOm145xnN+AnKWo
 QzjXe6gYIHMmBQYzS+KPXVEdh77lPlZhqfHCSK/HeXeRhIOsU/EoI+rh4buaUjpPxcYC
 +f+HhiRyMefel3jRb+ZtQYFnew135LNjBemnqwTegJw/Wayk4zW/s99ilktFbGtQaNgZ
 c1UvTKeteH68kHL7dJakA1S79MdJ7OZr+0KxPSxRF2+d33J1u34bj4dAemsL+XD374pX
 kaow==
X-Gm-Message-State: APjAAAUj8GhNpLKRwfbL3UQ/bVmjBeVeFVYvgWjjBANKM2Azow3VBXot
 kDpxdPPpRu06q912BYTkXb6pg/tS
X-Google-Smtp-Source: APXvYqxgeoD5rDkr7xeJEqCRyltcCncP/y9ZbNPntH98GjiSYNsZOXrP3ja+LLmtTtyj5WZlWhvjrg==
X-Received: by 2002:a17:902:8d92:: with SMTP id
 v18mr51721388plo.211.1563468769579; 
 Thu, 18 Jul 2019 09:52:49 -0700 (PDT)
Received: from [10.69.78.41] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id r188sm45669521pfr.16.2019.07.18.09.52.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 09:52:48 -0700 (PDT)
Subject: Re: [PATCH RFC 09/18] mmc: sdhci-iproc: Add support for emmc2 of the
 BCM2838
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Stefan Wahren <wahrenst@gmx.net>,
 Eric Anholt <eric@anholt.net>, Ray Jui <rjui@broadcom.com>,
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
 <2a400a9b-9351-ba6f-adff-3e3916efa6be@gmail.com>
 <74ee5be5-3840-3a70-0f2a-60d86bcbeefa@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <978251ed-502c-168b-705e-12e596c05685@gmail.com>
Date: Thu, 18 Jul 2019 09:52:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <74ee5be5-3840-3a70-0f2a-60d86bcbeefa@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_095250_805698_C980A778 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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



On 7/18/2019 9:48 AM, Matthias Brugger wrote:
> 
> 
> On 18/07/2019 18:40, Florian Fainelli wrote:
>>
>>
>> On 7/18/2019 1:34 AM, Matthias Brugger wrote:
>>
>> [snip]
>>
>>>>  static const struct of_device_id sdhci_iproc_of_match[] = {
>>>>  	{ .compatible = "brcm,bcm2835-sdhci", .data = &bcm2835_data },
>>>> +	{ .compatible = "brcm,bcm2838-emmc2", .data = &bcm2838_data },
>>>
>>> As far as I'm aware of, the RPi4 FW provides a device-tree with compatible:
>>> brcm,bcm2711-emmc2. Shouldn't we add this as well so that we can use the DT
>>> passed by the FW?
>>
>> Downstream typically used 2708, 2709, 2710 because those are the
>> Broadcom internal part numbers, and upstream has been using what's on
>> the package: 2835, 2836, 2837, 2838. At the end of the day, it does not
>> make much functional difference, but if if we have to be consistent,
>> then Stefan's approach here follows the consistency here.
>>
> 
> So I propose to add both, so that we can use the upstream kernel with downstream
> devcie-tree. I'm thinking of the device-tree provided at run-time by the FW.

Adding both for the Pi4 (2711) specifically, or should we go back and
also add bcm2708/9/10?

The Device Tree on the Pi can be updated (AFAICT), so the ABI concerns,
and the requirement for upstream to maintain backwards compatibility
with a binding that has not been submitted/reviewed is not going to be a
compelling argument IMHO.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
