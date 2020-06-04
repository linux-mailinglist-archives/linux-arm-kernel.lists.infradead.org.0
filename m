Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 374B81EDCD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 07:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEZbS7FSwuOsjKKA8VbLci4PZk+mCweNp//ZQoahKfQ=; b=KR2jjH0gQ0QhXN
	YN4s4JefPBXcaq/M1TiCXFkfH9m3ScblKyZBv8F4zE6YmIrWYbHB9K7R92esL6gYzATQJqu3VvA7x
	sgFgWe3WbnNuhOscw5A4KZIuYApqBOJx0z7x9Kp6ThfejneQCgvIXbF+LCTOXhgx6OhVKd2HusV4W
	2I3sSUjx7ufUo29OSqCsGw7dcjbFvTPd+kgAmEgoRccceP5OaF/iqHxgi/D2IVXM4b/XFF1cRg5nF
	wuquytp4lC9ukgWl6PVMGOPE8G5dTB6TU9wS/Pq3fsZ9uVoLFwNO9oYN13fL4HIPEewoaNf9v8Rt1
	9XMRcQsSbH6Z5zDFzXgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgiuH-00070K-9a; Thu, 04 Jun 2020 05:59:13 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgiuB-0006zW-EM
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 05:59:08 +0000
Received: by mail-pj1-x102b.google.com with SMTP id s88so684667pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 22:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tUUk7gLCC9sr5iPcgp8jkdDPE9W39BQTP/3fVTPj3aI=;
 b=hvXrEv5fPtwYgH6i9ONHo+JyteLKKi6xTABhIoSPnsADZSv0IfYCEC+3KK3FEhdA6I
 +uVPzmYOMuGF5eVAr+Md2FOKA+tjv2TIpfg63YgAjO5KK26egHr5jktwW1NLhesaWYkL
 Y3jGzqiy5H1UOkhNK3R/Oxt+rdxk7tYSRa6bYZyUMJTaDMnN5OgfYLk8LT5UXZ1fjWLR
 F3qWUoPX8mvZAWwUDFVdXnhImSux43HOy4cwQR+yPAQkV49/EC7HEu9GV7WBsgXq1FDF
 nJcjWn/STN/cDe+Zyen7yPQQoIHVyIz0ng/GVnrwb7UllE799CYOteKSShEIv/JymoBm
 QbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tUUk7gLCC9sr5iPcgp8jkdDPE9W39BQTP/3fVTPj3aI=;
 b=VGAV/GvJCBpXDpmabM10PtqDMhnz3XoGK88HV42uKCWbIQxG2oMK92+LyW8mL0mJyk
 LtFxyUCIdyFHG1bRKv2SMJV4uXxg9x4/Df8RnEmFavTNY7uRBPBxFwmnRKcv4zGBGUF2
 ObgywIhPuGrQciCvsxAuBHdA3/VoJh3lAVmDnW+Pk4uCFVtX/wqp5rBBQRcuv9+Z4qjb
 8PBjDB5JZ4/nYB2t9pG79TSLlDn4obp2axAqh8QJw6XIfLjgWlKtMt3jfHfuBqd1t8Kv
 gx7MIR2vEQn+T36Zan317furNZ7fAasH73A7W3OZxGmCpISxA7QJxk1W0WwyceYJkNKb
 BhFg==
X-Gm-Message-State: AOAM531lIqzszQT4/iulZCzlgn6n0gECKJm+/X0z/BE6zT96TTFihFhE
 8jW3ASZ3mHhzrKg8fxph3oRGaQ==
X-Google-Smtp-Source: ABdhPJzeh7kob7ogWckMzO3sBJuBrbSbZ4YSjxaUNcIH/bi/7Ii6yzULiplFHNYkFJS3fY1lPDS7/Q==
X-Received: by 2002:a17:90a:8a98:: with SMTP id
 x24mr4038244pjn.103.1591250346020; 
 Wed, 03 Jun 2020 22:59:06 -0700 (PDT)
Received: from localhost ([122.172.62.209])
 by smtp.gmail.com with ESMTPSA id m2sm4153047pjk.52.2020.06.03.22.59.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jun 2020 22:59:05 -0700 (PDT)
Date: Thu, 4 Jun 2020 11:29:03 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200604055903.ycvu6qfnlwgkh52a@vireshk-i7>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200528192005.GA494874@bogus>
 <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
 <20200603180435.GB23722@bogus> <20200603181743.GC23722@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603181743.GC23722@bogus>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_225907_740215_ED4B67C0 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102b listed in]
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03-06-20, 19:17, Sudeep Holla wrote:
> I just realised that we have the timing info in the traces and you will
> observe the sensor readings take something in order of 100us to 500-600us
> or even more based on which sensor is being read. While we have 100us
> timeout for cpufreq opp set.

Which timeout from opp core are you talking about ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
