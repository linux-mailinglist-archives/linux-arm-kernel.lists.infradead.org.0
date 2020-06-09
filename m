Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0106B1F4552
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OhznIGZLO8/0mLiB0HJ9i70hkFAUFdHFtbYoHIVTXmY=; b=TxBWOTjnhDxMCu
	UonCgU8O7wEABZ9pU3kssWi1/PV2SgGVovJNwYD79Y2XTnvuNoAycQdXrHQq4+WC1LigP7n0QQUTP
	sZp5FUKiYEmcFHtTMY0IaP1Qx+A07T2T6352SUyLL3VhX6jAMhaYIfSkf1rLVjrhYDp3iOnYjO/WR
	toDqkrcto0P4pSartD7/o6NK/JNL/nlkPAZJ9Tcqo869ijJn07edizpLfghEhc5fUcg4wodEz9B5D
	IypiLLcIA2jqZcZeSGxNDSMd+4ewwUQI0zdi9OcVSwsuY2ZMFwxLK3kO8qdgeH0zDNGfOjHBwoLXZ
	yj2hIX/4ZDlFAyZeB8SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiim0-00044K-R2; Tue, 09 Jun 2020 18:14:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiilt-00043w-3v; Tue, 09 Jun 2020 18:14:50 +0000
Received: by mail-pf1-x443.google.com with SMTP id j1so10259736pfe.4;
 Tue, 09 Jun 2020 11:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AS/XdckXtD5JdzBhAwpc/WtJW1ZnWelaj/7RjUzTTTY=;
 b=ofzyfTDcbSR0iVmnOlwQrNgiLJk688yu4yKaniy1FmZvGhVlPmR+qx/S/V2J7M31i7
 sBnfLijv4zGVBlM8tTHwV2tNvqMN+eDLy/8nYxIzkQtZvE6Q8X8CS9bzGYaRwW1CAcrc
 Qrcz9dMBcwoiAizOECxolgNx0k32d1nYqZuCe9ln3pCAjSHZrgAmF4lyMxqvNMX3Z+aC
 J6LVha9AtTt8375Pm2xUf/D/tE+irK0XKxAOAJsLCfkXGjeey0Wl3ZvgxB+IXUjmGal8
 XZPVk9P3DPqQ8/qQzNUA6OI0QqTJQIJe7v/gRidSRM89xL/wXCYAIBPFoRdFNRIToIs9
 eeBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AS/XdckXtD5JdzBhAwpc/WtJW1ZnWelaj/7RjUzTTTY=;
 b=FDaA32lJyzdnD5+lt+dm7tNwOLbSECBE8SR3THrnRmbs6lmvKmwdNxnenc1r/oiIhB
 XdlXq+Fk4rperuUsLjZaplFwYNf4tMuGFligR4pEjqPNPsmmt+TkSlOn15sTAcT1LRsb
 ZWbYxhUHRXYsQaWNMjAMxt8tb/bnM4y3mo+I2+tYRLqPlYIq69IVLPBa5W8Csv5ryl1J
 g7GWb0uXBm0lxPapdSK3RcAnE+0ZLFkjtcTnXCy7KYKjB6lHEXCFN55/CgnJ+v7P+sA8
 6NdSsLGZfg9s8xRB5UVNLyik945MNZtas2LlI3IcZVvT24p0Lh3FnDmVr7yXLXYQIkbu
 sEZA==
X-Gm-Message-State: AOAM530tqRXjZwF8NJHbELB2JVy3ag5ZSK2yave9Mj49cIqr0UxtqDSn
 Pg6fiFq+k1eObonfL0OZJWg=
X-Google-Smtp-Source: ABdhPJx2SlXa0n42ZaJT1vZCe4xrRMIjnru6dBSBFP7GNH70CVg7MYDKbKWTswiYGotNLgBCKvVhAA==
X-Received: by 2002:a63:eb42:: with SMTP id b2mr25756419pgk.105.1591726488350; 
 Tue, 09 Jun 2020 11:14:48 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w12sm9688715pfn.68.2020.06.09.11.14.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 11:14:47 -0700 (PDT)
Subject: Re: [PATCH v2 6/9] Revert "USB: pci-quirks: Add Raspberry Pi 4 quirk"
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, wahrenst@gmx.net, p.zabel@pengutronix.de,
 linux-kernel@vger.kernel.org, Mathias Nyman <mathias.nyman@intel.com>
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
 <20200609175003.19793-7-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <59accf8f-c947-4efb-f8fc-1df821b35c3d@gmail.com>
Date: Tue, 9 Jun 2020 11:14:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609175003.19793-7-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_111449_155177_385E6916 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tim.gover@raspberrypi.org, mathias.nyman@linux.intel.com,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 helgaas@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/2020 10:49 AM, Nicolas Saenz Julienne wrote:
> This reverts commit c65822fef4adc0ba40c37a47337376ce75f7a7bc.
> 
> The initialization of Raspberry Pi 4's USB chip is now handled through a
> reset controller. No need to directly call the firmware routine trough a
> pci quirk.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
