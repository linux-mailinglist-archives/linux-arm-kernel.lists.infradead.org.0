Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3589C231C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9J16mXTvA5P06e34VwnUK5HD3g4KQetOLO9K/ELy2A=; b=K8BF7dQStZuZMO
	MUqJUosQk9gm8JmqyLYVWHGzk20CH/EkFO7hC/q81yMZ/gYMn64u16CskaRUermHku8EqNqoHbyPa
	gU+kcA0kgM34UybHqCcUsMSTbsw23A3U+vtstvGmUrZ6NKacCPpg5R2H0Mfl3uNejOGYAEkzPgVJH
	4L8QxWivb0BnWxwEPyzwSt4MnSiq8nAOgMywQjohOziWLp7UckzgDIFkGXA9pRXyQVPPUGmj1tlg2
	Op11k84oRwMw9FJ2byPhfCwxwoMeYWpW37myX1MsZ3Y0+lR1zJzRCUXwzvL5q1cGs10DvYn8UvupK
	cHR9d9oxSEHJNwIrDrAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfti-0003f6-Oq; Mon, 20 May 2019 10:52:02 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSftb-0003eR-RK
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 10:51:57 +0000
Received: by mail-pl1-x644.google.com with SMTP id x15so6545601pln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 03:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1YuRtghB95O7LhcsLf1/GyzlG0H9oHKpVmg43qxycAc=;
 b=kYY51UqLfQVqkc2pUGOEqHYiVJK7aLiK83xI/QmKPQ83rVUHjubs4HhY3WgnjPV8Ph
 +p6tCG9P+dJnHcchn3HiDctSF0yQA26bk8LSB219E644Gsm0Z1FLqUnsS3+r6pJNU7JM
 F9fLagHSp3Mz6H1zX6oNBvGJ6baL05JXajQShS4uasI188DbB4upGMpFgPkkW+o5f/bL
 ZE36aahLuXDGd9PJjztiqIChzQIpcJ3YH/cNwgrxJTR7413qQpHk/qUWWIKNe90WjxM9
 DRjIBj6m38yHeJnptCfjNj2CpXQpeb1y+/vPkFdyv5gLFdczZtBRPIChvp1j2Pp2eUc4
 ZEUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1YuRtghB95O7LhcsLf1/GyzlG0H9oHKpVmg43qxycAc=;
 b=AO9/5rHgSzwi+PDYWTXxLZTZLXQ6kIZ0fr9kKwWFnYTvmg50vgV+3gLO46jvDrn+UZ
 IhFbvsXAyP4u10AWCSHAFBrbuHkHs74zRI4kbuNXPVjBOb7KoHksTqIursbeDJNWiTu7
 G1qfrbVMMcoOCKmPZ6yyN+6QJ2z13xZo3OVcmdCZ61hViT8wCRTEVeC6UhWfSJRTVa7r
 jhjKtVgOk8LJ2KK8fUxQKj+oNmtISDCVUmtV9ZmdFBeDDa2t5sqPB/9wrDwCsroMPbkh
 0o1fNelBoKQ+gj+9aeLXCZK9nUO/QLsJxZpgMidDRMxGYLe070V/b17s8FI2p2wJSFDH
 lIqw==
X-Gm-Message-State: APjAAAWFrOtPK+gMZ4H4WjlBPiEMuKlX1BSlWOBiWwfeH83CBwOBKLSX
 kj6A4+OI+erKn4o6Iam3MLPpLQ==
X-Google-Smtp-Source: APXvYqx2xIC25FoDnT5f3U0WxisE/vb00p1qHkPCPrdQV39EMhcy4uT+6FeiH4ZP+MSjumuKX4Eyww==
X-Received: by 2002:a17:902:f20b:: with SMTP id
 gn11mr75087490plb.126.1558349515329; 
 Mon, 20 May 2019 03:51:55 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id k9sm20248370pfa.180.2019.05.20.03.51.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 03:51:54 -0700 (PDT)
Date: Mon, 20 May 2019 16:21:53 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [RFC v2 0/5] cpufreq support for the Raspberry Pi
Message-ID: <20190520105153.ftlnjx7ocr2qkxhd@vireshk-i7>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520104708.11980-1-nsaenzjulienne@suse.de>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_035155_888130_1607D423 
X-CRM114-Status: GOOD (  22.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
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
Cc: stefan.wahren@i2se.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-pm@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 ptesarik@suse.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, ssuloev@orpaltech.com,
 linux-clk@vger.kernel.org, mbrugger@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-05-19, 12:47, Nicolas Saenz Julienne wrote:
> Hi all,
> as some of you may recall I've been spending some time looking into
> providing 'cpufreq' support for the Raspberry Pi platform[1]. I think
> I'm close to something workable, so I'd love for you to comment on it.
> 
> There has been some design changes since the last version. Namely the
> fact that I now make sure *only* the CPU frequency is updated. The
> firmware API we use has two modes, with or without turbo. Enabling turbo
> implies not only scaling the CPU clock but also the VPU and other
> peripheral related clocks.  This is problematic as some of them are not
> prepared for this kind frequency changes. I spent some time adapting the
> peripheral drivers, but the result was disappointing as they poorly
> support live frequency changes (which most other chips accept, think for
> instance I2C and clock stretching) but also turned out hard to integrate
> into the kernel. As we were planning to use 'clk_notifiers' which turns
> out not to be such a good idea as it's prone to deadlocks and not
> recommended by the clock maintainers[2]. It's also worth mentioning that
> the foundation kernel doesn't support VPU frequency scaling either.
> 
> With this in mind, and as suggested by clock maintainers[2], I've
> decided to integrate the firmware clock interface into the bcm2835 clock
> driver. This, in my opinion, provides the least friction with the
> firmware and lets us write very simple and portable higher level
> drivers. As I did with the 'cpufreq' driver which simply queries the max
> and min frequencies available, which are configurable in the firmware,
> to then trigger the generic 'cpufreq-dt'.
> 
> In the future we could further integrate other firmware dependent clocks
> into the main driver. For instance to be able to scale the VPU clock,
> which should be operated through a 'devfreq' driver.
> 
> This was tested on a RPi3b+ and if the series is well received I'll test
> it further on all platforms I own.

Please always supply version history on what has changed from V1. And
why do you keep sending it as RFC ? Just keep the default PATCH thing,
the patches are in good shape I would say.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
