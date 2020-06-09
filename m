Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2231F4577
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+tY8T58BOeQOw288I9GHXlduUXQN/oVZv5QHIZOSa44=; b=dKdKr6f3COFlAI
	NWU48QJe3kS3wL+oFM5U1Ui9HwAy9n7XUjBDWkYClQhiFx3gUJsqFZbIqY1Qq7Z9SGDcGPyl/1wVC
	J0VGF/XHwJBwzij4psZxf0a0Gg+yZXMg1YQBogjaG+wGHaV5A4Ecf1ky7IWuJkFWHMN/uE4kAYN+N
	t9IvsuYjkd6L83iDDTEE+P36ivdlc0kbp2f2LnWrmLwl0SYvGt7LVXklCm4AIKyLiLfil1yJoGM/w
	WXs4/SZ6cc+hEzaWvczfbUPak6chXAiajUG7hPQpw8JS0TTrSC02lZR951Q4U9dlkmUlC/gp1guih
	IgtNZtmF7nFSXWGoeCxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiinq-0007UH-4c; Tue, 09 Jun 2020 18:16:50 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiing-0007TY-67; Tue, 09 Jun 2020 18:16:41 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so22374840wrn.11;
 Tue, 09 Jun 2020 11:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Bk0cIlVSiN8EwQ03yBOWiOnhIYqHLR2FvZJ53dbCYEY=;
 b=Ov6e462ZybQzwlR8GCT7XvR7xht8paOqYNOcfEUd3i6nurHuzjZF5dvN68Z2ycnf1o
 YecHZm7wCUZqW0juz4nDAhAbBTUNt7fDQBvlo6Wkv3XDVs6gPid+oBrZUjWxlCFW3eyc
 8+adKq8vHJ2OW7MJYp8sRxqLSygbC6uPaAFWfnFW4OXJXEVrQf3YagbkQzi3FG6gCA/A
 oxHmvZ6LUFJ9ZumTFIiCLNsYfwmPqOrlM9iut3Y4YwhcpR3O08vRB/3ExymIil0gU80O
 WTmJj/025yCe2VmC5/tMYE6uHGK4V1IpgfYzwNgf0bT7cDA+cqG0YsWgvrdp78T1DFuu
 6ShA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Bk0cIlVSiN8EwQ03yBOWiOnhIYqHLR2FvZJ53dbCYEY=;
 b=XJluu7rmNk3/zkcoeVvofcmxC479QpOWvcp+kZtNGuCHwV48mHJ4JHYtSEFMex+gIP
 euk8iPszfJlNGot7sHq97Dwy59SkVf3ToTQAw/l7XM/VSI5l267H3e5pSbYoWuq8rzKN
 cdmRX2LW3Zwqdpjp57j9yZmgAXzguFMmNhTfCUBJnwfUvsVgpuuhrwX4+gfIGd4z9Qjc
 XOZ1QzsKlfVZkLfrIgrT1SCEltk018JArJUuUU5uDBiEKrN3Nn3uUPD8U2rysfBY6YAA
 a2/SeSbVjY+VZZbGpguuZ4/OUE3zuS3l91NdwJ1bREL1XXoNMkDY7YFwrYVAXvNB2+uF
 iqsw==
X-Gm-Message-State: AOAM531pKZsuFo3+JW0GO7OZ2pMFvGwzmkv4xaibYexFQvQqxja568I1
 JfwFWfo3XZg8smbCGqUwWfw=
X-Google-Smtp-Source: ABdhPJzMWhpdjrKlsaolT5WA6K7H0Q+ASshsGywKRTvhAaqjih7B7gzi1oWMdU0I79tFcf60YQwBFA==
X-Received: by 2002:adf:a51a:: with SMTP id i26mr5720261wrb.406.1591726598739; 
 Tue, 09 Jun 2020 11:16:38 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 u4sm3725013wmb.48.2020.06.09.11.16.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 11:16:37 -0700 (PDT)
Subject: Re: [PATCH v2 4/9] ARM: dts: bcm2711: Add reset controller to xHCI
 node
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, wahrenst@gmx.net, p.zabel@pengutronix.de,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
 <20200609175003.19793-5-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d1690ac7-0c9c-6ea7-90b1-eb9a735e220f@gmail.com>
Date: Tue, 9 Jun 2020 11:16:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609175003.19793-5-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_111640_241473_5FCE7974 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org, tim.gover@raspberrypi.org,
 mathias.nyman@linux.intel.com, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, andy.shevchenko@gmail.com,
 lorenzo.pieralisi@arm.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, helgaas@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/2020 10:49 AM, Nicolas Saenz Julienne wrote:
> The chip is hardwired to the board's PCIe bus and needs to be properly
> setup trough a firmware routine after a PCI fundamental reset. Pass the
> reset controller phandle that takes care of triggering the
> initialization to the relevant PCI device.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

With the comment from patch #2 to move the reset identifiers to a shared
header that can be referenced by this file:

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
