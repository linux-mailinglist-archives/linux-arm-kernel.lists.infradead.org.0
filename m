Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4611853A2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 02:08:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iar/Wd4pT4x/uFCc03GttNTCoD0q/UsAMM4n5TASqAQ=; b=UP57oBTfKbWMGE
	AB4MMMotl8QUQ8WXdVAFae4GCUidVrGPq/SZizEnanGZohxiB0JKrNEb7ox8D1giy4ROyXlraSSEM
	4TzNqU63+fULbldFZzYI005Nrt9u20y7A5H5IYJv/ZRMKscirJ6qpYowKipAaoALjHNfIWL5pyP0Y
	HHOQOdg/VgnhXgpWVAiK60kuHRYXmRCyoOHYwj8OGkwfdOJr9MlOptMmq5NdlCo4G6MpXOgdYYuQa
	siZAtwQPtdnaMi/QYVkpyFcaIYU1tDTCboQf40lNjWR5MGA/YvZnMwQy0T3aCKF02foRT75s9U2Mw
	kyf9qGScSbNHeKNEVEtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCvHR-0004us-39; Sat, 14 Mar 2020 01:07:57 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCvHK-0004uE-4E
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 01:07:51 +0000
Received: by mail-pl1-x644.google.com with SMTP id j20so5121236pll.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 18:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/Gvx9Hu5CHDL2kz8sy1w9qMMWhvLKzmdkZ+ff9kTBsQ=;
 b=Ezv+wSzfrAvGngOM/7Wm0cRtUt0odJIu/ck5ZnVoh7jud5b59FUloYYH4++JfDpEUD
 x81UqroT3ZzeWiHISneHzrjDtInpLm83HxBlWeKtS3D4Bqr460uq2L0KeEjBII9yVdtg
 GcsxxXCJhGnUmOk8M8EW3xqoqRKxjLAe/n1TdLXQQdTHTyl9UX2Z27GFKOBOdlczAwlu
 XNZ3OMAUkZbiHGenf4Ixt9h8B47cOs2zFR385gG5PczOW8XGR+5a+ogHFKXL+3GBGUBG
 ETA3DwjNg1qQKWfujbKX+6NG6HVZzeJ5PGYwMRdQIX72rQhHw2QfQk6ZlKqjMAGAsdHw
 OEqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/Gvx9Hu5CHDL2kz8sy1w9qMMWhvLKzmdkZ+ff9kTBsQ=;
 b=loawCUhzVzaNupG9UqztnB5cd35Efj3wL9BepJbGQhEhGZ8JhaxKb5iq//sidY7d+i
 MXufPI3vJfWYknIx10QElKSqs4kY5oJcgNQqN3Uz8NM7FvzPkHM/gJGs85cABmEiVqT+
 J7EvJ9VYhRGY2erKQCsWhFV3bpUlVZMduSEC7FWKMmoDMChNfePuHVXSMsFUgf3HI7+B
 WQppdG50xnBA+5FBAJrCxbaxVAPT2wrKmf69K6u+OD6uj45m5jtgIfNAHh/0BM5EWJ2s
 GC1FQATRmfgyQKA28vRGLWlsU2x/qwCF+1Gax7QelqKVpopFmLfWL8eU6rDsXDqzX4fp
 5CAQ==
X-Gm-Message-State: ANhLgQ3CabWyvhyLtZqDpkEInB48/4jg1HJoVxdo4RcvibEQhycinssk
 Ee9ERz40LPBWI2CwAFEoBZY=
X-Google-Smtp-Source: ADFU+vvq3Mn/UD2TKx9aTpeVf4l/BqUeXD0u/9e6D89fXHsd+F0Es5aMNULarLNIPEobzu+nIHI7aA==
X-Received: by 2002:a17:902:740b:: with SMTP id
 g11mr2364168pll.166.1584148067728; 
 Fri, 13 Mar 2020 18:07:47 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id 127sm40494300pfb.130.2020.03.13.18.07.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Mar 2020 18:07:46 -0700 (PDT)
Date: Sat, 14 Mar 2020 06:37:44 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v4] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200314010744.GA5494@afzalpc>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200313164751.GA30134@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313164751.GA30134@roeck-us.net>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_180750_196677_53142F3A 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Keguang Zhang <keguang.zhang@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ + Nathan ]

Hi Guenter, 

On Fri, Mar 13, 2020 at 09:47:51AM -0700, Guenter Roeck wrote:

> This patch causes all my mips qemu emulations to hang during boot. This affects
> all mips, mips64, mipsel, and mipsel64 emulations.

Can you please apply,

https://lkml.kernel.org/r/20200311152751.GA5044@afzalpc,

on top of this patch & see if it fixes the issue. Else please let me
know the qemu command line you are using.

Nathan reported a similar issue, above fix fixes that issue.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
