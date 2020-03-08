Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C44B17D442
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 15:54:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9j15P+CpuphW5EiLtpfMQcWBZlPuHB9W8gbEIOezPgY=; b=iGCGa+v5WfVeYb
	WidEmCH5OCSuMQVbY+QgDVMdO3dQ8padto+4RKe+7M1tyxqPX16BWSSCwx/WhM55J9q5wCxzKkJNk
	6NZwpClvOdg9xjSJan1L+1xCBFIt5YLR59AenLBXs8Ihp3mDCnTSct1r1gqLbwYdTivoYp3QqrXii
	XU5ptYglK0Hug+0Sf5G6TKnwkHaG6j7PC0/fnhtf9FEpZ+56hScOBj9ckcfcmj+Z54oqbVGHnOHxL
	0pC3Et+HZSs01OgVXtZ1nVt3AqnCYaew+7j+afP3/EMq2g4MHwx79jzxObOPaYlrkyGYYD5ppy1Zi
	r6Bqmxx6kR+d2v5CSZPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAxJY-0003CL-5j; Sun, 08 Mar 2020 14:54:00 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAxJQ-0003C2-0W
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 14:53:53 +0000
Received: by mail-pl1-x644.google.com with SMTP id d9so2932825plo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Mar 2020 07:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0YgvG98+C7Hv1PiMeKbN/HzqGCFiqwzwYpuxu1hQ9Ds=;
 b=lHnfyxUPw8qagDvATBpNEN6eytsonnCFStS1tOUBAvZE8bP6n4jKSRSnWmEQj8phF0
 BGkYZCWz9micqXeDaofS4Rf0bNCU3YY82TXv/tVRGsfOChDch2y9awmhyMnONb9xVLfY
 7f2qBiuQw1kHa0ma2cDvMnfdDB9k77G6+y8ZX0y8qtpqyKk7nGLN5RRHCEI6c9cDv97r
 LnHtmkvsk8obp0aKeIZapZXwWj6N0QPvVkWitFdyYwHZN09l7U3NZYYze0dJhZ5aIUr0
 0qLRp+ur7VHXU2wzg5nK58XAgR1otd619cpuqnAv8fojiLB+16+G4SAav+27XjXd7o5x
 Il4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0YgvG98+C7Hv1PiMeKbN/HzqGCFiqwzwYpuxu1hQ9Ds=;
 b=J7sSaG4/A+X9FT8nLyhBT1RrohMW4KVyNw0pbjNpRBt9U+CPtRn4WBhzFE9svFNPnS
 5FrNHnr3GYpxBAv2oKVkMibxBUT3BSZAqIK2M5PIhlDHviOzeiAUMRTu6tkYGUjnFue1
 xLH5mIU86qRwC58uxSSMbklaUCBSEHoxX5IEpl+5572MABdE8qzZzekfkjhOhB5f6MBr
 AOgWY6/o2hvDnrWIVe7BRxJyHwupqyjm5yirfkHQy99Gwx+4MkI4D190kCwvlieY870B
 JBIUO1FhJAAjPkNS9rYk0aE4xi4aUj001Nj/u+gp0p1T9I0+lPV+Sw/hkonPf1Ag4TH1
 ReHg==
X-Gm-Message-State: ANhLgQ3nLwvVAcN1dCymXY95l2E9+VmWEolopDPGHXjO8rdkxpJGZ8fe
 3n/Pm+pFswfi6D76qduHqb8=
X-Google-Smtp-Source: ADFU+vtxl9gsgmIy/4MrHIgj8LXRJKUTbnhFHS0hHScpJXyVD+hesD+V9yp2+R3y1g6YuovXPgjB3A==
X-Received: by 2002:a17:90a:a409:: with SMTP id
 y9mr11786777pjp.103.1583679230945; 
 Sun, 08 Mar 2020 07:53:50 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id k21sm5229014pfi.115.2020.03.08.07.53.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 08 Mar 2020 07:53:50 -0700 (PDT)
Date: Sun, 8 Mar 2020 20:23:48 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Russell King <linux@armlinux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Enrico Weigelt <info@metux.net>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] ARM: mmp: replace setup_irq() by request_irq()
Message-ID: <20200308145348.GA7062@afzalpc>
References: <20200301122243.4129-1-afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301122243.4129-1-afzal.mohd.ma@gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_075352_077204_A8005664 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lubomir,

On Sun, Mar 01, 2020 at 05:52:41PM +0530, afzal mohammed wrote:

> Hi sub-arch maintainers,
> 
> If the patch is okay, please take it thr' your tree.

get_maintainers doesn't show any maintainers for mmp, but it specifies
you as the sole reviewer, please let me know the route upstream for this
patch.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
