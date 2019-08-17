Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71179912E4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 22:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCapBtOn83w7JFFzmSluG/aQGcc60KioBbf+msvlxYs=; b=o/nsM0mK5UBNGL
	BUSyWkD5bLUAGNzf+/llQycF25fxdXQBx9RHYlsK+gTo78QhbgyBQoQ0ZGFpccIfxXsHO4yvHHt3N
	zvzq61n6mzkgZ5I9tfD1tQgMe9/2K3df2MQO+5rJTX5sanb34t7jq32s+0ARDaqWLiXS3B/xj68/X
	1DYcM0aTbM5iLxBRShYM+P33ejszVhBKJQ51P2IjSAlaPW5ygd2soIgDJDLdudtAG7bX4L/kXpV87
	EVRSBWccjygNWaR4/afV7fTsqnhHofyVG6wQqJGQLrvV+xtujdgmLZRXaGTIhg1IKeyQO+zfk3rTD
	I4pMSL51WfcVvuq4kYSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz5mT-0004Tt-MN; Sat, 17 Aug 2019 20:58:33 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz5mG-0004Se-Vp
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 20:58:22 +0000
Received: by mail-io1-xd41.google.com with SMTP id t3so13172097ioj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 17 Aug 2019 13:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=NuXJCtDYAF42ezbdDjEFYfu2iBTjQndKb/Edf61OrOk=;
 b=PCXESTLeUcBNUWogs1gHv/iSg/bRj7rmybc37GwKrHxDe7CTeYQGPE82FFro2CLT61
 8Q4IgUqoS7Jmsm9wuhAF9CCdJ8jA631YD8dGqkPPvzXyvuP2itYPnDRcHbp+2vkqaUSt
 u4rxsZS9lGz/LPzZ8kGOEVrnbFqSW3syoXedbPJGimP78UP/Tg6J92XflG29pM3lwatF
 OjAvDNX5+3tv2rh85pO4hmLeTRsEGL0KJ9d8KAbhP2qYNSdGVQpqF+mf38a8oxmStDJ9
 9nvCgcj7mRwE6p6VKc6zn+f1lPTm2K1/WP8Olg56A4X8/QbiEq8e7laZGSLETkAb5Egu
 FN1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=NuXJCtDYAF42ezbdDjEFYfu2iBTjQndKb/Edf61OrOk=;
 b=DgDiIX29fQ+Div5AwSL/NBYqNCKw73Q4Ym28Lh+3r7Uj6tJuVyA62JNxekAwowgr/j
 cHNS8LXzYwSO5AIAX6J0l4UIUTbaCK6die9P8HVUOoyK0vEK0qlcmfYu5+VL0TAQ/AgB
 lMRTL3JlTrya6Nt7tS1annu6BtXQIQEXQSurgFoy9V8wrQw+kMD66LWFtcw5zKSTfJet
 Obr4852exEg3EAb1N0oSGlG3URmMlORaKm8sGI0/qQF2Xb2ILXFFmMsiW9rHiQ/a3DK0
 MUOTCh09rLIT715HGOoSMf8Dwsq71o1jIYC0khrmefGBs/aAJ1vcswC3rpCjoobULoVo
 y17A==
X-Gm-Message-State: APjAAAWz3WecrBQVeYXE2KfBBEt2RgAc7rqp37vip/2xm2739j77ANdW
 lqRLcHOcL0UK3dIohRG9eUt6iw==
X-Google-Smtp-Source: APXvYqyKpLbmhNe3o5mV41HWvHYU+SiPLQTRVuTNOtg0cL831wKHUivDHHya6XYWHKa9ZnFnQ2CM9Q==
X-Received: by 2002:a6b:8f0d:: with SMTP id r13mr15237433iod.121.1566075498344; 
 Sat, 17 Aug 2019 13:58:18 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 6sm9905577iog.40.2019.08.17.13.58.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 13:58:17 -0700 (PDT)
Date: Sat, 17 Aug 2019 13:58:16 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 14/26] asm-generic: don't provide __ioremap
In-Reply-To: <20190817073253.27819-15-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1908171357180.4130@viisi.sifive.com>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-15-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_135821_098841_255ACCD9 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 linux-mtd@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 17 Aug 2019, Christoph Hellwig wrote:

> __ioremap is not a kernel API, but used for helpers with differing
> semantics in arch code.  We should not provide it in as-generic.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
Tested-by: Paul Walmsley <paul.walmsley@sifive.com> # rv32, rv64 boot
Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # arch/riscv


- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
