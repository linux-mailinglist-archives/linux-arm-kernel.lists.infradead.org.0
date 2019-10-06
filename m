Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A534FCD337
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:51:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUGt2z7ykgsfdBba8IXB5iwqOA+cNE1Xf0OjnjXUjsM=; b=DLasWaN63Y8E27
	Qb5L0Q4y+RSxqABdtQInw9HQH9ctdMo1W3S4D/FPBGT+rFJXi9rpfO2vTCykXWlHQ0g+75vfWIeH1
	/68lAgg3w8AQU0SOtMbbFTykqWHNg29zB84Jwi0272gHhNxqyjLL6CzDe08pwwbB8LQaUaG2AO6mo
	Ue0orY15AxuA69lW9a8SvKil6Gy4NSbAvIvwGkqFeW17CZiBwxLR+G7HMaCjxoPN8N3+Y0uJN/Z83
	jF20WG32LCDwCStTKq7/1S/JdlSMqLK9RfzR3M4r/OvXUFqCfGM/bhmTE+Nhhu+88OdA4K2yGs8dC
	URwNPdBihzk8BeSWgz4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8oz-0001om-KF; Sun, 06 Oct 2019 15:51:45 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8os-0001oJ-KZ
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:51:40 +0000
Received: by mail-wm1-f68.google.com with SMTP id 5so10083971wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 08:51:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0nXnEB9b2XWFTb5GFglwkFLq+9bBGBkHzp8HDXQJJYk=;
 b=Qy+RHRmNfVUHQoPggtatrIksIn3ED/4ix7x7hJ8raW8/p1F+Lv241FLzdDoCbOyeFJ
 rNt1/FDJ+azFqQsm6j4ZpIJ+Vp3vbUaTo7DBCy1vvNPIt9P5vsiBRuIKDRlHcMR2/fXe
 ZhbulxKfAjf+HRFp/P8nyuTa2aw97P/QqVAi2e4dl3uZqNpcSyi0Ihrv7JXAUGn7xjTo
 6yzBnOr1r7nVnJeqa0Rb/FwvHpE0oD1TrtKAcTE5d6Gn/wX1OWoIFJnTxlqn7oJqUmoo
 A6ovLROAejKayKK+5OVtFedfmKGqHpaRWD1318xZ8iJGNHH7I01D0hZr44hqBNJgJLMy
 XVdQ==
X-Gm-Message-State: APjAAAWFoVGvwmApP0WMBIhhn2zYVKp3owiSl6U3hyz+5g2KuGCnrAqj
 1vo9x0NywfuFp6GIhrrhHWg=
X-Google-Smtp-Source: APXvYqwMPG0oNHL5qqKUMGxfKA4MAEB/fhmshV+PJLM+ItEC8trmEp5NVxLkaqXJHGbyUjOCdc3wAw==
X-Received: by 2002:a7b:cc0c:: with SMTP id f12mr17619692wmh.105.1570377096921; 
 Sun, 06 Oct 2019 08:51:36 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id q10sm35989747wrd.39.2019.10.06.08.51.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 06 Oct 2019 08:51:36 -0700 (PDT)
Date: Sun, 6 Oct 2019 17:51:34 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH] soc: samsung: chipid: Make exynos_chipid_early_init()
 static
Message-ID: <20191006155134.GD29365@kozik-lap>
References: <CGME20190904085001eucas1p2b3a120d6206983d47f0084b872042342@eucas1p2.samsung.com>
 <20190904084951.28971-1-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904084951.28971-1-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_085138_674039_ABF000AE 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.145 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 10:49:51AM +0200, Sylwester Nawrocki wrote:
> Add missing static qualifier to the chipid initcall function.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  drivers/soc/samsung/exynos-chipid.c | 2 +-

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
