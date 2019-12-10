Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22CF1184D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 11:19:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RF568B6tPh0dQJ/5kK4GqJdq4Mu/5q+HKemea9Ae6dY=; b=VWlKffVyHW2NlZ
	ze7a/E2cP7xi6hTdqQ5x0nOJ1zMJ7p1o2wp0mKvesko3VIGo3A/OwSIRahfcC3i1GKtsUWsTpD0PM
	ZJhglNTxOIesqFe+rrc0brcBfcDmzdly4Fp5BJFFpFATuZVjJoUx4lsXZhLEXMHsnyrFETs9Au9+R
	X0Uj2G8tM80S1bx/JP979+wqX2RK56OXLDJXj0VwgJ6B7x2+wiE80n6yoRmAU5IWW6UItMCONKM1q
	xpjaVkPTImIxcTqjEkBhySHswH5KuXBjtUsvDbLlRUZvK+fgY72bbhKh7h0mdyr+CHNVpV0Jpk54B
	lW1yy4joYgC4Hz7//4sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iecbm-0000Uz-UV; Tue, 10 Dec 2019 10:19:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iecba-0000Tt-MA
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 10:18:59 +0000
Received: by mail-pg1-x544.google.com with SMTP id x8so8681526pgk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 02:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MjJMrLdfpPJ4Sc3kZhH/VjXjH5+SHZoVHKv3pR43FLk=;
 b=aGoM1Sg4g9adkhnRSZkca8ipBYqH5zDXO6Sn8dVvkuMuBaD0+kTFKL8siM4sm9zEp7
 lGLuxvo/M9CNikbqj3KnIxLENsqlMB9CZ8PPWH5BrjONlfLYN1Pc3R5CDMeM0B96mIst
 p1VtxX7v/OfIUeBmMI+Wkm0Qnpv7Wmi0KqEBGkU9Won8QYiXe83qsocnN3L0z2o3lFyP
 8ftiMcAZXD8h9ZQkzg/OQiOYqfFuSPDH8PynDld/iot3oJPCg4ol6S+rLBR87MDV1PJB
 xCVbzdQ8FISzsF9bgU3shE4ipMBny5JTBWws2h6l2pV7y7EHlhjtTatKLqNIupIwgRnI
 JcaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MjJMrLdfpPJ4Sc3kZhH/VjXjH5+SHZoVHKv3pR43FLk=;
 b=ET7sZ+fPZusqe5DFTbkiIZI5v45MVaognRuX+JfV5G0sbzzrDMwr95D22N9EmKHtAe
 7XKEE3nTsKCcvaVYyzA0pEhVDuIgFbOXYClZMs8T6dKnhhs+TIjqj/IFOd45dcY67rYi
 P65BZEvM7HwsQEaW1hXTK/DQl52iUs8MDa4G+fYZ/n493+BUjY+Dnp5cf86BNzdAU3Gk
 pWR/aYDEQtTzB7gM/G2rXvxCv4L6CYX4H3xmOA/taZMpikTe7YYzL+Y553SBdma1uN3P
 X4saP4tp6dqvpqA1oFEFGSI5F2K3ok7bAkVzVy5N+2W86rrWgY6SaJd8fjIisl78TdXx
 5+AA==
X-Gm-Message-State: APjAAAWTnh2b30EXfWeW235vlNt8CTtDAc6OigmksZ8K45zpCSg3f9Qr
 ZSV1LcuC4CWIwfcdZslyeX2Ctg==
X-Google-Smtp-Source: APXvYqxyHPhqMG4TPXyS2uSioe8CvqmwehPnF4vkNuYU85Y8GyvvVGdr/eAXk14Erkx4+waKABZllQ==
X-Received: by 2002:a63:e648:: with SMTP id p8mr23578874pgj.259.1575973134356; 
 Tue, 10 Dec 2019 02:18:54 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id p16sm2723690pgm.8.2019.12.10.02.18.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Dec 2019 02:18:53 -0800 (PST)
Date: Tue, 10 Dec 2019 15:48:51 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20191210101851.gpayo7bnyf54opyu@vireshk-i7>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
 <20191203120002.GB4171@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203120002.GB4171@bogus>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_021858_723043_0D6AF0CA 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03-12-19, 12:00, Sudeep Holla wrote:
> I am more interested in this part. As I am aware the only 2 other
> transport being discussed is SMC/HVC and new/yet conceptual SPCI(built
> on top of SMC/HVC). There are already discussions on the list to make
> former as mailbox[1]. While I see both pros and cons with that approach,
> there's a need to converge. One main advantage I see with SMC/HVC mailbox
> is that it can be used with any other client and not just SCMI. Equally,
> the queuing in the mailbox may not be needed with fast SMC/HVC but may
> be needed for new SPCI(not yet fully analysed).
 
We were also looking for OPTEE based mailbox which is similar to SPCI.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
