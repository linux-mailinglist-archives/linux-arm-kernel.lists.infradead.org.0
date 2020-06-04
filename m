Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4D61EDB75
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 04:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVwCrMELnGnD2nxOJ5kq/11UWbPRCwfHRd0sY1y0nb4=; b=LeTHfAzodfkJ7M
	tRfyuDgBrMmpTD9fEn+48eFvbzUdzWeDZK+qf0BKJQ/63VaZC6e7mVQP6kkrjR+Cjf+mW7Vl5xl+G
	B5rIH2vbwTOfj30MwCcwyBvlfiIGi0e01qdtCvLCLRS7izTQcP4XQdES9mqEpZs+O1H4SwCEkpdyr
	Npn0VGe5I6rwDCdljZnyG33w8lgDY/vmC1BFeJ8i1jnzb5oPJbG0ldYI5kCoI++saA5a2aJCYifEG
	L+Mc8LzaGQCIESjZIO3aoNXqvsvx0l28D9kIeTkVrTVBt5kNMuG822R29jFGKX6rFW5+yzohVFR9x
	MyvKb++XiVMmaLAk4bKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgg3c-0007kG-4s; Thu, 04 Jun 2020 02:56:40 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgg3W-0007dj-8c; Thu, 04 Jun 2020 02:56:35 +0000
Received: by mail-ed1-x544.google.com with SMTP id q13so3448645edi.3;
 Wed, 03 Jun 2020 19:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CgBPhORK8BDXStxy7iglUZzxBGtxWPV9iURqby3XwmE=;
 b=N6Eho2OyzAmXXGuG63SRWOa9R4QlHG+qpRjZ6daDg1hO9NR0aet2gMbSke29k7O1qw
 6mIdM6yoQ7NJoj/6gokTPrfn/Zg7Taqn+z57cXmLydYwi1b5WoxyMtGHh5BRkNQTkafp
 VGLrMH63C6swkwg9ITCBxBnkpsNQP0JiJGnzN020O8Abl++Y6HxRPazJRioyx0KFcadE
 knj1KUm0SSjKU9aV+M1bWMl0IHEuR2qj/qjMbCdtB5wyUZ71lUEXI7+7bM0Tx0REczI3
 Rrv1eY1gHseAJ8KSn1t5aMMXtHoSpT6tOzd+TWAweQvKu+cWHZZIYnQy3nHXXd1x+b/W
 MrYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CgBPhORK8BDXStxy7iglUZzxBGtxWPV9iURqby3XwmE=;
 b=L/qL9uPYt/JacyJlZSng3proCvloetMBrPEyz+Mkj0RO24QYa/goAd+FEFLjLnyZNo
 lIBrJwyCdc4CnIagOzORYcXBQE4wkevy5LuHU3VLFZsBRj981HYZUHEl5JeWQ32vJvI2
 Fq3TRpGvCEN3vVYXWwrtVq4TlQa7MO9OI/+fN9T9bprTDF0SrIx2kr9vS5jUa1MzoM5i
 9XUDA9C4qmZba3rcYYTWjyeXgOFTssYp4rjJnRleE4bfbw6ZAisFlPoU1aoPMWX/uYmL
 oWmUeN6KbCdZkUAo7R+wH7+LSUlHctAQMMi+7fJCGBKQNN05NBlxjC0MVg6dgrWaFpXs
 aBEQ==
X-Gm-Message-State: AOAM530VrDdDwhKF3Igvc6sVfTkuox6FxrfGl8voNlUIO9CefMNjnrmB
 NRVN9u4CPwT2r8H/C9pCYbA=
X-Google-Smtp-Source: ABdhPJztfvBspyA3sbFNMMaWRB9lVRm2xItqVmhoCIGh0cVoE0Jd1GUVN3hEHHCI3E/71BWMBrZVuw==
X-Received: by 2002:a50:8707:: with SMTP id i7mr2289118edb.180.1591239388635; 
 Wed, 03 Jun 2020 19:56:28 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 j31sm946828edb.12.2020.06.03.19.56.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 19:56:27 -0700 (PDT)
Subject: Re: [PATCH v3 11/13] PCI: brcmstb: Accommodate MSI for older chips
To: Jim Quinlan <james.quinlan@broadcom.com>, linux-pci@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com
References: <20200603192058.35296-1-james.quinlan@broadcom.com>
 <20200603192058.35296-12-james.quinlan@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <9c35053c-22b5-c9bc-13fd-1e83e980d56d@gmail.com>
Date: Wed, 3 Jun 2020 19:56:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200603192058.35296-12-james.quinlan@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_195634_306057_613A5E83 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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
> Older BrcmSTB chips do not have a separate register for MSI interrupts; the
> MSIs are in a register that also contains unrelated interrupts.  In
> addition, the interrupts lie in bits [31..24] for these legacy chips.  This
> commit provides common code for both legacy and non-legacy MSI interrupt
> registers.
> 
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
