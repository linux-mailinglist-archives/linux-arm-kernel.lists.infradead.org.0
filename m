Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B31A11B89AB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 23:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CLGE+FMQ8jQuoFyIfO7xs1cb3RE57z/N74PKSK7tkU=; b=mUGZ+2smcs4TN8
	YRwTqlZmILamhwZVAHxvVa6wtlf64dlRutGvqm3T0lLhPHq9bL2YoQ5hbePgfgBCm38mgQTZQmlkJ
	Avf7OkhLcp66ZMpiba8bADQ3UP+nC3BdCq1x+aizPtE2fguZ5yM9xFQrJCYZ9A0Q5vso2qyapaf9P
	HK3HyAQQoWVIvb7HdSqPbVWdNKmsPeJdoIX5jD0/5LlSh9jPRBKODRwkt5oYuzzTwcVnQyTNjZVOo
	HOJej2/a0IgAW4HRay99/0epHCzeTLl/75PAu9Wgo9k7nU0FFM/yrmLSwZad3pvqp4iKm9WMvAHkX
	ZA1AfG+3xlU2+HNwDJEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSShw-0007Em-CQ; Sat, 25 Apr 2020 21:51:32 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSShn-0007Cx-Ca
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 21:51:24 +0000
Received: by mail-wm1-x344.google.com with SMTP id z6so15996751wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 Apr 2020 14:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AskPgFkIBwRqziKKPyHXk16uuLnLGE9FmAeIfGuoiyw=;
 b=UGszXKQbPAdmLpuCZg0R1vbfRgsePhh46gn1WsNfQIH+oLLSDdmV0kkylj8C8Yj6sQ
 dLLZVY4AIYOwFOh1Rz3i1nC1q9m3qMTbwPzP6byY8P/MpoaY3V/wDFF8A2T0+FkmuIyo
 VAjdiOSMdgB3pZrcNBjaVIOMsIcZCfKzM45nqQK4yNJ7DCFh0BXoSb1urr8uUKh9eZ2N
 VQjgfc21wASxMGmaY03Ig/oKkrJrPTkhnip7o1NizbOyMxDnCsx8atROpxZVD8j1z4Qh
 QXY2uHYHzkv8C5jzeQXB+Z6gG+mv0CTVJ7RoKym+gtKz78QrPKuIy4kvs4c0U72UvXel
 4WUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AskPgFkIBwRqziKKPyHXk16uuLnLGE9FmAeIfGuoiyw=;
 b=Grdd3ou6ajiLSxlUZZS1LHR8UzOHiAvIYyPmOjmOJA20I83+4GgQIUVnYTn3lIyHga
 YJLSFnkCKX73pKJMaTbAw8yeuEpaIe/JHAkSwm25XcvdXw6wzwmpgGfJkydn95WKCXav
 iadDc0hGUgoUrGrUpCv0kZxu7F1QNJFKCA7OtbH4T5O3oFJMfU1Q2TJHG5HBXZ+Yh9Ro
 nG+EhJKyzwRJtB7WQgGVasQhintOQtzwM952js/JS+727y3RO2D0dr3m7yPejNu5o1va
 Z82VZVxk9RgFV4QnybFEtifwKwlKEHWT2P5+VKHCrvdT2tSb+iS9SICb5bfLAN3Ht2CR
 NFbA==
X-Gm-Message-State: AGi0PubW1u+IvJrngjH1N33ysgiZEdPmfQa/5mfCpQv9wiGS0rR3dzsq
 r1oH8Tq9yHDYXCGI3uAUUys=
X-Google-Smtp-Source: APiQypLNwEvTJnhvyxZdRTEbB+4wyhwXcIi96k1gQg68+T2YjnXYMn0SdtvSyPLwcFVta17U2zM15Q==
X-Received: by 2002:a1c:ba09:: with SMTP id k9mr17475473wmf.176.1587851480651; 
 Sat, 25 Apr 2020 14:51:20 -0700 (PDT)
Received: from [10.230.188.26] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a20sm15100102wra.26.2020.04.25.14.51.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Apr 2020 14:51:19 -0700 (PDT)
Subject: Re: [PATCH] i2c: brcmstb: Fix handling of optional interrupt
To: Stefan Wahren <stefan.wahren@i2se.com>, Kamal Dasu
 <kdasu.kdev@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Wolfram Sang <wsa@the-dreams.de>
References: <1587850687-23675-1-git-send-email-stefan.wahren@i2se.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <3f3d4430-3c3c-d838-bd35-d35712ed4039@gmail.com>
Date: Sat, 25 Apr 2020 14:51:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1587850687-23675-1-git-send-email-stefan.wahren@i2se.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_145123_431883_EDC23EB8 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/25/2020 2:38 PM, Stefan Wahren wrote:
> From: Dave Stevenson <dave.stevenson@raspberrypi.com>
> 
> If there is no interrupt defined then an error is logged due
> to the use of platform_get_irq. The driver handles not having
> the interrupt by falling back to polling, therefore make
> the appropriate call when claiming it.
> 
> Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
