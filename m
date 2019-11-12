Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A55F98F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 19:39:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVoSCqx1csIGYr4QNpMoCgULsJdvlO4SdgYfPSnMId4=; b=ZF0ih5PvKe5tYs
	2GtDOjSUv+NX1vjJKjtU/DJW/fSdcwuoX+atFow4kg8jfvhFYNH+N3M0D4Qubz1l78cgibDkTI7vk
	53X2ZGy6k5//hrbZLgWEh6A6bMGIa+0tQ3TJj8nLlgNY0GTdwMcoEtahTXNI7+o9KxFs3eSPcIuvi
	Gn0W1L2Mh6rk6gglcdnMcXKEcOm886Wxb2O4/gdWVd/UGcpKkrqGoDElvEqqO2g6uMz1F1G2hZ/+L
	hftqn7Xfd/GyqfZvoKxRVLwh1w05pJPZh7EMjGV2zP2lZw7ZDHWqfMST8WBH8wYLyV7rcT2ArOj3E
	Yl3nIKgkqyN8MqCUyOMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUb4r-0002nQ-MJ; Tue, 12 Nov 2019 18:39:45 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUb4Y-0002bO-Lm
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 18:39:28 +0000
Received: by mail-lj1-x243.google.com with SMTP id d22so7450640lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 10:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l3/5+bE6a1aacx1NneO4G1AEtvlCm22h7I0IfvLwDdM=;
 b=h3mM4K7MdjNYkyyzw74cY6LaurZbZ0BediutdB4c6fnjSAaQMB7XKmFEa5BbJrTmYb
 W6T4IjafBbff7661PiiuiCIe9bisVOI9/hAmlYrc0kKmZj7XcOeYLAvCMUsoi5361Lk9
 Z01vkoYEoBTtnFMw6CbLvLjcmlO6+fvnSkTpc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l3/5+bE6a1aacx1NneO4G1AEtvlCm22h7I0IfvLwDdM=;
 b=Ie2i9Zq8AUFXGZCjDt6WhSU+LkbErSWFClAPBCBD83JczSCNUNWJFM1QGc++JAI3vy
 wEOQkHR5bBAuAIYGFYf1Xr0anM/yglt5X3whHqz3cnP1ymkyFnE1xHs2VeBWbKPqwT2b
 t8dnwfdMpYSGwOpRi4rz1ndPMObkYXvv+dmCuslXLpx9AChkJdD+8ozIbtvxmt7KiFlp
 zWIt8qrlA1DUGaQP2AWD7L6RD+s0RS5QTD8RprS/x7WTlCZsrZdi7SEyztyxx+BRVG1c
 jaeFBZXVGvUua6vqLK/J6VDNYoflhlKiK6T5rFmP4bk/1Klig5mgTiN6sgQe03pe5Zyu
 u1Eg==
X-Gm-Message-State: APjAAAWpPQ4KO0soxwk/4JAA1poq8jNi7EZyc8It8UapqNMyU6EKGWM0
 WLh9yAJ1CvB3ARpd0P4DnnvkYDj64pg=
X-Google-Smtp-Source: APXvYqw/rIOshFKZ7FTTYMzyiIs8+F7ipVjwWWblBofbq2Bd8yZawC3MbORlo4Dy7+JU/eHlu2Fh6Q==
X-Received: by 2002:a2e:7d17:: with SMTP id y23mr7119045ljc.228.1573583960671; 
 Tue, 12 Nov 2019 10:39:20 -0800 (PST)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com.
 [209.85.208.177])
 by smtp.gmail.com with ESMTPSA id v10sm948749ljc.6.2019.11.12.10.39.17
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Nov 2019 10:39:18 -0800 (PST)
Received: by mail-lj1-f177.google.com with SMTP id n5so18974046ljc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 10:39:17 -0800 (PST)
X-Received: by 2002:a2e:8919:: with SMTP id d25mr21258377lji.97.1573583957672; 
 Tue, 12 Nov 2019 10:39:17 -0800 (PST)
MIME-Version: 1.0
References: <20191112130244.16630-1-vincent.whitchurch@axis.com>
 <20191112160855.GA22025@arrakis.emea.arm.com>
 <20191112180034.GB19889@willie-the-truck>
 <20191112182249.GB22025@arrakis.emea.arm.com>
In-Reply-To: <20191112182249.GB22025@arrakis.emea.arm.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 12 Nov 2019 10:39:01 -0800
X-Gmail-Original-Message-ID: <CAHk-=wg4vi27mnMVgZ-rzcEdDAjTXrY1Jyz3+=5STcY0bw4-jQ@mail.gmail.com>
Message-ID: <CAHk-=wg4vi27mnMVgZ-rzcEdDAjTXrY1Jyz3+=5STcY0bw4-jQ@mail.gmail.com>
Subject: Re: [PATCH v2] buffer: Fix I/O error due to ARM read-after-read hazard
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_103926_734223_90492B67 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Vincent Whitchurch <rabinv@axis.com>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 10:22 AM Catalin Marinas
<catalin.marinas@arm.com> wrote:
>
> OK, so this includes changing test_bit() to perform a READ_ONCE.

That's not going to happen.

              Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
