Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F17611ED75A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 22:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qvnWbmkNhqVTLu5czid8/cRR05Mlm4Y6AQFz8MDsxY=; b=e5hz8RW/JNQ31A
	hm5f/w4mOy4VsDl9ydD999jOlm6eY6odpuRtKERg3kqTFc2ZjMrGSgACk8Qb8Ue47ADDEE0/1bQW1
	5ypIFnz+utUudY1oCLZvIBtNRbxUyYhrTlkf1IUS9Z1vYmkh7oAgRgIwmCd98QyFU1ErV1yDCaWCs
	HkfeBRSghDjUa3X6xiMxRyvW9T5JwEPTj0OAOylxP8z+Qt72Sxl42FCwAK18eJQVHzsc9MjML4Fwo
	3dK8F+5gpR/DFip19YmVQvO9dkr15xzo233OMp17odfuj3Z1ENP+88SCkDCim1voXQyZC2VG9aUx1
	Lu3qC2agAz9Rr8nDhyCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgZzk-0007r0-Dd; Wed, 03 Jun 2020 20:28:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgZze-0007qQ-1F; Wed, 03 Jun 2020 20:28:11 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so3785592wro.1;
 Wed, 03 Jun 2020 13:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QJoU0SL/WMOj7L3NadynkZeyU/j5E6/2RmbX2dsWEuI=;
 b=O1LVFpMdx6MshAlnzmBj79PlQO5s8ec4kdWGh+y1Lp4Tk4bQ8uKEJuaeGQX+dKGEbJ
 sLBjRjNR7OLo34SNlxhzLOc7vTz6E+Fg1Sz5LpB7kYH1LEG3Z/wasndPb262w/QmQWuA
 s5rtW9C3xatcgDg6G3ErDST7EnfUp2zg7Hz8+CC8ui6tPSTg4HglImmkhr0O69jYImbS
 ynLU+KdOwqP/9VsifF5GkohvIse8OP3jJqFLFp3+lSSXE+qFzax/ZMK4v7FpmMCMjJsU
 vGMC2e9BEhVVsKlQHkHenxKCbb3QPsaBsytEcndI1/WwvvKWVJ+uGTi+SF+vHwHroERa
 tqOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QJoU0SL/WMOj7L3NadynkZeyU/j5E6/2RmbX2dsWEuI=;
 b=KpoY4y0Fh4PiLD6ebn0U7r4N4Ii9WeO2iX3gz2ssFjGQxcKB0maNKvyvILIQ3+MSN4
 8ApqWbxKIfbxuoSYY6Af4W8gK6x4sABk71JDCRFHo4FOo86fm3VzZITzYe/nGrw64d8H
 Jjc17Tf+kPdBM4Z/ZWu5w8jar//SvJn4RV0QQrsyCxX4KycCvfgN6QumPeYy2j1KLW7C
 HdLebpU1vqtqyczEROEwhBwcLOF6y8TAh+KrOS8PJhm6O3cI2Gw1ivB3mE16FnQJ9qjt
 d0xdRqyGwisGX6z9UE2s4ULF8ao8y3x6beawNSe82Xe0wv2Vu+WyP7VRUl+6+aftnK8m
 Bm1A==
X-Gm-Message-State: AOAM530+4qA/vIHKvFMssET0KPnbzpV1+/wTFiKdp/nzgOeu07VbmJ17
 ooBWH0Xo9Xv5e1RdYW2RmMY=
X-Google-Smtp-Source: ABdhPJw1wLOdLyU2fIYxiFX1qFroH9/3SElpGfgD5z6nUeWbe6JPFezogiaAwdPas9bXLSZEBmUsbA==
X-Received: by 2002:adf:c98a:: with SMTP id f10mr1043664wrh.329.1591216088120; 
 Wed, 03 Jun 2020 13:28:08 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 c5sm5237770wrb.72.2020.06.03.13.28.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 13:28:07 -0700 (PDT)
Subject: Re: [PATCH v3 04/13] PCI: brcmstb: Add bcm7278 reigister info
To: Jim Quinlan <james.quinlan@broadcom.com>, linux-pci@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com
References: <20200603192058.35296-1-james.quinlan@broadcom.com>
 <20200603192058.35296-5-james.quinlan@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <f93f96f8-7034-d8a4-7959-0da00e6ee0ce@gmail.com>
Date: Wed, 3 Jun 2020 13:28:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200603192058.35296-5-james.quinlan@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_132810_088201_23A063E1 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/3/2020 12:20 PM, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
> 
> Add in compatibility strings and code for three Broadcom STB chips.  Some
> of the register locations, shifts, and masks are different for certain
> chips, requiring the use of different constants based on of_id.
> 
> We would like to add the following at this time to the match list but we
> need to wait until the end of this patchset so that everything works.
> 
>     { .compatible = "brcm,bcm7211-pcie", .data = &generic_cfg },
>     { .compatible = "brcm,bcm7278-pcie", .data = &bcm7278_cfg },
>     { .compatible = "brcm,bcm7216-pcie", .data = &bcm7278_cfg },
>     { .compatible = "brcm,bcm7445-pcie", .data = &generic_cfg },

If you need to resubmit, there is a typo in the subject: reigister vs.
register. Other than that:

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
