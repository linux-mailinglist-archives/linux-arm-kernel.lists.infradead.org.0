Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA4D3172F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 00:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/5FoqG+jAMUmZGuw8ZNbqTdh0ZodMIvG9kagxIBSss=; b=bkINy+3k2A1uAo
	0AqDExX6Zm97TyKcc5aXPRZjLfyYggiC1cISss6AlwNru1sKllVsDuxs997rVV7xq8ZMqef9xEaTz
	J+DnPgTc6KwB2MDpHk7vfppZKfLRCCbQbmHpdfpwHEq6CNrdRbx9lZO/V8pyvqkhKE0mD2OcinxvG
	iF0nXJK1cmAkuunV8EE78/Z0r98jnfKBrZL15Dob4nd00oYbOGUto1omJWB/Yzjcna2OlPw8ZypRf
	jacZVPrsyvwqQSivQuKYpx61RX1qNakECvXFolUvoKRANg6BbAZ4086qaa/d4L3R2+T1ET/a/QAub
	rHxtR1lYrvwx85CZfOSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWpyQ-0005R0-38; Fri, 31 May 2019 22:26:06 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWpyI-0005Pe-0G
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 22:25:59 +0000
Received: by mail-it1-x144.google.com with SMTP id m141so18357560ita.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 15:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jNO29A3eBJvwf2Vu9Oyg5E4jjTlIZetGj3NF5CjfGMc=;
 b=Hlmnc+h5861mci94IXNOb1Pm2K/0ArQ3l0KACnywjZOwv3P1ECcqa+VZ+zoiXhrRyS
 91dnqz/NNnw7ufWxstEtybtxLBrHrKA/qei/0QaNIh1IkhzJieUH47QlzmN284PWCGCY
 jBB2Kjbb4wm8ZhY0Id2+ri0jTqSC8oFOMEcSb8HPhHhPSyzRNIqNbWWQdVXlEkx5Kmt5
 nfaKo/Pjvo5vRWZzmGTWg/0xjYkxDVKxCASO7ynAFxG/yE//lxPCl3OwMSB5dAZSVR81
 YEKWnHi8tnyQec0gqdbuW4E0tHdQ+NkDo/eO0Ex4cHfU8SiCnN3IA0lXzzIqlU3lWNLr
 /5gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jNO29A3eBJvwf2Vu9Oyg5E4jjTlIZetGj3NF5CjfGMc=;
 b=p9IxSRJlA0nnobuBf7cq40GM4caGXuiuzDXYmLV9ML0mFPG3WrxrdQRGBA26kRAOh+
 5On1z54dR3nh5sq622xrPQ4Kko35QN/FewVO2wUdkifIe2AztIgSqXTuB/4zqgQ7uBFt
 6mJAqauTegNNNNeXJEZN9v9VS4p0+TDX4fg9Tn2F6npWyyomWZ5vf37+1WCPw46HXVOY
 SM10UZjtuD9aGnsctRwcdhufZIz4Nmpspo2ohn9wVq4DiGKs/iqsGkzCypLO96UJ2EQW
 Yfb6deSv7imT6gINXFfughD/fz+pW0Bn3WfPcUsa2VkyjLWU5BTGAj46Sf6xEBjanGgm
 D3+A==
X-Gm-Message-State: APjAAAW1BhgMtQwl1lVYThb3QMLnIY0yM1O4Y1MuET0OIF5RTG/khsXm
 uGdePbRgVnoGV44nBPz4fSZ2qw==
X-Google-Smtp-Source: APXvYqxn/8sjKyKDB1q/z3xyIFqbE0YwBOLGF5GhVsgmlK6s3ApK9hMQ4eWtlgBcJSrXjR9IMGygzA==
X-Received: by 2002:a24:16c6:: with SMTP id a189mr8499974ita.179.1559341556857; 
 Fri, 31 May 2019 15:25:56 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id 194sm3015704itm.40.2019.05.31.15.25.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 15:25:56 -0700 (PDT)
Subject: Re: [PATCH v2 03/17] soc: qcom: ipa: main code
To: David Miller <davem@davemloft.net>
References: <20190531035348.7194-1-elder@linaro.org>
 <20190531035348.7194-4-elder@linaro.org>
 <20190531.145005.798440469894507477.davem@davemloft.net>
From: Alex Elder <elder@linaro.org>
Message-ID: <8295f702-2c3f-1fa3-0a4e-ebb51d5b03ee@linaro.org>
Date: Fri, 31 May 2019 17:25:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190531.145005.798440469894507477.davem@davemloft.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_152558_051785_63EEDB84 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 arnd@arndb.de, netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 subashab@codeaurora.org, linux-soc@vger.kernel.org, abhishek.esse@gmail.com,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/31/19 4:50 PM, David Miller wrote:
> From: Alex Elder <elder@linaro.org>
> Date: Thu, 30 May 2019 22:53:34 -0500
> 
>> +	void *route_virt;
>  ...
>> +	void *filter_virt;
>  ...
> 
> If these are arrays of u64's, please declare them as "u64 *" instead of
> the opaque "void *".

Good idea.  I hadn't paid attention to that.  These tables are
arrays of 64-bit addresses so it's better to represent them that
way.

Thanks.

					-Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
