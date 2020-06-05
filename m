Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4791F02A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 23:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIaxDwv8TaOmX/Zd1B+VQA8XE/FZgUEhn7h4V4npmzk=; b=JZ9kG/jb0Quuzw
	LiKcwE6E/fJPhbM1scnMo1mzx07w3ThLxmnOL6m1JF+EQU2/QL2vivnIEG0nzkoXZcap5EPB1l7I4
	naYOkahSY083Z7Hi82A9VJYO7jkrnAiOyfQU8PjNZS2ZvhUao0o2CfFMm5JUu/YEycbry5m7OHfKW
	elRRxryEv3MQcSHEutlmrRTGDfUpr2HpA5PzsSRn4jzPpXPW6IAHJ0OMumH1YG3FOGi00frBA1yeK
	eQcB/5QzpcLTS9kDslQKysbxVI6LvB1GdpxKnhvTOOhFqbxr57sgKBBhIu9sYxj1dMDh5Z8RRHXXO
	m1HF17WCktHrLtZzhQKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhKAm-0005aB-Iz; Fri, 05 Jun 2020 21:46:44 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhK6D-0007h7-Mq; Fri, 05 Jun 2020 21:42:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id c71so9638075wmd.5;
 Fri, 05 Jun 2020 14:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UdH/nxi/Mb+fPq3ivMKnio5NEFoRZDU+dnCa779cs8Y=;
 b=RviLL0UINg3jkOxwq2cq1ILmV2hNHNPulQTObBCk5eUSy4EowbVzT1Dnm0ULW+l50r
 ws5ltl+P7nSUcdTtGs6dQA/1AFZoxyErSxIz9NEtQY4XupgQrp7SI/BlfP61EnpRQ0nf
 sfPkOHbLtu/JiFUNXRbV6wlVDjy/YCqyqKveLt1jECajPZ45o1pxdgodShqAAhDJVjLR
 9TAuvdqzCM3393zRQDTWEaZ8xZkyi8C37V+QGg6E8zBTfV+fpbpBIOrz+lxUdKryjIgx
 JXdqvcBijPIDXuW38GaX6gq/ZBKwS9yfzw+IhSGPB5yv1v0ZQ9KFAzheQh7oPa5TE6FP
 hYbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UdH/nxi/Mb+fPq3ivMKnio5NEFoRZDU+dnCa779cs8Y=;
 b=m1veDaIthVv48flyD+xd01ba04DjJFRbSB/0X0rUghD1K6gQG+p9vFrSysLFoMUxST
 sjbN5hoUi1cX1X+/mQQ6MEff/ujXwJSWrdTL10viayMjWJLlzNicpJkxDBeMFU0RnOZE
 smwFWhS+ylnp4Hjr4x2yrZ4Yrf+Xf5H5oCB3crYT6jJSU0I9BLQtE00oMqzBvugnm7Sy
 7kgn5FR46SVkxva0/rjq2c/QJwnBbyUh/ZwbE3lkPhULlOYhQ9ZWOcGwb2zLO6FB74bG
 ayRxUMzexe7gPqqEuzVMoV6vCjbvuxUqZVR7hzDiD5UWsbkDs2/8xTN7SJU4FF0aFl9K
 RlJg==
X-Gm-Message-State: AOAM5310tpDl3C/Tg0ceucTjGesmAuhuBYEcuuLMh7Rwwh6XMRfupGJT
 GOzqUDjwnT6KFQg+4VmLCP0=
X-Google-Smtp-Source: ABdhPJwZAB8sYp0qQRP3K7v5LcMrPrJKP4i5Otr+cK7ECVE4aprBSt1yIizfQYfZZAw/QFRrX56kLQ==
X-Received: by 2002:a1c:7e52:: with SMTP id z79mr4733418wmc.104.1591393318899; 
 Fri, 05 Jun 2020 14:41:58 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l17sm11998448wmi.3.2020.06.05.14.41.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Jun 2020 14:41:58 -0700 (PDT)
Subject: Re: [PATCH v4 05/12] PCI: brcmstb: Add suspend and resume pm_ops
To: Jim Quinlan <james.quinlan@broadcom.com>, linux-pci@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com
References: <20200605212706.7361-1-james.quinlan@broadcom.com>
 <20200605212706.7361-6-james.quinlan@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <5014b30f-a1bf-66ab-0626-8816a3cde5ff@gmail.com>
Date: Fri, 5 Jun 2020 14:41:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200605212706.7361-6-james.quinlan@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_144202_027055_3276B784 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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



On 6/5/2020 2:26 PM, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
> 
> Broadcom Set-top (BrcmSTB) boards typically support S2, S3, and S5 suspend
> and resume.  Now the PCIe driver may do so as well.
> 
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
