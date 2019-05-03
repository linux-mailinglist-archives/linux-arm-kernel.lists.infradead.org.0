Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E77FC12EC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:07:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUZdPS7MYus6VNQJtTWV4ZcNgVU3VltHGQc/GgyGX+M=; b=Ndfep4YRoxGOWd
	55SRwvgx6UE0Y6nwU1ZpV8dPtuNbC0MNiyd+MARLtV20RTEWAI0aT4Sy1p8CQeW6eINpquow7OLlU
	PIEfahJ6yQlfJX0CWUHaoeyuvwPbYEUVCS5uAc+KIxkd0SLJy3sPd1tE/zYqPMWJTQVhuw1HDOzMu
	8cTD3E73KMe23ohooGN3i1CDHdUGSiS258uoRxOLGImUwF+ptrdczP7+1nb/gASZv6rePhNuNJfwD
	JYQIAIUsnWzVm065uMvKzpJ5n1FqbvO53uZTn3Ybw/qSriH+aSO2W92E/M9K3YLY9FvaBY2NeKslC
	tS56Bp4Ii8MzLyiX2V/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXub-0006sy-Rw; Fri, 03 May 2019 13:07:37 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXuU-0006sc-9b
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 13:07:31 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id E15D62043B;
 Fri,  3 May 2019 15:07:27 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id CB6DC2041C;
 Fri,  3 May 2019 15:07:27 +0200 (CEST)
Subject: Re: [PATCH] arm64/io: Don't use WZR in writel
To: Robin Murphy <robin.murphy@arm.com>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>
References: <68b71c15f32341468a868f6418e4fcb375bc49ba.camel@gmail.com>
 <20190211105755.GB30880@fuggles.cambridge.arm.com>
 <38d8965a-cd41-17cf-1b95-8dd58c079be4@arm.com>
 <874c702b8af760aa8fae38d478c79e3ecba00515.camel@gmail.com>
 <235d20ef-3054-69d9-975d-25aebf32aad3@arm.com>
 <20190223181254.GC572@tuxbook-pro> <86zhqm8i6d.wl-marc.zyngier@arm.com>
 <20190224035356.GD572@tuxbook-pro>
 <33d765b5-1807-fa6c-1ceb-99f09f7c8d5a@free.fr>
 <8eb4f446-6152-ffb6-9529-77fb0bcc307f@arm.com>
 <7b5e8bb1-d339-07f7-66f6-7f09df2107c4@free.fr>
 <3757fc2d-0587-be46-8f75-6d79906be8bd@arm.com>
 <5b83a4c2-1f0e-337f-a78d-f7d84fe01ab3@free.fr>
 <a6f89d1a-e7bb-bae9-6666-f4d5b263b835@free.fr>
 <b7a3c9d1-6bbc-1f14-956f-ee4dd3bce175@arm.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <bd3d23ed-1e4c-861b-35e6-08c2f7e4a47c@free.fr>
Date: Fri, 3 May 2019 15:07:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b7a3c9d1-6bbc-1f14-956f-ee4dd3bce175@arm.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Fri May  3 15:07:27 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_060730_480588_204E3302 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jeffrey Hugo <jhugo@codeaurora.org>, MSM <linux-arm-msm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/05/2019 14:48, Robin Murphy wrote:

> Anyway, I'll clean up my patch and post it properly - thanks to you and 
> Bjorn for testing.

Cool. Thanks!

AngeloGioacchino, are you still monitoring this thread?

On which qcom platform(s) did you run into the issue?
(Robin's work-around has been tested on msm8996 and msm8998.)

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
