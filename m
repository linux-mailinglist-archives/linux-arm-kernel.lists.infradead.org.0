Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAABDAC5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:35:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jH8X9jCWF0csgX+t3KsqbOPfVzFZd0CGka61d/SJW40=; b=BDt5Fc4yKRx0qF
	aBlquHss6smroB9f2Q+yxSKkkxJpPB5Rq5A6YmwxG1o0XmlFOktmLL0V1JG9yzlRfzQ31u3gSOErv
	DixCmifznx4yQhzoICaS3G8a+Ei5AgWS0EkTSTfVDJdKDnn7YouJpwuMj5H75gQt1HhLT+4cf2FzQ
	9a84zQHbtHgFe9pG3OKDdVBJSmDiNpcQV04phsnyEF5iJ1NshrsPFcpiNfVOa71pF++SwFBeVBCM3
	3c/uP34fOnnxQr1JfVLw9LgoxrRKOWBA9k4BJwgKu1ILu7yQXyq5z5vKE1ZFcpRsjINEoKLInP89t
	tbn7OsBw8jN2Iwalg/iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4zp-00068c-W3; Thu, 17 Oct 2019 12:35:14 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4zY-00067k-Nt
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:34:58 +0000
Received: by mail-lf1-x143.google.com with SMTP id r22so1766052lfm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 05:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uMFWZhVs3nOLCl7bSNvnSRRP4v3iwqBQaN+r4cGzM5w=;
 b=i8IC+ybAH7Xu7kPM1yyi1ejpd2G+foax89r02+eIpDfbysN1/dJVRVOC1WXOjAP7R0
 n7QEgIsfDwQaR6XPB6O7Opdti6NPjAKKHaInhfmR/TBpfvfblOvLNtWbf+AODqeB4c1/
 M934EFwgtgZdAu3sspAjeymnEZ83UQyhEIU70=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uMFWZhVs3nOLCl7bSNvnSRRP4v3iwqBQaN+r4cGzM5w=;
 b=nW56k9sFvIlDlT7mY2XohJmMb95+UO5mYmSlFrh8RubFgzNlL9RHhjkfDkMBQbLfoV
 lZSNLMNgMQRNPiGVlEUX4TwpI+n6gRNUrqm0vu/A1YwKFhCfQwpefWqMEkk99bN/zjaj
 ZKZ30CNdPQjfXDYY91rzB8HQJklpzPGuNIdutF96eabmFcFG/TJcl2gAxTcJUaah/WxJ
 Rw/ap1UPTuzGEaoasEBAwTlxEAmwvcYC0cn3tGDqxikRCSAz+RFVkVL1pYd9OSZzq2ti
 TsONsToXPgvrif1l5P2Rkvr320Ujiz4ZzxvaTk4BbhCgi8FEYmmMsYFSiQN7mGClMo5h
 A+vw==
X-Gm-Message-State: APjAAAXyN+QURM6/VuJvKziFBMtX2thSyiO44qQFTNw8Tl2OtfTd+daQ
 TDFaSgJf9uqfcuxtfbdHpZh5v7HmAjwXN40C
X-Google-Smtp-Source: APXvYqwmJXI9/ifsToGepUzplMqcGqjd91BZPdQ3/V3K6BdotfwTLPKZg1XHe8tNSIfFdS4KkkB5AQ==
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr1544119lfm.15.1571315694244;
 Thu, 17 Oct 2019 05:34:54 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id y4sm1124965ljd.82.2019.10.17.05.34.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 17 Oct 2019 05:34:53 -0700 (PDT)
Subject: Re: [RFC PATCH 0/3] watchdog servicing during decompression
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20191017114906.30302-1-linux@rasmusvillemoes.dk>
 <20191017120310.GD25745@shell.armlinux.org.uk>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <c4b6805b-67fe-6bce-1777-2d81e96b4ac9@rasmusvillemoes.dk>
Date: Thu, 17 Oct 2019 14:34:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191017120310.GD25745@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_053456_780904_24F9F009 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, kernel@pengutronix.de,
 Andrew Morton <akpm@linux-foundation.org>, Gao Xiang <xiang@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/10/2019 14.03, Russell King - ARM Linux admin wrote:
> We used to have this on ARM - it was called from the decompressor
> code via an arch_decomp_wdog() hook.
> 
> That code got removed because it is entirely unsuitable for a multi-
> platform kernel.  This looks like it takes an address for the watchdog
> from the Kconfig, and builds that into the decompressor, making the
> decompressor specific to that board or platform.
> 
> I'm not sure distros are going to like that given where we are with
> multiplatform kernels.

This is definitely not for multiplatform kernels or general distros,
it's for kernels that are built as part of a BSP for a specific board -
hence the "Say N unless you know you need this.".

I didn't know it used to exist. But I do know that something like this
is carried out-of-tree for lots of boards, so I thought I'd try to get
upstream support.

The first two patches, or something like them, would be nice on their
own, as that would minimize the conflicts when forward-porting the
board-specific patch. But such a half-implemented feature that requires
out-of-tree patches to actually do anything useful of course won't fly.

I'm not really a big fan of the third patch, even though it does work
for all the cases I've encountered so far - I'm sure there would be
boards where a much more complicated solution would be needed. Another
method I thought of was to just supply a __weak no-op
decompress_keepalive(), and then have a config option to point at an
extra object file to link into the compressed/vmlinux (similar to the
initramfs_source option that also points to some external resource).

But if the mainline kernel doesn't want anything like this
re-introduced, that's also fine, that just means a bit of job security.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
