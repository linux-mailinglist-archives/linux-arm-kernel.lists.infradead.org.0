Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF021C9C08
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 22:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CltDXX/N04zUnCEnNc0vvFTuLXGwaeg+3AoJDLywLY=; b=WC1WKOGdw2wGWU
	CdtjjXybbdtBqgnUzE7gxasQ1gQdsUi28PvZU3KmjIcGwvNhiD08vD4YXZe4WQiYb8EpI1lZQND6b
	YS0nl+HxTX+jbTKwu2dZEAuFNH9LqV7AqFhzu7rcxpW7UxWxGif1ruU4CibUIec9tp2hti02WCrZV
	gzTQrPUbu0mzwD9qLarvpSKJumLeiQBvV9iJi+4bGhjo8KtOLYGbjXenTHnGNN5PluI0WEBPoaddG
	hT7vnMVGhHkMGqpMBCPuDREByS+UKwzBE8Ln4ti63uqb3VO2feDUiG24p6ouCYcBgVlKU5Hn52Z0B
	HmxbzVl+7ak0f8YrwmFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWmy7-00015S-Es; Thu, 07 May 2020 20:18:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWmxx-00014g-6b; Thu, 07 May 2020 20:17:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id r26so8305496wmh.0;
 Thu, 07 May 2020 13:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RGbtCswDTgsFLypisMjHemhGa1gfh6xqfnI2J9mGaYg=;
 b=R8QxXSAb86c/ioq5vI1vsHGKZAkJnzS0DjY/yFt4eMsepV8vaoHS7ZCD83RtZ/885H
 TxzAt2Cte98AukbnMPo/tifw8WNX4jiywLIHbptOiZigyefuc0CvUA5MkOtVtBxaqIGq
 28BfQPRl7QrOU5sTJBZUZkpEoXENQdthEOrYEBeA8BiI5nh9g32reDAGMkTQTBx51I2c
 iXasH7C4hOpwVoKs5JSUhkMUm2KlWVp3ZRyBYoSj3pQ3sL86cGXRr7U5edt3AT0+3i5Y
 tGijdyZsEJal8BjKIYa/ta6q2A7x0hPVAc5BhcrJyavNicNvpBoUBwphuj767IOzFX1/
 xZWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RGbtCswDTgsFLypisMjHemhGa1gfh6xqfnI2J9mGaYg=;
 b=Q4axnGgz73Sv9i8i6YxkjVSEZ5KtuOo4x5yxaIayHXR6C5ARrC4oCP8TOhXg1Kfwje
 MCMkGLUGTuMa6IfqScSvTOFmPiwC2oDTdt7HjAOkN3Y2eOora9mPIhq7jnMfCLvYlMwI
 ItLajaxAmmeUftP1fmnHYITBFSkXsuuE8OWDrjYPTigCjbxelvSvuSVG7ZjKKORYYfyG
 bO149h0IG7P/vuPwxTQ+ZNfziS168j1SpoQtgcbNkmPIVNcP8YkNN5AAnPpN3Zessguz
 phnvUA4oq1rdZp9HxwJq5ByZqJgNyq7hZUT5PLA0rJF8jB3y6KQU8lWh7gmYTgLF5lX1
 2JNA==
X-Gm-Message-State: AGi0PuaGfRixsZ3EQoU1WGsy/jYZNuYUb61gu1ltdhdTfP1nc8ef1Idf
 D5PNyN9hI36qYsz4FsJNnCQ=
X-Google-Smtp-Source: APiQypKwYfOoUWjK0tabjGOtcz+Wjakktm4C1Yp0U1VLzErywtiaT2qObR3zUpmGxLPYLmn62ifkmA==
X-Received: by 2002:a1c:4d18:: with SMTP id o24mr11401308wmh.141.1588882675802; 
 Thu, 07 May 2020 13:17:55 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u74sm9942459wmu.13.2020.05.07.13.17.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 13:17:55 -0700 (PDT)
Subject: Re: [PATCH v3 1/4] PCI: brcmstb: Don't clk_put() a managed clock
To: Jim Quinlan <james.quinlan@broadcom.com>
References: <20200507201544.43432-1-james.quinlan@broadcom.com>
 <20200507201544.43432-2-james.quinlan@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <8c8ac461-c6e9-0362-a30c-eab48cfbdae1@gmail.com>
Date: Thu, 7 May 2020 13:17:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507201544.43432-2-james.quinlan@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_131757_262584_3F633FF7 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/7/2020 1:15 PM, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
> 
> clk_put() was being invoked on a clock obtained by
> devm_clk_get_optional().
> 
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

This one should also have:

Fixes: c0452137034b ("PCI: brcmstb: Add Broadcom STB PCIe host
controller driver")

not sure if Bjorn can add it while applying.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
