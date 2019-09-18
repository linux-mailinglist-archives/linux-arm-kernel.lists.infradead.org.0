Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 891A0B6B42
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 20:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7b+CnpsQli6NBAwpRYFkoGNDEay4JvhMXHXU9xHeMTY=; b=kf6UPI2z9oxH6J
	3PsMowzcYFfO55mR/4LG4JQkvQhry0Plh9Ux6u618S2zWc6Avb0HbMwyK/eiMkDM5yoZtlYSA6dhL
	7t1/E8hSbezadIeIOY4iVcWqfYyEfTThNysNm3No6CKeqqVuW3vdsPQSglA/4xJtvqyvEwbYJjRSh
	V8bKBCtQ6fXxWvr4GFoCZOu4qWGju0ICAQPAdkeJBSfTji2x/zB/STS0WXyAo2omE4O9tnFzSclV0
	rj6Gl9V0HG8dmTMLf/AppGSUGS/MRGZ/6LmmX2UIZkvgIEF4n37t7MaffgJltgcSElfqH3G8rcyiF
	06KvDaa71NQfSKtxR6Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAf9H-0007OV-Pk; Wed, 18 Sep 2019 18:57:55 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAf92-0007OD-1g
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 18:57:41 +0000
Received: by mail-wr1-f67.google.com with SMTP id y19so538269wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 11:57:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GJ3R8XhnecOsiy6g/x7C0Epa5BrgApmxuvPwK+dFs18=;
 b=nVZCdyIp+TCvvH1R5z3MGIEwXw3htQ0sTibR8DCq17mfTgvq7O+JDg9HVjyuTu+b20
 +v6f807d9O/utbi3q1ql4zOwApHdo3ieIs5FtJ4oiAx6083G/VeQuuLbLy4MoNhjr5da
 dNAWFFdDg3NyY9bHizu3MwBk5e+v57CoEZkrK6XoOZ23Jj+vcawSOXwY3BRbCLqo6aea
 ppmYpjEw6qxWaof3yW9fJR3wIgQWGKTVGI1Y8MWSw3ABVBnf1DVHEmAb0HJQRAHnUEKU
 tJ3w32dWd+AwHAEj5tAhWq5ePACWO37wa8C/yyFLK2FC2Qb3x/mFPw9LuG5DnK5NbZ8B
 vygQ==
X-Gm-Message-State: APjAAAW6FAUJDUnSoWYHu+FHWEf1SaOjOtykJEZ9I4WcSQNZfF+7yAgG
 1PNGRrRZCgIdrWfKveOUats=
X-Google-Smtp-Source: APXvYqxCZ8ybmcDduSjrnyaRtnNA3U3N4PBgLW8JuqHbZ7QUON1Zenp0iU3fty+pz/Nwx6fAtGOOVA==
X-Received: by 2002:a05:6000:1002:: with SMTP id
 a2mr4017924wrx.272.1568833058449; 
 Wed, 18 Sep 2019 11:57:38 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id g73sm4743264wme.10.2019.09.18.11.57.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 18 Sep 2019 11:57:35 -0700 (PDT)
Date: Wed, 18 Sep 2019 20:57:32 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] memory: exynos5422: fix spelling mistake "counld"
 -> "could"
Message-ID: <20190918185732.GC8463@kozik-lap>
References: <20190916091249.31950-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916091249.31950-1-colin.king@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_115740_090841_3DAD7960 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 10:12:49AM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a dev_err message. Fix it.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/memory/samsung/exynos5422-dmc.c | 2 +-

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
