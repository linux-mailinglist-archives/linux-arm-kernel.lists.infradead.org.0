Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0DD1C433F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 19:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IzzLrHu26JqUF/YPYOzrC9i1T2w4rdqVW7FwmSi5soU=; b=eAlxlbAyiuFoFa
	uoWuvkVeq6tMxIc2bS/O7SGPsOtAcmfDFsoOt2KBI40HqzLVeAKzF85x7vO8o7gZ/MKqv40eG4ez6
	+7iQ3o31o/LwSLrUT/tbIlacHQf1o1j597kVKrVzI9TGP+CS/kTE1L/Jyt3Pnib3ybCcwRUl5VKhX
	fnEGlp4ddtkRDcdhi9ORqcwXOFvqDxBHOiIJa0Oa+iqPMjPzwQB9g3pbIREAIRsEPoQjgvRWV4kwJ
	2+WLp2JPDR8mKky6ZUMOfJv/co5RfXWJuO7oibSUcPepg4s8rf6oS98hUs+wrGlOC0w90zgaaXvX9
	ruYeHESTRoavK2zSIRuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVfCy-0001pC-IJ; Mon, 04 May 2020 17:48:48 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVfCr-0001oG-VC
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 17:48:43 +0000
Received: by mail-pl1-x643.google.com with SMTP id f8so47612plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 10:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0YqP8VecB2UmToDpnEaiYt/EjUvvCgEGjmA2T6HOWIA=;
 b=fze/N73aF0T0xDDZ9EvDTavgTrx7OOs9+P8+jDDYp/iG7xAbRoPZZgYjiHrNRftuqi
 gxBfqiF55Jt43mLXDIoZxgMMW2hGd08bO8E8vjxTjnxOkykodaVdfVWS2ievBhDjJ3Hm
 XVKvsUBfBb/eP1VwzntNMkKjgGlDoxyQFd4yngkMmFkHGeLBYG6f+1s/zQK0k4AkCcqD
 WSORyabSj14nrudCoPiC10dEh7zBx49ywPouXJOBIX6FzL8fGZKGIa0dVVFSK4IsRc0E
 SZo8SnUUVlLNk3UnUpN+zSEssVjxbPIyf+tzU8VIh41eu+gjko5qJYLtmz0blKW9MEZl
 4qJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0YqP8VecB2UmToDpnEaiYt/EjUvvCgEGjmA2T6HOWIA=;
 b=gbbW8Q85WcZ6n1moaiXeesj4iNybGiaNiMn9d6G2Cqxda83s4uN/7dAcd7ixW2WOgw
 T7bXh6ouy8rp/VOKw7irAjHgAkv2A3XYOckC2PksLceK8TZs2v0UFZVyGmcUakGzDc/L
 crs5wIzJe3wEj52+izmheVvYKMjXARZLKxt49kycHcn7ZVPj0FnfxmUkQiV3Ym8gjPs5
 9mcFPf/baHJfAMHoPoxg1siS1+lyYNmpyMVN/XceU/eMqsQuspJUb8YbzBKUrYuqSw4C
 70UP4JqAeVVy8GEHRtExZX1AmN93zpkxuw4fSgrqvpLr6lKDT0a/KGnSxvqD93kLLwwu
 ZyMA==
X-Gm-Message-State: AGi0PuYdgD9qqbn0H6MZqy3hOKSW7lLreHEQCOyXzr/ysnkwrPTcdLW5
 Ije7weHReVA2QDhhX2WKvh0=
X-Google-Smtp-Source: APiQypLr2jwuAnm1jNRaW+Ddm4ybkhMe5FmAfgXl619Lj25y3qbkURxTMQdu/z08bXQtKrtADpCv+g==
X-Received: by 2002:a17:902:fe03:: with SMTP id g3mr380567plj.28.1588614520869; 
 Mon, 04 May 2020 10:48:40 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id i9sm9403353pfk.199.2020.05.04.10.48.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 10:48:40 -0700 (PDT)
Subject: Re: [PATCH RESEND net-next] net: dsa: felix: allow the device to be
 disabled
To: Michael Walle <michael@walle.cc>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
References: <20200504165228.12787-1-michael@walle.cc>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a2284212-bc13-5221-acf0-188c2965416d@gmail.com>
Date: Mon, 4 May 2020 10:48:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200504165228.12787-1-michael@walle.cc>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_104842_001072_DC45FD23 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/4/2020 9:52 AM, Michael Walle wrote:
> If there is no specific configuration of the felix switch in the device
> tree, but only the default configuration (ie. given by the SoCs dtsi
> file), the probe fails because no CPU port has been set. On the other
> hand you cannot set a default CPU port because that depends on the
> actual board using the switch.
> 
> [    2.701300] DSA: tree 0 has no CPU port
> [    2.705167] mscc_felix 0000:00:00.5: Failed to register DSA switch: -22
> [    2.711844] mscc_felix: probe of 0000:00:00.5 failed with error -22
> 
> Thus let the device tree disable this device entirely, like it is also
> done with the enetc driver of the same SoC.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
