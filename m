Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14589131F52
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 06:29:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGxtbM/Rbiqru6d+lpzXH3mF8JBi7M+eQz9NIYeXOnM=; b=u/mXozyP4u5G2e
	JT3gspZafzgv+y1pVS0Iu66UvQlqAiZtF57RCQADn0H6ZB/3OuokrJ+TNJuPxyCx+70gXkV2pU3KO
	+tqAH0GOkWWO3pnR2MFUSuFftlz220q0gXrO++6YjgeVy9gZ7Ry28JEeLhWi0wmSIfD0vbggS5nVF
	XTDwW53FFIIaAVuv3IR7NVYmsypttctYPDK/4F3fO+0PpJ+bKsgWRvpho/m7Nv049Ah0iVb8PToD9
	I2vP4XUr1RphVXPsW4FgucMZSzNO+vdJO6GCxdmTh7P+qFxUr4A2/fDgOy8lhhJIrO2SatmOWHDht
	hNuniB+wm9qqu6d9/yRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iohQp-0007Oq-85; Tue, 07 Jan 2020 05:29:31 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iohQi-0007Nz-G8
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 05:29:25 +0000
Received: by mail-pg1-x543.google.com with SMTP id k3so27942336pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 21:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DYRnJmKFkVOVyvhkzjG6wHR7cwBj4cNmdmKT5d4qt48=;
 b=JPsxNlkRHXmb+wEpvUDCFBj1A7EnkN0QhLo5R4UrciwTBhUlcwf8eX3rW8qY9dxWJs
 oAqsJ2p9L1akFqwWTcCy5pDQDTut2tkB6g4CsbjYnmXqf06jkoF6cs6WqM3iNCwKvIam
 OWATqgWzOkPIGQ9CoHSB9RuaKWDQN1GQXfaHaQNxsrUHsHTR0+xoKtmk8NOIWCtMEcvf
 KgiVZ403FQpxVOXV8zX2PYsPMoDGKHhTOXvw0at8FTZBGeh8rdeUUSYu7PRsd4zZoLP3
 JyZwL/uGHGWULyb/K0e0bUzmXPGpQaUMUOYDYSawrX3R5eGWV15Q2FJ0zTlA5EhQqc0G
 KaNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DYRnJmKFkVOVyvhkzjG6wHR7cwBj4cNmdmKT5d4qt48=;
 b=JOHxHaruB9uY+RWc80d5HxApte9Km+WWMmNRnEMWlb9evGrOPasR6tTRBRRn3uTdOH
 J/EsMqm1v3pWV1HtU/YtWfXhHIgDAHX2k/g2rcgva7WV4YOYEdoRTp/S5NMCpq0vlIlG
 tEK6V3Uh98n0rYvONEFiAAJ42mEdVQdU193DRYAb+y1UNhkySkbwRWJuLnUJS7m//EMx
 j1IMc3f0TbVOWhzXXREhZTx7p6fev6Bzz/YXI7ebhMLgZdRFwGmosUZE6RwyF+0XUOD9
 uoTsEeseLzDIyAsuPViL7Rgut8ZYiiFMfOqacQRCNjRn91GpQZR9IAAff5vtFD/MqAyf
 DWMA==
X-Gm-Message-State: APjAAAWoCpeLwDFrDAAmI9mvyo5epS4SR7zRAgbTHw3gKKOj4kw++2hh
 f45XTIqxGbyZxx4tDKyUoQchSprtrcs=
X-Google-Smtp-Source: APXvYqyIaMp0yaWxzLjhjdNyyh4j10tjUv2GlWlLB0HPrp35coQ6cktZUh8z1CCi0GdoSyfDSh7T8Q==
X-Received: by 2002:a63:8041:: with SMTP id j62mr115019328pgd.41.1578374963100; 
 Mon, 06 Jan 2020 21:29:23 -0800 (PST)
Received: from localhost ([122.172.26.121])
 by smtp.gmail.com with ESMTPSA id n14sm58159378pff.188.2020.01.06.21.29.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 Jan 2020 21:29:22 -0800 (PST)
Date: Tue, 7 Jan 2020 10:59:20 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: chenqiwu <qiwuchen55@gmail.com>
Subject: Re: [PATCH] cpufreq: s3c: avoid use after free issue in
 xxx_cpufreq_reboot_notifier_evt()
Message-ID: <20200107052920.biwi2cdmz46antm7@vireshk-i7>
References: <1577515439-14477-1-git-send-email-qiwuchen55@gmail.com>
 <20200106054811.uduf2qdn5ecvbwrc@vireshk-i7>
 <20200106065249.GA16392@cqw-OptiPlex-7050>
 <20200106065502.bimpddvrvmfm2f5f@vireshk-i7>
 <20200106083018.GA19697@cqw-OptiPlex-7050>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106083018.GA19697@cqw-OptiPlex-7050>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_212924_732647_9E6161D6 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-01-20, 16:30, chenqiwu wrote:
> Hhh..I don't agree this, since the cpufreq policy of cpu0 may have
> been released before such UAF issue happenning.

That won't happen if you do cpufreq_cpu_get(), isn't it ?

> By the way, why not get invaild cpufreq policy of another cpu but
> only cpu0 here?

Probably because this platform has a single cpufreq policy which covers all the
CPUs and so it doesn't really matter which CPU you use to get the policy.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
