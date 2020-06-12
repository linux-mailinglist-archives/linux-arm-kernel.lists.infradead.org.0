Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6F71F7C77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 19:24:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3TLWo5KXjkid3SAOrgrrzVBPDTL95/8Mo1vQ5XQAjs=; b=LI5Zkidvfnsdfm
	FyQffX4ch4txM2cEK8HmX1lWNr3XuG8lLfdUZJhHFDoofhjl7DYkpCmMeEoDXvcpoTF+kKSGyLZW7
	jCOSIEXd4sN+sBWdDnmDMs3wS6tvXldHz+vSaNBbXuTj7qStJxajD2M+ob2G7giGIQTiiMKtB1/bD
	Os8PLusDet0C73gIq14wCm81HR4pGetqtbO3NdrddjMe7n7YLC3SN6bVitWcPFEMaFwFEXjh3O9WE
	IeMTOqRmEHCvREAMLs8XfHxQz7Ik/C29bjfrD73J9IgPHtN+SkZtQORq+1R6LlA+gcE9NA6bZ/+fn
	a4d6jM4RlloUY0uXJgAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjnPq-0001n0-Lz; Fri, 12 Jun 2020 17:24:30 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjnPj-0001mH-AM; Fri, 12 Jun 2020 17:24:25 +0000
Received: by mail-pg1-x542.google.com with SMTP id p21so4408399pgm.13;
 Fri, 12 Jun 2020 10:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yyx3aGH1IHsk8WwCSPgIF039LEqkrtOiEcxMrYeLSY4=;
 b=A+ATlkXI9Yn9pkdpGFh7hZhvaRHi4S8bNSQAlaaQ25dacfgjH5T3vn4K3ZTQv2urqZ
 30YuNP+iY2a8FZ89Z3Rfbsufy3rP9Hf7xO3DKkdSv4E35poG0rdTBUm1LNoUpfERvBmd
 yXzC2VrZhxFcWaCMCHpWEhUKnUDYl8KwnlSBxWv0gzxYdm7ZfU2fdi3FuwpQGPHLBSvV
 HvWUYmgpf6oE/Ehnfvzbf/zsCwK44SNy4J+ALNiq9APSP10xOmH2KWjmAW7G3jXPmxCU
 2WfYxMmx0rSleKywVZCoPOVBvixlE0cf4xDXI10MD9luPNDRH+rBiUvTqKeY0tmJeeYk
 6kYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yyx3aGH1IHsk8WwCSPgIF039LEqkrtOiEcxMrYeLSY4=;
 b=ocijhlhPqHWnnM21KRbjOWY/ZLT33ZJfcDLPkudbdxKB3XoIz7uhAKocFcd0bqpGQX
 f2dpAXEtBw6bmqdlZMuhIcm4640FQjTpjfZfE60v9S/8aKaq4dA3IONvwHBFoc6iXVkj
 3kyazdm72xx0B/mMJEakvPScwTjC34cKTtEAeaN/yt1mugsfT3eJS50eC1PaO482t+B/
 ZvkGpCHF/IcgZVCHx0XW8f55Jq9cxrtZMuFvy4kR9S9MnTbwryXJMjOp2KOjGF7swxoG
 nfDVP78dJZB88zJ6+S7fWBUyJhfP1OYf5rIeVkdQ0hp0KKriDLsbivzLWlNZczGrdZ94
 wg/w==
X-Gm-Message-State: AOAM531He/C9WzWo4bSzoahF06hAyDMSgalRTdCjePr+VEGoENmIB90W
 s8TtXqsQ6RZpGzFCcmhVscQ=
X-Google-Smtp-Source: ABdhPJzcMXRAo4TANZWsgs8un+/4P47C64drTFdnZEtpz2AR5bK8rHPpQQZyegMFr8iPbXvYl6TNwg==
X-Received: by 2002:a63:461c:: with SMTP id t28mr12227620pga.316.1591982662374; 
 Fri, 12 Jun 2020 10:24:22 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h7sm5903409pgg.17.2020.06.12.10.24.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 10:24:21 -0700 (PDT)
Subject: Re: [PATCH v3 5/9] usb: xhci-pci: Add support for reset controllers
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 gregkh@linuxfoundation.org, wahrenst@gmx.net, p.zabel@pengutronix.de,
 linux-kernel@vger.kernel.org, Mathias Nyman <mathias.nyman@intel.com>
References: <20200612171334.26385-1-nsaenzjulienne@suse.de>
 <20200612171334.26385-6-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <4ef2d78f-64ea-b56e-7971-a60190a05a92@gmail.com>
Date: Fri, 12 Jun 2020 10:24:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200612171334.26385-6-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_102423_373913_2613A9F5 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tim.gover@raspberrypi.org, mathias.nyman@linux.intel.com,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 helgaas@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/12/2020 10:13 AM, Nicolas Saenz Julienne wrote:
> Some atypical users of xhci-pci might need to manually reset their xHCI
> controller before starting the HCD setup. Check if a reset controller
> device is available to the PCI bus and trigger a reset.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
