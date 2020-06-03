Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E44C1ED760
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 22:28:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EDOtP1E5rLGpI7KMdOwVq/ocPz98Ro1a7vFIMAGbA84=; b=u0cdvXPDwQt2Py
	Sks25cP+YcqdcWTtzSCVILdvCVcAxbnNK6noKEd5hDnzvlgixhpLcxEMwW/yklZ/ChVPZl4z6FP15
	IEB5NoystKUtag8lFqxG5aJw0mAKZdIvLY8EpeCa5hONNcfgaF9BWziDE0FxPUdRje6qCSS4jhRNe
	5rbuNZE3faoHtGr6N6X7B+x/7SksczzgpuZsjhCG91578UCrAYascSP9bGxmg/5FPdV2nZF6y5itq
	6OpyrnIrMtbq/B5v0dwwFw9VikvB4Q6eMTbUdHNnAcoeBfd+VeAyhwX2oLNiI8GjZ3PeS/CnrJ+3W
	QnpdFgnPG+vGDQqgcjoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jga0K-0008CV-6H; Wed, 03 Jun 2020 20:28:52 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jga09-0008C5-If; Wed, 03 Jun 2020 20:28:43 +0000
Received: by mail-wm1-x342.google.com with SMTP id r9so3151051wmh.2;
 Wed, 03 Jun 2020 13:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3VXmnF8EgRzJMbsjtWg39hj09dVW44ZQvW/fSfCfu50=;
 b=dWUP+E17zB853SpZEYOkqg8Gp5ynOn/p83i0ZdAN5G5Rh/N5BKGD6iqxv/Kofw5xh5
 FhFWNvM36f2HwaGYzXS3KJzUKJ43aYMI0p4bf+AoejqNIkdRXQEGSkkxZIOPg8uXWMXA
 gNJUl7BsHXPeN4Mcs2G5SYiuG0wPE3gGhLOSxSUTORhS8CMhMUVnE2ajepQ14ADoK9o2
 mCGprtkSS617OxVmja1li4HeTReCuFSeFfNZWyoX80y9RG4nDlKyqcwmkfLuS4YR8dXH
 ZTWIXgfmv5PhmbsRsx5MzkUkgEEU0upz4LyXmWcpEbQC53fXndP2HCwo20oo7kiCwVnO
 wyVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3VXmnF8EgRzJMbsjtWg39hj09dVW44ZQvW/fSfCfu50=;
 b=QMMNnhnlCI+MHpve6mMd4P3t/kJt+6O7y0Ui//4SV39u+1Xbb4J+zhO+QoRxHhOREA
 b6/uExFUwn3I9gjkSFrz2B9+t+tS9XbkjPyQV4CN3wKeykpbb70bAIGvUz1o3rNg+451
 TtpDcJN2DqWbWdH66mdElfWN4h0ubB78cAtC0/CpZsDbVfc6JjAGUHAhrgcV94A3fqfD
 FTTruhMgr8CFvEZQWJEI0IZ1pfmzXz/g7/rQzTT623TSO6Ii7KglpLooz0jl/c+8j/5s
 L9hwsT5DILVq2/jVWt0i8B/5F/1htPwQY20ECY45f5rtjhRsSJwq9Wc/I8BzVb++H76k
 fvhQ==
X-Gm-Message-State: AOAM532EnzSvPs8EzlCRdzDl5gb9kQzkML9goGDTMLaDF/us/XTpqPfO
 D6XivFfluQNyUQg21lxtUjI=
X-Google-Smtp-Source: ABdhPJxfIcfzNSx+0MJQ/0Rpmj3SLcdYcgyaETO6dW73dHwzzZzmqSBI5u7tSiWbQvcbjVKQNlvnmA==
X-Received: by 2002:a1c:b445:: with SMTP id d66mr759225wmf.29.1591216120140;
 Wed, 03 Jun 2020 13:28:40 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 z7sm4659054wrt.6.2020.06.03.13.28.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 13:28:39 -0700 (PDT)
Subject: Re: [PATCH v3 06/13] PCI: brcmstb: Add bcm7278 PERST support
To: Jim Quinlan <james.quinlan@broadcom.com>, linux-pci@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com
References: <20200603192058.35296-1-james.quinlan@broadcom.com>
 <20200603192058.35296-7-james.quinlan@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <2d42e5da-8c84-7b7b-45ba-3a24d091ede8@gmail.com>
Date: Wed, 3 Jun 2020 13:28:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200603192058.35296-7-james.quinlan@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_132841_611740_919C708F 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
> The PERST bit was moved to a different register in 7278-type STB chips.  In
> addition, the polarity of the bit was also changed; for other chips writing
> a 1 specified assert; for 7278-type chips, writing a 0 specifies assert.
> 
> Signal-wise, PERST is an asserted-low signal.
> 
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
