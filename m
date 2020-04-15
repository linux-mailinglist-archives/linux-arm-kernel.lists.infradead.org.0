Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5044C1AAD4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xhwWTAa/avyGhNvCN7zcXTnvroqqA3N5X8YJmkhlTk=; b=G+rL9AxBrvuYVn
	XXVqLi5b0suwLFj4ekpwuMBClKwf8XpjGM74W/5PngJ7k2NxbLJ+jzaXKBeLMqd8xpur6TcCh39DY
	/okyTNV8HlGo9ncf6ql0ESLdXJ48iij0NQsPZZ6SaitrNF40ho3/2lByEXkOwXfbK/Z1xr8wMTLUA
	YErwO45EPXz251TTkKGGQHmzNixipLjjrLEVv5eI0jDN6cI1Y3nHyoIfrdwcI40dCLsdgMD9QeHcj
	M+gUvbN02zJToUk5yEWDWV876F0S7md9OQANItkURyMkxBaL9Cz34MLlgmgUnIk5y1TevLjkgvHKP
	08CBykEHPeAMzmcwD6bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkr4-0004hF-Gk; Wed, 15 Apr 2020 16:25:38 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkqc-0002wZ-Cv
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:25:17 +0000
Received: by mail-ot1-f65.google.com with SMTP id m18so465151otq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 09:25:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Zga3Axg4AT5xhbCrFrQxMp2BZq/R059ZDklzJpC3Co8=;
 b=U6JqxZLzHfpoH45v36InAdYMUkCJOTuk+sm4D637J91y/3XP8eSzUTAq6frg6m1gRa
 a85CD+ioqZOJi4hhGG196B318FlqpVBHigbDvqhMfI1DG2BwlYr/A3/F1UaV1r2oYrBd
 LLm2rUaIbgJWzHev+4OIlCshIEj4SwJzieISM3E2nhHN78knqKVEmxv1gZyc31IsRqup
 NEJH7CiOgXKPwwT3iUx9OaripYQ2UdXDReCnOhqOv2+fqzN8vcrlwiO3ZcPN8aOkZut3
 0TfN/icx1rl6Quz7YzamU0GYNgi3QYi014BvPb1aZZNV1YVfbs4uVIez9yTuvqX0gVZf
 z9gA==
X-Gm-Message-State: AGi0PuZsBBwr5nVt0/iSYG4MTZu8/5yVMud6jZ6D5DxyR7Ib3YY38bRl
 cnKFiCSRlFN/fB4CqXYGGu/yZQp4RQ==
X-Google-Smtp-Source: APiQypINl7OyQa3PaOF751WZxAm/bPCscR305bWPfwG1uMxVqEXKaxQHQ8u9SHItlVMuj/jA4D/hqw==
X-Received: by 2002:a9d:6ac8:: with SMTP id m8mr13185143otq.262.1586967907640; 
 Wed, 15 Apr 2020 09:25:07 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n6sm3750539oof.35.2020.04.15.09.25.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 09:25:07 -0700 (PDT)
Received: (nullmailer pid 2481 invoked by uid 1000);
 Wed, 15 Apr 2020 16:25:06 -0000
Date: Wed, 15 Apr 2020 11:25:06 -0500
From: Rob Herring <robh@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v6 03/14] of: reserved-memory: Support multiple regions
 per device
Message-ID: <20200415162506.GA2402@bogus>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-4-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409175238.3586487-4-thierry.reding@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_092510_699047_CD79AEC3 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  9 Apr 2020 19:52:27 +0200, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> While the lookup/initialization code already supports multiple memory
> regions per device, the release code will only ever release the first
> matching memory region.
> 
> Enhance the code to release all matching regions. Each attachment of
> a region to a device is uniquely identifiable using a struct device
> pointer and a pointer to the memory region's struct reserved_mem.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  drivers/of/of_reserved_mem.c | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
