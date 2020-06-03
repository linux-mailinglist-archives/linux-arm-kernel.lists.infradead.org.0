Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3861D1ED769
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 22:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuzJndwXoycXzoWJMtohjtrT3fnCdahBE2xsRSy+7OY=; b=aU7GMBmYMSqOxt
	hIqKZhfYnZZSdZmeZk1s4+4M+BlpxIzQOCJD9EOV8sWOfoHHdtrGzHzyGYrhIt7m6TaMhODpMdGCV
	cwIcuwN7cOMXBX0r1dLN9TBBslRAXwGrUhxTO3ujEjk0Nz7A5er5cT0SfqUXJW/cRFjPihpTgYhm0
	PEB5F2vrTu1sF6xWkd9tLo8BNaba4mrAKAjxkeaFH491zDXzXnwM0BptDnlIdHa2fBAUwbfsFpWgm
	wiUX2XvLBrvlh6s6Zflwb5F4gxdDP0W7Iko3GXqB+qL/802a34R93w1UbVfZvIjqtXwgVP/qNKrnp
	S5kheIoxVIx5FZjpbieg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jga21-0002Yg-Ar; Wed, 03 Jun 2020 20:30:37 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jga1t-0002YJ-Rg; Wed, 03 Jun 2020 20:30:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id e1so3779050wrt.5;
 Wed, 03 Jun 2020 13:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OfhBlq1v+qBxhvVpDjvVW2/p+pV1658RV/tkt05OUD4=;
 b=HDZKDpFmdo+9kjJsJ7tboIsHHjJLzQj15Uv4VHwgBEVZknxoQsdmeWOdbKZYgFMn9g
 xrbtGCxgupVx9/HdPdZ0+aFoGMiK+a1P4ivg8BHQG6UKZZLaC63OO53lK1Qk8ypZDL+d
 uWGmAS4+StxMlUWTz20jCGZxqbhsB6pkenXTSqydA3oIgLmuvC7szDMGzRnqUSUGxMPx
 1iK6wQmqBPHQGYkKir6MKP6EAXtuhj6+yAkTiytGuCUmvFFvE6u8Vpf/Ru/kdKK67Mg8
 8wbHf/ucK7lKVOu23qGrm0aaGN9bAsuBgaCPmnQLeFcHGzyXfKy8L68gyWsjYT26udNn
 qSNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OfhBlq1v+qBxhvVpDjvVW2/p+pV1658RV/tkt05OUD4=;
 b=XMCB2COsCiTstsFOCc5FekmGSxMBRS2CP12y6U1jiHhDsQAT5NTpU6QeG6yKghucx3
 d7KaOyaimZD6J5Mr6voukbIuu5jPxlsn57jJ2xjJjIJhGr2Gru0RUc1C8gaLp1mDQ6lc
 wTiZ3V+YgJ9xOsGgWTn4Msw4dd+8rWyYdUuNbdLLD7DEUzG/11gRxjxNSgIA1ktADNZn
 JqCtH198ugKiXJ7HLNUeSkKkRkJDK9bFlxZIyZunlMbu908WPPdGQsalGbD3Og+Ut8Km
 QXp2WTEobSCt73w8QN0m3yu7VK4gkJdyasBbpQBGnb4y8+lLa9RCwFWYZM/1/t79ixZi
 JLPA==
X-Gm-Message-State: AOAM5323gAU1Y0Gd87U0XIyhPjOcn3vNSCi1NrRSVuIetZAQHevb0IFk
 TI9scu6M3SfKs1qePKH5BRM=
X-Google-Smtp-Source: ABdhPJz7zfi5NGFalG9KUx50YaJnKaGXX5smeKmLFEVuxH5xNsTGw+zgcEAawu2twIf+CxzBGuJXkw==
X-Received: by 2002:adf:f64e:: with SMTP id x14mr1124524wrp.426.1591216228168; 
 Wed, 03 Jun 2020 13:30:28 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 o10sm4854983wrj.37.2020.06.03.13.30.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 13:30:27 -0700 (PDT)
Subject: Re: [PATCH v3 07/13] PCI: brcmstb: Add control of rescal reset
To: Jim Quinlan <james.quinlan@broadcom.com>, linux-pci@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com
References: <20200603192058.35296-1-james.quinlan@broadcom.com>
 <20200603192058.35296-8-james.quinlan@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <3acb94da-e844-a2a9-fa05-755a97158322@gmail.com>
Date: Wed, 3 Jun 2020 13:30:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200603192058.35296-8-james.quinlan@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_133029_894234_83A94D12 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 <linux-rpi-kernel@lists.infradead.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/3/2020 12:20 PM, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
> 
> Some STB chips have a special purpose reset controller named RESCAL (reset
> calibration).  The PCIe HW can now control RESCAL to start and stop its
> operation.
> 
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
