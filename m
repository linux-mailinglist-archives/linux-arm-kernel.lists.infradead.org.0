Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A36D7DBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtauA3urfk6/nD1cgVNo9lhaW0DY8Arc1o+AU9xKNl0=; b=nvliNETLpNnYJN
	UeDdW9KCvxeGqu2SfOTglYB750Q8ThwulZWIikQexFkwj7wu1dC0Dd95BZvQ40vyHdwQ1gaYEmVBh
	cXNndqQbPl2ePIxriYPdDu+SD7+6eRzwJW8vuMuoO2LowD6dn90yNFppH+lXexhU0GfuHGcgiFpkX
	SLmqvxKC9MFgfoVDZwQtLnQzekzlbopBNskbeZ9ER+t66PGH2FEnr/fjrIbhFQEWCx9T5+FTxRHCT
	n1d0z1qzUd3e67a+aT4EUPRqtejnqdlfiPfAvBU5IpiBS1lHE+XAGUpt/ijpj2kTeu9tsBK28AghV
	LxCd4NyOIwSQREF2sUdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQcp-0003vs-Pv; Tue, 15 Oct 2019 17:28:47 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQcg-0003vP-OL
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:28:40 +0000
Received: by mail-wr1-x443.google.com with SMTP id v8so24878550wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=os9QbobI/azFwebbSSsC+cAsD4UdKi+4CFDnUTNOSIM=;
 b=l6nrblgIbU24zNLPqZG/epYqsa51L5zQLG3cko19z4h1nobzFwePwrrfGuf8f7zU/o
 rTfdbu4epZo4g2TJZnzZppWSZg+CZoCNhOlOAeW4jpyw2o8cyZiZEPsQ/d2petEgmRPo
 ZVUSggCGs6sIkTr8SRClw5ok2tGE6xC/r4K1sLKIvJ9og1go8NlDnkPVIJYVGlUXAYmo
 qGTh686y0vobBsm4OXjnBC/HcQO9kKFIM6JwqAGh8bht6aNIulfk1ZUyzACv6I7o9NYC
 6ELC8n4kqjCWCNOoqtbUHwvr8FnjEGKpTQcJHeQWoWIIFUgy6Uvwric3Xv/yuSoOD04B
 tyDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=os9QbobI/azFwebbSSsC+cAsD4UdKi+4CFDnUTNOSIM=;
 b=Rh7D/fS2MwOsAZDT+X3PHTP7GUh2NRs5kS+4ipya8zGPv3xTRcG5o/43ybgF1Mc5wg
 GibLDAxM/f8q2MUmwMe5TWsgl7pHM8tqWwlPeJt82O4FKSBMt1Y/qQhyp4GFwdeVDO9X
 jaeKM930VJLsFhM+1KyYwN5EbxOtfyp7/dFvhzQvsFnVLvR6jeBwl4YX91C6lR4I7Lle
 fzeAvpI/lJTMtVH1LJlbGBgP1dlJpG6d68lXwLHMOo8KCOV9h89sXlDorpRbWhYVqceh
 Hh0qmO5uRxMQq8KeDLafzSsZ5jTA6wHcHCoUY+B88cU8KQDdC57szqf+/ex0j9sUFzkN
 92bQ==
X-Gm-Message-State: APjAAAWS2zllNZFiAJ+VLXzNTdFwQd8WyO4p1DxLMQtk/gnX1pV2Lk6L
 OxVyIHs7tcsXhbEkVnngYXg=
X-Google-Smtp-Source: APXvYqzbpLksD7L6SiaxGgptV5DhQ/yPuA6f+CYEpTwS6TyWLO4tyGvCKPtrSa1/OgLxq4CPtNTY+w==
X-Received: by 2002:adf:ecc7:: with SMTP id s7mr2293920wro.305.1571160516387; 
 Tue, 15 Oct 2019 10:28:36 -0700 (PDT)
Received: from [10.67.50.53] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id x16sm16157023wrl.32.2019.10.15.10.28.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 10:28:35 -0700 (PDT)
Subject: Re: [PATCH v2 0/6] PAXB INTx support with proper model
To: Srinath Mannam <srinath.mannam@broadcom.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>
References: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
 <107116f2-a5ff-c545-1864-eb5885c4c60e@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <88449493-4a32-1eda-434d-317b149173eb@gmail.com>
Date: Tue, 15 Oct 2019 10:28:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <107116f2-a5ff-c545-1864-eb5885c4c60e@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_102838_817853_72D83E13 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pci@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/4/19 10:16 AM, Florian Fainelli wrote:
> On 8/28/19 1:54 AM, Srinath Mannam wrote:
>> This patch series adds PCIe legacy interrupt (INTx) support to the iProc
>> PCIe driver by modeling it with its own IRQ domain. All 4 interrupts INTA,
>> INTB, INTC, INTD share the same interrupt line connected to the GIC
>> in the system. This is now modeled by using its own IRQ domain.
>>
>> Also update all relevant devicetree files to adapt to the new model.
>>
>> This patch set is based on Linux-5.2-rc4.
>>
>> Changes from v1:
>>   - Addressed Rob, Lorenzo, Arnd's comments
>>     - Used child node for interrupt controller.
>>   - Addressed Andy Shevchenko's comments
>>     - Replaced while loop with do-while.
> 
> Lorenzo, Bjorn, if you are good with the binding and PCI host driver
> changes, you can take patches 1-2 through your tree, and I will queue up
> the others through the Broadcom ARM SoC pull requests. If not, please
> feel free to add a:
> 
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>

I am starting to queue Device Tree patches for 5.5 and I need to know
whether I should be picking up patches 2 through 6, or if you are going
to do this, thank you.

> 
>>
>> Ray Jui (6):
>>   dt-bindings: pci: Update iProc PCI binding for INTx support
>>   PCI: iproc: Add INTx support with better modeling
>>   arm: dts: Change PCIe INTx mapping for Cygnus
>>   arm: dts: Change PCIe INTx mapping for NSP
>>   arm: dts: Change PCIe INTx mapping for HR2
>>   arm64: dts: Change PCIe INTx mapping for NS2
>>
>>  .../devicetree/bindings/pci/brcm,iproc-pcie.txt    |  48 ++++++++--
>>  arch/arm/boot/dts/bcm-cygnus.dtsi                  |  30 ++++++-
>>  arch/arm/boot/dts/bcm-hr2.dtsi                     |  30 ++++++-
>>  arch/arm/boot/dts/bcm-nsp.dtsi                     |  45 ++++++++--
>>  arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi   |  28 +++++-
>>  drivers/pci/controller/pcie-iproc.c                | 100 ++++++++++++++++++++-
>>  drivers/pci/controller/pcie-iproc.h                |   6 ++
>>  7 files changed, 260 insertions(+), 27 deletions(-)
>>
> 
> 


-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
