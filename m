Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 248481221B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 02:52:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fbs/3zmFo3nstTzVFtUqi2EnWSEZmtlCCAfV29rfA0=; b=ORQzSJ/VLRVckM
	PGIZSy0roSFZysQk/VfG9Tlw4FMWP7gQwXquTyhJogNO2B/xMulZyIv4j8mx0pT6cifp3YvLZLebO
	GI8C/LOee8mgYWSy/AqRKrBMLDg1wpeAQgVJcrIg56HoxIzzNmF+FefA9Ipb0+v5THfcQb3g88Lfy
	Vkl8dq5He8mSmf9p0rH9K5B028xb+C1F2PUFba5ypwS7G4tkzwITrnvWFg6NNhCkqSTNk0rwlHWvC
	JSWEkG6yDY9oG1sR6fHTtMDk6LzY9vFEMzWKDssdUqul2lTY/Zw6xMltxs5bZal/goqpSrx/jzOVY
	4WhwysDSR/R0vD+B7zzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih229-0008E6-Vq; Tue, 17 Dec 2019 01:52:22 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih222-0008DJ-Q0
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 01:52:16 +0000
Received: by mail-qk1-x741.google.com with SMTP id t129so781734qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 17:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=VVyljFYvcymdWCFK/BttoIqrDbX+SNPTmTVvMoaS1rc=;
 b=Zg/g4sKxrShJQPXDzs8HDRW8YlgUrvsTibiQNkDioCdFslJvaJsftDgwZSScLzBoVz
 vv4Uc1S6vG8jZXIeC7VMU6iPWHnpyjXY0+wJ7/A1xZlwnSYJkdX6Az2KpUePN4mXFcGD
 HplBwEOpJSiPHC3Sv3mSqcGinzb/Gu326DVyFiAwdPWNKkjvYsTXCbfbdlJgieRIrdXG
 H6MyA4PPj6VmQQCZ1EZM++fi7Nxz88pRV9SojH+Vp90ISnTLyk8368rKdeDKesA6TzBT
 0+Iy9P8uGFVCeW/Q1OBgcfZQAP/BBflR7kOZJvB4QyzLywINSbkBYkCFOTdjVmCk9U23
 cj2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=VVyljFYvcymdWCFK/BttoIqrDbX+SNPTmTVvMoaS1rc=;
 b=bFbGciNsUv/9rgJH8AjygMMABNxa3lri3pHBeQQ/pkEHCjs0F3efKcHbUnhtZYIBgJ
 KSuRoIJdnPvrU0KnVqL7u2xiAr6lccG7ujF7SFSDE8ofLs27OMFkCCWVeF/f6IuztLzb
 ahKJxJaQ8JlrcF1lzA6EBUpxhlfTgr7kIAfbbU0rsziNUeExZtOGNpcVQ0w7VKsbLGC6
 thSfXHc/uGHRblm/XIbx9q2xrF0dPrS4mrhg7fEUzUKcAz4UFuW7OKP+6Uhrz2r/y2p5
 Q8RuupFAkXDF1kVtYCUKOxx77MNXSoqrP6P1JPmPwICfYo3uRaI7PlLuaL8yBZ57FBQz
 aQjQ==
X-Gm-Message-State: APjAAAUXCFV5frWZ8jzLqyftEjA7W+52znChojrw77Klj9d5NjBMd0oR
 qA2ga1Yr1VYEK+tgbhWAFNoGBA==
X-Google-Smtp-Source: APXvYqw7J/dHExe28smm7mZd9XhG1WSjUmpefrFPr1IqCbyGGLmlwbVphL2rCumhhBkfSfgbjKlx+g==
X-Received: by 2002:a37:7b84:: with SMTP id w126mr2644733qkc.280.1576547532672; 
 Mon, 16 Dec 2019 17:52:12 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id e2sm6551540qkl.3.2019.12.16.17.52.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 17:52:11 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] char/random: silence a lockdep splat with printk()
Date: Mon, 16 Dec 2019 20:52:10 -0500
Message-Id: <4F9E9335-334B-4600-8BC3-4AF91510D113@lca.pw>
References: <20191205010055.GO93017@google.com>
In-Reply-To: <20191205010055.GO93017@google.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_175214_892920_A63F2EFC 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: pmladek@suse.com, tytso@mit.edu, Arnd Bergmann <arnd@arndb.de>,
 peterz@infradead.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org, linux-mm@kvack.org,
 gregkh@linuxfoundation.org, longman@redhat.com, dan.j.williams@intel.com,
 will@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Dec 4, 2019, at 8:00 PM, Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:
> 
> A 'Reviewed-by' will suffice.
> 
> Reviewed-by: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>

Ted, could you take a look at this trivial patch?
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
