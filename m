Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28603123F12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 06:25:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=flRbVgMvy/+uMvKvuNip2Gnx6fFV19sWNzGZ2S0nxjw=; b=bunwS5qC8TWm8fLaLGQcyyVbS
	1YsQ0daVMYm5gcbOleLAJ0jvIpNjumiGhvHE4sgo3XC3uXlIkYGuupN9UJbVSZYDt3ppoCU798X4b
	zBs6thfFpnXO/rQZAp/Z4kS/jsACRkxajCcLjMAI8BryDT2xFqC/IbDxKRGZ23K9UFrB2a0O/eNQN
	XVitfEj4UQbMac3fG333ufww0GNjYSE7w9rZ6G0PxguWEkMuUDDlBt1SRUo+qmEyLm5R+CPE/HBaW
	88xZtuPOe5WFA9GWm0gPnPSMd+wyakUW3WE/bPp7DoKSTtFnSzWvWxHw7Yhp49q94e8Vie9eBMVhO
	g0oPiRwHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihRpl-00065Y-Uc; Wed, 18 Dec 2019 05:25:17 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihRpc-0005O6-N1
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 05:25:10 +0000
Received: by mail-qt1-x841.google.com with SMTP id 5so1023438qtz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 21:25:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jonmasters-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uIMTyYXR3nXqdy95e1OaQ4blqi70Uo0OIJA0JwHv2YQ=;
 b=zNU9URTpXbNk0H+bfxQuplRFAZ/+QuFZ6Yd096coCKdylsucVnKFkkww084LxKN7G6
 ulzFsZdIg6SVR4tgU5cDYYlo0CXtfCmJPQycPblX0FFaYBE+cL5OKLuhei9teC6wUmmK
 Oc84j0+Vw2gcCS4XC4WrHqz+fOgW/0CdiGR1dfMf/HODZ23IlHU7H1OJ2CmQoBfC4Z94
 f3LbaBfhZ7wGluYaje4wnjvDGbcUfG9nrco1qf0kRn8/Ks0eSGsFKNjKDm+D7ZY8tNEi
 OLH5Ejd9W1dUkuKA9ZRRYIkpvVpXSQKY6b9y3iYGtMQQIKB/nk3glaiVf+nHotXjSwF/
 CilQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=uIMTyYXR3nXqdy95e1OaQ4blqi70Uo0OIJA0JwHv2YQ=;
 b=edE3e4hlwwFXQPyLRmqOKoGKDYXSxvv4vsI3LRnsrr3Ojdh1IM9QKIhs54GLmQLKXb
 Iedf3hvsa5zztwHm9Ay7nVSCBJk9WnVponW1YzGZlv87MwLhs8hIu0JMwV1E2aRLUiFl
 4UVr12MBF2TzTWr3/nwawffQyDU5qgYKhfgbhk628KNr/N+dHQ4mvfLe4oFO+1mZHlBy
 1p57ZZmfIGf9VOjDRKICLJIDX3SxFja9oUCPEoR9+t4vezJ/0Xkc+xcgwO9zz/eAEU22
 i9R0UMhnbrayV6ryTxDdtnj4lwIUbmM4rpCbKGWvuv50FZgmsL7q7EqYAfvdHcM7fP1H
 +k0g==
X-Gm-Message-State: APjAAAVHDbytGWxXfENC9WydiIALWvK4N8ut126uM3v5XoPAFdzYNpj0
 W9VGKJWCwWzFJJg1RhALyc2A6A==
X-Google-Smtp-Source: APXvYqw0LJ2pIxnufMfbafewC8CwiqT+EqKHOTuPpD18gUxiTVv4YVZQUuZHJ8Y4ZurUv0V5JwW/og==
X-Received: by 2002:ac8:2af4:: with SMTP id c49mr659933qta.367.1576646704962; 
 Tue, 17 Dec 2019 21:25:04 -0800 (PST)
Received: from independence.bos.jonmasters.org (Boston.jonmasters.org.
 [50.195.43.97])
 by smtp.gmail.com with ESMTPSA id t7sm315351qkm.136.2019.12.17.21.25.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Dec 2019 21:25:04 -0800 (PST)
Subject: Re: [PATCH] pcie: Add quirk for the Arm Neoverse N1SDP platform
To: Will Deacon <will@kernel.org>, Andre Przywara <andre.przywara@arm.com>
References: <20191209160638.141431-1-andre.przywara@arm.com>
 <20191209162645.GA7489@willie-the-truck>
From: Jon Masters <jcm@jonmasters.org>
Organization: World Organi{s,z}ation of Broken Dreams
Message-ID: <dacfd8bf-0f68-f2af-9238-4b0fadfbdfe3@jonmasters.org>
Date: Tue, 17 Dec 2019 21:21:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191209162645.GA7489@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_212508_772848_024A0B53 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/9/19 11:26 AM, Will Deacon wrote:
> On Mon, Dec 09, 2019 at 04:06:38PM +0000, Andre Przywara wrote:
>> From: Deepak Pandey <Deepak.Pandey@arm.com>
>>
>> The Arm N1SDP SoC suffers from some PCIe integration issues, most
>> prominently config space accesses to not existing BDFs being answered
>> with a bus abort, resulting in an SError.
> 
> "Do as I say, not as I do"?

In my former role I asked nicely that these patches not be posted 
upstream, but I see that they ended up being posted anyway. Hacking up 
upstream Linux to cover for the fact that a (reference) platform is 
non-standard is not only not good form but it actively harms the community.

You'll have people consume this platform and not realize that it's 
broken, IP won't get fixed, and generally it'll be a mess. Yes, it's 
unfortunate, but so was taping out that platform without working PCI. We 
all know what should have happened, and what the right move ahead is.

Jon.

-- 
Computer Architect

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
