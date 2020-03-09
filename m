Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0E617E502
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:49:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s78ja4dZ+ihegkU3wbDsJKBPUU05Y2EVO/PIh91oCVA=; b=Ak+GLADRMEmUPq
	a7GDiv6pUwlhFog/YcAbJ8lW8xzS3ILYYIUpB/BDS/32e/iiry6pS7Pxa8SUXw/Y+1qexMLKxnGVY
	l05jVPpsM8HkhAMHxPrnVwZTTmqrIhklQKGO7bWgyDZ6IrOT8DDlG+31l8WfBtIHDDl89VCW6Xlh+
	OaxwRG8rUuqYTlZPlr2jKN0UB7/CS96I4iv585xYGLu9bhSdNKV6GcHOGgPTZlrNzUgi7CM/8N+nt
	K5ik/loFpplJt3ZNFbFHy1bt3P7Nb1EmPnCwUn4OrKTx7JY51nKcjDOLHot7KFRWtWt+wN8f7OARJ
	z5esMogMhBzXvrHIccJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLb2-0006kU-9u; Mon, 09 Mar 2020 16:49:40 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLav-0006kA-MZ
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:49:35 +0000
Received: by mail-pl1-x641.google.com with SMTP id t3so1952339plz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 09:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bNoFPXhpvMiuUF7F+uekItlbOQGQEdKTXJsSJYz6wNk=;
 b=kkDM6ZUxQYSDcpRCzqXBzl6yRdTxqvu7JFcn1rImw8v+HOQq5uEy+Sz/qwy5/3C+s3
 KUB+FBs5z4n/A5MqPulS4DKCuhgmvKIaNUHArlCnB0h/4FTfLx81RD+3NgPaOsTFI1sc
 Xht0fVFnt3MfGytquyliFmFlyCRFniOygfHi/nqq5EDEZIh0kzrbvrDR7LEVlhMc98eX
 29sgNmh17iEBtwdaaw3GPVgxtwO9+CmG5NxPouEQhUPQ9nIeCFBa/YA5/1Cb1Wws7s7Y
 +vU04Kr5himrgDw19nt8CDZj7ZuERB70/bdH97/T6iWuj6uLbmoM8YruSAMB5TCOsPlb
 8E3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=bNoFPXhpvMiuUF7F+uekItlbOQGQEdKTXJsSJYz6wNk=;
 b=U/aeQ74DLq5p1y7o/EI1QhrRg54cYOoe4uGChjQPBz+ikwE2fUFK5FiakutXohOQWJ
 UG4U1U/PVWic9QRNff+fTn9XNbkBZkO8x/ebTiXpiyoYi9IP+w1/hW+hxCw6/ySUk4zK
 bmMo07ziNzlYzUjmxOIqOjuHoAYsw1tjugghwpIauJ6oc7MTwX06hkt9ARjzlQu9koVR
 6LwRKL6bE3nkCWQlsruS9GFKco4dJL2YLQHDdb9TyzSUIllLIRTvu9oqXvPSq+BhzrAD
 d/2w3Hmx3ZQsU/VnUv7BWrBdbQ+z7IAxVWqOSFRwzkplcPWgxrSNad5QoV6bpBUiutMK
 bGDQ==
X-Gm-Message-State: ANhLgQ06Y8DE4iaieIJJon+bn4vqa2H6n7TUiEPILTLckFRKKVl3kI9o
 fwHvTlw2RLLmJs+YdaFHQLR6dwVJ
X-Google-Smtp-Source: ADFU+vt/onT9cxmuspJ5T+KCU952uWkieCbEwJO4adVK6fLUN8zSNRf6ArvXDJD1xRu8YQakUYup1A==
X-Received: by 2002:a17:90b:1882:: with SMTP id
 mn2mr105796pjb.139.1583772573044; 
 Mon, 09 Mar 2020 09:49:33 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id k24sm42857301pgm.61.2020.03.09.09.49.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Mar 2020 09:49:32 -0700 (PDT)
Date: Mon, 9 Mar 2020 09:49:31 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v3] ARM: smp: add support for per-task stack canaries
Message-ID: <20200309164931.GA23889@roeck-us.net>
References: <20181206083257.9596-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181206083257.9596-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_094933_758433_59DE6471 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, Emese Revfy <re.emese@gmail.com>,
 Laura Abbott <labbott@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 06, 2018 at 09:32:57AM +0100, Ard Biesheuvel wrote:
> On ARM, we currently only change the value of the stack canary when
> switching tasks if the kernel was built for UP. On SMP kernels, this
> is impossible since the stack canary value is obtained via a global
> symbol reference, which means
> a) all running tasks on all CPUs must use the same value
> b) we can only modify the value when no kernel stack frames are live
>    on any CPU, which is effectively never.
> 
> So instead, use a GCC plugin to add a RTL pass that replaces each
> reference to the address of the __stack_chk_guard symbol with an
> expression that produces the address of the 'stack_canary' field
> that is added to struct thread_info. This way, each task will use
> its own randomized value.
> 
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Emese Revfy <re.emese@gmail.com>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Laura Abbott <labbott@redhat.com>
> Cc: kernel-hardening@lists.openwall.com
> Acked-by: Nicolas Pitre <nico@linaro.org>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Since this patch is in the tree, cc-option no longer works on
the arm architecture if CONFIG_STACKPROTECTOR_PER_TASK is enabled.

Any idea how to fix that ? 

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
