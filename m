Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E55181272
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:57:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dP/35KFJRFcNRqmTkvtLCRQxMbII7xmQNHW2mSIsJtI=; b=WbYJHeDfxTpjkq
	Ge/z3d+35foMZAIHjx4wcZQ1xetNXgrd7/4XlBuNLPGl08CX0ImVrLZv65nkDujla5okihhzXj0/u
	Gcy1QuXcL0YM5yH+4zjVO91TeofzJUpKPz76t0IEf9UNepFMlYPBkqHqEJehcFfqgmDbRuCMWeOKZ
	YhbRzbwUhnMv4bl1Bns7PoMCnA0LUI3k498cqbtWK49Nv+5nQNccFIU04eSM3IJen9gnTUqT6uegA
	7FA1KiMRFduWJWexTm4gvUAMntsltTyVfdMrKAG05XK1XJV9tbBYUhpfymzNAUxNbAW/MhPRWpAWA
	30WNxA3ukX9DH5zMqaDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwEZ-00041V-Ok; Wed, 11 Mar 2020 07:56:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwEB-0003rK-P1
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:56:33 +0000
Received: by mail-pg1-x541.google.com with SMTP id t24so733030pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 00:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hKRLUEOkt4uqRQRU+kMzzPavE35BURSZlwqA28UO4lM=;
 b=hIAiHixSgSB8CG6jFRazUx7eGmIVELTjcRzoaclR4wisH+6SF02A+mqUStcmGTI//M
 ndmIAOXWtDjRUhWawWx9q9jdRdlyHTK01mSj5VCDaq3jtVPrKl+5GZU8GR0WDxsJNTVI
 KIRuPbPOIq6HdU1pZdj64n5zHlxC/AJQWTHAGwVKTuE1+jtM1zzzv6u5JRUSvubNgnOO
 JaQq6F68Vp8t2AsRBMQpIf4gfk6fdJ+ISRcEdcrvRfqjnZdLMWj0PujOWQOOgu8vCZEq
 3HdcqqwBIk2ZWOZDlEc3O3GJBcphdaRPbe4UxAtk6JsHXf54RS0UYhcNo36XBOz7CHvf
 xYCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hKRLUEOkt4uqRQRU+kMzzPavE35BURSZlwqA28UO4lM=;
 b=l0J7KBdpBC7ijPeSgqOdD9BCTLKeWMlCttEWm3T3tnhGVYnkoMi/2O8b3/UZf6t7rr
 WkVty1kHln8odFwqlrrFmlYVrRyhpENN9mLmOtEJTuG0s6XpIc4eFU/Du35OY5mZjHjo
 f9vlEY4eKaxA7CDptBmAtMpIEcl6E+Zo0fU4/CGAeT0XLuqwX7YC/oSgORO/M8DrRLuQ
 D0wDrKFXQGk10s07C06WgYf3/DNJvcPbK4TfRItwi5I9blrRMbY18EMionwJU8ttHn9P
 UbUfS6nhpY3LGRnVSFHHWB4sU7W+uLRGJj211ju9nMHSKf9V3SyvDNL+EhnlfBVIw/Bo
 wjsQ==
X-Gm-Message-State: ANhLgQ3niZvgtifsK3D0BSEPwwezvT06mRYH25TLP13CcEWkQQkZ6ff0
 yzInEqgoXgS5ny+RssP3g98=
X-Google-Smtp-Source: ADFU+vsj5VHBIH60lW4mWAjTEbLfKzxmDR2I9/6w7rOrbhTOb6WgKGPMCYdlyg7RtNUnAx7/rd5wlA==
X-Received: by 2002:a63:6203:: with SMTP id w3mr1710913pgb.35.1583913390950;
 Wed, 11 Mar 2020 00:56:30 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id y7sm10093247pfq.159.2020.03.11.00.56.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Mar 2020 00:56:30 -0700 (PDT)
Date: Wed, 11 Mar 2020 13:26:28 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v4] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200311075628.GA6313@afzalpc>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200311053126.GA48442@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311053126.GA48442@ubuntu-m2-xlarge-x86>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_005631_842538_F38E5B26 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Keguang Zhang <keguang.zhang@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nathan,

On Tue, Mar 10, 2020 at 10:31:26PM -0700, Nathan Chancellor wrote:

> This patch regresses booting malta_defconfig with both GCC and clang
> with this rootfs and QEMU 4.2.0:
> 
> https://github.com/ClangBuiltLinux/continuous-integration/blob/a85e3e44c2570847e22ad8f92f317c2b007c4517/images/mipsel/rootfs.cpio
> 
> $ timeout 2m qemu-system-mipsel -machine malta -cpu 24Kf -initrd rootfs.cpio -kernel vmlinux -m 512m -display none -serial mon:stdio
> 
> just hangs. I have not done further debugging past the initial bisect.

i will look into it.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
