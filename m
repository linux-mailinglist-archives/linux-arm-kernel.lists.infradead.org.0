Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 477C51E744F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 06:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CoNvWbYefT5Ba7PXNtHoAK194QaDQnVWf1MBIWXtZDo=; b=sY+PhdO71hdiml
	wsdNxxrScotNv3/G3LncpLdzo/CjUX6P5eSSWCoDN5oLTn7b0SZcdSJ9sebLy2JmXiNJgMitsU88N
	fhBy0glN4E9nRSfSh1iAp8ZCxSaKyPnczsmq/YA26oaLYTTFL3i8E90fP010nNJMAAMawHY4CmuzP
	5yEY4DgCefBp0aq7H6UfELj9vJIpdQwObgBfqa4zcki4FlYrPiQKjlEr1jqu1Ez4CxG1tjzweJaKB
	1QDNUtG0TABDFeYdKnGnk6Xm79OSVZKGI9Cu1jl4DSPr7hhT7DgTKspx7lQ2Ha9XY4umeGMNdBsQ2
	VmBf/cCG0JNayWRCcqaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeWJX-0008Ga-AO; Fri, 29 May 2020 04:08:11 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeWJP-0008GD-GS
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 04:08:04 +0000
Received: by mail-pl1-x630.google.com with SMTP id i17so510969pli.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 21:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=blfLTQ8AXvWApf1/HEAMujKiLPEaU1hVA3OXltkKPFM=;
 b=aDyIrVEVyonnjpvrsy1C4E5ng5f/zsS95lj82O9yN+h5UfMRmrNJHJ4Z59I+AMyxGF
 mlMaM/XQXBkYUPlkVmCjel1GFo2yZnCrSJO/sDZVelbaIKk1c+YPajeS+zaRnUT6zesQ
 YlPRWbLDOxX2wX6cpAqcKIuoRSnec/KqwZzcEM4lwf4JWlTspk/cIz+CIhGgW433imGk
 UQZo1Ai4TTsS3yCK+STK5bOOmDHUiFl+bZgHvd8IABTcsEY6P/7yZ66qDIxZeW8r+Udm
 hw7UM7Tu2r2HCQh0yHTTWmvx0YloqORi+w3i9ehwcJh+H/BO705+lZQaK7Trry0HyATa
 qEug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=blfLTQ8AXvWApf1/HEAMujKiLPEaU1hVA3OXltkKPFM=;
 b=HD656SkEwz8R2HisvSk0F7holdniT/vHoscltZhvsze/EM90dKRraS59vr0MTtrDw3
 X3Oxw9Y8ROO9u2VXi9SvBbMCVZ7xYHeurlo5PrUTgvmMvecyjo0FYIqndIn3tk97xvc+
 9Zf+nNAgd1Ze2uGoYh16mRoSdF+HLAPSl2A7V7C3lNv3lv2JcK3TkjNoCtMiArT+jWZV
 Z6l8VmaiTwVECNNRGjHEs1dPMtfgAaXHGxNel1IjNBNp/FxS29/ZpUm1ViV9XmAd6dPX
 zWA+W697jfWXLOrk5o729MRRIrbF+Qlg4/EONWpXYTORESAIGLumG3jUWebxg4PDnPTw
 wHKg==
X-Gm-Message-State: AOAM533qz9Fxau11rOdcXe5HpFw+YdwoEbHFWekKMOb6zfeVVDqXO7hZ
 /nLkn+07qWQOt1OXxOt/gANUug==
X-Google-Smtp-Source: ABdhPJz06MPKrnYiQjl2aYS2OiLYzIlNkn9of65Fn9om3cFtzDZwYzRQA7dzd9nGBdXcUmk7igXl5Q==
X-Received: by 2002:a17:90a:9f02:: with SMTP id
 n2mr7758540pjp.173.1590725281193; 
 Thu, 28 May 2020 21:08:01 -0700 (PDT)
Received: from localhost ([122.172.60.59])
 by smtp.gmail.com with ESMTPSA id o11sm5945789pfd.195.2020.05.28.21.07.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 28 May 2020 21:08:00 -0700 (PDT)
Date: Fri, 29 May 2020 09:37:58 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200528192005.GA494874@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528192005.GA494874@bogus>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_210803_548770_001BC755 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:630 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28-05-20, 13:20, Rob Herring wrote:
> Whether Linux 
> requires serializing mailbox accesses is a separate issue. On that side, 
> it seems silly to not allow driving the h/w in the most efficient way 
> possible.

That's exactly what we are trying to say. The hardware allows us to
write all 32 bits in parallel, without any hardware issues, why
shouldn't we do that ? The delay (which Sudeep will find out, he is
facing issues with hardware access because of lockdown right now)
which may be small in transmitting across a mailbox becomes
significant because of the fact that it happens synchronously and the
receiver will send some sort of acknowledgement (and that depends on
the firmware there) and the kernel needs to wait for it, while the
kernel doesn't really need to. There is no reason IMHO for being
inefficient here while we can do better.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
