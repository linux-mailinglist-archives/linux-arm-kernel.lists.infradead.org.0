Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC68B1422E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 06:43:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=InJYLpBZ9qyU8m9r3qNK3Z+dqy/yI8IpauVoSPUWx3k=; b=O22j/vTWEhbKqC
	nAbWolK3sJwgvW7G9ETf8qe19kv7+IWO2kwjnxqa9ricY0ii0nno8aMd1iuHSvGrfPGLdl8Bn2Gcd
	aRSsCsidIn2ksNPDxR/cC72dBRJZ4SHqvJoy47J+HPGVnVz7ZR7iTsr4CdYmqL78McWjzWbxJEVC9
	W5qx/hJdVbDPjMp7Zdk5Kyl+jFm+m8FrWwWk+B+0PF1ig1Zx1tZviFQ+qwWJ2qX/F9TMe3hOTLKcy
	h7G5I7tLI1+B0EXPakNwrpsy07/bhNqJdsHwnIcIuswn2fCvpRMJdnTQkYV1jLpv8dYGspluUlblq
	+sKGNeeeWHj54NaNSuuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itPqf-0003hL-2B; Mon, 20 Jan 2020 05:43:41 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itPqT-0003gd-99
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 05:43:30 +0000
Received: by mail-pj1-x1044.google.com with SMTP id bg7so6580606pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 21:43:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=64XMCd5LTgEtp+yMw+EJAZboO4/7kIhrsJP3cuFWUNQ=;
 b=jmBNL68wUeMsIeo9T7IR9gSDDPRP76eyffnTrd4o2SsieCYjnJvqwZ2/gCB4G5GxfB
 P6XSo/wrEm/Cvba1ZR2oAVjCJnQJUELWaVh9Cpa9WSkYGN5b+V5tYPSByNb26KwyBk0w
 KxzLSdZtoCRX9a6DS8r8P24EyWV8Kh+nShqoTrBfOnahbxZsmiRSykoYP6hvOoYdkQFE
 fJFtLQtZF2ZQ8M7nKkZcu34rzEWb0VScYmDJZNUaUGlDaZLT/PSanz7bQe6Mrjv3MvxO
 TeD7duqsc3SXhis1f+5cD/7Gy9DEXbn1TvQyaX0co6Cy7NH4smleOAeZLqQxoAibRSrk
 X5iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=64XMCd5LTgEtp+yMw+EJAZboO4/7kIhrsJP3cuFWUNQ=;
 b=b0zEZwENPvZpVfdsyQPI6zRRSk3tN2K7hsZ9hDg2kBbDRRGW9677RXavnRKEADWZK0
 cGc7JudhsC5ztsQONAb+YlbLB+2XNTKdeodwJ/UETjEx/eCdQqeuOW/5X01ond/facR0
 gQjsdEHT1f8mTzy/Iuf34ivMKVkpB5HXZFS7HocuhrMw7Sz9/qyAhb/6L6fIkEUsqsUY
 h+MIpo5FdnQdDfeskSIkOyhsLSHIzTYoIw3tVFafZLLMHqvoOAX83jOfe8g9iYe0l0/D
 6ThbFoYVFpdtPH+0+CWXQSgc9i/hhKs+/75sZxPNPh8nhZNpQX5OTUn3LfAqFbuksNtE
 DRlw==
X-Gm-Message-State: APjAAAXGnOeE3fzW3en2SRHgbvMgb2z4Wh9ay9DC1bZe1HQEr2LrgoBX
 NynzrHDJe2UpCgKHNsgoIoU=
X-Google-Smtp-Source: APXvYqwsZKQ3dzCdikp0kMy3xYQVB4S6djt4GRgx6wrAUA6qZr+BJgFoB2KY0jXPL38GVfIpGgKDKg==
X-Received: by 2002:a17:90a:d78f:: with SMTP id
 z15mr21856717pju.36.1579499008199; 
 Sun, 19 Jan 2020 21:43:28 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id 12sm38005809pfn.177.2020.01.19.21.43.27
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sun, 19 Jan 2020 21:43:27 -0800 (PST)
Date: Mon, 20 Jan 2020 13:43:25 +0800
From: chenqiwu <qiwuchen55@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v3] cpufreq: s3c: fix unbalances of cpufreq policy refcount
Message-ID: <20200120054325.GA5185@cqw-OptiPlex-7050>
References: <1578383599-11207-1-git-send-email-qiwuchen55@gmail.com>
 <20200107080145.7c4gxilnjjxjfqpc@vireshk-i7>
 <CAD1-QrohtJFLWDMCYmVs2G5WDcDN_E8xcsNZqJ428cEkohcB0Q@mail.gmail.com>
 <20200120052821.tvijbt3bzkn76yz6@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120052821.tvijbt3bzkn76yz6@vireshk-i7>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_214329_348957_263AC1A3 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [qiwuchen55[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [qiwuchen55[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, krzk@kernel.org, kgene@kernel.org,
 chenqiwu <chenqiwu@xiaomi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 10:58:21AM +0530, Viresh Kumar wrote:
> On 19-01-20, 10:25, qiwu chen wrote:
> > Hi
> > Any progress about this patch?
> 
> I already applied it in my tree, it will be part for v5.5-rc1.
> 
> -- 
> viresh

OK, Thanks a lot!

Qiwu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
