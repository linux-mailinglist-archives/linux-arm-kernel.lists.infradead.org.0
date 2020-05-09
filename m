Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA0D1CC4EA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 00:20:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/RBK59ZVbQ9JHhoP47Y9UTyGuX1xaIYAh1hY1d7wlI=; b=NMwyzDNw+slk5j
	Wp9T64JoQXkQHT5fYD3Y1hgdUVswnudY2r8GrYH2JQ46wNWqCxLsHkwgDa1chjy0cbJ5nivsaJvEZ
	A/YrPkBSvHuZEqL/C6cBlbsLjRw2hHaG9YooTgo4QKZr7cRJi/DB5gg4a1HblsQuFa9LaocMxjw/C
	/Zcrjkklfk/C5fL6Zk/5mQG4ywJJvRvDP+qnIWn61/YrK2wwPc0WDCPxdIILxtrZ4IEUkndE5Vu29
	yIBNoAIfo7H9KPDhoQtntDZy5Dxl6ON+bC/SitpFPZKnpgFWa7nJFg9M6RVGqndA44i1vDKTUQetX
	lhZME8jKzSaKGw3vK45w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXXp7-00062p-KP; Sat, 09 May 2020 22:19:57 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXXoz-00061a-3r; Sat, 09 May 2020 22:19:50 +0000
Received: by mail-pl1-x644.google.com with SMTP id k19so2251013pll.9;
 Sat, 09 May 2020 15:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NkwAQKO2nZlE3uuBtirHEeDdPuKbR6INkJzbMlhdoGM=;
 b=p08x8dH39ft2EvqtkKyWxm6u3j1uepE5xgigonFpPcCaL7pz8f7c4mNaIApkiqCRf7
 ZlZwGTnJW6uc+Qvr93iKAvozlbaMrQbuup7RD2Y9peh7MyYHG07m+3PWkVkw1pJT8JC1
 VL1P98ptWKsbQKEOtDW79ElLUMjyLV8IZwi//FkYkjbgsGWht95Y5N8vCvx9G7UI84db
 uSPEuPa+z26OYZty3R2LYyiyMsiEEdq92pZb8rdN2+7aNEW6rD5SKhWotA86OZhQirOv
 dSvE3LaRcydncvMsIlJEla4/UwGVTR4PiMI4SjHsBftRcVYjyF2HQO/B/pGWCtJfDVvg
 DuPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NkwAQKO2nZlE3uuBtirHEeDdPuKbR6INkJzbMlhdoGM=;
 b=PsuEuKI/SwScKe366HT8NdlTT94w2lItDa/dyccpZ9T+mdLguYGekIsGNibaQL3nsZ
 WcAjS2Fkdx0eD8xSWPExjDwFt/VCpNlqDHbUAZHXxHsGVxE0mec8dgLRnr0E2bpdYWOj
 2+jJWUFJu+mp9LT2NVjF5r9MUMo3E3LHXRA1pSx+y6/9lVcIwIxI/7OTWOvvTypPvYgH
 upVR+NdC53xZLfDBtT6eV5bJVT/UERMLmNzwrN/+0VBPwsGD7OA3RcdXxIjvDNFZh6ti
 3gkCouiZQRisWDr4611aCaL3fGHB8K5u5cOj39L0S9iT9RyUu7gZx08MvgpTLIVnuesg
 GphQ==
X-Gm-Message-State: AGi0PuaefcYDjU3VQ/LTOSHguR50zyUb6htPErVrRJ/8iHQ1kikis2dU
 d9kHqM1/lv1oIqqgpDoIYy4=
X-Google-Smtp-Source: APiQypIXgc7qu73pCxyXNa1FW1rsCbNwZljJv3oOpWJpxoGIVjkjScxoQ1F0PMQJBqMZwKnQC7LE9Q==
X-Received: by 2002:a17:902:8349:: with SMTP id
 z9mr8810894pln.38.1589062785729; 
 Sat, 09 May 2020 15:19:45 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p1sm5975566pjk.50.2020.05.09.15.19.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 09 May 2020 15:19:44 -0700 (PDT)
Subject: Re: [PATCH] PCI: brcmstb: Assert fundamental reset on initialization
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Jeremy Linton
 <jeremy.linton@arm.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Jim Quinlan <james.quinlan@broadcom.com>
References: <20200507172020.18000-1-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <2ad744e7-53df-2601-2d04-891facc95154@gmail.com>
Date: Sat, 9 May 2020 15:19:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200507172020.18000-1-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_151949_178033_9C23C385 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: tim.gover@raspberrypi.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 s.nawrocki@samsung.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/7/2020 10:20 AM, Nicolas Saenz Julienne wrote:
> While preparing the driver for upstream this detail was missed.
> 
> If not asserted during the initialization process, devices connected on
> the bus will not be made aware of the internal reset happening. This,
> potentially resulting in unexpected behavior.
> 
> Fixes: c0452137034b ("PCI: brcmstb: Add Broadcom STB PCIe host controller driver")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
